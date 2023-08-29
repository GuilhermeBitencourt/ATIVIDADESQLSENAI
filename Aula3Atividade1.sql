="insert into spo_linhas (linha, intervalo_inicial, posicao, hr_incial, hr_final, T_E, ADO) VALUES ('"&A7&"', "&B7&", "&C7&", '01/01/1900 "&D7&"', '01/01/1900 "&E7&"','"&H7&"', '01/01/1900 "&I7&"');" 
#ATIVIDADE 1, TERCEIRA AULA.

CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE TABELA_LIVROS(
 ID INT AUTO_INCREMENT PRIMARY KEY , 
 LIVRO VARCHAR(255) NOT NULL,
 AUTOR VARCHAR(255) NOT NULL,
 GENERO VARCHAR(10) NOT NULL,
 NUMERO_PAGINAS INT NOT NULL,
 EDITORA VARCHAR(255) NOT NULL,
 VALOR_CAPA FLOAT NOT NULL,
 VALOR_KINDLE FLOAT NOT NULL,
 ANO INT NOT NULL
 
);




INSERT INTO TABELA_LIVROS(LIVRO, AUTOR, GENERO, NUMERO_PAGINAS, EDITORA, VALOR_CAPA, VALOR_KINDLE, ANO)
VALUES ("Pai Rico,Pai Pobre", "Robert T. Kiyosaki", "Masculino", 336, "Alta Books", 61.53, 58.45, 2018),
("Mindset", "Carol S. Dweck", "Feminino", 312, "Objetiva", 38.99, 14.95, 2017),
("Como fazer amigos e influenciar pessoas", "Dale Carnagie", "Masculino", 256, "Sextante", 38.99, 33.24, 2019),
("A Cabana", "William P.Young", "Masculino", 240, "Arqueiro", 39.99, 17.90, 2008),
("O Poder do Hábito", "Charles Duhigg", "Masculino", 408, "Objetiva", 42.99, 29.90, 2012),
("Código Limpo", "Robet C. Martin", "Masculino", 425, "Alta Books", 91.99, 87.39, 2009),
("Essencialismo", "Greg McKeown", "Masculino", 272, "Sextante", 53.58, 33.24, 2015),
("Me Poupe!", "Nathalia Arcuri", "Feminino", 176, "Sextante", 32.86, 17.09, 2018),
("Comece pelo Porquê", "Simon Sinek", "Masculino", 256, "Sextante", 50.58, 24.90, 2018),
("O Alquimista", "Paulo Coelho", "Masculino", 206, "Paralela", 24.70, 14.70, 2017);

SELECT LIVRO  FROM TABELA_LIVROS;

SELECT ID, LIVRO FROM TABELA_LIVROS;

SELECT ID, LIVRO FROM TABELA_LIVROS
WHERE ID < 8 AND LIVRO LIKE 'O%';

SELECT ID, LIVRO FROM TABELA_LIVROS
WHERE ID < 8 AND LIVRO LIKE 'O%'
ORDER BY LIVRO;

#1- Trazer todos os dados;
SELECT * FROM TABELA_LIVROS;

#2 - Trazer o nome do livro e nome da editora;
SELECT LIVRO, EDITORA FROM TABELA_LIVROS;


#3 - Trazer o nome do livro, editora e autores do sexo masculino;

SELECT LIVRO, EDITORA, AUTOR FROM TABELA_LIVROS WHERE GENERO = 'MASCULINO';

#4 - Trazer o nome do livro, número de páginas do livro e autores
#do sexo feminino;

SELECT LIVRO, NUMERO_PAGINAS, AUTOR FROM TABELA_LIVROS WHERE GENERO = 'FEMININO';


#5 - Trazer o nome do autor, editora e ano de publicação dos
#livros que tenham sido publicados a partir do ano 2017;

SELECT AUTOR, EDITORA, ANO FROM TABELA_LIVROS WHERE ANO >= 2017;



#6 - Trazer o nome dos autores do sexo masculino com livros
#publicados pela editora Sextante ou pela editora Altas Books;

SELECT AUTOR, EDITORA FROM TABELA_LIVROS WHERE GENERO = 'MASCULINO' AND EDITORA = 'ALTA BOOKS' OR EDITORA = 'SEXTANTE';


#7 - Trazer o nome do livro, do autor, número de páginas,
#editora, ano de publicação e valor com capa comum;

SELECT LIVRO, AUTOR, NUMERO_PAGINAS, EDITORA, ANO, VALOR_CAPA FROM TABELA_LIVROS;

#8 - Trazer o nome do livro, autor, número de páginas e valor no
#Kindle;

SELECT LIVRO, AUTOR, NUMERO_PAGINAS, VALOR_KINDLE FROM TABELA_LIVROS;


#9 - Trazer o nome dos autores com livros publicados pela editora
#Sextante;

SELECT AUTOR, EDITORA FROM TABELA_LIVROS WHERE EDITORA = 'SEXTANTE';

#10 - Trazer o nome do livro, autores, valor com capa comum e
#valor no Kindle.#

SELECT LIVRO, AUTOR, VALOR_CAPA, VALOR_KINDLE FROM TABELA_LIVROS;



