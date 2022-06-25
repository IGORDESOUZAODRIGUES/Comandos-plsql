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
 
 
 
 
 
 
 
 
 