create table customer (
  customer_id int auto_increment,
  name varchar(20)not null,
  email varchar(50) unique,
  primary key (customer_id)

  
);
insert into customer(customer_id,name,email) values
  
  (null,"bornil","bornil@gmail.com"),
  
  (5,"bornil","bornnil@gmail.com"),
  
  (null,"mahmud","mahmud@gmail.com");

--invalid input is
-- (2,null,"bornil@gmail.com")

select * from customer;

