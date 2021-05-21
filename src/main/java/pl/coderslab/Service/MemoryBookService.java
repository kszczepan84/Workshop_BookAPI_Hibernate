package pl.coderslab.Service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import pl.coderslab.Service.BookService;
import pl.coderslab.library.Book;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class MemoryBookService implements BookService {

    private List<Book> books;
    private static Long nextId = 4L;


    public MemoryBookService() {
        books = new ArrayList<>();
        books.add(new Book(1L, "9788324631766", "Thiniking	in	Java", "Bruce	Eckel", "Helion", "programming"));
        books.add(new Book(2L, "9788324627738", "Rusz	glowa	Java.", "Sierra	Kathy,	Bates	Bert", "Helion",
                "programming"));
        books.add(new Book(3L, "9780130819338", "Java	2.	Podstawy", "Cay	Horstmann,	Gary	Cornell", "Helion",
                "programming"));
    }

    @Override
    public List<Book> getBooks() {
        return books;
    }
    @Override
    public void addBook(Book book) {
        book.setId(nextId++);
        books.add(book);
    }
    @Override
    public Optional<Book> getBook(Long id) {
        return books.stream().filter(el -> el.getId().equals(id)).findFirst();
    }

    @Override
    public void update(Book book) {
        if (this.getBook(book.getId()).isPresent()) {
            int indexOf = books.indexOf(this.getBook(book.getId()).get());
            books.set(indexOf, book);
        }
    }

    @Override
    public void delete(Long id) {
        if (getBook(id).isPresent()) {
            books.remove(this.getBook(id).get());
        }
    }
}
