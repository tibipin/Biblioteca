-- Proiect final SQL Fundamentals -> Tiberiu Pintilie
-- Evidenta cartilor dintr-o biblioteca

/* Crearea Bazei de Date */

create database biblioteca;
use biblioteca;

/* Crearea Tabelelor */
 
create table carte
(id_carte int auto_increment primary key,
titlu varchar(100) not null,
id_autor int not null,
id_editura int,
id_categorie int);

create table categorie
(id_categorie int auto_increment primary key,
nume_categorie varchar(100) not null);

create table autor
(id_autor int auto_increment primary key,
nume_autor varchar(100) not null);

create table editura
(id_editura int auto_increment primary key,
nume_editura varchar(100) not null);

create table cititor
(id_cititor int auto_increment primary key,
nume_cititor varchar(100) not null,
prenume_cititor varchar(100) not null,
numar_telefon varchar(10) unique not null,
data_inregistrarii datetime default now());

create table imprumut
(id_imprumut int auto_increment primary key,
id_cititor int not null,
id_carte int not null,
data_imprumut date);


/* 5 operații de modificare a structurii tabelelor după ce acestea au fost create */

-- adaugare coloana an_aparitie in tabela Carte

alter table carte add an_aparitie int; 

-- adaugare de constraint-uri de foreign key intre tabele

alter table carte
	add foreign key (id_categorie) references categorie(id_categorie),
	add foreign key (id_editura) references editura(id_editura),
    add foreign key (id_autor) references autor(id_autor);
    
alter table imprumut add foreign key (id_cititor) references cititor(id_cititor);

-- redemuire tabel carte si revenire la numele initial

alter table carte rename to carticica;
alter table carticica rename to carte; 

-- eliminare conditia de null de pe coloana id_autor din tabela carte

alter table carte modify id_autor int;

