package pl.coderslab.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.Service.BookService;
import pl.coderslab.library.Book;

@Controller
@RequestMapping("/admin/books")
public class ManageBookController {

    final BookService bookService;


    public ManageBookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/list")
    public String showBooks(Model model){
        model.addAttribute("books",bookService.getBooks());
        return "/book/list";
    }

    @GetMapping("/add")
    public String redirectToAdd(Model model ){
        model.addAttribute("book", new Book());
        return "/book/add";
    }

    @PostMapping("/add")
    public String add(Book book ){
        bookService.addBook(book);
        return "redirect:/admin/books/list";
    }

    @GetMapping("/edit/{id}")
    public String redirectToEdit(@PathVariable Long id,Model model){
        model.addAttribute("book", bookService.getBook(id));
        return "book/edit";
    }

    @PostMapping("/edit")
    public String edit(Book book ){
        bookService.addBook(book);
        return "redirect:/admin/books/list";
    }

    @GetMapping("/delete/{id}")
    public String delete( @PathVariable Long id){
        bookService.delete(id);
        return "redirect:/admin/books/list";
    }

    @GetMapping ("/show/{id}")
    public String show(@PathVariable Long id, Model model){
        model.addAttribute("book",bookService.getBook(id).orElseThrow(null));
        return "book/show";
    }

}
