use `trabalho`;
insert into Funcao  
					(idFuncao,Descricao)
					values 
					(1,'Chefe'), 
					(2,'Chefe Secção'), 
					(3,'Apoio ao Cliente'),
					(4, 'Limpeza'),
					(5,'Caixa'),
					(6,'Trabalhador da Secção');
                          
                          
insert into Funcionario 
					(NIF,Email,Salario,DataNascimento,Rua,CodPostal,Localidade,Nome,Chefe)
					values 
					(1,'gil@gamil.com',5000,'1994-11-23','Rua das Flores','1234-234','Braga','Gil',1),
					(2,'maria@gamil.com',500,'1992-10-23','Jardem do calvario','2133-534', 'Porto','Maria', 1),
					(3,'joana@gamil.com',1000,'1992-9-3','Rua do Jardim','4566-234', 'Braga','Joana',1),
					(4,'sandra@gamil.com',1500,'1991-1-23','Rua do Antonio','5000-234','Lisboa','Sandra',1),
					(5,'tiago@gamil.com',1500,'1990-8-3','Rua da Sr. da Neves','2000-234','Coimbra','Tiago,',1),
					(6,'bruno@gamil.com',2500,'1991-11-23','Rua da Maria','1234-256','Porto','Bruno',1),
					(7,'catarina@gamil.com',500,'1995-1-23','Avenida Central','1234-234','Coimbra','Catarina',1),
					(8,'jose@gamil.com',1500,'1994-11-4','Rua do Brasil','3456-134', 'Lisboa','Jose',1),
					(9,'rui@gamil.com',900,'1994-7-23','Rua dos Bombeiros','1900-134','Algarve','Rui',1);


insert into Contacto_Funcionario
					(idContacto_Funcionario,Funcionario_NIF)
					values  
					(123132,1),
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

                                         
                                         
insert into Funcao_Funcionario 
					(Funcao_idFuncao,Funcionario_NIF)
					values 
					(1,1),(2,2),(2,3),(2,4),(2,8),(2,7),
					(3,2),(3,5),(4,5),(4,6),(5,7),(5,8),
					(3,3),(6,2),(6,3),(6,8),(6,9),(6,7);
                                       

insert into Seccao
				(idSeccao,Nome,Funcionario_NIF)
				values
				(1,'Peixaria',2),
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
              
              
insert into Funcionario_Seccao
			(idFuncionario_Seccao,Funcionario_NIF,Seccao_idSeccao,Data,Nr_Horas)
			values 
			(1,2,1,'2015-1-21',10),
			(2,3,2,'2015-1-21',10),
            (3,7,3,'2015-1-21',10),
            (4,8,4,'2015-1-21',10),
            (17,4,5,'2015-1-21',10),
                                  
            (5,4,1,'2015-2-3',10),
            (6,5,2,'2015-2-4',10),
            (7,6,3,'2015-5-4',5),
            (8,7,4,'2015-6-24',4),
            (9,8,2,'2015-7-4',3),
            (10,9,2,'2015-8-14',8),
            (11,3,3,'2015-9-24',1),
            (12,4,3,'2015-10-24',7),
            (13,5,4,'2015-11-22',3),
			(14,6,4,'2015-12-20',4),
            (15,7,2,'2015-9-2',5),
			(16,8,1,'2015-7-24',2);
                                  
                                  
insert into Produto_Seccao 
			(Produto_idProduto,Seccao_idSeccao,Quantidade)
			values 
            (1,5,10),
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
                                   
 
INSERT INTO Produto
  (idProduto,Nome,Preco,Stock)
  VALUES
  (1,'Cerveja',0.5,50),
  (2,'Leite',0.4,55),
  (3,'Coca-Cola',0.3,60),
  (4,'Iced Tea',0.3,65),
  (5,'Maca',1.1,100),
  (6,'Banana',1.5,80),
  (7,'Pera',1.2,75),
  (8,'Laranja',1,50),
  (9,'Melao',2,30),
  (10,'Agua',0.1,200),
  (11,'Vinho',3,65),
  (12,'Gelado',1.50,73),
  (13,'Cafe',0.5,84),
  (14,'Bolacha',0.4,91),
  (15,'Azeite',1.7,74),
  (16,'Pao',0.1,300),
  (17,'Iogurte',0.6,132),
  (18,'Papel higienico',0.4,123),
  (19,'Ovos',1.8,143),
  (20,'Batata',1.67,184),
  (21,'Cenoura',1.46,192),
  (22,'Cebola',1.39,203),
  (23,'Detergente',2.55,105),
  (24,'Shampo',2.18,137),
  (25,'Desodorizante',1.28,164);

