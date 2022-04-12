-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2022 pada 04.18
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-hc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kampus`
--

CREATE TABLE `kampus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_universitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_01_030552_user_management', 1),
(6, '2022_04_01_091820_jabatan', 1),
(7, '2022_04_01_092444_divisi', 1),
(8, '2022_04_01_092553_departemen', 1),
(9, '2022_04_01_092815_sub_departemen', 1),
(10, '2022_04_07_071056_kampus', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_departemen`
--

CREATE TABLE `m_departemen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_departemen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_departemen`
--

INSERT INTO `m_departemen` (`id`, `nama_departemen`, `created_at`, `updated_at`) VALUES
(1, 'MNF', '0000-00-00 00:00:00', '2020-10-20 16:21:23'),
(2, 'IOS', '0000-00-00 00:00:00', '2020-10-20 16:21:30'),
(3, 'BDA', '0000-00-00 00:00:00', '2021-01-27 04:23:26'),
(4, 'PRD', '0000-00-00 00:00:00', '2020-10-20 16:21:32'),
(5, 'ENG', '0000-00-00 00:00:00', '2021-06-18 06:09:29'),
(6, 'WHS', '0000-00-00 00:00:00', '2020-10-20 16:21:36'),
(7, 'QA', '0000-00-00 00:00:00', '2020-10-20 16:21:38'),
(8, 'HC', '0000-00-00 00:00:00', '2021-01-27 04:24:33'),
(9, 'MDP', '0000-00-00 00:00:00', '2020-10-20 16:21:41'),
(10, 'BOD', '0000-00-00 00:00:00', '2020-10-20 16:21:48'),
(11, 'RESIGN', '0000-00-00 00:00:00', '2020-10-20 16:22:07'),
(12, 'Klinik', '2020-11-05 03:41:59', '2021-02-09 02:29:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_divisi`
--

CREATE TABLE `m_divisi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_divisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_divisi`
--

INSERT INTO `m_divisi` (`id`, `nama_divisi`, `created_at`, `updated_at`) VALUES
(1, 'Manufacturing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Suporting', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'BOD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Klinik', '2020-11-05 03:39:17', '2020-11-05 03:39:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_jabatan`
--

CREATE TABLE `m_jabatan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_jabatan`
--

INSERT INTO `m_jabatan` (`id`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Advisor Engineering', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Application & Development Support Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bin Filling Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bin Filling Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bin Washing Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Bin Washing Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bin Washing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Blending Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Blending Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Building Maintenance', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Can Filling Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Can Packing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'CIP Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Cleaning Service', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Compounding Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Document Controller', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Drier Circle Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Drier Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Drier Continous Cleaner', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Drier Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Drier Roving Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Driver', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Dry Sachet Circle Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Dry Sachet Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Dry Sachet Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Dry Sachet Packing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Dumping Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Dumping Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Dumping Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Eductor Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Eductor Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Electrical Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Engineering Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Engineering Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Engineering Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Evaporator Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'FA & IT Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Fat Blend & Mixing Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Fat Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Filling & Packing Coordinator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Filling & Packing Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Finance & Accounting Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Finance & Accounting Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Finance & Accounting Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Forklift Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'General Affair Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'General Affair Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Human Capital Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'HRD Administration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'HVAC Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Improvement Facilitator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Improvement Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Integrated Operation System Dept. Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'IR & GA Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'IT Infrastructure & Security Management', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Information Technology Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Komandan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Maintenance Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Maintenance Planner', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Maintenance System Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Manufacturing Development & Planning Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Manufacturing Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Manufacturing Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Mechanic Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Mechanical Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Mechanical Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Mnf Human Capital Dev Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Operational Maintenance Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Payroll & Personnel Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Payroll & Secretary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Personel Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Powder Mixer Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'PPIC Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'PPIC Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'PPIC Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'President Director', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Preventive Maintenance Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Process & Drier  Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Processing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Production Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Production Admin 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Production Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Production Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Production Store Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Production Store Keeper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Purchasing Administration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Purchasing Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Purchasing, Legal & Regulator Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'QA Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'QA Laboratory Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'QA Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'QC Chemphys Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'QC In Line Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'QC In Line Field', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'QC In Line Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'QC In Line Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'QC Incoming Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'QC Microbiology Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'QC Microbiology Field', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Quality Assurance Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Receptionist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Recruitment & Learning Development Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Sachet Filling Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Sachet Packing Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Sachet Packing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Security', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Serikat Pekerja', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Sparepart Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Store Keeper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'System Inspector', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'System Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'System Management Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Technical Advisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Tipping Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Tipping Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Tote Bin Washing Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'TPM Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'TPM Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Utility Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Utility Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Warehouse Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Warehouse Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Warehouse FG Assistant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Warehouse FG Checker', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Warehouse FG Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Warehouse FG Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Warehouse PM Assistant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Warehouse PM Checker', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Warehouse PM Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Warehouse RM Major Checker', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Warehouse RM Major Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Warehouse RM Major Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Warehouse RM Major Preparator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Warehouse RM Major Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Warehouse RM Minor Assistant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Warehouse RM Minor Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Warehouse RM Minor Preparator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Warehouse RM Minor Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Wet Canning Circle Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Wet Canning Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Wet Canning Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Wet Sachet Circle Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Wet Sachet Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Wet Sachet Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'WWTP Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Admin Utility', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Bin Washing, Fat Blend & Mixing Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Blending & Dumping Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Business Development & Analysis Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Cleaning Service Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Deputy Manufacturing Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Dry Sachet Tipping Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'HRD Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Manufacturing Development & Planing Administation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Manufacturing Development & Planing Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Mechanical Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'PM Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Process & Drier Coordinator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Production Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'QA In Line Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'QA Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Secretary & Management System', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'TPM & Focus Improvement Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Utility Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Paramedik', '2021-06-18 06:07:51', '2021-06-18 06:07:51'),
(166, 'ER Manager', '2022-02-24 05:09:07', '2022-02-24 05:09:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_karyawan_user`
--

CREATE TABLE `m_karyawan_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan_id` bigint(20) UNSIGNED NOT NULL,
  `divisi_id` bigint(20) UNSIGNED NOT NULL,
  `departemen_id` bigint(20) UNSIGNED NOT NULL,
  `subdepartemen_id` bigint(20) UNSIGNED NOT NULL,
  `nik` int(11) DEFAULT NULL,
  `nama_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_karyawan_user`
--

INSERT INTO `m_karyawan_user` (`id`, `jabatan_id`, `divisi_id`, `departemen_id`, `subdepartemen_id`, `nik`, `nama_karyawan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1234321, 'Gilang Maulana', '2022-04-08 02:11:56', '2022-04-08 02:11:56'),
(2, 55, 1, 2, 2, 988989, 'Hanna Athaya', '2022-04-07 19:15:16', '2022-04-07 19:15:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_sub_departemen`
--

CREATE TABLE `m_sub_departemen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sub_departemen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `m_sub_departemen`
--

INSERT INTO `m_sub_departemen` (`id`, `nama_sub_departemen`, `created_at`, `updated_at`) VALUES
(1, 'MNF subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'IOS subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'IOS-SYS subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'IOS-IMP subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'PRD subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'PRD-P&D subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'PRD-F&P subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'MM subdept', '0000-00-00 00:00:00', '2021-02-09 03:12:11'),
(9, 'MM-OPM subdept', '0000-00-00 00:00:00', '2021-02-09 03:12:25'),
(10, 'MM-MTS subdept', '0000-00-00 00:00:00', '2021-02-09 03:12:37'),
(11, 'WHS subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'WHS-RM subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'WHS-PM subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'WHS-FG subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'QA subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'QA-QC subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'QA-MCO subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'HC subdept', '0000-00-00 00:00:00', '2021-02-22 01:44:49'),
(19, 'HC-GA subdept', '0000-00-00 00:00:00', '2021-02-22 01:45:01'),
(20, 'HC-HRD subdept', '0000-00-00 00:00:00', '2021-02-22 01:45:15'),
(21, 'MDP subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'MDP-PPIC subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BOD subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Klinik subdept', '2020-11-05 03:43:49', '2020-11-05 03:43:49'),
(25, 'BDA subdept', '2021-01-27 04:32:37', '2021-01-27 04:32:37'),
(26, 'BDA-PRC', '2021-01-27 04:40:45', '2021-01-27 04:40:45'),
(27, 'BDA-FA', '2021-01-27 04:41:13', '2021-01-27 04:41:13'),
(28, 'MDP-IT subdept', '2021-01-27 06:33:33', '2021-01-27 06:33:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kampus`
--
ALTER TABLE `kampus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_departemen`
--
ALTER TABLE `m_departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_divisi`
--
ALTER TABLE `m_divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_jabatan`
--
ALTER TABLE `m_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_karyawan_user`
--
ALTER TABLE `m_karyawan_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_sub_departemen`
--
ALTER TABLE `m_sub_departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kampus`
--
ALTER TABLE `kampus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `m_departemen`
--
ALTER TABLE `m_departemen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `m_divisi`
--
ALTER TABLE `m_divisi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `m_jabatan`
--
ALTER TABLE `m_jabatan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT untuk tabel `m_karyawan_user`
--
ALTER TABLE `m_karyawan_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `m_sub_departemen`
--
ALTER TABLE `m_sub_departemen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
