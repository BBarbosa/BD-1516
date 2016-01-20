use `trabalho`;
insert into Funcao  
					(idFuncao,Descricao)
					values 
					(idFuncao,'Chefe'), 
					(idFuncao,'Chefe Secção'), 
					(idFuncao,'Apoio ao Cliente'),
					(idFuncao, 'Limpeza'),
					(idFuncao,'Caixa'),
					(idFuncao,'Trabalhador da Secção');
                          
   
insert into Funcionario 
					(NIF,Email,Salario,DataNascimento,Rua,CodPostal,Localidade,Nome,Chefe)
					values 
                    
					(123456789,'gil@gamil.com',5000,'1994-11-23','Rua das Flores','1234-234','Braga','Gil',123456789),
					(234567890,'maria@gamil.com',500,'1992-10-23','Jardem do calvario','2133-534', 'Porto','Maria', 123456789),
					(345678901,'joana@gamil.com',1000,'1992-9-3','Rua do Jardim','4566-234', 'Braga','Joana',123456789),
					(456789012,'sandra@gamil.com',1500,'1991-1-23','Rua do Antonio','5000-234','Lisboa','Sandra',123456789),
					(567890123,'tiago@gamil.com',1500,'1990-8-3','Rua da Sr. da Neves','2000-234','Coimbra','Tiago,',123456789),
					(678901234,'bruno@gamil.com',2500,'1991-11-23','Rua da Maria','1234-256','Porto','Bruno',123456789),
					(789012345,'catarina@gamil.com',500,'1995-1-23','Avenida Central','1234-234','Coimbra','Catarina',123456789),
					(890123456,'jose@gamil.com',1500,'1994-11-4','Rua do Brasil','3456-134', 'Lisboa','Jose',123456789),
					(901234567,'rui@gamil.com',900,'1994-7-23','Rua dos Bombeiros','1900-134','Algarve','Rui',123456789);
                    


insert into Contacto_Funcionario
					(idContacto_Funcionario,Funcionario_NIF)
					values  
					(123132,123456789),
					(456132,123456789),
					(123456,234567890),
                    (123245,234567890),
					(123654,234567890),
					(123132,345678901),
					(123213,456789012),
                    (123324,456789012),
					(123554,567890123),
                    (123432,678901234),
                    (123234,789012345),
                    (143666,890123456),
                    (321323,901234567),
                    (898987,901234567);

                                         
                                         
insert into Funcao_Funcionario 
					(Funcao_idFuncao,Funcionario_NIF)
					values 
					(1,123456789),(2,234567890),(2,345678901),(2,456789012),(2,890123456),(2,789012345),
					(3,234567890),(3,567890123),(4,567890123),(4,678901234),(5,789012345),(5,890123456),
					(3,345678901),(6,234567890),(6,345678901),(6,890123456),(6,901234567),(6,789012345);
                                       

insert into Seccao
				(idSeccao,Nome,Funcionario_NIF)
				values
				(idSeccao,'Peixaria',234567890),
				(idSeccao,'Talho',345678901),
                (idSeccao,'Frutaria',789012345),
                (idSeccao,'Higiene',890123456),
				(idSeccao,'Bebidas',456789012);
                 
              
INSERT INTO Produto
			(idProduto,Nome,PrecoVenda,Stock)
			VALUES
		(idProduto,'Cerveja',0.5,50),
		(idProduto,'Carne de porco',1.4,55),
		(idProduto,'Coca-Cola',0.3,60),
		(idProduto,'Iced Tea',0.3,65),
		(idProduto,'Maça',1.1,100),
		(idProduto,'Banana',1.5,80),
		(idProduto,'Pera',1.2,75),
		(idProduto,'Laranja',1,50),
		(idProduto,'Melao',2,30),
		(idProduto,'Agua',0.1,200),
		(idProduto,'Vinho',3,65),
		(idProduto,'7up',1.50,73),
		(idProduto,'Cafe',0.5,84),
		(idProduto,'Presunto',12,91),
		(idProduto,'Robalo',1.7,74),
		(idProduto,'Carne de vaca',0.1,300),
		(idProduto,'Costeletas',0.6,132),
		(idProduto,'Papel higienico',0.4,123),
		(idProduto,'Salmão',1.8,143),
		(idProduto,'Polvo',1.67,184),
		(idProduto,'Cenoura',1.46,192),
		(idProduto,'Cebola',1.39,203),
		(idProduto,'Sabonete',1,105),
		(idProduto,'Shampo',2.18,137),
		(idProduto,'Desodorizante',1.28,164);              
              
              