/* Introduceți date în toate tabele bazei de date utilizând instrucțiuni ale LMD.
Tabela de cărți să conțină minim 30 de înregistrări, 
tabelele de cititori, împrumuturi și autori minim 10 înregistrări. */
insert into autor values
(1,"Albert Camus "),
(2,"Franz Kafka"),
(3,"Antoine de Saint-Exupéry"),
(4,"André Malraux"),
(5,"Louis-Ferdinand Céline"),
(6,"John Steinbeck "),
(7,"Ernest Hemingway "),
(8,"Alain-Fournier"),
(9,"Boris Vian"),
(10,"Simone de Beauvoir"),
(11,"Samuel Beckett "),
(12,"Jean-Paul Sartre []"),
(13,"Umberto Eco"),
(14,"Aleksandr Soljenițîn "),
(15,"Jacques Prévert"),
(16,"Guillaume Apollinaire"),
(17,"Hergé"),
(18,"Anne Frank"),
(19,"Claude Lévi-Strauss"),
(20,"Aldous Huxley"),
(21,"George Orwell"),
(22,"René Goscinny și Albert Uderzo"),
(23,"Eugen Ionesco"),
(24,"Sigmund Freud"),
(25,"Marguerite Yourcenar"),
(26,"Vladimir Nabokov"),
(27,"James Joyce"),
(28,"Dino Buzzati"),
(29,"André Gide "),
(30,"Jean Giono"),
(31,"Albert Cohen"),
(32,"Gabriel García Márquez "),
(33,"William Faulkner "),
(34,"François Mauriac "),
(35,"Raymond Queneau"),
(36,"Stefan Zweig"),
(37,"Margaret Mitchell"),
(38,"D. H. Lawrence"),
(39,"Thomas Mann "),
(40,"Françoise Sagan"),
(41,"Vercors"),
(42,"Georges Perec"),
(43,"Georges Bernanos"),
(44,"F. Scott Fitzgerald"),
(45,"Milan Kundera"),
(46,"Alberto Moravia"),
(47,"Agatha Christie"),
(48,"André Breton"),
(49,"Louis Aragon"),
(50,"Paul Claudel"),
(51,"Luigi Pirandello "),
(52,"Bertolt Brecht"),
(53,"Michel Tournier"),
(54,"H. G. Wells"),
(55,"Primo Levi"),
(56,"Sidonie-Gabrielle Colette"),
(57,"Paul Éluard"),
(58,"Jack London"),
(59,"Hugo Pratt"),
(60,"Roland Barthes"),
(61,"Heinrich Böll "),
(62,"Julien Gracq"),
(63,"Michel Foucault"),
(64,"Jack Kerouac"),
(65,"Virginia Woolf"),
(66,"Ray Bradbury"),
(67,"Marguerite Duras"),
(68,"J. M. G. Le Clézio "),
(69,"Nathalie Sarraute"),
(70,"Jules Renard"),
(71,"Joseph Conrad"),
(72,"Jacques Lacan"),
(73,"Antonin Artaud"),
(74,"John Dos Passos"),
(75,"Jorge Luis Borges"),
(76,"Blaise Cendrars"),
(77,"Ismail Kadare"),
(78,"William Styron"),
(79,"Federico García Lorca"),
(80,"Georges Simenon"),
(81,"Jean Genet"),
(82,"René Char"),
(83,"J. D. Salinger"),
(84,"James Hadley Chase"),
(85,"Edgar P. Jacobs"),
(86,"Rainer Maria Rilke"),
(87,"Michel Butor"),
(88,"Hannah Arendt"),
(89,"Mihail Bulgakov"),
(90,"Raymond Chandler"),
(91,"Saint-John Perse "),
(92,"André Franquin"),
(93,"Malcolm Lowry"),
(94,"Salman Rushdie"),
(95,"Plutarh"),
(96,"Tacit"),
(97,"Marcus Aurelius"),
(98,"Augustin de Hipona"),
(99,"Moise Maimonide"),
(100,"Dante Alighieri"),
(101,"Erasmus din Rotterdam"),
(102,"Niccolò Machiavelli"),
(103,"Martin Luther"),
(104,"Jean Calvin"),
(105,"Nicolaus Copernicus"),
(106,"Michel de Montaigne"),
(107,"Johannes Kepler"),
(108,"Francis Bacon"),
(109,"William Shakespeare"),
(110,"Galileo Galilei"),
(111,"René Descartes"),
(112,"Thomas Hobbes"),
(113,"Blaise Pascal"),
(114,"Baruch Spinoza"),
(115,"Isaac Newton"),
(116,"John Locke"),
(117,"Samuel Johnson"),
(118,"Voltaire"),
(119,"Thomas Paine"),
(120,"Adam Smith"),
(121,"Jean-Jacques Rousseau"),
(122,"Edmund Burke"),
(123,"Mary Wollstonecraft"),
(124,"William Godwin"),
(125,"George Wilhelm Friedrich Hegel"),
(126,"Arthur Schopenhauer"),
(127,"Carl von Clausewitz"),
(128,"Søren Kierkegaard"),
(129,"Karl Marx și Friedrich Engels"),
(130,"Henry David Thoreau"),
(131,"Charles Darwin"),
(132,"John Stuart Mill"),
(133,"Herbert Spencer"),
(134,"Gregor Mendel"),
(135,"James Clerk Maxwell"),
(136,"William James"),
(137,"Albert Einstein"),
(138,"Vilfredo Pareto"),
(139,"Carl Jung"),
(140,"Martin Buber"),
(141,"Karl Popper"),
(142,"John Maynard Keynes"),
(143,"Jean-Paul Sartre"),
(144,"Friedrich Hayek"),
(145,"Georges Ivanovitch Gurdjieff"),
(146,"Ludwig Wittgenstein"),
(147,"Noam Chomsky"),
(148,"Betty Friedan"),
(149,"Mao Zedong"),
(150,"B. F. Skinner");

