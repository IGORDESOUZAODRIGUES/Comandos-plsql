--2° Criar procedure de admissao.
create or replace procedure pr_admissao (p_nome in varchar2,p_sexo in varchar2,p_cargo in varchar2,p_salario in number,p_id_depart in number) is
begin
     insert into  funcionario 
     values (sq_matricula.nextval,p_nome,p_sexo,p_cargo,p_salario,p_id_depart,sysdate,null,'S');
     commit;
     dbms_output.put_line('Funcionario cadastrado com sucesso.');
     exception when others then 
        rollback;
        dbms_output.put_line('Erro ao cadastrar o funcionario.');
end;
   
--Executando procedure
begin
    pr_admissao('Igor Teste','M','t.i',2000,2);
end;