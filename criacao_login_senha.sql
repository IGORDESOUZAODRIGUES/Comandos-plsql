-- Bloco para criação de login e senha atraves dos dados informados.
-- Login: Vai ser as 3 primeiras letras do nome concatenada com as  3 ultimas.
-- Senha: Vai ser os 3 primeiros digitos do cpf mais as 2 primeiras letras do nome e os 2 ultimos digitos do cpf.
-- Funções utilizadas: 
    -- Length: Serve para contar os caracteres.
    -- Rpad: Serve para preencher o campo a direita.
    -- Rtrim: Serve para excluir o espaço vazio a direita.
    -- Substr: Serve para retornar um caracter que começa em uma posição A ate a posição B.
    -- Lower: Usado para converter caracteres para minúsculos 
    
declare
    v_nome varchar2(50);
    v_cpf varchar2(11);
    v_login  varchar2(6);
    v_senha varchar2(7);
begin
    v_nome := 'Trem Bala';
    v_cpf := '12771619687';
    if (length(v_nome) < 6 or length(v_cpf) < 11) then 
        dbms_output.put_line('Dados fornecidos não atende os requisitos');
    else
        v_login := lower(rpad(rtrim(substr(v_nome,1,3),' '),3, substr(v_nome,4,1)) || substr(v_nome,-3,3));
        v_senha := substr(v_cpf, 1, 3) || substr(lower(v_nome), 1, 2) || substr(v_cpf,-2,2);
        
        dbms_output.put_line('De acordo com os dados fornecidos por ' || v_nome || ' do v_cpf: '|| v_cpf || ' foram criados os seguintes dados: ');
        dbms_output.put_line('v_login : '|| v_login);
        dbms_output.put_line('v_senha : '|| v_senha);
    end if;
end;
