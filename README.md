### ������� � ��

1. ������ ����, ������� �� ������������� �� ������ ������,  � �� ������ ������������
```sql
select book.name from book
left join author on author.id = book.id_author
left join publisher on publisher.id = book.id_publisher
where author.name is null and publisher is null
```

2. ������ ���� �� ID ������ ��� ��������
```sql
select book.name, coalesce(author.name, '���������� ���') as author from book
left join author on author.id = book.id_author
where book.id_author=2

select book.name, coalesce(publisher.name, '���������� ���') as publisher from book
left join publisher on publisher.id = book.id_publisher
where book.id_publisher=2
```

3. ������� ���� �� ����� ������ ��� ��������
```sql
select book.name from publisher
join book on book.id_publisher = publisher.id
where publisher.name='�������� 2'
order by book.id

select book.name from author
join book on book.id_author = author.id
where author.name='����� 1'
order by book.id
```