insert into categorie values
(1,"Carti de aventura"),
(2,"Carti de povesti"),
(3,"Carti de poezii"),
(4,"Carti pentru copii"),
(5,"Carti de colorat"),
(6,"Carti politiste"),
(7,"Manuale"),
(8,"Carti de dragoste"),
(9,"Carti ilustrative"),
(10,"Carti de bucate (pentru bucatarie)"),
(11,"Carti de medicina");

insert into editura values
(1,"Litera"),
(2,"Art"),
(3,"Polirom"),
(4,"Humanitas"),
(5,"Paralela 45"),
(6,"RAO"),
(7,"Trei"),
(8,"Curtea Veche Publishing"),
(9,"Nemira"),
(10,"Sigma");

insert into carte values
(1,"Străinul",1,8,9,1942),
(2,"Procesul",2,1,8,1925),
(3,"Micul Prinț",3,9,9,1943),
(4,"Condiția umană",4,8,3,1933),
(5,"Călătorie la capătul nopții",5,2,4,1932),
(6,"Fructele mâniei",6,9,10,1939),
(7,"Pentru cine bat clopotele",7,3,10,1940),
(8,"Cărarea pierdută",8,4,9,1913),
(9,"Spuma zilelor",9,7,7,1947),
(10,"Al doilea sex",10,7,1,1949),
(11,"Așteptându-l pe Godot",11,1,9,1952),
(12,"Ființa și neantul",12,3,7,1943),
(13,"Numele trandafirului",13,NULL,1.0,1980),
(14,"Arhipelagul Gulag",14,8,9,1973),
(15,"Paroles fr",15,2,3,1946),
(16,"Alcooluri",16,8,7,1913),
(17,"Le lotus bleu fr",17,9,6,1936),
(18,"Jurnalul Annei Frank",18,1,7,1947),
(19,"Tropice triste",19,1,10,1955),
(20,"Minunata lume nouă",20,8,1,1932),
(21,"O mie nouă sute optzeci și patru",21,2,5,1949),
(22,"Astérix le Gaulois fr",22,4,7,1959),
(23,"Cântăreața cheală",23,6,3,1952),
(24,"Trei eseuri despre teoria sexualității",24,2,3,1905),
(25,"Piatra filosofală",25,2,10,1968),
(26,"Lolita",26,10,4,1955),
(27,"Ulise",27,4,2,1922),
(28,"Deșertul Tătarilor",28,4,7,1940),
(29,"Falsificatorii de bani",29,9,1,1925),
(30,"Husarul de pe acoperiș",30,4,7,1951),
(31,"Belle du Seigneur fr",31,3,8,1968),
(32,"Un veac de singurătate",32,9,1,1967),
(33,"Zgomotul și furia",33,6,9,1929),
(34,"Thérèse Desqueyroux",34,1,7,1927),
(35,"Zazie în metrou",35,1,7,1959),
(36,"Verwirrung der Gefühle de",36,2,5,1927),
(37,"Pe aripile vântului",37,2,5,1936),
(38,"Amantul doamnei Chatterley",38,2,1,1928),
(39,"Muntele vrăjit",39,8,3,1924),
(40,"Bonjour, tristețe",40,5,1,1954),
(41,"Tăcerea mării",41,1,2,1942),
(42,"La Vie mode d'emploi fr",42,4,5,1978),
(43,"Sub soarele lui Satan",43,6,3,1926),
(44,"Marele Gatsby",44,4,9,1925),
(45,"Gluma",45,3,5,1967),
(46,"Disprețul",46,3,3,1954),
(47,"Cine l-a ucis pe Roger Ackroyd",47,2,7,1926),
(48,"Nadja",48,4,4,1928),
(49,"Aurélien",49,7,5,1944),
(50,"Pantoful de Satin",50,6,4,1929),
(51,"Șase personaje în cautarea unui autor",51,3,7,1921),
(52,"Ascensiunea lui Arturo Ui poate fi oprită",52,5,10,1959),
(53,"Vineri sau limburile Pacificului",53,NULL,5.0,1967),
(54,"Războiul lumilor",54,9,8,1898),
(55,"Mai este oare acesta un om?",55,2,9,1947),
(56,"Cârceii de viță",56,7.0,NULL,1908),
(57,"Capitala Durerii",57,6,3,1926),
(58,"Martin Eden",58,1,3,1909),
(59,"La ballade de la mer salée fr",59,9,7,1967),
(60,"Gradul zero al scriiturii",60,2,3,1953),
(61,"Onoarea pierdută a Katerinei Blum",61,4,7,1974),
(62,"Țărmul Syrtelor",62,10,3,1951),
(63,"Cuvintele și Lucrurile, o arheologie a științelor umane",63,2,8,1966),
(64,"Pe drum",64,9,5,1957),
(65,"O cameră separată",65,6,9,1929),
(66,"Cronici marțiene",66,9,8,1950),
(67,"Le Ravissement de Lol V. Stein fr",67,7,5,1964),
(68,"Procesul verbal",68,2,8,1963),
(69,"Tropismes fr",69,6,2,1939),
(70,"Jurnal",70,6,4,1925),
(71,"Lord Jim",71,5,7,1900),
(72,"Écrits fr",72,8,8,1966),
(73,"Teatrul și dublul său",73,5,5,1938),
(74,"Manhattan Transfer",74,2,3,1925),
(75,"Ficțiuni",75,NULL,1.0,1944),
(76,"Moravagine fr",76,6,5,1926),
(77,"Generalul armatei moarte",77,10,7,1963),
(78,"Alegerea Sofiei",78,8.0,NULL,1979),
(79,"Romancero gitano",79,3,7,1928),
(80,"Pietr-le-Letton fr",80,3,3,1931),
(81,"Maica Domnului a florilor",81,9,8,1944),
(82,"Fureur et mystère fr",82,6,2,1948),
(83,"De veghe în lanul de secară",83,1,8,1951),
(84,"Nici o orhidee pentru Miss Blandish",84,6,10,1939),
(85,"Blake și Mortimer",85,7,10,1950),
(86,"Însemnările lui Malte Laurids Brigge",86,10,7,1910),
(87,"Renunțarea",87,8,10,1957),
(88,"Originile totalitarismului",88,1,6,1951),
(89,"Maestrul și Margareta",89,8,6,1967),
(90,"Somnul de veci",90,7,6,1939),
(91,"Repere pe mare",91,9,4,1957),
(92,"Gaston",92,NULL,9.0,1957),
(93,"La poalele vulcanului",93,3,5,1947),
(94,"Copiii din miez de noapte",94,5,3,1981),
(95,"Viețile paralele",95,5,2,120),
(96,"Annale",96,7,3,120),
(97,"Meditații",97,1.0,NULL,167),
(98,"Confesiuni",98,6,4,400),
(99,"Ghidul rătăciților",99,9,10,1190),
(100,"Divina Comedie",100,4,8,1321),
(101,"Elogiul nebuniei",101,10,2,1509),
(102,"Principele",102,5,10,1532),
(103,"Despre captivitatea babilonică a Bisericii",103,5,10,1520),
(104,"Învățătura religiei creștine",104,3,7,1536),
(105,"Despre mișcările de revoluție ale corpurilor cerești",105,7,6,1543),
(106,"Eseuri",106,10,6,1580),
(107,"Armonia lumii",107,5,8,1619),
(108,"Novum Organum",108,8,10,1620),
(109,"Ediția princeps a pieselor lui Shakespeare⁠(en)",109,10,8,1623),
(110,"Dialog despre cele două mari sisteme ale lumii",110,5,2,1632),
(111,"Discurs asupra metodei",111,4,8,1637),
(112,"Leviatanul",112,3,8,1651),
(113,"Cugetări",113,8,9,1670),
(114,"Etici",114,NULL,2.0,1677),
(115,"Principiile matematice ale filozofiei naturale",115,9,8,1687),
(116,"Eseu asupra intelectului omenesc",116,9,3,1689),
(117,"Dicționarul limbii engleze",117,9,3,1755),
(118,"Candide",118,9,3,1759),
(119,"Bunul simț",119,1,9,1776),
(120,"Avuția națiunilor",120,6.0,NULL,1776),
(121,"Confesiuni",121,1,1,1781),
(122,"Reflecții asupra Revoluției din Franța",122,7,9,1790),
(123,"O revendicare a drepturilor femeii",123,3,3,1792),
(124,"Justiția Politică",124,2,5,1793),
(125,"Fenomenologia spiritului",125,5,1,1807),
(126,"Lumea ca voință și reprezentare",126,7,4,1819),
(127,"Despre război",127,9,3,1832),
(128,"Ori - ori (Enten-Eller)",128,7,2,1843),
(129,"Manifestul comunist",129,10,9,1848),
(130,"Despre datoria nesupunerii civice",130,2,6,1849),
(131,"Originea speciilor",131,4,6,1859),
(132,"Despre libertate",132,10,8,1859),
(133,"Primul Principiu",133,8,2,1862),
(134,"Experimente despre hibridizarea plantelor",134,NULL,1.0,1866),
(135,"Tratat de electricitate și magnetism",135,8,8,1873),
(136,"Interpretarea viselor",24,7,1,1900),
(137,"Pragmatism",136,7,8,1908),
(138,"Relativitate: Teoria Specială și Generală",137,6,10,1916),
(139,"Mintea și Societatea",138,5,8,1916),
(140,"Tipuri psihologice",139,5,3,1921),
(141,"Eu și tu",140,10,10,1923),
(142,"Castelul",2,7,1,1925),
(143,"Logica cercetării",141,6,7,1934),
(144,"Teoria generală a ocupării forței de muncă, a dobânzii și a banilor",142,1,1,1936),
(145,"Ființa și neantul",143,9,3,1943),
(146,"Drumul către servitute",144,1,10,1944),
(147,"Al doilea sex",10,4,1,1948),
(148,"Ferma Animalelor",21,7,8,1949),
(149,"Poveștile lui Beelzebub nepotului său",145,7,6,1950),
(150,"Investigații filozofice",146,4.0,NULL,1953),
(151,"Structuri Sintactice",147,9,8,1957),
(152,"Mistica feminină",148,8,5,1963),
(153,"Cărticica roșie a președintelui Mao Zedong⁠(en)",149,8,9,1966),
(154,"Dincolo de libertate și demnitate",150,8,3,1971);

