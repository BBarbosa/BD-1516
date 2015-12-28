insert into funcao values (1,'Chefe'), 
						  (2,'Chefe Secção'), 
						  (3,'Apoio ao Cliente'),
						  (4, 'Limpeza'),
                          (5,'Caixa'),
						  (6,'Trabalhador da Secção');
                          
                          
insert into funcionario values (1,'gil@gamil.com',5000,'1994-11-23','Rua das Flores','1234-234',
                                 'Braga','Gil',1);
insert into funcionario values	 (2,'maria@gamil.com',500,'1992-10-23','Jardem do calvario','2133-534',
                                 'Porto','Maria', 1),
                                 (3,'joana@gamil.com',1000,'1992-9-3','Rua do Jardim','4566-234',
                                 'Braga','Joana',1),
                                 (4,'sandra@gamil.com',1500,'1991-1-23','Rua do Antonio','5000-234',
                                 'Lisboa','Sandra',1),
                                 (5,'tiago@gamil.com',1500,'1990-8-3','Rua da Sr. da Neves','2000-234',
                                 'Coimbra','Tiago,',1),
                                 (6,'bruno@gamil.com',2500,'1991-11-23','Rua da Maria','1234-256',
                                 'Porto','Bruno',1),
                                 (7,'catarina@gamil.com',500,'1995-1-23','Avenida Central','1234-234',
                                 'Coimbra','Catarina',1),
                                 (8,'jose@gamil.com',1500,'1994-11-4','Rua do Brasil','3456-134',
                                 'Lisboa','Jose',1),
                                 (9,'rui@gamil.com',900,'1994-7-23','Rua dos Bombeiros','1900-134',
                                 'Algarve','Rui',1);


insert into contacto_funcionario values  (123132,1),
                                         (456132,1),
                                         (123456,2),
                                         (123245,2),
                                         (123654,2),
                                         (123132,3),
                                         (123213,4),
                                         (123324,4),
                                         (123554,5),
                                         (123432,6),
                                         (123234,7),
                                         (143666,8),
                                         (321323,9),
                                         (898987,9);

                                         
                                         
insert into funcao_funcionario values (1,1),
									  (2,2),
									   (2,3),
                                       (2,4),
									   (3,2),
                                       (3,6),
                                       (4,2),
                                       (4,6),
                                       (4,5),
                                       (5,6),
                                       (5,4),
                                       (6,4),
                                       (6,3),
                                       (7,3),
                                       (7,2),
                                       (8,2),
                                       (9,6),
                                       (9,5);
                                       

insert into seccao values (1,'Peixaria',2),
						   (2,'Talho',3),
                           (3,'Frutaria',7),
                           (4,'Higiene',8),
                           (5,'Bebidas',4);
                 
              
INSERT INTO Produto
  (idProduto,Nome,Preco,Stock)
  VALUES
  (1,'Cerveja',0.5,50),
  (2,'Carne de porco',1.4,55),
  (3,'Coca-Cola',0.3,60),
  (4,'Iced Tea',0.3,65),
  (5,'Maça',1.1,100),
  (6,'Banana',1.5,80),
  (7,'Pera',1.2,75),
  (8,'Laranja',1,50),
  (9,'Melao',2,30),
  (10,'Agua',0.1,200),
  (11,'Vinho',3,65),
  (12,'7up',1.50,73),
  (13,'Cafe',0.5,84),
  (14,'Presunto',12,91),
  (15,'Robalo',1.7,74),
  (16,'Carne de vaca',0.1,300),
  (17,'Costeletas',0.6,132),
  (18,'Papel higienico',0.4,123),
  (19,'Salmão',1.8,143),
  (20,'Polvo',1.67,184),
  (21,'Cenoura',1.46,192),
  (22,'Cebola',1.39,203),
  (23,'Sabonete',1,105),
  (24,'Shampo',2.18,137),
  (25,'Desodorizante',1.28,164);              
              
              
insert into funcionario_seccao values 
                                  (1,2,1,'25-1-2015',10),
								  (2,3,2,'24-2-2015',10),
                                  (3,7,3,'23-3-2015',10),
                                  (4,8,4,'22-4-2015',10),
                                  (17,4,5,'1-4-2015',10),
                                  
                                  (5,4,1,'25-1-2015',10),
                                  (6,5,2,'25-2-2015',10),
                                  (7,6,3,'1-1-2015',5),
                                  (8,7,4,'24-3-2015',4),
                                  (9,8,2,'23-4-2015',3),
                                  (10,9,2,'25-11-2015',8),
                                  (11,3,3,'1-12-2015',1),
                                  (12,4,3,'21-12-2015',7),
                                  (13,5,4,'2-10-2015',3),
                                  (14,6,4,'3-19-2015',4),
                                  (15,7,2,'4-1-2015',5),
                                  (16,8,1,'3-12-2015',2);
                                  
                                  
insert into produto_seccao values (1,5,10),
								  (2,2,10),
                                  (3,5,10),
                                  (4,5,10),
                                  (5,3,10),
                                  (6,3,10),
                                  (7,3,10),
                                  (8,3,10),
                                  (9,3,10),
                                  (10,5,10),
                                  (11,5,10),
                                  (12,5,10),
                                  (13,5,10),
                                  (14,2,10),
                                  (15,1,10),
                                  (16,2,10),
                                  (17,2,10),
                                  (18,4,10),
                                  (19,1,10),
                                  (20,1,10),
                                  (21,3,10),
                                  (22,3,10),
                                  (23,4,10),
                                  (24,4,10),
                                  (25,4,10);
                                   