INSERT INTO Fornecedor
	(NIF,Nome,Rua,Localidade,CodPostal )
	VALUES
	(123456789,'Joaquim','Rua da Fábrica','Fafe','4620-873'),
	(987654321,'Marcia','Rua da Loja','Funchal','4567-123'),
	(123455432,'Marco','Rua da Hora','Algarve','4642-823'),
	(987667890,'Andre','Travessa padre abilio','Braga','4456-873'),
	(345678762,'Luis','Rua da travessa','Matosinhos','4620-123'),
	(412946219,'Cassandra','Rua da Forca','Setubal','4120-873'),
	(194874326,'Toi','Rua das Tortas','Braga','4690-873'),
	(128746553,'Manuel','Rua da Esperanca','Frossos','4620-879');	

INSERT INTO Contacto_Fornecedor
	(idContacto_Fornecedor, Fornecedor_NIF)
	VALUES
	(912343241,123456789),
	(964523845,987654321),
	(924563435,123455432),
	(966325762,987667890),
	(912357623,345678762),
	(932386532,412946219),
	(910974534,194874326),
	(960217473,128746553);

INSERT INTO Cliente
	(NIF, DataNascimento,Contacto,Email,Nome,Rua,Localidade,CodPostal )
	VALUES
	(123456789,'2014-12-01',918732161,'blabla@gmail.com','Joaquim','Rua da Fábrica','Lousada','4620-873'),
	(987654321,'2015-12-25',924567984,'blabla123@gmail.com','João','Rua da Loja','Fafe','4567-123'),
	(123455432,'2013-07-28',918437563,'tautau@hotmail.com','Bruninho','Rua da Hora','Frossos','4642-823'),
	(987667890,'2015-10-16',934357347,'fcp17@gmail.com','Gil','Travessa padre abilio','Braga','4456-873'),
	(345678762,'2014-10-05',962143253,'a67676@uminho.pt','Tiago','Rua da travessa','Porto','4620-123'),
	(412946219,'2013-06-10',912352357,'hellowitsme@gmail.com','Sandra','Rua da Lista','Lisboa','4120-873'),
	(194874326,'2015-02-17',962343257,'joaquimfelisberto@hotmail.com','Carlos','Rua da Historia','Braganca','4690-873'),
	(128746553,'2013-10-03',927549263,'florbelaespanca@gmail.com','Rui','Rua da Ermida','Vila Real','4620-879');


INSERT INTO Cliente_Produto
	(idCompra, Cliente_NIF, Produto_idProduto, Data, Quantidade)
	Values
	(1,123456789,1,'2015-12-25',100),
	(2,123455432,4,'2014-10-06',50),
	(3,123455432,9,'2014-10-06',50),
	(4,194874326,10,'2015-06-19',10),
	(5,345678762,15,'2013-06-23',5),
	(6,987667890,6,'2015-09-17',7),
	(7,987667890,3,'2015-09-17',9),
	(8,987667890,4,'2015-09-17',113);

INSERT INTO Fornecedor_Produto
	(idFornecedor_Produto,Fornecedor_NIF,Produto_idProduto,Quantidade, Data, Preco)
	Values
	(1,123456789,1,100,'2015-12-25',0.4),
	(2,123455432,4,50,'2014-10-06',0.25),
	(3,123455432,9,50,'2014-10-06',1.8),
	(4,194874326,10,10,'2015-06-19',0.05),
	(5,345678762,15,5,'2013-06-23',1.2),
	(6,987667890,6,7,'2015-09-17',1.3),
	(7,987667890,3,9,'2015-09-17',0.15),
	(8,987667890,4,113,'2015-09-17',0.2);
    
