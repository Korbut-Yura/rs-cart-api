--create type status AS ENUM ('OPEN', 'ORDERED')

--create table carts (
--	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
--	user_id uuid NOT null,
--  created_at date NOT NULL DEFAULT CURRENT_TIMESTAMP,
--  updated_at date NOT	NULL DEFAULT CURRENT_TIMESTAMP,
--  status status
--)

    
--CREATE EXTENSION IF NOT EXISTS "uuid-ossp"

drop table cart_items 

--create table cart_items (
--	cart_id uuid,
--    product_id uuid primary KEY DEFAULT uuid_generate_v4(),
--    count integer,
--    foreign key ("cart_id") references "carts" ("id")
--    
--)
--
--insert into carts (user_id, status) values
--(uuid_generate_v4(), 'OPEN')

--insert into cart_items (cart_id, product_id, count) values
--('4e192aea-189f-46fb-8e99-f673f8d852a6','9debecf8-621f-4aa3-83cd-8c79378560ef',1),
--('4e192aea-189f-46fb-8e99-f673f8d852a6','0f187602-da5c-4b4c-a82e-dea426e7b85b',1),
--('4e192aea-189f-46fb-8e99-f673f8d852a6','a5b0d486-f878-42c3-aeed-11c2f5f4c6ed',1),
--('4e192aea-189f-46fb-8e99-f673f8d852a6','5e326381-3bb5-418f-97f2-773c37d8f25c',1)

select id, created_at, updated_at, user_id, status 
from carts 
join cart_items ci on ci.cart_id = 
where user_id = '85ffc001-d6bf-4d49-bb97-e83e27629e17'
