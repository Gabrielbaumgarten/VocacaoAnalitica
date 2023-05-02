/*CREATE TABLE clientes (
	codcliente INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);*/


/*CREATE TABLE vendedores(
	codvendedor INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);*/

/*CREATE TABLE vendas(
	codvendas INT PRIMARY KEY,
	codcliente INT,
	datavenda DATE NOT NULL,
	codvendedor INT
);*/

-- ALTER TABLE vendas ADD CONSTRAINT fk_vendas_codcliente FOREIGN KEY(codcliente) REFERENCES clientes (codcliente)
-- ALTER TABLE vendas ADD CONSTRAINT fk_vendas_codvendedor FOREIGN KEY(codvendedor) REFERENCES vendedores (codvendedor)

-- USE bradesco;
-- INSERT INTO clientes VALUES( 1, 'Amauri');
-- SELECT * FROM clientes;
-- INSERT INTO vendas VALUES(10, '2023-04-27', 1, 1);
-- SELECT * FROM vendas;

-- INSERT INTO clientes VALUES(2,'Sabrina Sara Fernandes'),
-- 									(3,'Ryan Paulo Benjamin Nascimento'),
-- 									(4,'Laís Isabelly Jesus'),
-- 									(5,'Nicole Isadora Luana das Neves'),  
-- 									(6,'Manoel Sérgio Nogueira'), 
-- 									(7,'Cauã Ian Melo'), 
-- 									(8,'Kauê Erick Oliveira'), 
-- 									(9,'Hadassa Giovana Nair Bernardes'), 
-- 									(10,'Arthur Thiago Silva');
-- 	SELECT * FROM clientes; 

-- INSERT INTO vendedores VALUES(2,'Marina Sophia Castro'),
-- 									(3,'Betina Marcela Amanda Assis'),
-- 									(4,'Joana Fernanda Rafaela Viana'),
-- 									(5,'Francisco Leandro Novaes'),  
-- 									(6,'Leandro Caio Rodrigues'), 
-- 									(7,'Ian Leandro Santos'), 
-- 									(8,'Kauê Erick Oliveira'), 
-- 									(9,'Valentina Amanda Pinto'), 
-- 									(10,'Elias Guilherme Enzo Assunção');
-- SELECT * FROM vendedores;

-- INSERT INTO vendas VALUES(50,'2023-04-30',1,2),
-- 								 (1,'2023-04-04',1,9),
-- 								 (20,'2023-03-31',1,6),	
-- 								 (30,'2023-04-30',3,9),
-- 								 (25,'2023-04-22',2,7),
-- 								 (49,'2023-03-30',4,4),
-- 								 (55,'2023-03-21',8,10),
-- 								 (5,'2023-04-30',5,5),
-- 								 (13,'2023-04-12',7,1);
-- SELECT * FROM vendas; 
								 
								 
-- ALTER TABLE vendas CHANGE codvendas cod_vendas INT;
-- ALTER TABLE vendas add NOME_VENDA VARCHAR(255);
-- ALTER TABLE vendas DROP COLUMN NOME_VENDA;


-- Exercícios

-- ALTER TABLE vendas ADD agosto VARCHAR(55);
-- ALTER TABLE vendas CHANGE agosto agosto VARCHAR(25);
-- ALTER TABLE vendas CHANGE datavenda datavenda DATE;
-- ALTER TABLE vendas DROP COLUMN agosto;   
-- SELECT * from vendas;
								 
-- FIM								
								
-- UPDATE vendedores SET nome='Gabi Soares' WHERE codvendedor=1;
-- SELECT * FROM vendedores;


-- SELECT * FROM vendas AS vd
-- INNER JOIN vendedores AS vs
-- ON vd.codvendedor = vs.codvendedor

SELECT cs.codcliente, COUNT(vs.datavenda) AS qte FROM vendas AS vs
LEFT JOIN clientes AS cs
ON vs.codcliente = cs.codcliente
GROUP BY cs.codcliente
ORDER BY qte ASC
LIMIT 10;