CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int,
  "role" int
);
CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "level" serial,
  "teacher_id" uuid,
  "categorie_id" uuid,
  "course_video" uuid
);
CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar
);
CREATE TABLE "courses_video" (
  "id" uuid PRIMARY KEY,
  "link" varchar
);
CREATE TABLE "teacher_id" (
  "id" uuid PRIMARY KEY,
  "name" varchar
);
CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);
CREATE TABLE "courses_users" (
  "id" uuid PRIMARY KEY,
  "user_id" uuid,
  "course_id" uuid
);
ALTER TABLE "courses_users" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
ALTER TABLE "courses_users" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");
ALTER TABLE "users" ADD FOREIGN KEY ("role") REFERENCES "roles" ("id");
ALTER TABLE "courses" ADD FOREIGN KEY ("teacher_id") REFERENCES "teacher_id" ("id");
ALTER TABLE "courses" ADD FOREIGN KEY ("categorie_id") REFERENCES "categories" ("id");
ALTER TABLE "courses" ADD FOREIGN KEY ("course_video") REFERENCES "courses_video" ("id");



insert into users (id,name,email,password,age,role) values ('3d6d8f94-6613-11ed-9022-0242ac120002','Martin','martinhola1@hotmail.com','hola123',29,1),('8bb1d412-6613-11ed-9022-0242ac120002','pedrito','pedrito@hotmail.com','pedro1234',28,1);
insert into courses (id,title,description,level,teacher_id,categorie_id,course_video) values('0f47fdec-6614-11ed-9022-0242ac120002','backend','fundamentos principales',1,'5e0e1aba-6614-11ed-9022-0242ac120002','4e0e2cba-6614-11ed-9022-0242ac120002','9g0e5adc-6614-11ed-9022-0242ac120002'),('6g21cqtu-6614-11ed-9022-0242ac120002','frontend','React',1,'1c4e2gyp-6614-11ed-9022-0242ac120002','5j5t4qra-6614-11ed-9022-0242ac120002','3f2g3brc-3514-11ed-9022-0242ac120002');
insert into categories (id,name) values('1d871144-6615-11ed-9022-0242ac120002','power courses'),('4492fc94-6615-11ed-9022-0242ac120002','advanced');
insert into courses_video (id,link)values('6a81a2de-6615-11ed-9022-0242ac120002','youtube.com/adqwr412rqw'),('7df9537a-6615-11ed-9022-0242ac120002','youtube.com/qe382jeqjeqjwei');
insert into teacher_id (id,name) values('a3d8afc8-6615-11ed-9022-0242ac120002','Sahid'),('b02ce4e2-6615-11ed-9022-0242ac120002','marcelo');
insert into roles (name) values('profesor'),('estudiante');
insert into courses_users (id,user_id,course_id)values('eb543fb6-6615-11ed-9022-0242ac120002','3d6d8f94-6613-11ed-9022-0242ac120002','fedfef3a-6615-11ed-9022-0242ac120002'),('05eca6ec-6616-11ed-9022-0242ac120002','8bb1d412-6613-11ed-9022-0242ac120002','0d7683ba-6616-11ed-9022-0242ac120002');