insert into cititor values
(1,"POPA","Andrei","0760411578",DEFAULT),
(2,"POPESCU","Alexandru","0723154251",DEFAULT),
(3,"POP","Gabriel","0763250286",DEFAULT),
(4,"RADU","Ionuţ","0747186199",DEFAULT),
(5,"IONESCU","Ştefan","0749854869",DEFAULT),
(6,"DUMITRU","Maria","0746511300",DEFAULT),
(7,"STOICA","Elena","0735121125",DEFAULT),
(8,"STAN","Ioana","0743434494",DEFAULT),
(9,"GHEORGHE","Andreea","0761739679",DEFAULT),
(10,"RUSU","Alexandra","0725899190",DEFAULT); 

insert into imprumut values
(1,7,154,"2007-12-11"),
(2,10,39,"2006-05-01"),
(3,1,109,"2014-01-14"),
(4,6,78,"2014-09-28"),
(5,8,34,"2018-12-27"),
(6,9,12,"2000-12-08"),
(7,3,92,"2011-11-21"),
(8,9,121,"2005-05-03"),
(9,8,36,"2015-03-07"),
(10,7,153,"2010-08-15");

-- Verificarea tuturor tabelelelor

select * from autor;
select * from carte;
select * from categorie;
select * from cititor;
select * from editura;
select * from imprumut;

