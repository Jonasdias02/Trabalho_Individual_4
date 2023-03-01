CREATE DATABASE resilia_senac;
USE resilia_senac;

CREATE TABLE Cursos (
  id_curso INT PRIMARY KEY,
  nome_curso VARCHAR(50) NOT NULL,
  carga_horaria INT NOT NULL,
  descricao TEXT
);

CREATE TABLE Professores (
  id_professor INT PRIMARY KEY,
  nome_professor VARCHAR(50) NOT NULL,
  email_professor VARCHAR(50) NOT NULL,
  telefone VARCHAR(20)
);

CREATE TABLE Turmas (
  id_turma INT PRIMARY KEY,
  id_curso INT NOT NULL,
  id_professor INT NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE NOT NULL,
  sala VARCHAR(10) NOT NULL,
  UNIQUE (id_curso, id_professor, periodo),
  FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
  FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
);

CREATE TABLE Alunos (
  id_aluno INT PRIMARY KEY,
  nome_aluno VARCHAR(50) NOT NULL,
  email_aluno VARCHAR(50) NOT NULL,
  telefone VARCHAR(20),
  id_turma INT NOT NULL,
  FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma)
);
