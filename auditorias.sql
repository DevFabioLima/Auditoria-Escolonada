-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Fev-2020 às 12:56
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `auditoriaescalonada`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auditoria`
--

CREATE TABLE `auditoria` (
  `id` int(11) NOT NULL,
  `setor` varchar(255) NOT NULL,
  `semana` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `auditor` varchar(255) NOT NULL,
  `data_realizado` datetime DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `data` date DEFAULT NULL,
  `turno` varchar(255) DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `re` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auditoria`
--

INSERT INTO `auditoria` (`id`, `setor`, `semana`, `status`, `auditor`, `data_realizado`, `obs`, `created_at`, `updated_at`, `data`, `turno`, `cargo`, `ano`, `re`) VALUES
(28, 'Linha Tubulares', 1, 'Planejado', 'Luciano Ramos', NULL, '', '2020-01-28 17:07:35', '2020-01-28 17:07:35', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(29, 'Linha Tubulares', 2, 'Planejado', 'Gilson Luciano', NULL, '', '2020-01-28 17:08:38', '2020-01-28 17:08:38', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(30, 'Linha Tubulares', 3, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-01-28 17:08:55', '2020-01-28 17:08:55', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(31, 'Linha Tubulares', 4, 'Planejado', 'Joel Melo', NULL, '', '2020-01-28 17:09:13', '2020-01-28 17:09:13', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(32, 'Linha Tubulares', 5, 'Planejado', 'Sergio Silva', NULL, '', '2020-01-28 17:13:08', '2020-01-28 17:13:08', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(33, 'Linha Tubulares', 6, 'Planejado', 'Ivan Borges', NULL, '', '2020-01-28 17:13:25', '2020-01-28 17:13:25', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(34, 'Linha Tubulares', 7, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-01-28 17:13:49', '2020-01-28 17:13:49', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(35, 'Linha Tubulares', 8, 'Planejado', 'Gison Souza', NULL, '', '2020-01-28 17:14:10', '2020-01-28 17:14:10', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(36, 'Linha Tubulares', 9, 'Planejado', 'Carlos Casadei', NULL, '', '2020-01-28 17:14:29', '2020-01-28 17:14:29', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(37, 'Linha Tubulares', 10, 'Planejado', 'Ronieri Castro', NULL, '', '2020-01-28 17:16:05', '2020-01-28 17:16:05', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(38, 'Linha Tubulares', 11, 'Planejado', 'Alan Silva', NULL, '', '2020-01-28 17:16:30', '2020-01-28 17:16:30', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(39, 'Linha Tubulares', 12, 'Planejado', 'Agda Lanza', NULL, '', '2020-01-28 17:17:08', '2020-01-28 17:17:08', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(40, 'Linha Tubulares', 13, 'Planejado', 'Luciano Ramos', NULL, '', '2020-01-28 17:18:00', '2020-01-28 17:18:00', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(41, 'Linha Tubulares', 14, 'Planejado', 'Gilson Luciano', NULL, '', '2020-01-28 17:18:36', '2020-01-28 17:18:36', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(42, 'Linha Tubulares', 15, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-01-28 17:19:04', '2020-01-28 17:19:04', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(43, 'Linha Tubulares', 16, 'Planejado', 'Joel Melo', NULL, '', '2020-01-28 17:19:36', '2020-01-28 17:19:36', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(44, 'Linha Tubulares', 17, 'Planejado', 'Sergio Silva', NULL, '', '2020-01-28 17:20:02', '2020-01-28 17:20:02', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(45, 'Linha Tubulares', 18, 'Planejado', 'Ivan Borges', NULL, '', '2020-01-28 17:21:03', '2020-01-28 17:21:03', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(46, 'Linha Tubulares', 19, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-01-28 17:21:35', '2020-01-28 17:21:35', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(47, 'Linha Tubulares', 20, 'Planejado', 'Gison Souza', NULL, '', '2020-01-28 17:22:01', '2020-01-28 17:22:01', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(48, 'Linha Tubulares', 21, 'Planejado', 'Carlos Casadei', NULL, '', '2020-01-28 17:22:47', '2020-01-28 17:22:47', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(49, 'Linha Tubulares', 22, 'Planejado', 'Ronieri Castro', NULL, '', '2020-01-28 17:24:06', '2020-01-28 17:24:06', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(50, 'Linha Tubulares', 23, 'Planejado', 'Alan Silva', NULL, '', '2020-01-28 17:25:21', '2020-01-28 17:25:21', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(51, 'Linha Tubulares', 24, 'Planejado', 'Agda Lanza', NULL, '', '2020-01-28 17:25:56', '2020-01-28 17:25:56', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(52, 'Linha Tubulares', 25, 'Planejado', 'Luciano Ramos', NULL, '', '2020-01-28 17:26:25', '2020-01-28 17:26:25', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(53, 'Linha Tubulares', 26, 'Planejado', 'Gilson Luciano', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(54, 'Linha Tubulares', 27, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-01-28 17:33:00', '2020-01-28 17:33:00', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(55, 'Linha Tubulares', 28, 'Planejado', 'Joel Melo', NULL, '', '2020-01-28 17:33:37', '2020-01-28 17:33:37', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(56, 'Linha Tubulares', 29, 'Planejado', 'Sergio Silva', NULL, '', '2020-01-28 17:34:03', '2020-01-28 17:34:03', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(57, 'Linha Tubulares', 30, 'Planejado', 'Ivan Borges', NULL, '', '2020-01-28 17:34:25', '2020-01-28 17:34:25', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(58, 'Linha Tubulares', 31, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-01-28 17:35:15', '2020-01-28 17:35:15', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(59, 'Linha Tubulares', 32, 'Planejado', 'Gison Souza', NULL, '', '2020-01-28 17:35:39', '2020-01-28 17:35:39', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(60, 'Linha Tubulares', 33, 'Planejado', 'Carlos Casadei', NULL, '', '2020-01-28 17:36:19', '2020-01-28 17:36:19', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(61, 'Linha Tubulares', 34, 'Planejado', 'Ronieri Castro', NULL, '', '2020-01-28 17:36:48', '2020-01-28 17:36:48', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(62, 'Linha Tubulares', 35, 'Planejado', 'Alan Silva', NULL, '', '2020-01-28 17:37:35', '2020-01-28 17:37:35', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(63, 'Linha Tubulares', 36, 'Planejado', 'Agda Lanza', NULL, '', '2020-01-28 17:38:09', '2020-01-28 17:38:09', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(64, 'Linha Tubulares', 37, 'Planejado', 'Luciano Ramos', NULL, '', '2020-01-28 17:38:40', '2020-01-28 17:38:40', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(65, 'Linha Tubulares', 38, 'Planejado', 'Gilson Luciano', NULL, '', '2020-01-28 17:39:07', '2020-01-28 17:39:07', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(66, 'Linha Tubulares', 39, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-01-28 17:39:30', '2020-01-28 17:39:30', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(67, 'Linha Tubulares', 40, 'Planejado', 'Joel Melo', NULL, '', '2020-01-28 17:40:01', '2020-01-28 17:40:01', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(68, 'Linha Tubulares', 41, 'Planejado', 'Sergio Silva', NULL, '', '2020-01-28 17:40:56', '2020-01-28 17:40:56', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(92, 'Linha Tubulares', 42, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 11:18:04', '2020-02-03 11:18:04', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(93, 'Linha Tubulares', 43, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 11:19:44', '2020-02-03 11:19:44', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(94, 'Linha Tubulares', 44, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 11:20:20', '2020-02-03 11:20:20', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(95, 'Linha Tubulares', 45, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 11:20:58', '2020-02-03 11:20:58', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(96, 'Linha Tubulares', 46, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 11:21:31', '2020-02-03 11:21:31', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(97, 'Linha Tubulares', 47, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 11:21:53', '2020-02-03 11:21:53', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(98, 'Linha Tubulares', 48, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 11:22:04', '2020-02-03 11:22:04', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(99, 'Linha Tubulares', 49, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 11:22:27', '2020-02-03 11:22:27', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(100, 'Linha Tubulares', 50, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 11:22:39', '2020-02-03 11:22:39', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(101, 'Linha Tubulares', 51, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 11:22:59', '2020-02-03 11:22:59', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(102, 'Linha Tubulares', 52, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 11:23:14', '2020-02-03 11:23:14', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(103, 'Linha de Forjas', 1, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 11:24:35', '2020-02-03 11:24:35', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(104, 'Linha de Forjas', 2, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 11:25:36', '2020-02-03 11:25:36', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(105, 'Linha de Forjas', 3, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 11:25:50', '2020-02-03 11:25:50', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(106, 'Linha de Forjas', 4, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 11:26:12', '2020-02-03 11:26:12', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(107, 'Linha de Forjas', 5, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 11:26:26', '2020-02-03 11:26:26', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(108, 'Linha de Forjas', 6, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 11:26:43', '2020-02-03 11:26:43', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(109, 'Linha de Forjas', 7, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 11:27:38', '2020-02-03 11:27:38', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(110, 'Linha de Forjas', 8, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 11:27:55', '2020-02-03 11:27:55', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(111, 'Linha de Forjas', 9, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 11:28:12', '2020-02-03 11:28:12', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(112, 'Linha de Forjas', 10, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 11:28:26', '2020-02-03 11:28:26', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(113, 'Linha de Forjas', 11, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 11:28:36', '2020-02-03 11:28:36', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(114, 'Linha de Forjas', 12, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 11:29:02', '2020-02-03 11:29:02', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(115, 'Linha de Forjas', 13, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 11:29:18', '2020-02-03 11:29:18', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(116, 'Linha de Forjas', 14, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 11:30:22', '2020-02-03 11:30:22', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(117, 'Linha de Forjas', 15, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 11:30:33', '2020-02-03 11:30:33', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(118, 'Linha de Forjas', 16, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 11:30:47', '2020-02-03 11:30:47', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(119, 'Linha de Forjas', 17, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 11:30:59', '2020-02-03 11:30:59', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(120, 'Linha de Forjas', 18, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 11:31:16', '2020-02-03 11:31:16', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(121, 'Linha de Forjas', 19, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 11:31:29', '2020-02-03 11:31:29', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(122, 'Linha de Forjas', 20, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 11:32:12', '2020-02-03 11:32:12', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(123, 'Linha de Forjas', 21, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 11:32:28', '2020-02-03 11:32:28', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(124, 'Linha de Forjas', 22, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 11:32:54', '2020-02-03 11:32:54', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(125, 'Linha de Forjas', 23, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 11:33:08', '2020-02-03 11:33:08', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(127, 'Linha de Forjas', 24, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 11:33:52', '2020-02-03 11:33:52', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(128, 'Linha de Forjas', 25, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 11:34:06', '2020-02-03 11:34:06', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(129, 'Linha de Forjas', 26, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 11:34:19', '2020-02-03 11:34:19', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(130, 'Linha de Forjas', 27, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 11:34:35', '2020-02-03 11:34:35', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(131, 'Linha de Forjas', 28, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 11:34:57', '2020-02-03 11:34:57', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(132, 'Linha de Forjas', 29, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 11:35:28', '2020-02-03 11:35:28', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(133, 'Linha de Forjas', 30, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 11:36:17', '2020-02-03 11:36:17', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(134, 'Linha de Forjas', 31, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 11:36:29', '2020-02-03 11:36:29', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(135, 'Linha de Forjas', 32, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 11:36:42', '2020-02-03 11:36:42', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(136, 'Linha de Forjas', 33, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 11:36:54', '2020-02-03 11:36:54', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(137, 'Linha de Forjas', 34, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 11:37:10', '2020-02-03 11:37:10', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(138, 'Linha de Forjas', 35, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 11:37:22', '2020-02-03 11:37:22', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(139, 'Linha de Forjas', 36, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 11:39:38', '2020-02-03 11:39:38', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(140, 'Linha de Forjas', 37, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 11:39:51', '2020-02-03 11:39:51', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(141, 'Linha de Forjas', 38, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 11:40:02', '2020-02-03 11:40:02', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(142, 'Linha de Forjas', 39, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 11:40:13', '2020-02-03 11:40:13', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(143, 'Linha de Forjas', 40, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 11:40:26', '2020-02-03 11:40:26', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(144, 'Linha de Forjas', 41, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 11:40:52', '2020-02-03 11:40:52', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(145, 'Linha de Forjas', 42, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 11:41:06', '2020-02-03 11:41:06', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(146, 'Linha de Forjas', 43, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 11:41:17', '2020-02-03 11:41:17', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(147, 'Linha de Forjas', 44, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 11:41:28', '2020-02-03 11:41:28', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(148, 'Linha de Forjas', 45, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 11:41:44', '2020-02-03 11:41:44', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(149, 'Linha de Forjas', 46, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 11:41:56', '2020-02-03 11:41:56', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(150, 'Linha de Forjas', 47, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 11:42:05', '2020-02-03 11:42:05', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(151, 'Linha de Forjas', 48, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 11:42:21', '2020-02-03 11:42:21', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(152, 'Linha de Forjas', 49, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 11:42:38', '2020-02-03 11:42:38', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(153, 'Linha de Forjas', 50, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 11:42:49', '2020-02-03 11:42:49', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(154, 'Linha de Forjas', 51, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 11:43:02', '2020-02-03 11:43:02', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(155, 'Linha de Forjas', 52, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 11:43:18', '2020-02-03 11:43:18', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(156, 'Linha de Fornos', 1, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 11:44:16', '2020-02-03 11:44:16', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(157, 'Linha de Fornos', 2, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 11:44:28', '2020-02-03 11:44:28', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(158, 'Linha de Fornos', 3, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 11:44:47', '2020-02-03 11:44:47', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(159, 'Linha de Fornos', 4, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 11:44:56', '2020-02-03 11:44:56', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(160, 'Linha de Fornos', 5, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 11:46:10', '2020-02-03 11:46:10', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(161, 'Linha de Fornos', 6, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 11:46:44', '2020-02-03 11:46:44', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(162, 'Linha de Fornos', 7, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 11:46:54', '2020-02-03 11:46:54', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(163, 'Linha de Fornos', 8, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 11:47:27', '2020-02-03 11:47:27', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(164, 'Linha de Fornos', 9, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 11:47:52', '2020-02-03 11:47:52', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(165, 'Linha de Fornos', 10, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 11:48:04', '2020-02-03 11:48:04', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(166, 'Linha de Fornos', 11, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 11:48:13', '2020-02-03 11:48:13', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(167, 'Linha de Fornos', 12, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 11:48:28', '2020-02-03 11:48:28', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(168, 'Linha de Fornos', 13, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 11:48:42', '2020-02-03 11:48:42', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(169, 'Linha de Fornos', 14, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 11:48:54', '2020-02-03 11:48:54', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(170, 'Linha de Fornos', 15, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 11:49:56', '2020-02-03 11:49:56', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(171, 'Linha de Fornos', 16, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 11:55:28', '2020-02-03 11:55:28', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(172, 'Linha de Fornos', 17, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 11:55:41', '2020-02-03 11:55:41', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(173, 'Linha de Fornos', 18, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 11:55:57', '2020-02-03 11:55:57', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(174, 'Linha de Fornos', 19, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 11:56:08', '2020-02-03 11:56:08', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(175, 'Linha de Fornos', 20, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:09:19', '2020-02-03 12:09:19', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(176, 'Linha de Fornos', 21, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:09:28', '2020-02-03 12:09:28', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(177, 'Linha de Fornos', 22, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:09:38', '2020-02-03 12:09:38', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(178, 'Linha de Fornos', 23, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:09:50', '2020-02-03 12:09:50', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(179, 'Linha de Fornos', 24, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:10:02', '2020-02-03 12:10:02', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(180, 'Linha de Fornos', 25, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:10:21', '2020-02-03 12:10:21', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(181, 'Linha de Fornos', 26, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:10:36', '2020-02-03 12:10:36', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(182, 'Linha de Fornos', 27, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:10:50', '2020-02-03 12:10:50', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(183, 'Linha de Fornos', 28, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:11:02', '2020-02-03 12:11:02', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(184, 'Linha de Fornos', 29, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:11:19', '2020-02-03 12:11:19', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(185, 'Linha de Fornos', 30, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:11:32', '2020-02-03 12:11:32', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(186, 'Linha de Fornos', 31, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:11:54', '2020-02-03 12:11:54', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(187, 'Linha de Fornos', 32, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:12:08', '2020-02-03 12:12:08', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(188, 'Linha de Fornos', 33, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:13:23', '2020-02-03 12:13:23', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(189, 'Linha de Fornos', 34, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:13:33', '2020-02-03 12:13:33', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(190, 'Linha de Fornos', 35, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:13:47', '2020-02-03 12:13:47', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(191, 'Linha de Fornos', 36, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:14:01', '2020-02-03 12:14:01', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(192, 'Linha de Fornos', 37, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:14:17', '2020-02-03 12:14:17', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(193, 'Linha de Fornos', 38, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:14:30', '2020-02-03 12:14:30', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(194, 'Linha de Fornos', 39, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:14:47', '2020-02-03 12:14:47', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(195, 'Linha de Fornos', 40, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:15:01', '2020-02-03 12:15:01', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(196, 'Linha de Fornos', 41, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:15:13', '2020-02-03 12:15:13', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(197, 'Linha de Fornos', 42, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:15:32', '2020-02-03 12:15:32', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(198, 'Linha de Fornos', 43, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:15:42', '2020-02-03 12:15:42', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(199, 'Linha de Fornos', 44, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:16:01', '2020-02-03 12:16:01', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(200, 'Linha de Fornos', 45, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:16:17', '2020-02-03 12:16:17', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(201, 'Linha de Fornos', 46, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:16:26', '2020-02-03 12:16:26', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(202, 'Linha de Fornos', 47, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:16:39', '2020-02-03 12:16:39', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(203, 'Linha de Fornos', 48, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:16:52', '2020-02-03 12:16:52', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(204, 'Linha de Fornos', 49, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:17:10', '2020-02-03 12:17:10', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(205, 'Linha de Fornos', 50, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:17:20', '2020-02-03 12:17:20', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(206, 'Linha de Fornos', 51, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:17:35', '2020-02-03 12:17:35', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(207, 'Linha de Fornos', 52, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:17:45', '2020-02-03 12:17:45', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(208, 'Usinagem/Recalque', 1, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:18:39', '2020-02-03 12:18:39', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(209, 'Usinagem/Recalque', 2, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:18:49', '2020-02-03 12:18:49', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(210, 'Usinagem/Recalque', 3, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:18:58', '2020-02-03 12:18:58', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(211, 'Usinagem/Recalque', 4, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:19:10', '2020-02-03 12:19:10', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(212, 'Usinagem/Recalque', 5, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:19:24', '2020-02-03 12:19:24', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(213, 'Usinagem/Recalque', 6, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:19:33', '2020-02-03 12:19:33', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(214, 'Usinagem/Recalque', 7, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:19:48', '2020-02-03 12:19:48', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(215, 'Usinagem/Recalque', 8, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:20:22', '2020-02-03 12:20:22', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(216, 'Usinagem/Recalque', 9, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:20:48', '2020-02-03 12:20:48', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(217, 'Usinagem/Recalque', 10, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:20:59', '2020-02-03 12:20:59', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(218, 'Usinagem/Recalque', 11, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:21:14', '2020-02-03 12:21:14', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(219, 'Usinagem/Recalque', 12, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:21:26', '2020-02-03 12:21:26', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(220, 'Usinagem/Recalque', 13, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:21:36', '2020-02-03 12:21:36', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(221, 'Usinagem/Recalque', 14, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:21:49', '2020-02-03 12:21:49', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(222, 'Usinagem/Recalque', 15, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:21:57', '2020-02-03 12:21:57', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(223, 'Usinagem/Recalque', 16, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:22:10', '2020-02-03 12:22:10', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(224, 'Usinagem/Recalque', 17, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:22:25', '2020-02-03 12:22:25', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(225, 'Usinagem/Recalque', 18, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:22:36', '2020-02-03 12:22:36', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(226, 'Usinagem/Recalque', 19, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:22:56', '2020-02-03 12:22:56', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(227, 'Usinagem/Recalque', 20, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:23:08', '2020-02-03 12:23:08', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(228, 'Usinagem/Recalque', 21, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:23:17', '2020-02-03 12:23:17', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(229, 'Usinagem/Recalque', 22, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:23:28', '2020-02-03 12:23:28', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(230, 'Usinagem/Recalque', 23, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:23:42', '2020-02-03 12:23:42', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(231, 'Usinagem/Recalque', 24, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:23:54', '2020-02-03 12:23:54', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(232, 'Usinagem/Recalque', 25, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:24:05', '2020-02-03 12:24:05', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(233, 'Usinagem/Recalque', 26, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:24:20', '2020-02-03 12:24:20', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(234, 'Usinagem/Recalque', 27, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:24:30', '2020-02-03 12:24:30', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(235, 'Usinagem/Recalque', 28, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:24:43', '2020-02-03 12:24:43', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(236, 'Usinagem/Recalque', 29, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:24:53', '2020-02-03 12:24:53', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(237, 'Usinagem/Recalque', 30, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:25:03', '2020-02-03 12:25:03', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(238, 'Usinagem/Recalque', 31, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:25:18', '2020-02-03 12:25:18', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(239, 'Usinagem/Recalque', 32, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:25:40', '2020-02-03 12:25:40', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(240, 'Usinagem/Recalque', 33, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:25:50', '2020-02-03 12:25:50', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(241, 'Usinagem/Recalque', 34, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:26:00', '2020-02-03 12:26:00', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(242, 'Usinagem/Recalque', 35, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:26:10', '2020-02-03 12:26:10', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(243, 'Usinagem/Recalque', 36, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:26:25', '2020-02-03 12:26:25', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(244, 'Usinagem/Recalque', 37, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:26:38', '2020-02-03 12:26:38', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(245, 'Usinagem/Recalque', 38, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:26:51', '2020-02-03 12:26:51', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(246, 'Usinagem/Recalque', 39, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:27:04', '2020-02-03 12:27:04', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(247, 'Usinagem/Recalque', 40, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:27:18', '2020-02-03 12:27:18', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(248, 'Usinagem/Recalque', 41, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:27:27', '2020-02-03 12:27:27', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(249, 'Usinagem/Recalque', 42, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:27:40', '2020-02-03 12:27:40', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(250, 'Usinagem/Recalque', 43, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:27:51', '2020-02-03 12:27:51', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(251, 'Usinagem/Recalque', 44, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:28:02', '2020-02-03 12:28:02', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(252, 'Usinagem/Recalque', 45, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:28:22', '2020-02-03 12:28:22', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(253, 'Usinagem/Recalque', 46, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:28:38', '2020-02-03 12:28:38', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(254, 'Usinagem/Recalque', 47, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:28:54', '2020-02-03 12:28:54', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(255, 'Usinagem/Recalque', 48, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:29:05', '2020-02-03 12:29:05', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(256, 'Usinagem/Recalque', 49, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:29:16', '2020-02-03 12:29:16', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(257, 'Usinagem/Recalque', 50, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:29:32', '2020-02-03 12:29:32', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(258, 'Usinagem/Recalque', 51, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:29:41', '2020-02-03 12:29:41', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(259, 'Usinagem/Recalque', 52, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:29:55', '2020-02-03 12:29:55', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(260, 'Calibragem/Jatos/Cravamento de Arruelas', 1, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:31:28', '2020-02-03 12:31:28', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(261, 'Calibragem/Jatos/Cravamento de Arruelas', 2, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:31:37', '2020-02-03 12:31:37', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(262, 'Calibragem/Jatos/Cravamento de Arruelas', 3, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:31:47', '2020-02-03 12:31:47', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(263, 'Calibragem/Jatos/Cravamento de Arruelas', 4, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:31:57', '2020-02-03 12:31:57', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(264, 'Calibragem/Jatos/Cravamento de Arruelas', 5, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:32:10', '2020-02-03 12:32:10', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(265, 'Calibragem/Jatos/Cravamento de Arruelas', 6, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:32:19', '2020-02-03 12:32:19', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(266, 'Calibragem/Jatos/Cravamento de Arruelas', 7, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:32:34', '2020-02-03 12:32:34', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(267, 'Calibragem/Jatos/Cravamento de Arruelas', 8, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:32:44', '2020-02-03 12:32:44', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(268, 'Calibragem/Jatos/Cravamento de Arruelas', 9, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:33:09', '2020-02-03 12:33:09', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(269, 'Calibragem/Jatos/Cravamento de Arruelas', 10, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:33:21', '2020-02-03 12:33:21', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(270, 'Calibragem/Jatos/Cravamento de Arruelas', 11, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:33:32', '2020-02-03 12:33:32', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(271, 'Calibragem/Jatos/Cravamento de Arruelas', 12, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:33:42', '2020-02-03 12:33:42', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(272, 'Calibragem/Jatos/Cravamento de Arruelas', 13, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:33:53', '2020-02-03 12:33:53', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(273, 'Calibragem/Jatos/Cravamento de Arruelas', 14, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:34:06', '2020-02-03 12:34:06', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(274, 'Calibragem/Jatos/Cravamento de Arruelas', 15, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:34:18', '2020-02-03 12:34:18', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(275, 'Calibragem/Jatos/Cravamento de Arruelas', 16, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:34:26', '2020-02-03 12:34:26', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(276, 'Calibragem/Jatos/Cravamento de Arruelas', 17, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:34:38', '2020-02-03 12:34:38', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(277, 'Calibragem/Jatos/Cravamento de Arruelas', 18, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:34:51', '2020-02-03 12:34:51', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(278, 'Calibragem/Jatos/Cravamento de Arruelas', 19, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:35:02', '2020-02-03 12:35:02', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(279, 'Calibragem/Jatos/Cravamento de Arruelas', 20, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:35:11', '2020-02-03 12:35:11', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(280, 'Calibragem/Jatos/Cravamento de Arruelas', 21, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:35:59', '2020-02-03 12:35:59', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(281, 'Calibragem/Jatos/Cravamento de Arruelas', 22, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:36:08', '2020-02-03 12:36:08', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(282, 'Calibragem/Jatos/Cravamento de Arruelas', 23, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:36:22', '2020-02-03 12:36:22', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(283, 'Calibragem/Jatos/Cravamento de Arruelas', 24, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:36:33', '2020-02-03 12:36:33', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(284, 'Calibragem/Jatos/Cravamento de Arruelas', 25, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:36:46', '2020-02-03 12:36:46', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(285, 'Calibragem/Jatos/Cravamento de Arruelas', 26, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:36:56', '2020-02-03 12:36:56', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(286, 'Calibragem/Jatos/Cravamento de Arruelas', 27, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:37:12', '2020-02-03 12:37:12', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(287, 'Calibragem/Jatos/Cravamento de Arruelas', 28, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:37:26', '2020-02-03 12:37:26', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(288, 'Calibragem/Jatos/Cravamento de Arruelas', 29, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:37:36', '2020-02-03 12:37:36', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(289, 'Calibragem/Jatos/Cravamento de Arruelas', 30, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:37:51', '2020-02-03 12:37:51', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(290, 'Calibragem/Jatos/Cravamento de Arruelas', 31, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:38:05', '2020-02-03 12:38:05', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(291, 'Calibragem/Jatos/Cravamento de Arruelas', 32, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:38:15', '2020-02-03 12:38:15', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(292, 'Calibragem/Jatos/Cravamento de Arruelas', 33, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:38:35', '2020-02-03 12:38:35', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(293, 'Calibragem/Jatos/Cravamento de Arruelas', 34, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:38:45', '2020-02-03 12:38:45', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(294, 'Calibragem/Jatos/Cravamento de Arruelas', 35, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:38:57', '2020-02-03 12:38:57', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(295, 'Calibragem/Jatos/Cravamento de Arruelas', 36, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:39:08', '2020-02-03 12:39:08', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(296, 'Calibragem/Jatos/Cravamento de Arruelas', 37, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:39:18', '2020-02-03 12:39:18', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(297, 'Calibragem/Jatos/Cravamento de Arruelas', 38, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:39:29', '2020-02-03 12:39:29', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(298, 'Calibragem/Jatos/Cravamento de Arruelas', 39, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:39:40', '2020-02-03 12:39:40', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(299, 'Calibragem/Jatos/Cravamento de Arruelas', 40, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:39:53', '2020-02-03 12:39:53', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(300, 'Calibragem/Jatos/Cravamento de Arruelas', 41, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-03 12:40:02', '2020-02-03 12:40:02', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(301, 'Calibragem/Jatos/Cravamento de Arruelas', 42, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-03 12:40:15', '2020-02-03 12:40:15', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(302, 'Calibragem/Jatos/Cravamento de Arruelas', 43, 'Planejado', 'Alan Silva', NULL, '', '2020-02-03 12:40:25', '2020-02-03 12:40:25', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(303, 'Calibragem/Jatos/Cravamento de Arruelas', 44, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-03 12:40:34', '2020-02-03 12:40:34', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(304, 'Calibragem/Jatos/Cravamento de Arruelas', 45, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-03 12:40:47', '2020-02-03 12:40:47', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(305, 'Calibragem/Jatos/Cravamento de Arruelas', 46, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-03 12:41:13', '2020-02-03 12:41:13', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(306, 'Calibragem/Jatos/Cravamento de Arruelas', 47, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-03 12:41:26', '2020-02-03 12:41:26', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(307, 'Calibragem/Jatos/Cravamento de Arruelas', 48, 'Planejado', 'Joel Melo', NULL, '', '2020-02-03 12:41:36', '2020-02-03 12:41:36', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(308, 'Calibragem/Jatos/Cravamento de Arruelas', 49, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-03 12:41:51', '2020-02-03 12:41:51', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(309, 'Calibragem/Jatos/Cravamento de Arruelas', 50, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-03 12:42:01', '2020-02-03 12:42:01', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(310, 'Calibragem/Jatos/Cravamento de Arruelas', 51, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-03 12:42:11', '2020-02-03 12:42:11', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(311, 'Calibragem/Jatos/Cravamento de Arruelas', 52, 'Planejado', 'Gison Souza', NULL, '', '2020-02-03 12:42:23', '2020-02-03 12:42:23', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(315, 'Linha de Pintura', 1, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:01:52', '2020-02-04 11:01:52', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(316, 'Linha de Pintura', 2, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:02:05', '2020-02-04 11:02:05', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(317, 'Linha de Pintura', 3, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:02:18', '2020-02-04 11:02:18', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(318, 'Linha de Pintura', 4, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:03:17', '2020-02-04 11:03:17', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(319, 'Linha de Pintura', 5, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:03:34', '2020-02-04 11:03:34', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(320, 'Linha de Pintura', 6, 'Planejado', 'Alan Silva', NULL, '', '2020-02-04 11:03:47', '2020-02-04 11:03:47', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(321, 'Linha de Pintura', 7, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-04 11:03:58', '2020-02-04 11:03:58', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(322, 'Linha de Pintura', 8, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-04 11:04:10', '2020-02-04 11:04:10', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(323, 'Linha de Pintura', 9, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-04 11:04:45', '2020-02-04 11:04:45', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(324, 'Linha de Pintura', 10, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-04 11:05:03', '2020-02-04 11:05:03', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(325, 'Linha de Pintura', 11, 'Planejado', 'Joel Melo', NULL, '', '2020-02-04 11:05:15', '2020-02-04 11:05:15', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(326, 'Linha de Pintura', 12, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-04 11:05:33', '2020-02-04 11:05:33', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(327, 'Linha de Pintura', 13, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:05:56', '2020-02-04 11:05:56', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(328, 'Linha de Pintura', 14, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:06:18', '2020-02-04 11:06:18', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(329, 'Linha de Pintura', 15, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:06:34', '2020-02-04 11:06:34', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(330, 'Linha de Pintura', 16, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:06:45', '2020-02-04 11:06:45', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(331, 'Linha de Pintura', 17, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:06:59', '2020-02-04 11:06:59', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(332, 'Linha de Pintura', 18, 'Planejado', 'Alan Silva', NULL, '', '2020-02-04 11:07:12', '2020-02-04 11:07:12', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(333, 'Linha de Pintura', 19, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-04 11:07:27', '2020-02-04 11:07:27', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(334, 'Linha de Pintura', 20, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-04 11:07:38', '2020-02-04 11:07:38', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(335, 'Linha de Pintura', 21, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-04 11:07:59', '2020-02-04 11:07:59', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(336, 'Linha de Pintura', 22, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-04 11:08:13', '2020-02-04 11:08:13', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(337, 'Linha de Pintura', 23, 'Planejado', 'Joel Melo', NULL, '', '2020-02-04 11:08:25', '2020-02-04 11:08:25', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(338, 'Linha de Pintura', 24, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-04 11:22:40', '2020-02-04 11:22:40', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(339, 'Linha de Pintura', 25, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:22:50', '2020-02-04 11:22:50', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(340, 'Linha de Pintura', 26, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:23:04', '2020-02-04 11:23:04', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(341, 'Linha de Pintura', 27, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:25:06', '2020-02-04 11:25:06', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(342, 'Linha de Pintura', 28, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:25:18', '2020-02-04 11:25:18', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(343, 'Linha de Pintura', 29, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:25:36', '2020-02-04 11:25:36', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(344, 'Linha de Pintura', 30, 'Planejado', 'Alan Silva', NULL, '', '2020-02-04 11:25:49', '2020-02-04 11:25:49', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(345, 'Linha de Pintura', 31, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-04 11:26:15', '2020-02-04 11:26:15', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(346, 'Linha de Pintura', 32, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-04 11:26:28', '2020-02-04 11:26:28', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(347, 'Linha de Pintura', 33, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-04 11:26:53', '2020-02-04 11:26:53', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(348, 'Linha de Pintura', 34, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-04 11:27:06', '2020-02-04 11:27:06', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(349, 'Linha de Pintura', 35, 'Planejado', 'Joel Melo', NULL, '', '2020-02-04 11:27:42', '2020-02-04 11:27:42', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(350, 'Linha de Pintura', 36, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-04 11:28:03', '2020-02-04 11:28:03', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(352, 'Linha de Pintura', 37, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:30:01', '2020-02-04 11:30:01', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(353, 'Linha de Pintura', 38, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:30:44', '2020-02-04 11:30:44', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(354, 'Linha de Pintura', 39, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:31:23', '2020-02-04 11:31:23', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(355, 'Linha de Pintura', 40, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:31:38', '2020-02-04 11:31:38', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(356, 'Linha de Pintura', 41, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:31:54', '2020-02-04 11:31:54', NULL, 'adm', 'Analista Qualidade', 2020, NULL);
INSERT INTO `auditoria` (`id`, `setor`, `semana`, `status`, `auditor`, `data_realizado`, `obs`, `created_at`, `updated_at`, `data`, `turno`, `cargo`, `ano`, `re`) VALUES
(357, 'Linha de Pintura', 42, 'Planejado', 'Alan Silva', NULL, '', '2020-02-04 11:32:08', '2020-02-04 11:32:08', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(358, 'Linha de Pintura', 43, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-04 11:32:16', '2020-02-04 11:32:16', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(359, 'Linha de Pintura', 44, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-04 11:32:27', '2020-02-04 11:32:27', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(360, 'Linha de Pintura', 45, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-04 11:32:39', '2020-02-04 11:32:39', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(361, 'Linha de Pintura', 46, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-04 11:32:57', '2020-02-04 11:32:57', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(362, 'Linha de Pintura', 47, 'Planejado', 'Joel Melo', NULL, '', '2020-02-04 11:33:07', '2020-02-04 11:33:07', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(363, 'Linha de Pintura', 48, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-04 11:33:19', '2020-02-04 11:33:19', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(364, 'Linha de Pintura', 49, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:33:32', '2020-02-04 11:33:32', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(365, 'Linha de Pintura', 50, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:33:45', '2020-02-04 11:33:45', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(366, 'Linha de Pintura', 51, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:33:59', '2020-02-04 11:33:59', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(367, 'Linha de Pintura', 52, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:34:11', '2020-02-04 11:34:11', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(368, 'Linha de Montagem', 1, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:35:03', '2020-02-04 11:35:03', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(369, 'Linha de Montagem', 2, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:35:12', '2020-02-04 11:35:12', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(370, 'Linha de Montagem', 3, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:35:22', '2020-02-04 11:35:22', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(371, 'Linha de Montagem', 4, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:35:34', '2020-02-04 11:35:34', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(372, 'Linha de Montagem', 5, 'Planejado', 'Alan Silva', NULL, '', '2020-02-04 11:35:49', '2020-02-04 11:35:49', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(373, 'Linha de Montagem', 6, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-04 11:35:58', '2020-02-04 11:35:58', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(374, 'Linha de Montagem', 7, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-04 11:36:10', '2020-02-04 11:36:10', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(375, 'Linha de Montagem', 8, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-04 11:36:21', '2020-02-04 11:36:21', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(376, 'Linha de Montagem', 9, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-04 11:36:34', '2020-02-04 11:36:34', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(377, 'Linha de Montagem', 10, 'Planejado', 'Joel Melo', NULL, '', '2020-02-04 11:36:55', '2020-02-04 11:36:55', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(378, 'Linha de Montagem', 11, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-04 11:37:08', '2020-02-04 11:37:08', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(379, 'Linha de Montagem', 12, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:37:22', '2020-02-04 11:37:22', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(380, 'Linha de Montagem', 13, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:37:33', '2020-02-04 11:37:33', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(381, 'Linha de Montagem', 14, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:37:45', '2020-02-04 11:37:45', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(382, 'Linha de Montagem', 15, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:37:55', '2020-02-04 11:37:55', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(383, 'Linha de Montagem', 16, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:38:12', '2020-02-04 11:38:12', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(384, 'Linha de Montagem', 17, 'Planejado', 'Alan Silva', NULL, '', '2020-02-04 11:38:24', '2020-02-04 11:38:24', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(385, 'Linha de Montagem', 18, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-04 11:38:37', '2020-02-04 11:38:37', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(386, 'Linha de Montagem', 19, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-04 11:38:47', '2020-02-04 11:38:47', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(387, 'Linha de Montagem', 20, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-04 11:38:59', '2020-02-04 11:38:59', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(388, 'Linha de Montagem', 21, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-04 11:39:12', '2020-02-04 11:39:12', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(389, 'Linha de Montagem', 22, 'Planejado', 'Joel Melo', NULL, '', '2020-02-04 11:39:22', '2020-02-04 11:39:22', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(390, 'Linha de Montagem', 23, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-04 11:39:52', '2020-02-04 11:39:52', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(391, 'Linha de Montagem', 24, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:40:22', '2020-02-04 11:40:22', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(392, 'Linha de Montagem', 25, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:40:38', '2020-02-04 11:40:38', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(393, 'Linha de Montagem', 26, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:40:49', '2020-02-04 11:40:49', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(394, 'Linha de Montagem', 27, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:41:02', '2020-02-04 11:41:02', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(395, 'Linha de Montagem', 28, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:41:16', '2020-02-04 11:41:16', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(396, 'Linha de Montagem', 29, 'Planejado', 'Alan Silva', NULL, '', '2020-02-04 11:41:28', '2020-02-04 11:41:28', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(397, 'Linha de Montagem', 30, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-04 11:41:37', '2020-02-04 11:41:37', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(398, 'Linha de Montagem', 31, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-04 11:41:50', '2020-02-04 11:41:50', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(399, 'Linha de Montagem', 32, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-04 11:42:02', '2020-02-04 11:42:02', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(400, 'Linha de Montagem', 33, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-04 11:42:18', '2020-02-04 11:42:18', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(402, 'Linha de Montagem', 34, 'Planejado', 'Joel Melo', NULL, '', '2020-02-04 11:43:11', '2020-02-04 11:43:11', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(403, 'Linha de Montagem', 35, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-04 11:43:31', '2020-02-04 11:43:31', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(404, 'Linha de Montagem', 36, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:43:57', '2020-02-04 11:43:57', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(405, 'Linha de Montagem', 37, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:44:09', '2020-02-04 11:44:09', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(406, 'Linha de Montagem', 38, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:44:21', '2020-02-04 11:44:21', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(407, 'Linha de Montagem', 39, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:44:32', '2020-02-04 11:44:32', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(408, 'Linha de Montagem', 40, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:44:45', '2020-02-04 11:44:45', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(409, 'Linha de Montagem', 41, 'Planejado', 'Alan Silva', NULL, '', '2020-02-04 11:44:57', '2020-02-04 11:44:57', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(410, 'Linha de Montagem', 42, 'Planejado', 'Agda Lanza', NULL, '', '2020-02-04 11:45:07', '2020-02-04 11:45:07', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(411, 'Linha de Montagem', 43, 'Planejado', 'Luciano Ramos', NULL, '', '2020-02-04 11:45:21', '2020-02-04 11:45:21', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(419, 'Linha de Montagem', 44, 'Planejado', 'Gilson Luciano', NULL, '', '2020-02-04 11:53:34', '2020-02-04 11:53:34', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(420, 'Linha de Montagem', 45, 'Planejado', 'Rafael Brescansin', NULL, '', '2020-02-04 11:53:48', '2020-02-04 11:53:48', NULL, 'adm', 'Engenharia Processo', 2020, NULL),
(421, 'Linha de Montagem', 46, 'Planejado', 'Joel Melo', NULL, '', '2020-02-04 11:54:04', '2020-02-04 11:54:04', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(422, 'Linha de Montagem', 47, 'Planejado', 'Sergio Silva', NULL, '', '2020-02-04 11:54:15', '2020-02-04 11:54:15', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(423, 'Linha de Montagem', 48, 'Planejado', 'Ivan Borges', NULL, '', '2020-02-04 11:54:25', '2020-02-04 11:54:25', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(424, 'Linha de Montagem', 49, 'Planejado', 'Saulo Oliveira', NULL, '', '2020-02-04 11:54:37', '2020-02-04 11:54:37', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(425, 'Linha de Montagem', 50, 'Planejado', 'Gison Souza', NULL, '', '2020-02-04 11:54:48', '2020-02-04 11:54:48', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(426, 'Linha de Montagem', 51, 'Planejado', 'Carlos Casadei', NULL, '', '2020-02-04 11:54:57', '2020-02-04 11:54:57', NULL, 'adm', 'Supervisor Produção', 2020, NULL),
(427, 'Linha de Montagem', 52, 'Planejado', 'Ronieri Castro', NULL, '', '2020-02-04 11:55:10', '2020-02-04 11:55:10', NULL, 'adm', 'Analista Qualidade', 2020, NULL),
(464, 'Linha de Montagem', 9, 'Planejado', 'Fabio', NULL, 'Devido ao problema na peça 1989', '2020-02-13 19:10:44', '2020-02-13 19:13:30', '2020-02-13', 'adm', 'adm', 2020, NULL),
(465, 'Usinagem/Recalque', 7, 'Planejado', 'Fabio', NULL, '', '2020-02-14 01:51:04', '2020-02-14 01:51:04', NULL, 'adm', 'adm', 2020, NULL),
(466, 'Linha de Pintura', 7, 'Planejado', 'Fabio', NULL, '', '2020-02-14 01:59:17', '2020-02-14 01:59:17', NULL, 'adm', 'adm', 2020, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date DEFAULT NULL,
  `names` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `files`
--

INSERT INTO `files` (`id`, `path`, `created_at`, `updated_at`, `names`, `name`) VALUES
(1, '40b515c473528812db1be74d9bc978f2.jpeg', '2019-12-23 11:31:57', '2019-12-23', NULL, NULL),
(2, '8d390ff75dde6fba2f65c8c3cf0d851c.jpeg', '2019-12-23 11:37:12', '2019-12-23', NULL, NULL),
(3, '73359126cc088511d16d5a73e7ce549b.jpeg', '2019-12-23 11:41:21', '2019-12-23', NULL, NULL),
(4, 'ef9e82ecb4157879954c70d5d5b91138.jpeg', '2019-12-23 11:43:56', '2019-12-23', NULL, NULL),
(5, '45edeea2ed28ef41bc82ac20467abc74.png', '2020-01-20 14:28:11', '2020-01-20', NULL, NULL),
(6, 'f589f75b5691dca171b47dd6e3934504.png', '2020-01-20 16:37:18', '2020-01-20', NULL, 'icone grafico.png'),
(7, 'fa1322427fedccfa7a4ae4f327ae8fcb.png', '2020-01-20 16:39:30', '2020-01-20', NULL, 'icone grafico.png'),
(8, '0d0b88b1754ac483c9478d986f92a0b4.png', '2020-01-20 16:42:37', '2020-01-20', NULL, 'Diagrama-de-Ishikawa.png'),
(9, 'b032bf24dfc5a796a00806a96e68436d.png', '2020-01-20 16:45:19', '2020-01-20', NULL, 'Diagrama-de-Ishikawa.png'),
(10, '3ff225b437d2424518e2105d7e346d48.png', '2020-01-20 16:48:46', '2020-01-20', NULL, 'icone grafico.png'),
(11, '25772b8396bf6f2016f96449a71447cd.png', '2020-01-20 17:26:53', '2020-01-20', NULL, 'Diagrama-de-Ishikawa.png'),
(12, '7a485ecb43acd0228801593692667c60.png', '2020-01-20 17:28:19', '2020-01-20', NULL, 'Diagrama-de-Ishikawa.png'),
(13, 'f6019d060848fe2516c7cd78e70855bc.png', '2020-01-20 17:34:26', '2020-01-20', NULL, 'Diagrama-de-Ishikawa.png'),
(14, '419ed9dcee33ff0ed6a56eea79bf59e8.png', '2020-01-20 17:35:44', '2020-01-20', NULL, 'Diagrama-de-Ishikawa.png'),
(15, '489b1a86263886b15779b006f147a681.png', '2020-01-20 17:36:42', '2020-01-20', NULL, 'Diagrama-de-Ishikawa.png'),
(16, '1106e9d4788ce60b233f1899cdfbbd03.png', '2020-01-20 17:38:46', '2020-01-20', NULL, 'icone grafico.png'),
(17, '4978947d4f751f39118dff1b82ac16db.png', '2020-01-21 10:55:55', '2020-01-21', NULL, 'Diagrama-de-Ishikawa.png'),
(18, 'c0afa080f87839c445cb203d35d480fa.png', '2020-01-21 10:59:53', '2020-01-21', NULL, 'icone grafico.png'),
(19, '0017bea8a38d26851b257796bb871893.png', '2020-01-21 11:01:39', '2020-01-21', NULL, 'icone grafico.png'),
(20, '7a0f5b8f2b247ad3853d5f31501d6d53.png', '2020-01-21 11:08:34', '2020-01-21', NULL, 'Diagrama-de-Ishikawa.png'),
(21, '5871c2c1248876b03663a366cebd5d7f.png', '2020-01-21 11:16:54', '2020-01-21', NULL, 'Diagrama-de-Ishikawa.png'),
(22, '520ea806d44062929f8024c154f8f718.png', '2020-01-21 11:22:40', '2020-01-21', NULL, 'Diagrama-de-Ishikawa.png'),
(23, '628a98b7b590ecc36040172e34d91a44.png', '2020-01-21 13:57:30', '2020-01-21', NULL, 'Diagrama-de-Ishikawa.png'),
(24, 'ec1cab55d62ce3701d89857df551bc1e.png', '2020-01-21 14:39:20', '2020-01-21', NULL, 'icone grafico.png'),
(25, '31903891a903c91ae27058c42a7c9b82.png', '2020-01-21 14:43:59', '2020-01-21', NULL, 'Diagrama-de-Ishikawa.png'),
(26, '371eb115a41f52b07ce9b1d2dcf44e23.png', '2020-01-21 16:19:19', '2020-01-21', NULL, 'icone grafico.png'),
(27, '307cb885a16602ef77959ecc70abed76.png', '2020-01-21 16:25:12', '2020-01-21', NULL, 'icone grafico.png'),
(28, 'b35e5908d1c86a49beb3b1f121c8fca4.png', '2020-01-21 16:31:15', '2020-01-21', NULL, 'icone grafico.png'),
(29, 'a1bc474cfd3c0f197d37f30687bdc5ee.png', '2020-01-21 16:32:01', '2020-01-21', NULL, 'icone grafico.png'),
(30, 'c631bc1e071be640325faf330d3f2590.png', '2020-01-21 16:43:24', '2020-01-21', NULL, 'icone grafico.png'),
(31, '2c898b11073eed3c3666b361a9dde1c8.png', '2020-01-21 16:45:54', '2020-01-21', NULL, 'icone grafico.png'),
(32, 'fbde05df143e8ae7a2087b05ae22f361.png', '2020-01-23 13:24:41', '2020-01-23', NULL, 'Diagrama-de-Ishikawa.png'),
(33, 'c4fb30a0f5e557a85a0452809f74ae13.png', '2020-01-24 11:41:59', '2020-01-24', NULL, 'icone grafico.png'),
(34, 'eb5b120a433ea6cd4e6c187bdffa5a03.jpg', '2020-01-30 11:37:14', '2020-01-30', NULL, '158038411062656722308007285392'),
(35, '4004aa1f1f87c7cfb6548fb6ec8ffe3e.jpg', '2020-01-30 12:43:37', '2020-01-30', NULL, '158038821193378916590572112187'),
(36, '6dc5caa69f6e89b7b0c5d4e4ace48ad9.png', '2020-01-30 13:28:06', '2020-01-30', NULL, 'Diagrama-de-Ishikawa.png'),
(37, '249a941d97ee38cf2ae092691832c813.png', '2020-01-30 13:35:37', '2020-01-30', NULL, 'Diagrama-de-Ishikawa.png'),
(38, '0fca52cee670ffd9ed9a8ec38db078f1.png', '2020-01-30 13:36:59', '2020-01-30', NULL, 'Diagrama-de-Ishikawa.png'),
(39, '06d73bda3ebb12061949b9f109abb47d.png', '2020-01-30 13:40:12', '2020-01-30', NULL, 'Diagrama-de-Ishikawa.png'),
(40, '23c1211136bb80574a6d1daa989c1363.png', '2020-01-31 13:30:18', '2020-01-31', NULL, 'icone grafico.png'),
(41, '67cc5d95a091a303011246f4d12a0153.png', '2020-01-31 13:33:33', '2020-01-31', NULL, 'icone grafico.png'),
(42, '7360e54fc95a86a4182d725faa4861d8.png', '2020-01-31 13:50:37', '2020-01-31', NULL, 'icone grafico.png'),
(43, '819be97f925313d5bf0432e525b4eb54.png', '2020-01-31 14:36:59', '2020-01-31', NULL, 'Diagrama-de-Ishikawa.png'),
(44, '78b6041918f97c1b4167b790a31bc4f6.png', '2020-01-31 17:29:09', '2020-01-31', NULL, 'icone grafico.png'),
(45, '05591d9be0637192967f1a2f7e2019e1.png', '2020-01-31 17:37:04', '2020-01-31', NULL, 'icone grafico.png'),
(46, '5cca3a7f8ef871fadd1a8e6900c990f0.png', '2020-01-31 17:42:29', '2020-01-31', NULL, 'icone grafico.png'),
(47, '68bf5ff807c738fd6344449b1f65c533.jpeg', '2020-02-08 01:02:27', '2020-02-08', NULL, 'ref.jpeg'),
(48, 'f9d18ae38822a0022a1f054bdfaeabf8.jpeg', '2020-02-08 01:21:03', '2020-02-08', NULL, 'ref.jpeg'),
(49, '036a70975859648ee960556847304b44.jpeg', '2020-02-08 01:32:40', '2020-02-08', NULL, 'ref.jpeg'),
(50, '904b23e7ec55f4511c36dd7cfc0ad052.jpeg', '2020-02-08 01:57:20', '2020-02-08', NULL, 'ref.jpeg'),
(51, '3821f2155f4e8d90e7c1cd9280defae0.jpg', '2020-02-08 02:07:36', '2020-02-08', NULL, 'aaa.jpg'),
(52, 'f119f4731abe7cddf72979b1dc17635e.png', '2020-02-13 18:37:30', '2020-02-13', NULL, 'icone grafico.png'),
(53, 'f9873f6bb999e5756b74bb0ecff9bc47.png', '2020-02-13 19:13:23', '2020-02-13', NULL, 'Diagrama-de-Ishikawa.png'),
(54, '8d2ccc757000d6ccdd6087e92a75cc5c.png', '2020-02-14 01:43:39', '2020-02-14', NULL, 'icone grafico.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `item` decimal(2,1) DEFAULT NULL,
  `problema` varchar(255) NOT NULL,
  `auditor` varchar(255) NOT NULL,
  `maquina` varchar(255) NOT NULL,
  `setor` varchar(255) NOT NULL,
  `acao` varchar(255) DEFAULT NULL,
  `responsavel` varchar(255) NOT NULL,
  `data` date DEFAULT NULL,
  `prazo` date DEFAULT NULL,
  `conclusao` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `auditoria_id` int(11) DEFAULT NULL,
  `avatar_id` int(11) DEFAULT NULL,
  `area` varchar(40) DEFAULT NULL,
  `subitem` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `plans`
--

INSERT INTO `plans` (`id`, `item`, `problema`, `auditor`, `maquina`, `setor`, `acao`, `responsavel`, `data`, `prazo`, `conclusao`, `created_at`, `updated_at`, `auditoria_id`, `avatar_id`, `area`, `subitem`) VALUES
(158, '1.2', 'Teste foto', 'Fabio', 'Montagem invision', 'Linha de Montagem', '', 'Fabio', '2020-02-13', '2020-02-20', NULL, '2020-02-14 01:47:12', '2020-02-14 01:47:12', 464, 54, 'Kaizen', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `item` decimal(3,1) DEFAULT NULL,
  `text` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `area` varchar(50) DEFAULT NULL,
  `subitem` int(11) DEFAULT NULL,
  `aux` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `questions`
--

INSERT INTO `questions` (`id`, `item`, `text`, `created_at`, `updated_at`, `area`, `subitem`, `aux`) VALUES
(1, '1.1', 'A FOI (Folha de operação e inspeção) esta disponível e acessível fisicamente ou eletronicamente?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Documentação e registros operacionais', 1, 1),
(2, '1.2', 'Os parâmetros de processo e produto estão sendo avaliados conforme frequência definida na FOI?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Documentação e registros operacionais', 1, NULL),
(3, '1.3', 'As instruções de trabalhos/Tabelas estão disponíveis, atualizadas e acessíveis fisicamente ou eletronicamente? ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Documentação e registros operacionais', 1, 2),
(4, '1.4', 'Os registros de liberação e/ou de setup estão sendo preenchidos conforme frequência definida na FOI?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Documentação e registros operacionais', 1, NULL),
(5, '1.5', ' Para parâmetros de processo ou produto fora da especificação o plano de reação esta sendo seguido? Ou existe um desvio previamente aprovado?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Documentação e registros operacionais', 1, NULL),
(6, '2.1', 'Os instrumentos de medição e dispositivos de controle estão disponíveis e em boas condições para uso?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Instrumentos de medição e controle', 2, 3),
(7, '2.2', 'A numeração dos instrumentos / dispositivos de controle estão legíveis? A validação/calibração estão em dia?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Instrumentos de medição e controle', 2, 4),
(8, '3.1', 'As validações da correta funcionalidade dos poka yokes estão sendo realizadas?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Poka Yoke', 3, NULL),
(9, '3.2', 'No caso de problemas identificados: O plano de reação esta sendo seguindo? Ou existe um desvio previamente aprovado?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Poka Yoke', 3, NULL),
(10, '4.1', 'O operador esta capacitado / treinado para realizar a atividade? A matriz de versatilidade do setor confirma essa informação?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Treinamento', 4, NULL),
(11, '5.1', 'Os produtos não conforme estão identificados, apontados e segregados?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Gestão de não conformes', 5, NULL),
(12, '5.2', 'A quantidade de peças apontadas nas fichas de refugo coincidem com as peças na caixa vermelha de scrap?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Gestão de não conformes', 5, NULL),
(13, '5.3', 'Toda as peças de retrabalho na caixa amarela estão identificadas com a RNC?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Gestão de não conformes', 5, NULL),
(14, '6.1', 'Existem alertas da qualidade postados no setor? A validade esta OK?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Alertas da qualidade', 6, 5),
(15, '7.1', 'Todos os produtos em processo estão identificados com a ficha de ordem de produção? A ficha esta preenchida de acordo o processo atual?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Identificação e rastreabilidade', 7, NULL),
(16, '8.1', 'O Modelo padrão de 5S esta disponível e atualizado no setor?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5S', 8, 6),
(17, '8.2', 'O setor encontra-se limpo, organizado? Existem materiais sem utilização no setor?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '5S', 8, NULL),
(18, '9.1', 'Os operadores estão utilizando os EPIs padrão do setor?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Segurança / Meio ambiente', 9, NULL),
(19, '9.2', 'Os dispositivos de segurança estão sendo validados conforme definido no Check list de segurança?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Segurança / Meio ambiente', 9, NULL),
(20, '9.3', 'A coleta seletiva do setor esta sendo respeitada? A lista de aspectos e impactos do setor e lista de destinação de residuos estão disponiveis?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Segurança / Meio ambiente', 9, NULL),
(21, '9.4', 'Se aplicavel, os kits de emergência do setor estão disponiveis e em bom estado?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Segurança / Meio ambiente', 9, NULL),
(22, '10.1', 'O check list de TPM esta disponível no setor?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'TPM', 10, 7),
(23, '10.2', 'O operador esta verificando os itens do check list? Problemas estão sendo abertos no diário de bordo?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'TPM', 10, NULL),
(24, '11.1', 'As auditorias estão sendo realizadas conforme frequência estabelecida?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Disciplina', 11, NULL),
(25, '12.1', 'As checagem da primeira peça OK estão sendo realizadas? Os problemas estão sendo tratados de acordo previsto?', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1º Peça OK ', 12, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20191220112350-create-auditorias.js'),
('20191220113632-create-plans.js'),
('20191220115054-create-users.js'),
('20191220125349-add-auditoria-field-to-plan.js.js'),
('20191220130840-create-files.js'),
('20191220131750-add-avatar-field-to-plans.js.js'),
('20191230113013-create-questions.js'),
('20200110003117-add-setor-to-user.js'),
('20200110173000-add-turno-to-auditoria.js'),
('20200206140847-create-setores.js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `setors`
--

CREATE TABLE `setors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `linha` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `setors`
--

INSERT INTO `setors` (`id`, `name`, `linha`, `created_at`, `updated_at`) VALUES
(1, 'Linha Tubulares', 'Barras', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(2, 'Linha de Forjas', 'Barras', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(3, 'Linha de Fornos', 'Barras', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(4, 'Usinagem/Recalque', 'Barras', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(5, 'Calibragem/Jatos', 'Barras', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(6, 'Linha de Pintura', 'Barras', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(7, 'Linha de Montagem', 'Barras', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(8, 'Glue Bushing', 'Barras', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(9, 'Indução/Enroladeira L2/Forno', 'Molas', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(10, 'Enroladeira a Frio', 'Molas', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(11, 'Morita/Magna Flux/Jato/Morita 2', 'Molas', '2020-02-06 00:00:00', '2020-02-06 00:00:00'),
(12, 'Pintura/Morita 3/Acabamento', 'Molas', '2020-02-06 00:00:00', '2020-02-06 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `area` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `cargo`, `created_at`, `updated_at`, `area`) VALUES
(18, 'Luciano Ramos', 'luciano.ramos@sogefigroup.com', '$2a$08$vJRjC02ITl0HhEoBNnw6D.KS6Jfd69x4jm65B5Ao5SjxmZIj71uW.', 'Engenharia Processo', '2020-01-27 16:35:46', '2020-01-27 16:35:46', 'Engenharia'),
(19, 'Gilson Luciano', 'gilson.luciano@sogefigroup.com', '$2a$08$lAuCw8uk6b.KXien9/FxEeIFor2ANyozWpV39JwBenAzsLjcOqmau', 'Engenharia Processo', '2020-01-27 16:36:52', '2020-01-27 16:36:52', 'Engenharia'),
(20, 'Rafael Brescansin', 'rafael.brescansin@sogefigroup.com', '$2a$08$O3dgIW2aPpr1X.4Duq1W0eLCfZJ0dXcdig8RzOC1DDQTAH8zTKTaO', 'Engenharia Processo', '2020-01-27 16:43:05', '2020-01-27 16:43:05', 'Engenharia'),
(21, 'Joel Melo', 'joel.melo@sogefigroup.com', '$2a$08$ePPzy3C0mSEXuk9eE7Neb.2YbASXONafj1bw2oAM90fWdJErhJ0rm', 'Supervisor Produção', '2020-01-27 16:43:59', '2020-01-27 16:43:59', 'Linha Barras'),
(22, 'Sergio Silva', 'sergio.silva@sogefigroup.com', '$2a$08$koLGScwQMxOWj9IlRBdidOoouMByHYtGpf7Oz.AETRgZdy.0b7/Ji', 'Supervisor Produção', '2020-01-27 16:45:35', '2020-01-27 16:45:35', 'Linha Barras'),
(23, 'Ivan Borges', 'ivan.borges@sogefigroup.com', '$2a$08$jLRRdtaJOqawOy1COnRAd.HR5g8gNXnjncktVg1ms1XBTq7mARTqO', 'Supervisor Produção', '2020-01-27 16:46:30', '2020-01-27 16:46:30', 'Linha Barras'),
(24, 'Saulo Oliveira', 'saulo.oliveira@sogefigroup.com', '$2a$08$LYW98KNA2hBCNwDb5upRf.LuXEHxAl.RALw.y5EO.q09EWpRkL6eC', 'Supervisor Produção', '2020-01-27 16:47:40', '2020-01-27 16:47:40', 'Linha Molas'),
(25, 'Gison Souza', 'gison.souza@sogefigroup.com', '$2a$08$AdS6K5hg7OLDIjKnfAXzeue2MHUO6eGapqBUy7JrwfFUrFUe5NPdy', 'Supervisor Produção', '2020-01-27 16:48:23', '2020-01-27 16:48:23', 'Linha Molas'),
(26, 'Carlos Casadei', 'carlos.casadei@sogefigroup.com', '$2a$08$EQF/L9h4ExvyxdSavDCXm.TqhqLHsJPBFh69bBHMC4nykl8oBmut2', 'Supervisor Produção', '2020-01-27 16:49:11', '2020-01-27 16:49:11', 'Linha Molas'),
(27, 'Ronieri Castro', 'ronieri.castro@sogefigroup.com', '$2a$08$VE3z9G97oL.icNfAMTFLAOkm9qKL8ZpejwhytWpxD7J3Nb4s2lmhq', 'Analista Qualidade', '2020-01-27 16:50:47', '2020-01-27 16:50:47', 'Qualidade'),
(28, 'Alan Silva', 'alan.silva@sogefigroup.com', '$2a$08$iqrY1rO2uwmXQwSJZRrToOyPZW8evZcfC2I1/OZfWirUSr3HI19ay', 'Analista Qualidade', '2020-01-27 16:51:48', '2020-01-27 16:51:48', 'Qualidade'),
(29, 'Agda Lanza', 'agda.lanza@sogefigroup.com', '$2a$08$YGvFeUicbAq2RNcuQCnCcOc9EmGKCmXC2gaXwLvNptHucB7or.K2a', 'Analista Qualidade', '2020-01-27 16:53:42', '2020-01-27 16:53:42', 'Qualidade'),
(30, 'Francisco Paladini ', 'francisco.paladini@sogefigroup.com', '$2a$08$JtZ0WdU/vg.WyouZrwJZh./8bxJbgBFqPua7ygo3wa0VCcarQkb7y', 'Coordenador Produção', '2020-01-27 16:55:15', '2020-01-27 16:55:15', 'Linha Molas'),
(31, 'Rovilson Augusto ', 'rovilson.augusto@sogefigroup.com', '$2a$08$l85o7KPBzAe3yFf0yGty8uuc3QSVxpvv.DdGslZTxK9iy.aNtxnAG', 'Coordenador Produção', '2020-01-27 16:55:51', '2020-01-27 16:55:51', 'Linha Barras'),
(32, 'André Pereira', 'andre.pereira@sogefigroup.com', '$2a$08$57mb2qBge0R33Hf4X5fseux8F4gfblD/GffoJPCGYdaSGgnBUJVk6', 'Gerente Qualidade', '2020-01-27 16:57:24', '2020-01-27 16:57:24', 'Qualidade'),
(33, 'Eduardo Villalba', 'eduardo.villalba@sogefigroup.com', '$2a$08$VDIu8G1nJYPVCAkSmH9KDercme2VZYoaZDYF.viIVbxhzPlMOKIAO', 'Plant Manager', '2020-01-27 17:00:56', '2020-01-27 17:00:56', 'Plant Manager'),
(34, 'Delio Santos', 'delio.santos@sogefigroup.com', '$2a$08$pSEMLhiWO5r7w17PpO29sO2kjh.v7x1ehrqm98laRYaN6S4.G8O86', 'Admnistrador', '2020-01-27 17:01:32', '2020-01-27 17:01:32', 'Kaizen'),
(35, 'Aislan Paniçolo', 'aislan.panicolo@sogefigroup.com', '$2a$08$qFfWtQeT9B8d0A8X3UCmI.5dFdSxq2W9UAOE7baY7OsQIC/5R68ye', 'Gerente Engenharia', '2020-01-31 13:03:43', '2020-01-31 13:03:43', 'Engenharia'),
(36, 'Wesley Basso', 'wesley.basso@sogefigroup.com', '$2a$08$CmQ.KAb3m36ST9mdOWkWRuA9ikF7OuDvc4wB2uP1DIPSVHwNeTQyu', 'Engenharia', '2020-01-31 13:04:50', '2020-01-31 13:04:50', 'Engenharia'),
(37, 'Paulo Antônio', 'paulo.antonio@sogefigroup.com', '$2a$08$ICOov/CzDed36SaMYpy51uUogrGsErVSKeFmH8uEbZtH7JHNZmpFa', 'Engenharia', '2020-01-31 13:06:32', '2020-01-31 13:06:32', 'Engenharia'),
(38, 'Willian Faria', 'willian.faria@sogefigroup.com', '$2a$08$0HiFrbVgShigHUQRYql4KuKr7gNYP/GyV6yCu95aYjYM5c6JZOYqC', 'Engenharia', '2020-01-31 13:08:20', '2020-01-31 13:08:20', 'Engenharia'),
(39, 'Arnaldo Neto', 'arnaldo.neto@sogefigroup.com', '$2a$08$hVYpkG5N3lp0SCDgvqb3UusnNvsy/1Fnruq70NYbcU3cj0R60EigK', 'Engenharia', '2020-01-31 13:09:37', '2020-01-31 13:09:37', 'Engenharia'),
(40, 'Mariana de Paula', 'mariana.depaula@sogefigroup.com', '$2a$08$qlZBdPOkGJcclwrpLxTpSOgy/OGKtUHU8TBdL2ubTubGc5e0CZsQu', 'Engenharia', '2020-01-31 13:10:35', '2020-01-31 13:10:35', 'Engenharia'),
(41, 'Guilherme Zaniboni', 'guilherme.zaniboni@sogefigroup.com', '$2a$08$0tECNPNCmybSM8lQBWli5uuXR5eshoZBlDKqhQ/WRMX9qbGWrlje.', 'Engenharia', '2020-01-31 13:11:14', '2020-01-31 13:11:14', 'Engenharia'),
(42, 'Operador ', 'operador@sogefigroup.com', '$2a$08$ktZK5XsR1VDwDNEzclZAH.cSzqGSz8Zf.dSQaTQZdoAFaoIa6Kb2G', 'Operador', '2020-02-03 12:44:52', '2020-02-03 12:44:52', 'Linha de Fornos'),
(43, 'Fabio', 'fabio.lima@sogefigroup.com', '$2a$08$HBYo4JADZ4vHT8ssWDuFO./5UaA0DTxteveSlN2POfDORpTJEutzS', 'adm', '2020-02-13 17:28:57', '2020-02-13 17:28:57', 'Kaizen');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`);

--
-- Índices para tabela `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plans_auditoria_id_foreign_idx` (`auditoria_id`),
  ADD KEY `plans_avatar_id_foreign_idx` (`avatar_id`);

--
-- Índices para tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `setors`
--
ALTER TABLE `setors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de tabela `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `setors`
--
ALTER TABLE `setors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_auditoria_id_foreign_idx` FOREIGN KEY (`auditoria_id`) REFERENCES `auditoria` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `plans_avatar_id_foreign_idx` FOREIGN KEY (`avatar_id`) REFERENCES `files` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
