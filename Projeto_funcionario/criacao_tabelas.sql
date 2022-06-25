--Criaçao das tabelas
create table departamento(
    id_depart number not null constraint pk_depart primary key,
    descricao varchar2(100)
);

create table funcionario(
     matricula number not null constraint pk_func primary key,
     nome varchar2(50) not null,
     sexo varchar2(1),
     cargo varchar2(50),
     salario number,
     id_depart number not null constraint fk_depart references departamento(id_depart)
);
--Criaçao da sequence departamento
create sequence sq_departamento
   start with 1
   increment by 1
   maxvalue 10000
   minvalue 1
   nocache
   cycle;
--Criaçao da sequence da matricula
create sequence sq_matricula
   start with 1
   increment by 1
   maxvalue 10000
   minvalue 1
   nocache
   cycle;
-- Criaçao da trigger para disparar a sequence da matricula
create or replace trigger tg_sq_matricula 
   before insert on funcionario
   for each row
begin
     select sq_matricula.nextval into :new.matricula from dual;
end;

-- Criaçao da trigger para disparar a sequence departamento
create or replace trigger tg_sq_departamento
   before insert on departamento
   for each row
begin
    select sq_departamento.nextval into :new.id_depart from dual;
end;