/* Realizați 2 instrucțiuni de modificare (update) a anumitor înregistrări pe două tabele diferite
 (de exemplu, creșteți valoarea de inventar a cărților dintr-o anumită categorie cu 10%, 
 schimbați adresa unui cititor, modificați anul apariției sau editura unei anumite cărți.) */
 
update carte set an_aparitie = 1989 where titlu = 'Pentru cine bat clopotele';
update cititor set nume_cititor = 'PINTILIE' where prenume_cititor = 'Andrei';

/* Implementați 2 instrucțiuni de ștergere de înregistrări din tabelele bazei de date 
(de exemplu o anumită carte, un cititor dintr-o anumită localitate, un împrumut dintr-o anumită dată, etc.). */

delete from carte where an_aparitie = 120;
delete from categorie where id_categorie = 11;

/* Implementați 5 interogări simple pe tabelele bazei de date (de exemplu: 
afișarea cărților dintr-o anumită categorie, 
afișarea cititorilor dintr-o anumită localitate, 
afișarea cărților unui autor, 
afișarea împrumuturilor dintr-un anumit interval de timp, 
cărțile apărute într-un interval de timp, 
numărul de împrumuturi din luna curentă, etc.) */

-- identificarea cartilor aparute inainte de secolul 20

select * from carte where an_aparitie <= 1900;

