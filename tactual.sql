-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 02:44 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `budgeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tactual`
--

CREATE TABLE `tactual` (
  `id_actual` int(11) NOT NULL,
  `id_budget` int(11) NOT NULL,
  `subacc` varchar(11) NOT NULL,
  `product` varchar(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `source` varchar(256) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL,
  `doc_ref` varchar(256) DEFAULT NULL,
  `doc_number` varchar(256) DEFAULT NULL,
  `desc_source` varchar(256) DEFAULT NULL,
  `currency` varchar(256) NOT NULL,
  `amount_debit` bigint(20) DEFAULT NULL,
  `amount_credit` bigint(20) DEFAULT NULL,
  `actual_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tactual`
--

INSERT INTO `tactual` (`id_actual`, `id_budget`, `subacc`, `product`, `description`, `source`, `category`, `doc_ref`, `doc_number`, `desc_source`, `currency`, `amount_debit`, `amount_credit`, `actual_date`) VALUES
(1, 23, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? DADANG INDRA 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 560000, 0, '2023-01-19'),
(2, 21, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? JIMMY HADISURYA 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 600000, 0, '2023-01-19'),
(3, 24, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? RAHAJENG DWILALITA W 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 560000, 0, '2023-01-19'),
(4, 25, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? SUMARLAN S.SOS? 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 560000, 0, '2023-01-19'),
(5, 31, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121135', '270198', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Rahajeng Dwi Lalita to DPS-HLP on 20Dec/22', 'IDR', 37721, 0, '2023-01-01'),
(6, 31, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121135', '270198', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Rahajeng Dwi Lalita to DPS-HLP on 20Dec/22', 'IDR', 1257367, 0, '2023-01-01'),
(7, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-22121257', '270205', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Jimmy Hadisurya at Bali on 18-20Dec/22', 'IDR', 1819980, 0, '2023-01-01'),
(8, 31, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-22121256', '270204', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Rahajeng Dwi Lalita at Bali on 19-20Dec/22', 'IDR', 909990, 0, '2023-01-01'),
(9, 31, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121099', '270196', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Rahajeng Dwi Lalita to HLP-DPS on 19Dec/22', 'IDR', 46972, 0, '2023-01-01'),
(10, 31, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121099', '270196', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Rahajeng Dwi Lalita to HLP-DPS on 19Dec/22', 'IDR', 1565750, 0, '2023-01-01'),
(11, 35, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-22121212', '270202', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Usman Rahmani at Bali on 19-20Dec/22', 'IDR', 425321, 0, '2023-01-01'),
(12, 35, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121097', '270193', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Usman Rahmani to CGK-DPS on 19Dec/22', 'IDR', 43659, 0, '2023-01-01'),
(13, 35, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121097', '270193', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Usman Rahmani to CGK-DPS on 19Dec/22', 'IDR', 1455300, 0, '2023-01-01'),
(14, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121094', '270192', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to DPS-CGK on 20Dec/22', 'IDR', 56169, 0, '2023-01-01'),
(15, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121094', '270192', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to DPS-CGK on 20Dec/22', 'IDR', 1872300, 0, '2023-01-01'),
(16, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121098', '270194', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to CGK-DPS on 18Dec/22', 'IDR', 31503, 0, '2023-01-01'),
(17, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121098', '270194', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to CGK-DPS on 18Dec/22', 'IDR', 1050100, 0, '2023-01-01'),
(18, 35, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121158', '270199', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Rahmani Usman to DPS-CGK on 20Dec/22', 'IDR', 29301, 0, '2023-01-01'),
(19, 35, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121158', '270199', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Rahmani Usman to DPS-CGK on 20Dec/22', 'IDR', 976700, 0, '2023-01-01'),
(20, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121543', '271317', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to CGK-DPS-CGK on 30Dec/22-3Jan/23', 'IDR', 75759, 0, '2023-01-17'),
(21, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121543', '271317', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to CGK-DPS-CGK on 30Dec/22-3Jan/23', 'IDR', 2525300, 0, '2023-01-17'),
(22, 36, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '001/PCV/HO/I/2023', '271553', 'Vendor:ENDANG SETIORINI TOL & PARKING B 2352 UZY (HC)', 'IDR', 239000, 0, '2023-01-24'),
(23, 36, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0018/I/2023/GMI', '271777', 'Vendor:BEN BARKA TOLL & PARKING HC - antar karpet untuk pengajian', 'IDR', 52000, 0, '2023-01-26'),
(24, 37, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI FUEL MOBIL HC B 2352 UZY 20 DEC\'22 -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 372720, 0, '2023-01-05'),
(25, 37, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI FUEL MOBIL OPS HC B 2352 UZY -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 200000, 0, '2023-01-05'),
(26, 37, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0018/I/2023/GMI', '271777', 'Vendor:BEN BARKA FUEL HC - antar karpet untuk pengajian', 'IDR', 100000, 0, '2023-01-26'),
(27, 1, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '18/5728/KEU-FFT/2022', '270601', 'Vendor:FAJAR FARMATAMA.PT Medec f/ New Recruitment HC per Dec-22', 'IDR', 2925000, 0, '2023-01-05'),
(28, 1, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '19/0228/KEU-FFT/2023', '271795', 'Vendor:FAJAR FARMATAMA.PT Medical Check Up f/ New Recruitment per 1-15Jan/23', 'IDR', 11760000, 0, '2023-01-26'),
(29, 38, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '007/I/2023/GMI', '270851', 'Vendor:CASH INTERNAL 7-MSISDN Kartu Halo CUG f/HC HO Jan\'23', 'IDR', 450000, 0, '2023-01-10'),
(30, 15, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '43/I/GMH/23', '271780', 'Vendor:SPTP JAS REVERSE - BANTUAN DANA PEMILIHAN KETUA UMUM SP JAS YEAR 2023/2025', 'IDR', 10000000, 0, '2023-01-26'),
(31, 15, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '43/I/GMH/23', '271780', 'Vendor:SPTP JAS REVERSE - BANTUAN DANA PEMILIHAN KETUA UMUM SP JAS YEAR 2023/2025', 'IDR', 0, 10000000, '2023-01-26'),
(32, 39, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '109IC22104600', '270913', 'Vendor:AUTO PRIMA RENTALINDO.PT Vehicles Rental Expense, Sewa Kendaraan OPS HC PT. JAS Sta. CGK - B 2352 UZY Periode 25 Desember 2022 s.d 24 Januari 2023', 'IDR', 8400000, 0, '2023-01-11'),
(33, 18, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '887/I/CEO/2023', '271061', 'Vendor:CARDIG INTERNATIONAL PT MANAGEMENT K3 FEE DEC\'22', 'IDR', 27500000, 0, '2023-01-12'),
(34, 6, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '162530 - PT INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV.257570', 'IDR', 16962225, 0, '2023-01-31'),
(35, 6, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '156493 - INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV. 257570 -', 'IDR', 16962225, 0, '2023-01-31'),
(36, 40, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38808', '', 'Item:Kursi Kerja / Staff, Model Jaring Warna Hitam Hydraulic Merk ICON 303 Ny - HC,Quantity:1 - DELIVER', 'IDR', 895000, 0, '2023-01-19'),
(37, 40, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38808', '', 'Item:Kursi Kerja / Staff, Model Jaring Warna Hitam Hydraulic Merk ICON 303 Ny - HC,Quantity:5 - DELIVER', 'IDR', 4475000, 0, '2023-01-19'),
(38, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI KONSUM BLK KEB TANGERANG AT SERANG -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 152900, 0, '2023-01-05'),
(39, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI KONSUM LEMBUR 16 DEC\'22 -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 88800, 0, '2023-01-05'),
(40, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI KONSUM LEMBUR MEETING 28 DEC\'22 -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 99860, 0, '2023-01-05'),
(41, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI LUNCH W/ LAWYER PERADI -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 128400, 0, '2023-01-05'),
(42, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI LUNCH W/ PAK ANDRIAN UNIT KANTOR DINAS TANGERANG -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 89000, 0, '2023-01-05'),
(43, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '001/PCV/HO/I/2023', '271553', 'Vendor:ENDANG SETIORINI KONSUM LEMBUR 5 JAN\'23 DUE TO RECAL TAX 2022 (HC)', 'IDR', 166450, 0, '2023-01-24'),
(44, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '42/I/2023/GMH', '271539', 'Vendor:CASH INTERNAL LUNCH PA BANDING HC W/GM & MANAGER OPS CGK 19/JAN\'23', 'IDR', 729000, 0, '2023-01-24'),
(45, 41, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38777', '', 'Item:Obat-obatan K3 / Emergency / Hand Sanitizer Merk Instance Cair,Quantity:5 - DELIVER', 'IDR', 875000, 0, '2023-01-17'),
(46, 41, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38777', '', 'Item:Obat-obatan K3 / Emergency / Masker Merk GEA Medical,Quantity:300 - DELIVER', 'IDR', 12000000, 0, '2023-01-17'),
(47, 8, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/106/XII/2022/MHI', '271974', 'Vendor:SUMARLAN PA MEALS BOX FOR STAFF ON DUTY NEW YEAR 2023', 'IDR', 50802900, 0, '2023-01-31'),
(48, 8, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/44/I/GMH/22', '272538', 'Vendor:SUMARLAN PA KONSUMSI PELATIHAN DAMKAR JAS CGK & HO - JAN \'23, KONSUMSI & INSTRUKTUR 37xRp.35.000,-', 'IDR', 1295000, 0, '2023-01-31'),
(49, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Pendek CARGO,Quantity:30 - DELIVER', 'IDR', 4337100, 0, '2023-01-24'),
(50, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Panjang RAMP,Quantity:30 - DELIVER', 'IDR', 5801100, 0, '2023-01-24'),
(51, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Jilbab Wanita,Quantity:105 - DELIVER', 'IDR', 6276900, 0, '2023-01-24'),
(52, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Rok Panjang Wanita PCIL (Ukuran Terlampir)', 'IDR', 6783200, 0, '2023-01-24'),
(53, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Rok Pendek Wanita Staff = 100pcs, Rok Pendek Wanita ASA = 50pcs (Ukuran Terlampir)', 'IDR', 11300250, 0, '2023-01-24'),
(54, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Celana Panjang Wanita Supv & Staff (Ukuran Terlampir)', 'IDR', 12858800, 0, '2023-01-24'),
(55, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Dasi Pria,Quantity:237 - DELIVER', 'IDR', 15613560, 0, '2023-01-24'),
(56, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Blouse Wanita Hijab = 120pcs, Blouse Non Hijab = 100pcs, Blouse ASA Hijab = 50pcs, Blouse ASA Non Hijab = 50pcs (Ukuran Terlampir),Quantity:160 - DELIVER', 'IDR', 23228800, 0, '2023-01-24'),
(57, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Panjang Bergaris Pria,Quantity:237 - DELIVER', 'IDR', 34407660, 0, '2023-01-24'),
(58, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Celana Panjang Pria,Quantity:297 - DELIVER', 'IDR', 48553560, 0, '2023-01-24'),
(59, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Blazer Wanita Hijab = 120pcs, Non Hijab = 100pcs, Blazer PCIL Hijab = 40pcs, Blazer PCIL Non Hijab = 40pcs, Blazer ASA Hijab = 50pcs, Blazer ASA Non Hijab = 50pcs (Ukuran Terlampir)', 'IDR', 52094000, 0, '2023-01-24'),
(60, 43, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '006/I/2023/GMI', '270803', 'Vendor:TEDY SANTOSO PEMBELIAN SPATULA WAX U/ MEDICAL CHECKUP', 'IDR', 278007, 0, '2023-01-10'),
(61, 14, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '43/I/GMH/23', '271780', 'Vendor:SPTP JAS BANTUAN DANA PEMILIHAN KETUA UMUM SP JAS YEAR 2023/2025', 'IDR', 10000000, 0, '2023-01-26'),
(62, 14, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/44/I/GMH/22', '272538', 'Vendor:SUMARLAN PA PELATIHAN DAMKAR JAS CGK & HO - JAN \'23, KONSUMSI & INSTRUKTUR 37xRp.35.000,-', 'IDR', 6000000, 0, '2023-01-31'),
(63, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '001/PCV/HO/I/2023', '271553', 'Vendor:ENDANG SETIORINI MEETING W/ PARTNERS KONSULTAN SELEKSI KANDIDAT PHL WELDER (HC)', 'IDR', 500000, 0, '2023-01-24'),
(64, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ), Cargo (Export, Import), Terminal 2 (Ramp, Arrival) Periode Dese', 'IDR', 15400000, 0, '2023-01-10'),
(65, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01253 f/T3 SMJ Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(66, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01260 f/T3Svc Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(67, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01283 f/T3 Ramp Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(68, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01372 f/T2Ramp Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(69, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01621 f/2FArrival Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(70, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01797 f/CH Exp Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(71, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06359 f/CH Imp Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(72, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi CGK, SUB, DPS Periode Desember 2022', 'IDR', 35200000, 0, '2023-01-10'),
(73, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.50111 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01323 f/LC CGK', 'IDR', 2200000, 0, '2023-01-10'),
(74, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.50111 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01356 f/T2 Mte Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(75, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.50111 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G04397 f/T3 PCI', 'IDR', 2200000, 0, '2023-01-10'),
(76, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.50111 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G07011 f/T1B', 'IDR', 2200000, 0, '2023-01-10'),
(77, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Periode Desember 2022', 'IDR', 11000000, 0, '2023-01-10'),
(78, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G04806 f/T3 CGK Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(79, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06389 f/T3 Ops Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(80, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06850 f/HO Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(81, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G07945 f/CH-521 Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(82, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G08413 f/T3 Avsec Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(83, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ), Cargo (Export, Import), Terminal 2 (Ramp, Arrival) Periode Dese', 'IDR', 0, 15400000, '2023-01-10'),
(84, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi CGK, SUB, DPS Periode Desember 2022', 'IDR', 0, 35200000, '2023-01-10'),
(85, 5, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Periode Desember 2022', 'IDR', 0, 11000000, '2023-01-10'),
(86, 2, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '176616 - JOBSTREET INDONESIA - NJP RESUME SEARCH JAN/APR\'23 - APV. 271062', 'IDR', 116500, 0, '2023-01-31'),
(87, 2, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '162540 - PT JOBSTREET INDONESIA - ADS FIXED BUNDLE PACKAGE - APV. 262513', 'IDR', 821333, 0, '2023-01-31'),
(88, 2, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '176589 - AD BUDGET (JAN\'23 - JAN\'24) - Advertisement at Jobstreet on 2Jan/23-2Jan/24', 'IDR', 1000000, 0, '2023-01-31'),
(89, 2, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '176615 - JOBSTREETS INDONESIA - ADVERTISEMENT (AD BUDGET) JAN/DEC\'23 - APV.271062', 'IDR', 1000000, 0, '2023-01-31'),
(90, 23, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL DADANG INDRA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 1400000, 0, '2023-02-01'),
(91, 21, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL JIMMY HADISURYA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 1200000, 0, '2023-02-01'),
(92, 24, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL RAHAJENG DWILALITA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 1400000, 0, '2023-02-01'),
(93, 22, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL RIAH AGUSTIN - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 1300000, 0, '2023-02-01'),
(94, 22, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I', '272326', 'Vendor:CASH INTERNAL 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/ SM (RIAH AGUSTIN)', 'IDR', 1300000, 0, '2023-02-03'),
(95, 23, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL DADANG INDRA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 0, 1400000, '2023-02-01'),
(96, 21, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL JIMMY HADISURYA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 0, 1200000, '2023-02-01'),
(97, 24, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL RAHAJENG DWILALITA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 0, 1400000, '2023-02-01'),
(98, 22, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL RIAH AGUSTIN - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 0, 1300000, '2023-02-01'),
(99, 16, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '048/II/2023/MTI', '273139', 'Vendor:CASH INTERNAL RIAH AGUSTIN - 006/II/2023/MTI - D/A WORKSHOP NASIONAL WAJIB SERTIFIKASI BIDANG HUB INDUCTRIAL KEPMENAKER (8-10 FEB\'23)', 'IDR', 780000, 0, '2023-02-16'),
(100, 16, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '048/II/2023/MTI', '273139', 'Vendor:CASH INTERNAL SUMARLAN S.SOS - 006/II/2023/MTI - D/A WORKSHOP NASIONAL WAJIB SERTIFIKASI BIDANG HUB INDUCTRIAL KEPMENAKER (8-10 FEB\'23)', 'IDR', 840000, 0, '2023-02-16'),
(101, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010891', '272505', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya; Rahajeng Dwi Lalita; Dadang Indra to DPS-SUB on 25Jan/23', 'IDR', 81360, 0, '2023-02-07'),
(102, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010891', '272505', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya; Rahajeng Dwi Lalita; Dadang Indra to DPS-SUB on 25Jan/23', 'IDR', 2712000, 0, '2023-02-07'),
(103, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010876', '272496', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to CGK-DPS on 24Jan/23', 'IDR', 23412, 0, '2023-02-07'),
(104, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010876', '272496', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to CGK-DPS on 24Jan/23', 'IDR', 780400, 0, '2023-02-07'),
(105, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010877', '272497', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to SUB-CGK on 27Jan/23', 'IDR', 20286, 0, '2023-02-07'),
(106, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010877', '272497', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to SUB-CGK on 27Jan/23', 'IDR', 676230, 0, '2023-02-07'),
(107, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-23011009', '272508', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Jimmy Hadisurya to Surabaya on 25-27Jan/23', 'IDR', 2512364, 0, '2023-02-07'),
(108, 28, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010881', '272504', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Dadang Indra & Rahajeng Dwi Lalita to SUB-HLP on 27Jan/23', 'IDR', 57796, 0, '2023-02-07'),
(109, 28, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010881', '272504', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Dadang Indra & Rahajeng Dwi Lalita to SUB-HLP on 27Jan/23', 'IDR', 1926560, 0, '2023-02-07'),
(110, 28, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-23010886', '272503', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Dadang Indra at Bali on 23-25Jan/23', 'IDR', 1938675, 0, '2023-02-07'),
(111, 19, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-23010885', '272502', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Jimmy Hadisurya at Bali on 24-25Jan/23', 'IDR', 1137488, 0, '2023-02-07'),
(112, 28, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010880', '272500', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Dadang Indra & Rahajeng Dwi Lalita to HLP-DPS on 23Jan/23', 'IDR', 51585, 0, '2023-02-07'),
(113, 28, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010880', '272500', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Dadang Indra & Rahajeng Dwi Lalita to HLP-DPS on 23Jan/23', 'IDR', 1719500, 0, '2023-02-07'),
(114, 47, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0036/II/2023/GMI', '272806', 'Vendor:TEDY SANTOSO PASS VISITOR 1-BPJS 13/FEB\'23', 'IDR', 100000, 0, '2023-02-13'),
(115, 36, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '002/PCV/HO/II/2023', '272464', 'Vendor:ENDANG SETIORINI PARKIR DAN TOLL B 2352 UZY 10 JAN-1 FEB\'23 (HR)', 'IDR', 163500, 0, '2023-02-07'),
(116, 36, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI TOL DAN PARKIR DINAS CGK DR.WIDYO (HC)', 'IDR', 345000, 0, '2023-02-23'),
(117, 36, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI TOLL & PARKING SOEWARNA DR.WIDYO 12 DEC\'22 (HC)', 'IDR', 338000, 0, '2023-02-23'),
(118, 36, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI TOLL & PARKING SOEWARNA DR.WIDYO JAN\'23 (HC)', 'IDR', 464000, 0, '2023-02-23'),
(119, 36, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0045/II/2023/GMI', '273500', 'Vendor:BEN BARKA TOLL & PARKING GA - Oprasional kantor All CGK-HLP, antar dokumen , antar karyawan HLP_CGK', 'IDR', 499500, 0, '2023-02-22'),
(120, 37, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '002/PCV/HO/II/2023', '272464', 'Vendor:ENDANG SETIORINI FUEL B 2352 UZY 27 JAN-2 FEB\'23 (HR)', 'IDR', 286000, 0, '2023-02-07'),
(121, 37, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '002/PCV/HO/II/2023', '272464', 'Vendor:ENDANG SETIORINI FUEL MOBIL B 2352 UZY 10 JAN\'1 FEB\'23 (HR)', 'IDR', 250000, 0, '2023-02-07'),
(122, 37, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI FUEL B 2352 UZY (HC)', 'IDR', 150000, 0, '2023-02-23'),
(123, 37, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI FUEL B 2352 UZY 6 FEB-12 FEB\'23 (HC)', 'IDR', 200000, 0, '2023-02-23'),
(124, 37, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0045/II/2023/GMI', '273500', 'Vendor:BEN BARKA FUEL GA - Oprasional kantor All CGK-HLP, antar dokumen , antar karyawan HLP_CGK', 'IDR', 1220000, 0, '2023-02-22'),
(125, 48, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '038/II/2023/MTI', '272634', 'Vendor:CASH INTERNAL 7.02/INVOICE-PUSDIKNAS/I/2023 - TRAINING WAJIB SERTIFIKASI BIDANG HUBUNGAN INDUSTRIAL LEMBAGA PUSAT STUDI KEBIJAKAN NASIONAL 9-10 FEB\'23 (SUMARLAN DAN RIAH AGUSTIN)', 'IDR', 8000000, 0, '2023-02-08'),
(126, 2, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '19/0490/KEU-FFT/2023', '273257', 'Vendor:FAJAR FARMATAMA.PT Medical Check Up u/ New Recruitment per 13-25 Jan-23', 'IDR', 8820000, 0, '2023-02-17'),
(127, 38, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0033/II/2023/GMI', '272734', 'Vendor:CASH INTERNAL 7-MSISDN Kartu Halo CUG f/HC HO Feb\'23', 'IDR', 468420, 0, '2023-02-09'),
(128, 45, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '023/II/23/CRV/BOM', '273566', 'Vendor:CASH INTERNAL JIMMY H - REIMBURSE MOBILE PHONE JAS MANAGEMENT 2023', 'IDR', 12000000, 0, '2023-02-23'),
(129, 44, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '035/II/2023/GMI', '272724', 'Vendor:TEDY SANTOSO LABEL BARCODE 70X40', 'IDR', 47300, 0, '2023-02-09'),
(130, 12, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '46/II/GMH/23', '273444', 'Vendor:CASH INTERNAL 0072/ED/INV/II/23(CV EDSIGN DELTA IMAJI) -188 LEMBAR SERTIFIKAT G20', 'IDR', 3196000, 0, '2023-02-21'),
(131, 44, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39093', '', 'Item:Stamp Signature GMH (Jimmy Hadisurya),Quantity:1 - DELIVER', 'IDR', 280000, 0, '2023-02-17'),
(132, 39, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '109IC22103929', '267359', 'Vendor:AUTO PRIMA RENTALINDO.PT Vehicles Rental Expense, Sewa Kendaraan OPS HC PT. JAS Sta. CGK - B 2352 UZY Periode 25 Oktober 2022 s.d 24 November 2022', 'IDR', 8400000, 0, '2023-02-01'),
(133, 39, '0', '0', 'NA.NA.HR SERVICES', 'Manual', 'Adjustment', 'JVT.078/02/23', 'JVT.078/02/23', 'Vendor:GENERAL SUPPLIER PPh HOTEL DUTY DPS FOR GMH / 01-03 JAN\' 2023 - REFF APV.272701', 'IDR', 3000000, 0, '2023-02-28'),
(134, 39, '0', '0', 'NA.NA.HR SERVICES', 'Manual', 'Adjustment', 'JVT.074/02/23', 'JVT.074/02/23', 'Vendor:GENERAL SUPPLIER PPh FUEL RENT CAR FOR TEAM HCD PMO / 21 DEC\' 2022 - 09 JAN\' 2023 - REFF APV. 271255', 'IDR', 180000, 0, '2023-02-28'),
(135, 39, '0', '0', 'NA.NA.HR SERVICES', 'Manual', 'Adjustment', 'JVT.074/02/23', 'JVT.074/02/23', 'Vendor:GENERAL SUPPLIER PPh RENT CAR FOR TEAM HCD PMO / 21 DEC\' 2022 - 09 JAN\' 2023 - REFF APV. 271255', 'IDR', 5225000, 0, '2023-02-28'),
(136, 39, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '109IC23100258', '272794', 'Vendor:AUTO PRIMA RENTALINDO.PT PO.50598 Sewa Toyota Innova 2.4 G AT DSL B 2352UZY f/HC-Swn 25/Jan-24/Feb\'23', 'IDR', 8400000, 0, '2023-02-13'),
(137, 18, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '939/II/CEO/2023', '273074', 'Vendor:CARDIG INTERNATIONAL PT MANAGEMENT FEE K3 JAN\'23', 'IDR', 27500000, 0, '2023-02-15'),
(138, 2, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'JCG/16/FAGA-I/II/23', '273629', 'Vendor:THE JAKARTA CONSULTING GROUP.PT PO.47420-2021 / Jasa Consultan Assessment Centra Level Manager, General Manager, Direktur per 13 Feb-23', 'IDR', 5000000, 0, '2023-02-23'),
(139, 2, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'JCG/11/FAGA/II/2023', '272849', 'Vendor:THE JAKARTA CONSULTING GROUP.PT PO.47420-2021 / Jasa Consultan Assessment Centre Level Manager, GM, Director per Feb-23', 'IDR', 15000000, 0, '2023-02-13'),
(140, 2, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '176615 - JOBSTREETS INDONESIA - ADVERTISEMENT (AD BUDGET) JAN/DEC\'23 - APV.271062', 'IDR', 1000000, 0, '2023-02-28'),
(141, 2, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '176616 - JOBSTREET INDONESIA - NJP RESUME SEARCH JAN/APR\'23 - APV. 271062', 'IDR', 116500, 0, '2023-02-28'),
(142, 6, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '162530 - PT INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV.257570', 'IDR', 16962225, 0, '2023-02-28'),
(143, 6, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '156493 - INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV. 257570 -', 'IDR', 16962225, 0, '2023-02-28'),
(144, 2, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '162540 - PT JOBSTREET INDONESIA - ADS FIXED BUNDLE PACKAGE - APV. 262513', 'IDR', 821333, 0, '2023-02-28'),
(145, 2, '0', '0', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '176589 - AD BUDGET (JAN\'23 - JAN\'24) - Advertisement at Jobstreet on 2Jan/23-2Jan/24', 'IDR', 1000000, 0, '2023-02-28'),
(146, 46, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0041/II/2023/GMI', '273254', 'Vendor:TEDY SANTOSO PENAMBAHAN PARKIR MOBIL U/ HC', 'IDR', 325000, 0, '2023-02-17'),
(147, 40, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39155', '', 'Item:Computer Hardware / Mouse Wireless Merk Logitech Type M235 - HC (Anindra),Quantity:2 - DELIVER', 'IDR', 470000, 0, '2023-02-24'),
(148, 40, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39154', '', 'Item:Computer Hardware / Charger Laptop HP Probook 4430S - HC (Lisa Devi),Quantity:1 - DELIVER', 'IDR', 625000, 0, '2023-02-24'),
(149, 40, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39035', '', 'Item:Kursi Kerja / Staff, Model Jaring Warna Hitam Hydraulic Merk ICON Type 303 Ny,Quantity:4 - DELIVER', 'IDR', 3580000, 0, '2023-02-14'),
(150, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '035/II/2023/GMI', '272724', 'Vendor:TEDY SANTOSO KONSUMSI MEETING 5S DI T3&CH', 'IDR', 339300, 0, '2023-02-09'),
(151, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI KONSUMSI LEMBUR 15 FEB\'23 PERSIAPAN DISTRIBUSI BUKTI POTONG PPH 21 (HC)', 'IDR', 223850, 0, '2023-02-23'),
(152, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI KONSUMSI LEMBUR RECRUITMENT HC', 'IDR', 142550, 0, '2023-02-23'),
(153, 41, '0', '0', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI SNACK MEETING PA GM & MANAGER HC (HC)', 'IDR', 117000, 0, '2023-02-23'),
(154, 41, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39089', '', 'Item:Obat-obatan K3 / Emergency / Masker Merk GEA Medical,Quantity:200 - DELIVER', 'IDR', 8000000, 0, '2023-02-16'),
(155, 41, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38954', '', 'Item:Obat-obatan K3 / Emergency / Masker Merk GEA Medical,Quantity:320 - DELIVER', 'IDR', 12800000, 0, '2023-02-02'),
(156, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blouse DM - WANITA (Ukuran terlampir),Quantity:1.4 - DELIVER', 'IDR', 203252, 0, '2023-02-08'),
(157, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Celana Panjang DM - WANITA (Ukuran terlampir),Quantity:1.4 - DELIVER', 'IDR', 211792, 0, '2023-02-08'),
(158, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / JAS DM - WANITA (Ukuran terlampir),Quantity:1.4 - DELIVER', 'IDR', 364658, 0, '2023-02-08'),
(159, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Pendek CARGO - PRIA (Ukuran terlampir),Quantity:4.2 - DELIVER', 'IDR', 607194, 0, '2023-02-08'),
(160, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / JAS DM - PRIA (Ukuran terlampir)', 'IDR', 680638, 0, '2023-02-08'),
(161, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Jilbab Staf - WANITA (Ukuran terlampir)', 'IDR', 1171688, 0, '2023-02-08'),
(162, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blouse Wanita SPV - WANITA (Ukuran terlampir),Quantity:8.4 - DELIVER', 'IDR', 1219512, 0, '2023-02-08'),
(163, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Rok SPV - WANITA (Ukuran terlampir),Quantity:8.4 - DELIVER', 'IDR', 1265628, 0, '2023-02-08'),
(164, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Panjang Staf RAMP - PRIA (Ukuran terlampir),Quantity:8.4 - DELIVER', 'IDR', 1624308, 0, '2023-02-08'),
(165, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39019', '', 'Item:Seragam (Employee Uniform) / Female Tangan Panjang (Shirt, Pants, Badges) AVSEC - WANITA (Ukuran terlampir),Quantity:6 - DELIVER', 'IDR', 2100000, 0, '2023-02-10'),
(166, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blazer SPV - WANITA (Ukuran terlampir),Quantity:8.4 - DELIVER', 'IDR', 2187948, 0, '2023-02-08'),
(167, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Celana Staf PASSANGER SERVICE/28, FOC/2, CH/2 - WANITA (Ukuran terlampir)', 'IDR', 3388672, 0, '2023-02-08'),
(168, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Dasi PASSANGER SERVICE/80, FOC/6, ASA/8, CH SPV/6, MANAGER/2 - PRIA (Daftar telampir)', 'IDR', 4703832, 0, '2023-02-08'),
(169, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39019', '', 'Item:Seragam (Employee Uniform) / Male Supv - Anggota Tangan Pendek (Shirt, Pants, Badges) AVSEC - PRIA (Ukuran terlampir),Quantity:14 - DELIVER', 'IDR', 4900000, 0, '2023-02-10'),
(170, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Rok Staf PASSANGER SERVICE/40, ASA/12 - WANITA (Ukuran terlampir)', 'IDR', 5484388, 0, '2023-02-08'),
(171, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blouse Staf PASSANGER SERVICE, FOC, ASA, CARGO, RAMP - WANITA (Ukuran terlampir)', 'IDR', 8536584, 0, '2023-02-08'),
(172, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Panjang Bergaris PASSENGER SERVICES/80, FOC/6, ASA/8, CH SPV/6, MANAGER/2 - PRIA (Ukuran terlampir),Quantity:71.4 - DELIVER', 'IDR', 10365852, 0, '2023-02-08'),
(173, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Celana Panjang Staf - PASSANGER SERVICE/80, FOC/6, ASA/8, CARGO/6, RAMP/12. CH SPV/6, MANAGER/2 - PRIA (Ukuran terlampir)', 'IDR', 13732320, 0, '2023-02-08'),
(174, 42, '0', '0', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blazer Pink Staf PASSANGER SERVICE, FOC, ASA, CARGO, RAMP - WANITA (Ukuran terlampir)', 'IDR', 15315636, 0, '2023-02-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tactual`
--
ALTER TABLE `tactual`
  ADD PRIMARY KEY (`id_actual`),
  ADD KEY `budget_fk_actual` (`id_budget`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tactual`
--
ALTER TABLE `tactual`
  MODIFY `id_actual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tactual`
--
ALTER TABLE `tactual`
  ADD CONSTRAINT `budget_fk_actual` FOREIGN KEY (`id_budget`) REFERENCES `tbudget` (`id_budget`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
