# E o Oscar vai para... ?
Muito bem, Pessoal... 

Hoje vamos trabalhar com o Oscar.
A ideia de premiar ou ser premiado é para reconhecer:
- Reconhecer uma qualidade
- Reconhecer um atributo
- Reconhecer o esforço... 

Reconhecer sempre.

Nem todos os prêmios são merecidos e nem todos que merecem ganham prêmios. 
Então vale mesmo a pena, premiar? 

<hr>

<div>
  <h3>1) Quantas vezes Natalie Portman foi indicada ao Oscar?</h3>
  <b>Código:</b> <code> select * from movies where `name` Like "%Natalie Portma%";</code>
  <p><b>Resposta:</b> Ela foi indicada 3 vezes ao Oscar</p>
</div>
        <br>
<div>
  <h3>2) Quantos Oscars Natalie Portman ganhou?</h3>
  <b>Código:</b> <code> select * from movies where `name` Like "%Natalie Portma%" and winner = 'true';</code>
  <p><b>Resposta:</b> Ela venceu apenas 1 vez o Oscar</p>
</div>
        <br>
<div>
  <h3>3) Amy Adams já ganhou algum Oscar?</h3>
  <b>Código:</b> <code> select * from movies where `name` Like "%Amy Adams%" and winner = 'true';</code>
  <p><b>Resposta:</b> Ela Nunca ganhou o Oscar</p>
</div>
        <br>
<div>
  <h3>4) A série de filmes Toy Story ganhou um Oscar em quais anos?</h3>
  <b>Código:</b> <code> select * from movies where film Like "%Toy Story%" and winner = 'true';</code>
  <p><b>Resposta:</b> 2011 e 2020</p>
</div>
        <br>
<div>
  <h3>5) Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?</h3>
  <b>Código:</b> <code> select count(*) from movies where category Like "%ACTOR%" and winner = 'true';
select count(*) from movies where category Like "%FILM%" and winner = 'true';</code>
  <p><b>Resposta:</b> A Categoria "Melhor Filme"</p>
</div>
        <br>
<div>
  <h3>6) O primeiro Oscar para melhor Atriz foi para quem? Em que ano?</h3>
  <b>Código:</b> <code> select `name`, year_ceremony, winner FROM movies WHERE category LIKE "%ACTRESS%" and winner = 'true';</code>
  <p><b>Resposta:</b> Foi para Janet Gaynor em 1928</p>
</div>
        <br>
<div>
  <h3>7) Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0</h3>
  <b>Código:</b> <code> UPDATE movies SET winner = 1 WHERE winner = "True"; <br>
UPDATE movies SET winner = 0 WHERE winner = "False";</code>
</div>
        <br>
<div>
  <h3>8) Em qual edição do Oscar "Crash" ganhou o prêmio principal?</h3>
  <b>Código:</b> <code> select film, year_ceremony,category, winner FROM movies WHERE film LIKE "Crash" and winner = 1;</code>
  <p><b>Resposta:</b> 2006, FILM EDITING, BEST PICTURE e WRITING</p>
</div>
        <br>
<div>
  <h3>9) Bom... dê um Oscar para um filme que merece muito, mas não ganhou.</h3>
  <b>Código:</b> <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2009', '2020', '92', 'ANIMATED FEATURE FILM', 'John Musker', 'Princesa e Sapo', 'True');
</code>
</div>
        <br>
  <h3>10) O filme Central do Brasil aparece no Oscar?</h3>
  <b>Código:</b> <code> SELECT film FROM movies where film like "%Central do Brasil%";</code>
  <p><b>Resposta:</b> Não Aparece</p>
</div>
        <br>
<div>
  <h3>11) Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. </h3>
  <b>Código 1:</b> <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (' 2018', '2020', '92', 'CINEMATOGRAPHY', 'Steven Spielberg', 'Jogador N°1', 'True');</code>
  <b>Código 2:</b> <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (' 2000', '2023', '92', 'ART DIRECTION', 'Goro Taniguchi', 'One Piece Film: Red', 'True');</code>
  <b>Código 3:</b> ,code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES (' 2000', '2002', '73', 'CINEMATOGRAPHY', 'Guel Arraes', 'O AUTO DA COMPADECIDA', 'True');;</code>
</div>
        <br>
  <h3>12) Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.</h3>
  <b>Código:</b> <code> update movies
set category='Melhor filme de game'
where category='filmes' </code>
  <p><b>Resposta:</b> Melhor filme de game </p>
</div>
        <br>
<div>
  <h3>13) Qual foi o primeiro ano a ter um prêmio do Oscar?</h3>
  <b>Código:</b> <code> SELECT year_ceremony FROM movies</code>
  <p><b>Resposta:</b> O Primeiro ano foi 1928</p>
</div>
      <br>
<div>
  <h3>14) Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?</h3>
  <b>Código:</b> <code>SELECT year_ceremony FROM movies</code>
  <p><b>Resposta:</b>Melhor Filme: Batman Begins
    Melhor Atriz: Reese Witherspoon
    Melhor Diretor: Bennett Miller
  </p>
</div>

<h3> 15) Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.</h3>
  <b> Código 1: </b> <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2009', '2010', '1', 'ACTOR', 'Jamie Chung', 'Dragonball Evolution', 'False'); </code>

  <b> Código 2: </b> <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2021', '2021', '1', 'ACTOR', 'Jessica Henwick', 'Matrix Resurrections', 'False'); </code>

  <b> Código 3: </b>  <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2001', '2002', '1', 'ACTOR', 'fatoumata diawara', 'Sia, The Dream of the Python', 'False'); </code>

  <b> Código 4: </b>  <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2004', '1', 'ACTOR', 'charlize theron Chan', 'Monster - Desejo Assassino', 'False'); </code>

  <b> Código 5: </b>  <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2010', '2011', '1', 'ACTOR', 'Zhao Tao', 'Memorias de Xangai', 'False'); </code>

  <b> Código 6: </b>  <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1988', '1988', '1', 'ACTOR', 'Dolly Rathebe', 'Mapantsula', 'False'); </code>

  <b> Código 7: </b>  <code> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2019', '2019', '1', 'ACTOR', 'Jackson Yee', 'Dias Melhores', 'False'); </code>




  <p><b>Resposta:</b>
      Jamie Chung
      Jessica Henwick
      fatoumata diawara
      charlize theron Chan
      Zhao Tao
      Dolly Rathebe
      Jackson Yee
  </p>
</div>

 <h3>16)  Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? </h3>
  
  <p><b>Resposta:</b>
      Minha família e merecem o prêmio de melhores pessoas.
  </p>
</div>