-- afisarea cartilor dintr-o anumita categorie

select * from carte where id_categorie = 9;

-- afișarea cărților unui autor

select * from carte where id_autor = 12;

-- afisarea imprumuturilor din  anul 2000
 
 select * from imprumut where year(data_imprumut)=2000;

-- imprumuturile efectuate in luna decembrie

select * from imprumut where month(data_imprumut)=12;


/* Implementați 5 interogări utilizând operatori și funcții MySQL (de ex: 
alipiți anumite cîmpuri de tip șir de caractere, 
afișați numărul de cititori din București, 
afișați împrumuturile dintr-o anumită lună sau dintr-un anumit an, 
cartea (cărțile) cu cea mai mare, respectiv cea mai mică valoare de inventar, etc.).*/

 -- Numarul de carti aparute in fiecare an din secolul 20

select an_aparitie, count(id_carte) as numar_carti
from carte
group by an_aparitie
having an_aparitie between 1901 and 2000
order by numar_carti desc;

-- Numele complet (nume + prenume) al fiecarui cititor
select concat(nume_cititor," ",prenume_cititor) as nume_complet
from cititor;

-- Numarul de imprumuturi din anul 2014
select year(data_imprumut) as an, count(id_imprumut) as numar_imprumuturi 
from imprumut
group by an
having an = 2014;

-- Cate carti a imprumutat fiecare cititor

select id_cititor, count(id_imprumut) as numar_imprumuturi
from imprumut
group by id_cititor 
order by numar_imprumuturi desc;

-- Lungimea titlului fiecarei carti

select titlu, length(titlu) as numar_caractere
from carte
group by titlu
order by numar_caractere desc;

-- Autorii cu numele William

select * from autor where nume_autor like '%william%';

/* Implementați 5 interorgări complexe pe tabelele bazei de date utilizând join-uri și reuniuni (de exemplu: 
numele cititorilor și adresa precum și cărțile împrumutate acestora într-un interval de timp, 
numele categoriei și cărțile din această categorie, 
cititorii care au împrumutat o anumită carte, a
utorii care au pulicat la o anumită editură, 
numărul de cărți din fiecare categorie, 
cărțile apărute într-un anumit an, 
editura la care au apărut și numele autorului, 
cititorii și editurile dintr-o anumită localitate, etc.). */

-- Carte si nume autor

select a.titlu, b.nume_autor 
from carte a
left join autor b
using (id_autor);

-- Ce carte a imprumutat fiecare cititor

