# Trabalho Individual 4 MySQL.

### Para modelar o banco de dados que armazena informações sobre cursos, turmas e alunos. Adicionei professores e usei quatro tabelas:


## Tabela "Cursos"
  Colunas: id_curso (chave primária), nome_curso, carga_horaria
  A coluna "id_curso" é a chave primária da tabela.

## Tabela "Professores"
  Colunas: id_professor (chave primária), nome_professor, email_professor e telefone.
  A coluna "id_professor" é a chave primária da tabela.

## Tabela "Turmas"
  Colunas: id_turma (chave primária), id_curso (chave estrangeira referenciando a tabela "Cursos"), id_professor (chave estrangeira          referenciando a tabela "Professores"), periodo, sala.
   As colunas "id_curso" e "id_professor" são chaves estrangeiras referenciando as tabelas "Cursos" e "Professores", respectivamente. 
A combinação das colunas "id_curso", "id_professor" e "periodo" deve ser única, para garantir que não haja duas turmas com o mesmo curso, professor e período.

## Tabela "Alunos"
  Colunas: id_aluno (chave primária), nome_aluno, email_aluno, telefone, id_turma (chave estrangeira referenciando a tabela "Turmas").
  A coluna "id_turma" é uma chave estrangeira referenciando a tabela "Turmas".
