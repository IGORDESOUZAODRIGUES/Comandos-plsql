--CRUD: Bloco anonimo para realizar as operaçoes basicas
--Opçoes: 1 = Select; 2 = Inset; 3 = Update; 4 = Delete;
declare
    v_verificador varchar2(1);
    v_opcao number;
    v_nova_mat funcionario.matricula%TYPE;
    v_novo_func funcionario.nome%TYPE;
    --Cursor para armazenar dados da tabela funcionario
    cursor cr_func is
    select * from funcionario  where matricula = v_nova_mat;
    
begin
    v_opcao := 4;
    v_nova_mat :=30;
    v_novo_func := 'Igor';
    --Opçao 1: Informar dados do cursor (select)
    begin
        select 's' into v_verificador from funcionario where matricula = v_nova_mat;
        exception when others then
        v_verificador := null;
    end;
    
     --inicio do if(comando de condição)
    if v_opcao = 1 then 
        if v_verificador = 's' then
           for i in cr_func loop
                dbms_output.put_line('Matricula: '||i.matricula);
           end loop;
        else
            dbms_output.put_line('Matricula nao encontrada');
        end if;
    end if;
    --Opcao 2: Inserir dados na tabela funcionario, verificando se nao existe matricula ja cadastrada
    if v_opcao = 2 then
        if v_verificador = 's' then
            for i in cr_func loop
                dbms_output.put_line('Matricula ja registrada! ');
            end loop;
        else
            insert into funcionario (matricula,nome,sexo,cargo,salario,id_depart) values (v_nova_mat,v_novo_func,'M','TI',0001,2);
            commit;
            dbms_output.put_line('Dados inseridos com sucesso!');
        end if;
    end if;
    --Opcao 3: Atualizar dados do funcionario de acordo com a matricula informada, verificando se existe matricula cadastrada
    if v_opcao = 3 then
        if v_verificador = 's' then
            for i in cr_func loop
                update funcionario set cargo = 'T.i'  where matricula = v_nova_mat;
                commit;
                dbms_output.put_line('Matricula atualizada com sucesso! ');
            end loop;
        else
            dbms_output.put_line('Matricula nao encontrada! ');
        end if;
    end if;
    -- Opcap 4: Deletar dados do funcionario de acordo com a matricula informada, verificando se existe matricula cadastrada
    if v_opcao = 4 then
        if v_verificador = 's' then
            for i in cr_func loop
                delete from funcionario where matricula = v_nova_mat;
                dbms_output.put_line('Matricula deletada com sucesso!');
            end loop;
        else
            dbms_output.put_line('Matricula nao existe');
        end if;
    end if;

end;