select concat(a.nume_cititor," ", a.prenume_cititor) as Nume_Complet, c.titlu as Titlu
from cititor a
join imprumut b
using (id_cititor)
join carte c
using (id_carte);

-- Cate carti are fiecare editura

select a.nume_editura, count(b.id_carte) as Numar_Carti
from editura a
left join carte b
using (id_editura)
group by a.nume_editura;

-- Cati autori sunt la fiecare editura

select a.nume_editura, b.nume_autor
from editura a
left join carte c 
using (id_editura)
join autor b
using (id_autor)
order by nume_editura;

-- Ce tip de carti scrie fiecare autor

select a.nume_autor, c.nume_categorie
from autor a
left join carte b
using (id_autor)
left join categorie c
using (id_categorie)
order by nume_autor;

/* Implementați 3 subinterogări pe baza tabelelelor din baza de date (de exemplu: 
cartea cu cea mai mare valoare de inventar împrumutată în luna curentă, 
autorii cărților împrumutate într-un anumit an, 
cărțile împrumutate în ordinea descrecătoare a valorii lor de inventar sau a datei de împrumut, etc.). */


-- autorii cărților împrumutate într-un anumit an (2000)

select a.nume_autor, b.titlu, year(b.data_imprumut) as an_imprumut
from autor a 
join
(select * from imprumut join carte using (id_carte) where year(data_imprumut) = 2000) b
using (id_autor);

-- categoriile de carti imprumutate anul 2014

select a.nume_categorie, b.titlu, year(b.data_imprumut) as an_imprumut
from categorie a 
right join
(select * from imprumut join carte using (id_carte) where year(data_imprumut) = 2014) b
using (id_categorie);

-- editura cu cele mai multe carti imprumutate

select a.nume_editura, b.numar_imprumuturi
from editura a
right join 
	(select d.id_editura, count(c.id_imprumut) as numar_imprumuturi
    from imprumut c 
    join carte d 
    using (id_carte)
    group by (id_editura)) b
using (id_editura);

/* Implementați 3 tabele virtuale pe baza anumitor selecții (
fie interogări realizate anterior, 
fie altele noi, cum ar fi view cu toți cititorii din București, 
view cu toate împrumuturile din luna curentă, 
view cu ultimii 5 cititori înregistrați care au împrumutat cărți, 
view cu citorii care au împrumutat cărți într-un anumit interval de timp, etc.). Afișați datele din view. */

-- 1.
create view carti_si_autori as 
(select a.titlu, b.nume_autor 
from carte a
left join autor b
using (id_autor)); 

select * from carti_si_autori;

-- 2.
create view carti_aparute_in_1600 as 
(select a.titlu, b.nume_autor, a.an_aparitie from carte a
join autor b
using (id_autor)
where floor((an_aparitie/100))=16);

select * from carti_aparute_in_1600;

-- 3. 
create view topul_cititorilor as 
	(select a.id_cititor, concat(a.nume_cititor, " ",a.prenume_cititor) as nume_complet, count(b.id_imprumut) as nr_imprumuturi 
	from cititor a
	left join imprumut b
	using (id_cititor)
	group by id_cititor
	order by nr_imprumuturi desc);
  
select * from topul_cititorilor;

/* Inserați date într-un view. 
Modificați și ștergeți date într-o tabelă pe baza căreia ați implementat un view. 
Afișați datele din view. */

insert into cititor values 
(17, "Cititorul", "Nou","0755254056",default);

insert into imprumut values
(default,17,17,"2020-07-24"),
(default,17,114,"2020-07-24"),
(default,17,29,"2020-07-24");

select * from topul_cititorilor;

/* Creați 2 indecși simpli și unul de unicitate, 
pe coloane care se pretează la indexare din tabelele bazei de date. */

alter table cititor add index (id_cititor); 

alter table imprumut add index (id_cititor);

alter table autor add unique index (nume_autor);
