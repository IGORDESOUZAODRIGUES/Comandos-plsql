--Qual é o cargo que paga o maior salario?
select fu.cargo,
       fu.salario
  from funcionario fu
 group by fu.cargo, fu.salario
having fu.salario >= (select max(f.salario) from funcionario f);

--Qual é o cargo que paga o menor salario?
select fu.cargo,
       fu.salario
  from funcionario fu
 group by fu.cargo, fu.salario
having fu.salario <= (select min(f.salario) from funcionario f);

--Qual a média de salario de cada departamento?
select d.descricao,
       round(avg(f.salario)) media_salario
  from departamento d,
       funcionario f 
 where d.id_depart = f.id_depart 
 group by d.descricao;
 
 -- Quantos funcionarios existem em cada departamento?
select d.descricao,
       count(f.matricula) Total_func
  from departamento d,
       funcionario f 
 where d.id_depart = f.id_depart 
 group by d.descricao;
 
 --Qual departamento tem mais mulheres trabalhando?
select d.descricao,
       count(fs.sexo)
  from funcionario fs,departamento d
 where fs.id_depart = d.id_depart
   and fs.sexo = 'F' group by d.descricao
  having  count(fs.sexo) >= (select count(f.sexo) from funcionario f where sexo= 'F' group by f.id_depart having  count(f.sexo) >= f.id_depart);

--Qual departamento tem mais homens trabalhando?
select d.descricao,
       count(fs.sexo)
  from funcionario fs,departamento d
 where fs.id_depart = d.id_depart
   and fs.sexo = 'M' group by d.descricao
  having  count(fs.sexo) >= (select count(f.sexo) from funcionario f where sexo= 'M' group by f.id_depart having  count(f.sexo) >= f.id_depart);

--Qual o salario mais alto de uma mulher dentro dessa empresa e de qual cargo e departamento ela é?
select f.nome,
       f.cargo,
       f.salario,
       d.descricao
 from  funcionario f, departamento d 
 where d.id_depart = f.id_depart 
   and sexo = 'F' 
 group by f.nome, f.cargo, f.salario, d.descricao 
 having f.salario  >= 
 (select max(fa.salario) from funcionario fa) ;

--Quantos funcionarios recebem mais de 2.500?
select count(f.matricula) Quantidade from funcionario f where  f.salario > 2500;

--Quantos funcionarios existem em cada cargo?
select f.cargo, count(f.matricula) qtd_func from funcionario f group by f.cargo;

--Quantos funcionarios existem em cada departamento?
select d.descricao, 
       count(f.matricula) Qtd_func
  from funcionario f, 
       departamento d 
 where f.id_depart = d.id_depart 
 group by d.descricao;

--Quantos funcionarios existem com a inicial do seu nome?
select count(f.matricula) from funcionario f where f.nome like 'I%';

--Liste os 10 maiores salarios.
--select top 5, max(f.salario)from funcionario f group by f.salario;

--Qual departamento tem o maior salario?
select f.id_depart,
       d.descricao,
       max(f.salario) Maoir_salario
  from funcionario f, 
       departamento d 
 where d.id_depart = f.id_depart
 group by d.descricao, f.id_depart having max(f.salario) = (select max(fu.salario) from funcionario fu );

--Qual departamento tem o menor salario?
select f.id_depart,
       d.descricao,
       min(f.salario) Menor_salario
  from funcionario f, 
       departamento d 
 where d.id_depart = f.id_depart
 group by d.descricao,f.id_depart having min(f.salario) = (select min(fu.salario) from funcionario fu);

select * from funcionario;
select * from departamento;
 
 