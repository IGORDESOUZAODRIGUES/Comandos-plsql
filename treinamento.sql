 --declaração das veriais 
   v_opcao NUMBER;
   v_verificador VARCHAR2(1);
   v_novo_id curso.id_curso%TYPE;
   v_novo_nome curso.nome%TYPE;
 --inicio do cursor
  CURSOR cr_crud is
     select * from curso  where id_curso = v_novo_id;
BEGIN
   v_opcao := 1;
   v_novo_id := 11;
   v_novo_nome := null;
   BEGIN
      select 's' into v_verificador from curso where id_curso = v_novo_id;
   EXCEPTION WHEN OTHERS THEN
       v_verificador := null;
   end;
   --inicio do if(comando de condição)
   IF  v_opcao = 1 then
      if v_verificador = 's' then
          for i in cr_crud loop
             dbms_output.put_line('Identificador do curso: '||i.id_curso);
             dbms_output.put_line('Nome do curso: '||i.nome);
          end loop;
      else 
         dbms_output.put_line('ID não cadastrado');
      end if;
   end if;
END;


--select 
--insert tbm funcionario
--update
--delete
