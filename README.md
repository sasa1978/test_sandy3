### Запросы к БД

1. Список книг, которые не соответствуют ни одному автору,  и ни одному издательству
```sql
select book.name from book
left join author on author.id = book.id_author
left join publisher on publisher.id = book.id_publisher
where author.name is null and publisher is null
```

2. Список книг по ID автора или издателя
```sql
select book.name, coalesce(author.name, 'Информации нет') as author from book
left join author on author.id = book.id_author
where book.id_author=2

select book.name, coalesce(publisher.name, 'Информации нет') as publisher from book
left join publisher on publisher.id = book.id_publisher
where book.id_publisher=2
```

3. Списоск книг по имена автора или издателя
```sql
select book.name from publisher
join book on book.id_publisher = publisher.id
where publisher.name='Издатель 2'
order by book.id

select book.name from author
join book on book.id_author = author.id
where author.name='Автор 1'
order by book.id
```
