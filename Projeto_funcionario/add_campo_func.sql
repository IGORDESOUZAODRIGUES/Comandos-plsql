--1° Adicionar campos na tabela funcionario. 
    alter table funcionario 
      add (dt_admissao date,dt_demissao date,fl_ativo varchar2(1));

