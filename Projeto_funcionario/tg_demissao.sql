--4° Criar tregger de demissao.
create or replace trigger tg_demissao
before update on funcionario
for each row
begin
    update funcionario set dt_demissao = sysdate where matricula = :new.matricula;
    commit;
    exception when others then 
    rollback;
end;
