select s.name from subjects s join books_subjects bs on (bs.subject = s.id) where bs.book = 6;
