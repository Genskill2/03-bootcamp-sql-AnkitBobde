select b.title from books b join books_subjects bs on (b.id = bs.book) where bs.subject = 3 or bs.subject = 8;
