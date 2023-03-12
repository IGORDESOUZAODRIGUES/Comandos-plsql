--3° Criar procedure de demissao.

create or replace procedure pr_demissao (p_matricula number) is
begin
    update funcionario set fl_ativo = 'N',dt_demissao = sysdate where matricula = p_matricula;
    commit;
    dbms_output.put_line('Funcionario demitido.');
    exception when others then 
    rollback;
    dbms_output.put_line('Erro ao detimir funcionario.');
end;

begin 
    pr_demissao(32);
end;