insert into Funcionario_Seccao
			(idFuncionario_Seccao,Funcionario_NIF,Seccao_idSeccao,Data,Nr_Horas)
			values 
			(idFuncionario_Seccao,234567890,1,'2015-1-21',10),
			(idFuncionario_Seccao,345678901,2,'2015-1-21',10),
            (idFuncionario_Seccao,789012345,3,'2015-1-21',10),
            (idFuncionario_Seccao,890123456,4,'2015-1-21',10),
            (idFuncionario_Seccao,456789012,5,'2015-1-21',10),
                                  
            (idFuncionario_Seccao,456789012,1,'2015-2-3',10),
            (idFuncionario_Seccao,567890123,2,'2015-2-4',10),
            (idFuncionario_Seccao,678901234,3,'2015-5-4',5),
            (idFuncionario_Seccao,789012345,4,'2015-6-24',4),
            (idFuncionario_Seccao,890123456,2,'2015-7-4',3),
            (idFuncionario_Seccao,901234567,2,'2015-8-14',8),
            (idFuncionario_Seccao,345678901,3,'2015-9-24',1),
            (idFuncionario_Seccao,456789012,3,'2015-10-24',7),
            (idFuncionario_Seccao,567890123,4,'2015-11-22',3),
			(idFuncionario_Seccao,678901234,4,'2015-12-20',4),
            (idFuncionario_Seccao,789012345,2,'2015-9-2',5),
			(idFuncionario_Seccao,890123456,1,'2015-7-24',2);
                                  
                            
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
	(123456789,'1994-12-01',918732161,'blabla@gmail.com','Joaquim','Rua da Fábrica','Lousada','4620-873'),
	(987654321,'1993-12-25',924567984,'blabla123@gmail.com','João','Rua da Loja','Fafe','4567-123'),
	(123455432,'1983-07-28',918437563,'tautau@hotmail.com','Bruninho','Rua da Hora','Frossos','4642-823'),
	(987667890,'1984-10-16',934357347,'fcp17@gmail.com','Gil','Travessa padre abilio','Braga','4456-873'),
	(345678762,'1990-10-05',962143253,'a67676@uminho.pt','Tiago','Rua da travessa','Porto','4620-123'),
	(412946219,'1992-06-10',912352357,'hellowitsme@gmail.com','Sandra','Rua da Lista','Lisboa','4120-873'),
	(194874326,'1991-02-17',962343257,'joaquimfelisberto@hotmail.com','Carlos','Rua da Historia','Braganca','4690-873'),
	(128746553,'1992-10-03',927549263,'florbelaespanca@gmail.com','Rui','Rua da Ermida','Vila Real','4620-879');


INSERT INTO Cliente_Produto
	(idCompra, Cliente_NIF, Produto_idProduto, Data, Quantidade,PrecoCompra)
	Values
	(idCompra,123456789,1,'2015-12-25',100,0.5),
	(idCompra,123455432,4,'2014-10-06',50,1.4),
	(idCompra,123455432,9,'2014-10-06',50,0.3),
	(idCompra,194874326,10,'2015-06-19',10,0.3),
	(idCompra,345678762,15,'2013-06-23',5,1),
	(idCompra,987667890,6,'2015-09-17',7,1.5),
	(idCompra,987667890,3,'2015-09-17',9,1.2),
	(idCompra,987667890,4,'2015-09-17',113,1);

INSERT INTO Fornecedor_Produto
	(idFornecedor_Produto,Fornecedor_NIF,Produto_idProduto,Quantidade, Data, PrecoCompra)
	Values
	(idFornecedor_Produto,123456789,1,100,'2015-12-25',0.4),
	(idFornecedor_Produto,123455432,4,50,'2014-10-06',0.25),
	(idFornecedor_Produto,123455432,9,50,'2014-10-06',1.8),
	(idFornecedor_Produto,194874326,10,10,'2015-06-19',0.05),
	(idFornecedor_Produto,345678762,15,5,'2013-06-23',1.2),
	(idFornecedor_Produto,987667890,6,7,'2015-09-17',1.3),
	(idFornecedor_Produto,987667890,3,9,'2015-09-17',0.15),
	(idFornecedor_Produto,987667890,4,113,'2015-09-17',0.2);