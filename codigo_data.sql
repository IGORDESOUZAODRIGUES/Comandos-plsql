declare
  dt_vencimento date := '01/07/2022';
begin
  dbms_output.put_line('Data atual: '||sysdate);
  dbms_output.put_line('Data do vencimento da fatura: '||dt_vencimento);
  dbms_output.put_line('Quantos dias faltam para o vencimento: '||round(dt_vencimento - sysdate));
  dt_vencimento := dt_vencimento -10;
  dbms_output.put_line('Melhor dia de compra: '||dt_vencimento);
end;