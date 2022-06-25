--Insert na tabela departamento 
insert into departamento values(sq_departamento.nextval,'T.I');
insert into departamento values(sq_departamento.nextval,'Recursos humanos');
insert into departamento values(sq_departamento.nextval,'Contabilidade');
commit;

select * from departamento;
select * from funcionario;

--insert na tabela funcionario
insert into funcionario values(sq_matricula.nextval,'MARGARIDA MARIA FRANCA DE OLIVEIRA','F','ANALISTA DE RH',2500,4);
insert into funcionario values(sq_matricula.nextval,'AFONSO CELSO MARTINS BARBOSA','M','ANALISTA DE SISTEMA',1000,2);
insert into funcionario values(sq_matricula.nextval,'ESTELA LIMA MARTINS','F','AUX. CONTABILIDADE',1000,6);
insert into funcionario values(sq_matricula.nextval,'MARIA SOCORRO DE OLIVEIRA AGUIAR','F','ANALISTA DE SISTEMA',3200,2);
insert into funcionario values(sq_matricula.nextval,'OTACIANO JAVI DE SOUSA','M','ASSISTENTE SOCIAL',4160,4);
insert into funcionario values(sq_matricula.nextval,'IVELTA MEDEIROS DE ARAUJO','F','AUX. CONTABILIDADE',4160,3);
insert into funcionario values(sq_matricula.nextval,'CARLOS ALBERTO DA SILVA MAGALHAES','M','ESTAGIARIO',4160,2);
insert into funcionario values(sq_matricula.nextval,'HELADIO GOUVEIA OLIVEIRA','M','AUXILIAR DE CONTAS ',1040,6);
insert into funcionario values(sq_matricula.nextval,'GENIERE BATISTA DE OLIVEIRA','F','ASSISTENTE SOCIAL',2000,4);
insert into funcionario values(sq_matricula.nextval,'EUNICE VIEIRA DE OLIVEIRA','F','ANALISTA DE SISTEMA',2293,71,2);
insert into funcionario values(sq_matricula.nextval,'MARIA ELISABETE LIMA SILVA','F','TESTER',3500,2);
insert into funcionario values(sq_matricula.nextval,'CLAUDIA TANIA GOIS DE OLIVEIRA SALDANHA','F','AUX. CONTABILIDADE',600,6);
commit;