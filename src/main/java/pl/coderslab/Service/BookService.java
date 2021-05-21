package pl.coderslab.Service;

import org.springframework.stereotype.Service;
import pl.coderslab.library.Book;

import java.util.List;
import java.util.Optional;
@Service
public interface BookService {

    List<Book> getBooks();
    void addBook(Book book);
    Optional<Book> getBook(Long id);
    void update(Book book);
    void delete(Long id);

}
