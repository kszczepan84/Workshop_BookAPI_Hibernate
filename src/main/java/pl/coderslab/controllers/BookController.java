package pl.coderslab.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.library.Book;
import pl.coderslab.Service.BookService;

import java.util.List;

@RestController
@RequestMapping("/books")
public class BookController {

    private BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("")
    public List<Book> showBooks() {
        return bookService.getBooks();
    }

    @GetMapping("/{id}")
    public Book getBookById(@PathVariable Long id) {
        return bookService.getBook(id).orElseThrow(null);
    }


    @PostMapping("")
    public void addNewBook( @RequestBody Book book) {
        bookService.addBook(book);
    }

    @PutMapping("")
    public void updateBook( @RequestBody Book book) {
        bookService.update(book);
    }

    @DeleteMapping("/{id}")
    public void deleteBookById(@PathVariable Long id){
        bookService.delete(id);
    }
}
