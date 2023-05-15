-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 11:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `group_data`
--

CREATE TABLE `group_data` (
  `id_group` int(11) NOT NULL,
  `group_data` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taccess`
--

CREATE TABLE `taccess` (
  `id_access` int(16) NOT NULL,
  `id_groupacc` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taccount`
--

CREATE TABLE `taccount` (
  `id_account` int(11) NOT NULL,
  `id_acc` varchar(256) NOT NULL,
  `remark_acc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taccount`
--

INSERT INTO `taccount` (`id_account`, `id_acc`, `remark_acc`) VALUES
(1, '60000', 'Operating Revenue'),
(2, '61000', 'OR - Ground Handling Premier'),
(3, '62000', 'OR - Ground Handling Silver'),
(4, '63000', 'OR - Lounge'),
(5, '64000', 'OR - Cargo Handling'),
(6, '65000', 'OR - ASA'),
(7, '66000', 'OR - Commercial Training'),
(8, '67000', 'OR- Road Freight Services'),
(9, '70000', 'Operating Expenses'),
(10, '71000', 'Direct Cost '),
(11, '71100', 'Contract Services'),
(12, '71101', 'Aircraft Cleaning'),
(13, '71102', 'Porter - Baggage'),
(14, '71103', 'Porter - Cargo'),
(15, '71104', 'Security'),
(16, '71105', 'Manpower Outsourcing'),
(17, '71106', 'Services Outsourcing'),
(18, '71107', 'GSE Rent Expense'),
(19, '71108', 'Aircraft Cleaning and Porter - Package'),
(20, '71109', 'Priority Check-In Lounge'),
(21, '71110', 'ULD Repair Services'),
(22, '71111', 'Avio Bridge Handling'),
(23, '71112', 'ASA - Handling'),
(24, '71113', 'Commercial Training Cost'),
(25, '71114', 'Fasilitator Fee - Comm. Training'),
(26, '71115', 'Fast Track - ASA'),
(27, '71116', 'Freight Service RFS'),
(28, '71198', 'Direct Cost - Initiatives'),
(29, '71199', 'Other Ground Handling Expenses'),
(30, '71200', 'Concession & Other Material'),
(31, '71201', 'Concession'),
(32, '71202', 'Lounge Food and Beverages'),
(33, '71203', 'Cost of Line Maintenance'),
(34, '71204', 'Plastic for Disposal Cost'),
(35, '71205', 'Operational Adhoc Cost'),
(36, '71206', 'Reimbursement Expenses'),
(37, '71207', 'Cost of Revenue Sharing'),
(38, '71208', 'Fuel for Airside Equipments'),
(39, '71209', 'Reimbursement Expenses - Bagdel'),
(40, '71210', 'Lounge Space Rental'),
(41, '71211', 'Sales & Return Commission'),
(42, '71213', 'Rental Space Cargo Warehouse'),
(43, '71250', 'Uncreditable VAT-In'),
(44, '71300', 'Material for Warehousing'),
(45, '71301', 'Packing Expenses'),
(46, '71302', 'Unclaimed Cargo Disposal Cost'),
(47, '71303', 'X-Ray Expenses'),
(48, '71304', 'Reimbursement Handling (Kade)'),
(49, '71305', 'CT Transport (OB)'),
(50, '71306', 'Warehousing - Materai '),
(51, '71307', 'Cargo Equipment Rental'),
(52, '71399', 'Other Warehousing Material'),
(53, '72000', 'Sales & Marketing / Commercial Expenses'),
(54, '72100', 'Commercial Expenses'),
(55, '72101', 'Sales and Return Commission'),
(56, '72102', 'Advertising and Promotion'),
(57, '72103', 'Souvernirs and Gifts'),
(58, '72104', 'Agreement Penalty'),
(59, '72105', 'Client Retention Programs'),
(60, '72198', 'Commercial Expenses - initiatives'),
(61, '72199', 'Other Commercial Expense'),
(62, '73000', 'Staff Cost'),
(63, '73100', 'Pay and Allowance'),
(64, '73101', 'Salaries'),
(65, '73102', 'Overtime'),
(66, '73103', 'Part Timer'),
(67, '73104', 'Meals on Duties'),
(68, '73105', 'Medical Expenses'),
(69, '73106', 'Hospitalization'),
(70, '73107', 'Jamsostek'),
(71, '73108', 'Pension Contribution'),
(72, '73109', 'Car Scheme'),
(73, '73110', 'Fuel Allowance'),
(74, '73111', 'Housing Allowance'),
(75, '73112', 'Annual Leave'),
(76, '73113', 'Productivity Bonuses'),
(77, '73114', 'Donation to Employee'),
(78, '73115', 'Company Award'),
(79, '73116', 'Premi Health Insurance'),
(80, '73117', 'Religion Day Allowance'),
(81, '73118', 'Shake Hand Allowance'),
(82, '73120', 'Public Holiday Pay'),
(83, '73122', 'Communication Allowance'),
(84, '73123', 'Premi Health Insurance - BPJS'),
(85, '73124', 'Pension Contribution- BPJS'),
(86, '73199', 'Other Pay and Allowance'),
(87, '73200', 'Non-Pay and Allowance (Accrual)'),
(88, '73201', 'Provision For UU No. 23/2003 (Accrual)'),
(89, '74952', 'Interdivision Charges - Staff Cost'),
(90, '74650', 'Depreciation Expenses '),
(91, '74650', 'Depreciation Expenses - Own Assets'),
(92, '74652', 'Depr. Exp. Building and Building Improvement'),
(93, '74653', 'Depr. Exp. Operating Equipment'),
(94, '74654', 'Depr. Exp. Maintenance Equipment'),
(95, '74655', 'Depr. Exp. Transportation Equipment'),
(96, '74656', 'Depr. Exp. Office Equipment and Furniture'),
(97, '74657', 'Depr. Exp. Communication Equipment'),
(98, '74658', 'Depr. Exp. IT Equipment, Software'),
(99, '74659', 'Depreciation Cost - Initiatives'),
(100, '74665', 'Depreciation Expenses - ROU'),
(101, '74666', 'Depreciation Expenses - ROU'),
(102, '74000', 'General Administration'),
(103, '74100', 'Transportation Expenses'),
(104, '73119', 'Daily Allowance'),
(105, '74101', 'Travel Expense Abroad'),
(106, '74102', 'Travel Expense Domestic'),
(107, '74103', 'Transport Services'),
(108, '74104', 'Airport Pass and ID Card'),
(109, '74105', 'Transportation Local'),
(110, '74106', 'Fuel for Vehicles'),
(111, '74107', 'Freight Expenses'),
(112, '74108', 'Packing/Repacking '),
(113, '74150', 'Training and Recruitment'),
(114, '73121', 'Daily Allowance - Trainning'),
(115, '74151', 'Training Domestic (In-House Training)'),
(116, '74152', 'Training Abroad'),
(117, '74153', 'Training for Company (O/S - Sbjcted to WHT)'),
(118, '74154', 'Employee Recruitment'),
(119, '74155', 'Medical Check Up'),
(120, '74156', 'Instructors Fee'),
(121, '74157', 'Workshop and Conference'),
(122, '74200', 'Utilities Expense'),
(123, '74201', 'Water'),
(124, '74202', 'Electricity'),
(125, '74250', 'Communication'),
(126, '74251', 'Telephone and Faximile'),
(127, '74252', 'SITA Costs'),
(128, '74253', 'Network Communications - Lintas Artha, ADSL'),
(129, '74254', 'Radio Communication'),
(130, '74299', 'Other Communication'),
(131, '74300', 'Office Supplies and Stationary and Others'),
(132, '74301', 'Photocopy'),
(133, '74302', 'Office Cleaning Supplies and Services'),
(134, '74303', 'Printing, Stationery, Office Supplies'),
(135, '74304', 'Stamp and Postage'),
(136, '74305', 'Library'),
(137, '74306', 'Subscription'),
(138, '74350', 'Representation, Entertainment and Donation'),
(139, '74351', 'Represent. and Donation (Fiscal Non-Deductable Exp.)'),
(140, '74352', 'Entertainment (Fiscal Deductable Exp.) '),
(141, '74400', 'Repair & Maintenance'),
(142, '74401', 'RM - Building and Building Improvement'),
(143, '74402', 'RM - Operating Equipment'),
(144, '74403', 'RM - Maintenance Equipment'),
(145, '74404', 'RM - Transportation Equipment'),
(146, '74405', 'RM - Office Equipment and Furniture'),
(147, '74406', 'RM - Communication Equipment'),
(148, '74407', 'RM - IT Equipment, Software'),
(149, '74408', 'RM - Leased Assets Maintenance'),
(150, '74409', 'RM - Service Charge'),
(151, '74410', 'RM - Inventory Short/Over'),
(152, '74448', 'RM - Others'),
(153, '74449', 'Fee of Maintenance (Sbjct to WHT)'),
(154, '74450', 'Rent Expenses'),
(155, '74451', 'Space & Office rental'),
(156, '74452', 'Office and IT Equipment (PC, Laptop, Server)'),
(157, '74453', 'Vehicles Rental Expense'),
(158, '74454', 'Accomodation Expense'),
(159, '74455', 'Photocopy Machine'),
(160, '74456', 'Dispenser Machine'),
(161, '74499', 'Other Rent Expenses'),
(162, '74500', 'Insurance Expenses'),
(163, '74501', 'GH Liabilities Insurance'),
(164, '74502', 'Cargo Liabilities Insurance'),
(165, '74503', 'GSE Insurance'),
(166, '74504', 'Building Insurance'),
(167, '74505', 'Vehicles Insurance'),
(168, '74506', 'Radio Communication Insurance'),
(169, '74549', 'Other Insurance Expense'),
(170, '74550', 'Professional fee'),
(171, '74551', 'Audit fees'),
(172, '74552', 'Tax Consultants'),
(173, '74553', 'Actuarial Services'),
(174, '74554', 'Legal Consultants'),
(175, '74555', 'Management Fees'),
(176, '74556', 'Monthly Doctor\'s Fees'),
(177, '74599', 'Other professional Services'),
(178, '74600', 'Permits and Licenses'),
(179, '74601', 'Software Licences'),
(180, '74602', 'Operator Licences'),
(181, '74603', 'Vehicle registration'),
(182, '74604', 'GSE Parking Permit'),
(183, '74605', 'Non-GSE Parking Permits'),
(184, '74606', 'Communication License'),
(185, '74607', 'Membership'),
(186, '74608', 'Pajak Bumi dan Bangunan (PBB)'),
(187, '74609', 'Company Operating Licence'),
(188, '74649', 'Other Permit and Protection'),
(189, '74750', 'Amortization Expenses'),
(190, '74751', 'Amortization Expense - Licence'),
(191, '74800', 'Business Tools'),
(192, '74801', 'Business Tools (UCA)'),
(193, '74900', 'Other General Administration Exp'),
(194, '74901', 'Consumption'),
(195, '74902', 'Uniform'),
(196, '74903', 'Research and Development'),
(197, '74904', 'Safety Uniform'),
(198, '74905', 'Bad Debt Expenses'),
(199, '74906', 'Administration Fee (Sbjct to PPH Art. 23)'),
(200, '74907', 'Tax Penalty and Expenses'),
(201, '74908', 'General Driver and Office Cleaning Staff - O/S'),
(202, '74909', 'Provision for Obsolete Inventory'),
(203, '74948', 'Overhead Cost - Initiatives'),
(204, '74949', 'Other General Expense'),
(205, '79999', 'Income (Loss) From Operation'),
(206, '73203', 'Productivity/bonuses (Accrual)');

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
(1, 182, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? DADANG INDRA 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 560000, 0, '2023-01-19'),
(2, 186, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? RIAH AGUSTIN 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 520000, 0, '2023-01-19'),
(3, 182, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL DADANG INDRA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 1400000, 0, '2023-02-01'),
(4, 0, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '048/II/2023/MTI', '273139', 'Vendor:CASH INTERNAL RIAH AGUSTIN - 006/II/2023/MTI - D/A WORKSHOP NASIONAL WAJIB SERTIFIKASI BIDANG HUB INDUCTRIAL KEPMENAKER (8-10 FEB\'23)', 'IDR', 780000, 0, '2023-02-16'),
(5, 172, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121135', '270198', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Rahajeng Dwi Lalita to DPS-HLP on 20Dec/22', 'IDR', 37721, 0, '2023-01-01'),
(6, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010891', '272505', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya; Rahajeng Dwi Lalita; Dadang Indra to DPS-SUB on 25Jan/23', 'IDR', 81360, 0, '2023-02-07'),
(7, 206, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0036/II/2023/GMI', '272806', 'Vendor:TEDY SANTOSO PASS VISITOR 1-BPJS 13/FEB\'23', 'IDR', 100000, 0, '2023-02-13'),
(8, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '001/PCV/HO/I/2023', '271553', 'Vendor:ENDANG SETIORINI TOL & PARKING B 2352 UZY (HC)', 'IDR', 239000, 0, '2023-01-24'),
(9, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '002/PCV/HO/II/2023', '272464', 'Vendor:ENDANG SETIORINI PARKIR DAN TOLL B 2352 UZY 10 JAN-1 FEB\'23 (HR)', 'IDR', 163500, 0, '2023-02-07'),
(10, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI FUEL MOBIL HC B 2352 UZY 20 DEC\'22 -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 372720, 0, '2023-01-05'),
(11, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '002/PCV/HO/II/2023', '272464', 'Vendor:ENDANG SETIORINI FUEL B 2352 UZY 27 JAN-2 FEB\'23 (HR)', 'IDR', 286000, 0, '2023-02-07'),
(12, 0, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/44/I/GMH/22', '272538', 'Vendor:SUMARLAN PA PELATIHAN DAMKAR JAS CGK & HO - JAN \'23, KONSUMSI & INSTRUKTUR 37xRp.35.000,-', 'IDR', 6000000, 0, '2023-01-31'),
(13, 0, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '038/II/2023/MTI', '272634', 'Vendor:CASH INTERNAL 7.02/INVOICE-PUSDIKNAS/I/2023 - TRAINING WAJIB SERTIFIKASI BIDANG HUBUNGAN INDUSTRIAL LEMBAGA PUSAT STUDI KEBIJAKAN NASIONAL 9-10 FEB\'23 (SUMARLAN DAN RIAH AGUSTIN)', 'IDR', 8000000, 0, '2023-02-08'),
(14, 1, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '18/5728/KEU-FFT/2022', '270601', 'Vendor:FAJAR FARMATAMA.PT Medec f/ New Recruitment HC per Dec-22', 'IDR', 2925000, 0, '2023-01-05'),
(15, 1, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '19/0490/KEU-FFT/2023', '273257', 'Vendor:FAJAR FARMATAMA.PT Medical Check Up u/ New Recruitment per 13-25 Jan-23', 'IDR', 8820000, 0, '2023-02-17'),
(16, 197, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '007/I/2023/GMI', '270851', 'Vendor:CASH INTERNAL 7-MSISDN Kartu Halo CUG f/HC HO Jan\'23', 'IDR', 450000, 0, '2023-01-10'),
(17, 197, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0033/II/2023/GMI', '272734', 'Vendor:CASH INTERNAL 7-MSISDN Kartu Halo CUG f/HC HO Feb\'23', 'IDR', 468420, 0, '2023-02-09'),
(18, 210, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '023/II/23/CRV/BOM', '273566', 'Vendor:CASH INTERNAL JIMMY H - REIMBURSE MOBILE PHONE JAS MANAGEMENT 2023', 'IDR', 12000000, 0, '2023-02-23'),
(19, 203, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '035/II/2023/GMI', '272724', 'Vendor:TEDY SANTOSO LABEL BARCODE 70X40', 'IDR', 47300, 0, '2023-02-09'),
(20, 211, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '001/PCV/HO/I/2023', '271553', 'Vendor:ENDANG SETIORINI MEETING W/ PARTNERS KONSULTAN SELEKSI KANDIDAT PHL WELDER (HC)', 'IDR', 500000, 0, '2023-01-24'),
(21, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ), Cargo (Export, Import), Terminal 2 (Ramp, Arrival) Periode Dese', 'IDR', 15400000, 0, '2023-01-10'),
(22, 198, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '109IC22104600', '270913', 'Vendor:AUTO PRIMA RENTALINDO.PT Vehicles Rental Expense, Sewa Kendaraan OPS HC PT. JAS Sta. CGK - B 2352 UZY Periode 25 Desember 2022 s.d 24 Januari 2023', 'IDR', 8400000, 0, '2023-01-11'),
(23, 198, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '109IC22103929', '267359', 'Vendor:AUTO PRIMA RENTALINDO.PT Vehicles Rental Expense, Sewa Kendaraan OPS HC PT. JAS Sta. CGK - B 2352 UZY Periode 25 Oktober 2022 s.d 24 November 2022', 'IDR', 8400000, 0, '2023-02-01'),
(26, 51, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '887/I/CEO/2023', '271061', 'Vendor:CARDIG INTERNATIONAL PT MANAGEMENT K3 FEE DEC\'22', 'IDR', 27500000, 0, '2023-01-12'),
(27, 51, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '939/II/CEO/2023', '273074', 'Vendor:CARDIG INTERNATIONAL PT MANAGEMENT FEE K3 JAN\'23', 'IDR', 27500000, 0, '2023-02-15'),
(28, 212, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'JCG/16/FAGA-I/II/23', '273629', 'Vendor:THE JAKARTA CONSULTING GROUP.PT PO.47420-2021 / Jasa Consultan Assessment Centra Level Manager, General Manager, Direktur per 13 Feb-23', 'IDR', 5000000, 0, '2023-02-23'),
(29, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '176616 - JOBSTREET INDONESIA - NJP RESUME SEARCH JAN/APR\'23 - APV. 271062', 'IDR', 116500, 0, '2023-01-31'),
(30, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '176615 - JOBSTREETS INDONESIA - ADVERTISEMENT (AD BUDGET) JAN/DEC\'23 - APV.271062', 'IDR', 1000000, 0, '2023-02-28'),
(31, 205, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0041/II/2023/GMI', '273254', 'Vendor:TEDY SANTOSO PENAMBAHAN PARKIR MOBIL U/ HC', 'IDR', 325000, 0, '2023-02-17'),
(32, 199, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38808', '', 'Item:Kursi Kerja / Staff, Model Jaring Warna Hitam Hydraulic Merk ICON 303 Ny - HC,Quantity:1 - DELIVER', 'IDR', 895000, 0, '2023-01-19'),
(33, 199, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39155', '', 'Item:Computer Hardware / Mouse Wireless Merk Logitech Type M235 - HC (Anindra),Quantity:2 - DELIVER', 'IDR', 470000, 0, '2023-02-24'),
(34, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI KONSUM BLK KEB TANGERANG AT SERANG -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 152900, 0, '2023-01-05'),
(35, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '035/II/2023/GMI', '272724', 'Vendor:TEDY SANTOSO KONSUMSI MEETING 5S DI T3&CH', 'IDR', 339300, 0, '2023-02-09'),
(36, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Pendek CARGO,Quantity:30 - DELIVER', 'IDR', 4337100, 0, '2023-01-24'),
(37, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blouse DM - WANITA (Ukuran terlampir),Quantity:1.4 - DELIVER', 'IDR', 203252, 0, '2023-02-08'),
(38, 202, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '006/I/2023/GMI', '270803', 'Vendor:TEDY SANTOSO PEMBELIAN SPATULA WAX U/ MEDICAL CHECKUP', 'IDR', 278007, 0, '2023-01-10'),
(39, 208, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '43/I/GMH/23', '271780', 'Vendor:SPTP JAS BANTUAN DANA PEMILIHAN KETUA UMUM SP JAS YEAR 2023/2025', 'IDR', 10000000, 0, '2023-01-26'),
(40, 185, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? JIMMY HADISURYA 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 600000, 0, '2023-01-19'),
(41, 185, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL JIMMY HADISURYA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 1200000, 0, '2023-02-01'),
(42, 0, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '048/II/2023/MTI', '273139', 'Vendor:CASH INTERNAL SUMARLAN S.SOS - 006/II/2023/MTI - D/A WORKSHOP NASIONAL WAJIB SERTIFIKASI BIDANG HUB INDUCTRIAL KEPMENAKER (8-10 FEB\'23)', 'IDR', 840000, 0, '2023-02-16'),
(43, 172, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121135', '270198', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Rahajeng Dwi Lalita to DPS-HLP on 20Dec/22', 'IDR', 1257367, 0, '2023-01-01'),
(44, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010891', '272505', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya; Rahajeng Dwi Lalita; Dadang Indra to DPS-SUB on 25Jan/23', 'IDR', 2712000, 0, '2023-02-07'),
(45, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0018/I/2023/GMI', '271777', 'Vendor:BEN BARKA TOLL & PARKING HC - antar karpet untuk pengajian', 'IDR', 52000, 0, '2023-01-26'),
(46, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI TOL DAN PARKIR DINAS CGK DR.WIDYO (HC)', 'IDR', 345000, 0, '2023-02-23'),
(47, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI FUEL MOBIL OPS HC B 2352 UZY -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 200000, 0, '2023-01-05'),
(48, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '002/PCV/HO/II/2023', '272464', 'Vendor:ENDANG SETIORINI FUEL MOBIL B 2352 UZY 10 JAN\'1 FEB\'23 (HR)', 'IDR', 250000, 0, '2023-02-07'),
(49, 1, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '19/0228/KEU-FFT/2023', '271795', 'Vendor:FAJAR FARMATAMA.PT Medical Check Up f/ New Recruitment per 1-15Jan/23', 'IDR', 11760000, 0, '2023-01-26'),
(50, 32, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '46/II/GMH/23', '273444', 'Vendor:CASH INTERNAL 0072/ED/INV/II/23(CV EDSIGN DELTA IMAJI) -188 LEMBAR SERTIFIKAT G20', 'IDR', 3196000, 0, '2023-02-21'),
(51, 209, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '43/I/GMH/23', '271780', 'Vendor:SPTP JAS REVERSE - BANTUAN DANA PEMILIHAN KETUA UMUM SP JAS YEAR 2023/2025', 'IDR', 10000000, 0, '2023-01-26'),
(52, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01253 f/T3 SMJ Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(53, 198, '000', '00000', 'NA.NA.HR SERVICES', 'Manual', 'Adjustment', 'JVT.078/02/23', 'JVT.078/02/23', 'Vendor:GENERAL SUPPLIER PPh HOTEL DUTY DPS FOR GMH / 01-03 JAN\' 2023 - REFF APV.272701', 'IDR', 3000000, 0, '2023-02-28'),
(55, 212, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'JCG/11/FAGA/II/2023', '272849', 'Vendor:THE JAKARTA CONSULTING GROUP.PT PO.47420-2021 / Jasa Consultan Assessment Centre Level Manager, GM, Director per Feb-23', 'IDR', 15000000, 0, '2023-02-13'),
(56, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '162540 - PT JOBSTREET INDONESIA - ADS FIXED BUNDLE PACKAGE - APV. 262513', 'IDR', 821333, 0, '2023-01-31'),
(57, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '176616 - JOBSTREET INDONESIA - NJP RESUME SEARCH JAN/APR\'23 - APV. 271062', 'IDR', 116500, 0, '2023-02-28'),
(58, 199, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38808', '', 'Item:Kursi Kerja / Staff, Model Jaring Warna Hitam Hydraulic Merk ICON 303 Ny - HC,Quantity:5 - DELIVER', 'IDR', 4475000, 0, '2023-01-19'),
(59, 199, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39154', '', 'Item:Computer Hardware / Charger Laptop HP Probook 4430S - HC (Lisa Devi),Quantity:1 - DELIVER', 'IDR', 625000, 0, '2023-02-24'),
(60, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI KONSUM LEMBUR 16 DEC\'22 -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 88800, 0, '2023-01-05'),
(61, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI KONSUMSI LEMBUR 15 FEB\'23 PERSIAPAN DISTRIBUSI BUKTI POTONG PPH 21 (HC)', 'IDR', 223850, 0, '2023-02-23'),
(62, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Panjang RAMP,Quantity:30 - DELIVER', 'IDR', 5801100, 0, '2023-01-24'),
(63, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Celana Panjang DM - WANITA (Ukuran terlampir),Quantity:1.4 - DELIVER', 'IDR', 211792, 0, '2023-02-08'),
(64, 183, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? RAHAJENG DWILALITA W 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 560000, 0, '2023-01-19'),
(65, 183, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL RAHAJENG DWILALITA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 1400000, 0, '2023-02-01'),
(66, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-22121257', '270205', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Jimmy Hadisurya at Bali on 18-20Dec/22', 'IDR', 1819980, 0, '2023-01-01'),
(67, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010876', '272496', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to CGK-DPS on 24Jan/23', 'IDR', 23412, 0, '2023-02-07'),
(68, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI TOLL & PARKING SOEWARNA DR.WIDYO 12 DEC\'22 (HC)', 'IDR', 338000, 0, '2023-02-23'),
(69, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0018/I/2023/GMI', '271777', 'Vendor:BEN BARKA FUEL HC - antar karpet untuk pengajian', 'IDR', 100000, 0, '2023-01-26'),
(70, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI FUEL B 2352 UZY (HC)', 'IDR', 150000, 0, '2023-02-23'),
(71, 203, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39093', '', 'Item:Stamp Signature GMH (Jimmy Hadisurya),Quantity:1 - DELIVER', 'IDR', 280000, 0, '2023-02-17'),
(72, 209, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '43/I/GMH/23', '271780', 'Vendor:SPTP JAS REVERSE - BANTUAN DANA PEMILIHAN KETUA UMUM SP JAS YEAR 2023/2025', 'IDR', 0, 10000000, '2023-01-26'),
(73, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01260 f/T3Svc Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(74, 198, '000', '00000', 'NA.NA.HR SERVICES', 'Manual', 'Adjustment', 'JVT.074/02/23', 'JVT.074/02/23', 'Vendor:GENERAL SUPPLIER PPh FUEL RENT CAR FOR TEAM HCD PMO / 21 DEC\' 2022 - 09 JAN\' 2023 - REFF APV. 271255', 'IDR', 180000, 0, '2023-02-28'),
(76, 22, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '162530 - PT INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV.257570', 'IDR', 16962225, 0, '2023-01-31'),
(77, 22, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '162530 - PT INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV.257570', 'IDR', 16962225, 0, '2023-02-28'),
(78, 199, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39035', '', 'Item:Kursi Kerja / Staff, Model Jaring Warna Hitam Hydraulic Merk ICON Type 303 Ny,Quantity:4 - DELIVER', 'IDR', 3580000, 0, '2023-02-14'),
(79, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI KONSUM LEMBUR MEETING 28 DEC\'22 -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 99860, 0, '2023-01-05'),
(80, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI KONSUMSI LEMBUR RECRUITMENT HC', 'IDR', 142550, 0, '2023-02-23'),
(81, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Jilbab Wanita,Quantity:105 - DELIVER', 'IDR', 6276900, 0, '2023-01-24'),
(82, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / JAS DM - WANITA (Ukuran terlampir),Quantity:1.4 - DELIVER', 'IDR', 364658, 0, '2023-02-08'),
(83, 184, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? SUMARLAN S.SOS? 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 560000, 0, '2023-01-19'),
(84, 186, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL RIAH AGUSTIN - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 1300000, 0, '2023-02-01'),
(85, 172, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-22121256', '270204', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Rahajeng Dwi Lalita at Bali on 19-20Dec/22', 'IDR', 909990, 0, '2023-01-01'),
(86, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010876', '272496', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to CGK-DPS on 24Jan/23', 'IDR', 780400, 0, '2023-02-07'),
(87, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI TOLL & PARKING SOEWARNA DR.WIDYO JAN\'23 (HC)', 'IDR', 464000, 0, '2023-02-23'),
(88, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI FUEL B 2352 UZY 6 FEB-12 FEB\'23 (HC)', 'IDR', 200000, 0, '2023-02-23'),
(89, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01283 f/T3 Ramp Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(90, 198, '000', '00000', 'NA.NA.HR SERVICES', 'Manual', 'Adjustment', 'JVT.074/02/23', 'JVT.074/02/23', 'Vendor:GENERAL SUPPLIER PPh RENT CAR FOR TEAM HCD PMO / 21 DEC\' 2022 - 09 JAN\' 2023 - REFF APV. 271255', 'IDR', 5225000, 0, '2023-02-28'),
(92, 22, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '156493 - INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV. 257570 -', 'IDR', 16962225, 0, '2023-01-31'),
(93, 22, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '156493 - INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV. 257570 -', 'IDR', 16962225, 0, '2023-02-28'),
(94, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI LUNCH W/ LAWYER PERADI -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 128400, 0, '2023-01-05'),
(95, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '003/PCV/HO/II/2023', '273608', 'Vendor:ENDANG SETIORINI SNACK MEETING PA GM & MANAGER HC (HC)', 'IDR', 117000, 0, '2023-02-23'),
(96, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Rok Panjang Wanita PCIL (Ukuran Terlampir)', 'IDR', 6783200, 0, '2023-01-24'),
(97, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Pendek CARGO - PRIA (Ukuran terlampir),Quantity:4.2 - DELIVER', 'IDR', 607194, 0, '2023-02-08'),
(98, 186, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I', '272326', 'Vendor:CASH INTERNAL 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/ SM (RIAH AGUSTIN)', 'IDR', 1300000, 0, '2023-02-03'),
(99, 172, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121099', '270196', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Rahajeng Dwi Lalita to HLP-DPS on 19Dec/22', 'IDR', 46972, 0, '2023-01-01'),
(100, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010877', '272497', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to SUB-CGK on 27Jan/23', 'IDR', 20286, 0, '2023-02-07'),
(101, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0045/II/2023/GMI', '273500', 'Vendor:BEN BARKA TOLL & PARKING GA - Oprasional kantor All CGK-HLP, antar dokumen , antar karyawan HLP_CGK', 'IDR', 499500, 0, '2023-02-22'),
(102, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0045/II/2023/GMI', '273500', 'Vendor:BEN BARKA FUEL GA - Oprasional kantor All CGK-HLP, antar dokumen , antar karyawan HLP_CGK', 'IDR', 1220000, 0, '2023-02-22'),
(103, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01372 f/T2Ramp Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(104, 198, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '109IC23100258', '272794', 'Vendor:AUTO PRIMA RENTALINDO.PT PO.50598 Sewa Toyota Innova 2.4 G AT DSL B 2352UZY f/HC-Swn 25/Jan-24/Feb\'23', 'IDR', 8400000, 0, '2023-02-13'),
(106, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '176589 - AD BUDGET (JAN\'23 - JAN\'24) - Advertisement at Jobstreet on 2Jan/23-2Jan/24', 'IDR', 1000000, 0, '2023-01-31'),
(107, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '162540 - PT JOBSTREET INDONESIA - ADS FIXED BUNDLE PACKAGE - APV. 262513', 'IDR', 821333, 0, '2023-02-28'),
(108, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '014/PCV/HO/XII/2022', '270590', 'Vendor:ENDANG SETIORINI LUNCH W/ PAK ANDRIAN UNIT KANTOR DINAS TANGERANG -PC HO 31/DEC\'22 (NO:55-107)', 'IDR', 89000, 0, '2023-01-05'),
(109, 207, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39089', '', 'Item:Obat-obatan K3 / Emergency / Masker Merk GEA Medical,Quantity:200 - DELIVER', 'IDR', 8000000, 0, '2023-02-16'),
(110, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Rok Pendek Wanita Staff = 100pcs, Rok Pendek Wanita ASA = 50pcs (Ukuran Terlampir)', 'IDR', 11300250, 0, '2023-01-24'),
(111, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / JAS DM - PRIA (Ukuran terlampir)', 'IDR', 680638, 0, '2023-02-08'),
(112, 182, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL DADANG INDRA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 0, 1400000, '2023-02-01'),
(113, 172, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121099', '270196', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Rahajeng Dwi Lalita to HLP-DPS on 19Dec/22', 'IDR', 1565750, 0, '2023-01-01'),
(114, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010877', '272497', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to SUB-CGK on 27Jan/23', 'IDR', 676230, 0, '2023-02-07'),
(115, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01621 f/2FArrival Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(116, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '176615 - JOBSTREETS INDONESIA - ADVERTISEMENT (AD BUDGET) JAN/DEC\'23 - APV.271062', 'IDR', 1000000, 0, '2023-01-31'),
(117, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '176589 - AD BUDGET (JAN\'23 - JAN\'24) - Advertisement at Jobstreet on 2Jan/23-2Jan/24', 'IDR', 1000000, 0, '2023-02-28'),
(118, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '001/PCV/HO/I/2023', '271553', 'Vendor:ENDANG SETIORINI KONSUM LEMBUR 5 JAN\'23 DUE TO RECAL TAX 2022 (HC)', 'IDR', 166450, 0, '2023-01-24'),
(119, 207, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38954', '', 'Item:Obat-obatan K3 / Emergency / Masker Merk GEA Medical,Quantity:320 - DELIVER', 'IDR', 12800000, 0, '2023-02-02'),
(120, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Celana Panjang Wanita Supv & Staff (Ukuran Terlampir)', 'IDR', 12858800, 0, '2023-01-24'),
(121, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Jilbab Staf - WANITA (Ukuran terlampir)', 'IDR', 1171688, 0, '2023-02-08'),
(122, 185, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL JIMMY HADISURYA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 0, 1200000, '2023-02-01'),
(123, 188, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-22121212', '270202', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Usman Rahmani at Bali on 19-20Dec/22', 'IDR', 425321, 0, '2023-01-01'),
(124, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-23011009', '272508', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Jimmy Hadisurya to Surabaya on 25-27Jan/23', 'IDR', 2512364, 0, '2023-02-07'),
(125, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01797 f/CH Exp Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(126, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '42/I/2023/GMH', '271539', 'Vendor:CASH INTERNAL LUNCH PA BANDING HC W/GM & MANAGER OPS CGK 19/JAN\'23', 'IDR', 729000, 0, '2023-01-24'),
(127, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Dasi Pria,Quantity:237 - DELIVER', 'IDR', 15613560, 0, '2023-01-24'),
(128, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blouse Wanita SPV - WANITA (Ukuran terlampir),Quantity:8.4 - DELIVER', 'IDR', 1219512, 0, '2023-02-08'),
(129, 187, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL RAHAJENG DWILALITA - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 0, 1400000, '2023-02-01'),
(130, 188, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121097', '270193', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Usman Rahmani to CGK-DPS on 19Dec/22', 'IDR', 43659, 0, '2023-01-01'),
(131, 188, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010881', '272504', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Dadang Indra & Rahajeng Dwi Lalita to SUB-HLP on 27Jan/23', 'IDR', 57796, 0, '2023-02-07'),
(132, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.49399 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06359 f/CH Imp Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(133, 207, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38777', '', 'Item:Obat-obatan K3 / Emergency / Hand Sanitizer Merk Instance Cair,Quantity:5 - DELIVER', 'IDR', 875000, 0, '2023-01-17'),
(134, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Blouse Wanita Hijab = 120pcs, Blouse Non Hijab = 100pcs, Blouse ASA Hijab = 50pcs, Blouse ASA Non Hijab = 50pcs (Ukuran Terlampir),Quantity:160 - DELIVER', 'IDR', 23228800, 0, '2023-01-24'),
(135, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Rok SPV - WANITA (Ukuran terlampir),Quantity:8.4 - DELIVER', 'IDR', 1265628, 0, '2023-02-08'),
(136, 186, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0044B/CRV/GMH/I/2023', '272143', 'Vendor:CASH INTERNAL RIAH AGUSTIN - 010/I/GMH/2023 - D/A COMPILE BANDING KPI W/SM DPS & SUB 23-27 JAN\'23', 'IDR', 0, 1300000, '2023-02-01'),
(137, 188, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121097', '270193', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Usman Rahmani to CGK-DPS on 19Dec/22', 'IDR', 1455300, 0, '2023-01-01'),
(138, 171, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010881', '272504', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Dadang Indra & Rahajeng Dwi Lalita to SUB-HLP on 27Jan/23', 'IDR', 1926560, 0, '2023-02-07'),
(139, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi CGK, SUB, DPS Periode Desember 2022', 'IDR', 35200000, 0, '2023-01-10'),
(140, 207, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38777', '', 'Item:Obat-obatan K3 / Emergency / Masker Merk GEA Medical,Quantity:300 - DELIVER', 'IDR', 12000000, 0, '2023-01-17'),
(141, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Panjang Bergaris Pria,Quantity:237 - DELIVER', 'IDR', 34407660, 0, '2023-01-24'),
(142, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Panjang Staf RAMP - PRIA (Ukuran terlampir),Quantity:8.4 - DELIVER', 'IDR', 1624308, 0, '2023-02-08'),
(143, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121094', '270192', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to DPS-CGK on 20Dec/22', 'IDR', 56169, 0, '2023-01-01'),
(144, 171, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-23010886', '272503', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Dadang Indra at Bali on 23-25Jan/23', 'IDR', 1938675, 0, '2023-02-07'),
(145, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.50111 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01323 f/LC CGK', 'IDR', 2200000, 0, '2023-01-10'),
(146, 48, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/106/XII/2022/MHI', '271974', 'Vendor:SUMARLAN PA MEALS BOX FOR STAFF ON DUTY NEW YEAR 2023', 'IDR', 50802900, 0, '2023-01-31'),
(147, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Celana Panjang Pria,Quantity:297 - DELIVER', 'IDR', 48553560, 0, '2023-01-24'),
(148, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39019', '', 'Item:Seragam (Employee Uniform) / Female Tangan Panjang (Shirt, Pants, Badges) AVSEC - WANITA (Ukuran terlampir),Quantity:6 - DELIVER', 'IDR', 2100000, 0, '2023-02-10'),
(149, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121094', '270192', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to DPS-CGK on 20Dec/22', 'IDR', 1872300, 0, '2023-01-01'),
(150, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-23010885', '272502', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Jimmy Hadisurya at Bali on 24-25Jan/23', 'IDR', 1137488, 0, '2023-02-07'),
(151, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.50111 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01356 f/T2 Mte Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(152, 27, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/44/I/GMH/22', '272538', 'Vendor:SUMARLAN PA KONSUMSI PELATIHAN DAMKAR JAS CGK & HO - JAN \'23, KONSUMSI & INSTRUKTUR 37xRp.35.000,-', 'IDR', 1295000, 0, '2023-01-31'),
(153, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38830', '', 'Item:Seragam (Employee Uniform) / Blazer Wanita Hijab = 120pcs, Non Hijab = 100pcs, Blazer PCIL Hijab = 40pcs, Blazer PCIL Non Hijab = 40pcs, Blazer ASA Hijab = 50pcs, Blazer ASA Non Hijab = 50pcs (Ukuran Terlampir)', 'IDR', 52094000, 0, '2023-01-24'),
(154, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blazer SPV - WANITA (Ukuran terlampir),Quantity:8.4 - DELIVER', 'IDR', 2187948, 0, '2023-02-08'),
(155, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121098', '270194', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to CGK-DPS on 18Dec/22', 'IDR', 31503, 0, '2023-01-01'),
(156, 171, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010880', '272500', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Dadang Indra & Rahajeng Dwi Lalita to HLP-DPS on 23Jan/23', 'IDR', 51585, 0, '2023-02-07'),
(157, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.50111 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G04397 f/T3 PCI', 'IDR', 2200000, 0, '2023-01-10'),
(158, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Celana Staf PASSANGER SERVICE/28, FOC/2, CH/2 - WANITA (Ukuran terlampir)', 'IDR', 3388672, 0, '2023-02-08'),
(159, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121098', '270194', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to CGK-DPS on 18Dec/22', 'IDR', 1050100, 0, '2023-01-01'),
(160, 171, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-23010880', '272500', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Dadang Indra & Rahajeng Dwi Lalita to HLP-DPS on 23Jan/23', 'IDR', 1719500, 0, '2023-02-07'),
(161, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.50111 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G07011 f/T1B', 'IDR', 2200000, 0, '2023-01-10'),
(162, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Dasi PASSANGER SERVICE/80, FOC/6, ASA/8, CH SPV/6, MANAGER/2 - PRIA (Daftar telampir)', 'IDR', 4703832, 0, '2023-02-08'),
(163, 188, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121158', '270199', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Rahmani Usman to DPS-CGK on 20Dec/22', 'IDR', 29301, 0, '2023-01-01'),
(164, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Periode Desember 2022', 'IDR', 11000000, 0, '2023-01-10'),
(165, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39019', '', 'Item:Seragam (Employee Uniform) / Male Supv - Anggota Tangan Pendek (Shirt, Pants, Badges) AVSEC - PRIA (Ukuran terlampir),Quantity:14 - DELIVER', 'IDR', 4900000, 0, '2023-02-10'),
(166, 188, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121158', '270199', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Rahmani Usman to DPS-CGK on 20Dec/22', 'IDR', 976700, 0, '2023-01-01'),
(167, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G04806 f/T3 CGK Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(168, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Rok Staf PASSANGER SERVICE/40, ASA/12 - WANITA (Ukuran terlampir)', 'IDR', 5484388, 0, '2023-02-08'),
(169, 174, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121543', '271317', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Jimmy Hadisurya to CGK-DPS-CGK on 30Dec/22-3Jan/23', 'IDR', 75759, 0, '2023-01-17'),
(170, 10, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06389 f/T3 Ops Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(171, 201, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blouse Staf PASSANGER SERVICE, FOC, ASA, CARGO, RAMP - WANITA (Ukuran terlampir)', 'IDR', 8536584, 0, '2023-02-08'),
(172, 174, '000', '', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'STD01-22121543', '271317', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Jimmy Hadisurya to CGK-DPS-CGK on 30Dec/22-3Jan/23', 'IDR', 2525300, 0, '2023-01-17'),
(173, 10, '000', '', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06850 f/HO Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(174, 201, '000', '', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Kemeja Lengan Panjang Bergaris PASSENGER SERVICES/80, FOC/6, ASA/8, CH SPV/6, MANAGER/2 - PRIA (Ukuran terlampir),Quantity:71.4 - DELIVER', 'IDR', 10365852, 0, '2023-02-08'),
(175, 10, '000', '', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G07945 f/CH-521 Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(176, 201, '000', '', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Celana Panjang Staf - PASSANGER SERVICE/80, FOC/6, ASA/8, CARGO/6, RAMP/12. CH SPV/6, MANAGER/2 - PRIA (Ukuran terlampir)', 'IDR', 13732320, 0, '2023-02-08'),
(177, 10, '000', '', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.48059 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G08413 f/T3 Avsec Dec-22', 'IDR', 2200000, 0, '2023-01-10'),
(178, 201, '000', '', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '38985', '', 'Item:Seragam (Employee Uniform) / Blazer Pink Staf PASSANGER SERVICE, FOC, ASA, CARGO, RAMP - WANITA (Ukuran terlampir)', 'IDR', 15315636, 0, '2023-02-08'),
(179, 10, '000', '', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200037', '270845', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ), Cargo (Export, Import), Terminal 2 (Ramp, Arrival) Periode Dese', 'IDR', 0, 15400000, '2023-01-10'),
(180, 10, '000', '', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200038', '270847', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi CGK, SUB, DPS Periode Desember 2022', 'IDR', 0, 35200000, '2023-01-10'),
(181, 10, '000', '', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2200036', '270844', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Periode Desember 2022', 'IDR', 0, 11000000, '2023-01-10'),
(261, 115, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? HERI SETIAWAN 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 560000, 0, '2023-01-19'),
(262, 116, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0101B/CRV/GMH/II/2023', '273155', 'Vendor:CASH INTERNAL AGUS MUSTIKA - 005/II/2023.MTI - D/A ASISTENSI VERIFIKASI SARANA PELATIHAN AVSEC DPS 9-11 FEB\'23', 'IDR', 720000, 0, '2023-02-16'),
(263, 73, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0110B/CRV/GMH/II/2023', '273267', 'Vendor:CASH INTERNAL 007/II/2023/MCT - D/A VISIT LEARNING CENTER SUB 19-20 FEB\'23 (NENENG SUMIATI)', 'IDR', 560000, 0, '2023-02-17'),
(264, 62, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '047/II/2023/MTI', '273042', 'Vendor:CASH INTERNAL 004/II/2023/MTI - D/A SAFETY TRAINING GSE OPS KNO AS TRAINER 12-14 MAR FEB\'23 (DEDY SULISTIYO)', 'IDR', 660000, 0, '2023-02-15'),
(265, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020841', '273583', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Maria Elisa & Atik Sugiarti to DPS-CGK on 11 Feb-23', 'IDR', 60620, 0, '2023-02-23'),
(266, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '032/I/2023/MTI', '272636', 'Vendor:CASH INTERNAL REIMBURSE TIKET PESAWAT & HOTEL INSPEKSI SARANA SUB (PENGUJI DEPHUB)', 'IDR', 8557000, 0, '2023-02-08'),
(267, 121, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI CUCI MOBIL 27 JAN\'23', 'IDR', 55000, 0, '2023-02-08'),
(268, 124, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI FUEL 1-30 DEC\'22', 'IDR', 910000, 0, '2023-01-10'),
(269, 124, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI FUEL 1-30 JAN\'23', 'IDR', 1825000, 0, '2023-02-08'),
(270, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH & SNACK PARTICIPANT & INSTRUCTOR TRAINING ENGINE 1-10 DEC\'22', 'IDR', 5078900, 0, '2023-01-10'),
(271, 64, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH & SNACK FOR INSTRUCTOR & PARTICIP ETIHAD 18-27 JAN\'23', 'IDR', 2049500, 0, '2023-02-08'),
(272, 64, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '014/I/2023/MTI', '271550', 'Vendor:PRATHITA TITIAN NUSANTARA PT 03/INVOICE/PTC-DT/I/2023 -TRAINING ADVANCED VISUAL DOCKING GUIDANCE SYSTEM 5 PERSONS 16/JAN\'23', 'IDR', 12500000, 0, '2023-01-24'),
(273, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '009/I/2023/MTI', '271226', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 9 JAN\'23 (1 PERSON)', 'IDR', 420000, 0, '2023-01-16'),
(274, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '044/II/2023/MTI', '272627', 'Vendor:CASH INTERNAL SUPERVISI RECURRENT SENIOR AVSEC DPS 26-28 DEC\'22 (25 PERSONS)', 'IDR', 10515464, 0, '2023-02-08'),
(275, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/108/XI/2022/GMI', '270907', 'Vendor:BEN BARKA PA LISTRIK JAS R.T.MAHKOTA - DEC \'22', 'IDR', 9386451, 0, '2023-01-11'),
(276, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/125/XII/2022/GMI', '272773', 'Vendor:BEN BARKA PA PAM JAS R.T MAHKOTA - JAN \'23', 'IDR', 5187000, 0, '2023-02-10'),
(277, 126, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/125/XII/2022/GMI', '272773', 'Vendor:BEN BARKA PA LISTRIK JAS R.T MAHKOTA - JAN \'23', 'IDR', 4813000, 0, '2023-02-10'),
(278, 127, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '007/I/2023/GMI', '270851', 'Vendor:CASH INTERNAL 1-MSISDN Kartu Halo CUG f/LC LTU CGK Jan\'23', 'IDR', 55759, 0, '2023-01-10'),
(279, 127, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0033/II/2023/GMI', '272734', 'Vendor:CASH INTERNAL 1-MSISDN Kartu Halo CUG f/LC LTU CGK Feb\'23', 'IDR', 50000, 0, '2023-02-09'),
(280, 130, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI BIY KEBERSIHAN DAN KEAMANAN KOMPLEK DEC\'22', 'IDR', 300000, 0, '2023-01-10'),
(281, 130, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI BIY KEBERSIHAN DAN KEAMANAN KOMPLEK JAN\'23', 'IDR', 300000, 0, '2023-02-08'),
(282, 139, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI BIY PEMBELIAN LAIN-LAIN 9-26 DEC\'22', 'IDR', 1833400, 0, '2023-01-10'),
(283, 139, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI PEMB PERLENGKAPAN DAN KEBUTUHAN KANTOR', 'IDR', 1451100, 0, '2023-02-08'),
(284, 140, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI BIY PENGIRIMAN DOKUMEN 9-26 DEC\'22', 'IDR', 147000, 0, '2023-01-10'),
(285, 140, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI PENGIRIMAN DOK TO DPS, KNO, SUB', 'IDR', 177000, 0, '2023-02-08'),
(286, 287, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '037/II/2022/MCT', '272710', 'Vendor:CASH INTERNAL Neneng Sumiati/MCT - Representation Meeting w/ Partner on 19 Jan-23', 'IDR', 2088200, 0, '2023-02-09'),
(287, 288, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Repair Other / Kabel ties,Quantity:1 - DELIVER', 'IDR', 24500, 0, '2023-02-28'),
(288, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.01/MCSTR/CGK/I/23 01-FEB-2023 13:53:23', 'JVW.01/MCSTR/CGK/I/23', 'MICOSTAR TAGIHAN SW FTCOPY - JAN \'23', 'IDR', 2161200, 0, '2023-01-31'),
(289, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PS/2301/0949', '273011', 'Vendor:MICOSTAR KARYAGRAHA.PT PO.51494 Sewa 3 unit Mesin Fotocopy f/Rk Mahkota Jan\'23', 'IDR', 2275270, 0, '2023-02-14'),
(290, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '08/KOP.SPN/I/2023', '271699', 'Vendor:KOPERASI SEKAR PELANGI NUSA Sewa 3 units Mesin Dispenser f/Ruko Tmn Mahkota Dec\'22', 'IDR', 165000, 0, '2023-01-25'),
(291, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.02/KSP/I/23\"08-MAR-23 11:03:00 - 7465746', 'Reverses \"JVW.02/KSP/I/23\"08-MAR-23 11:03:00', 'KSP TAGIHAN AIR MINUM TERMINAL - JAN \'23', 'IDR', 0, 165, '2023-02-28'),
(292, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Computer Hardware / Jack RJ45,Quantity:1 - DELIVER', 'IDR', 132300, 0, '2023-02-28'),
(293, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH INSTAL CBT 22 DEC\'22', 'IDR', 29000, 0, '2023-01-10'),
(294, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH AND DINNER MEETING MGR 29 DEC\'22 DAN 6 JAN\'23', 'IDR', 690000, 0, '2023-02-08'),
(295, 169, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LAUNDRY 2&9 DEC\'22', 'IDR', 126000, 0, '2023-01-10'),
(296, 169, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI BIY LAUNDRY', 'IDR', 141000, 0, '2023-02-08'),
(297, 73, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0022B/CRV/GMH/I/2023', '271398', 'Vendor:CASH INTERNAL?? NENENG SUMIATI 005/I/2023/MCR - D/A STRATEGIC MEETING 2023 BOGOR 16-17 JAN\'23', 'IDR', 560000, 0, '2023-01-19');
INSERT INTO `tactual` (`id_actual`, `id_budget`, `subacc`, `product`, `description`, `source`, `category`, `doc_ref`, `doc_number`, `desc_source`, `currency`, `amount_debit`, `amount_credit`, `actual_date`) VALUES
(298, 116, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0103B/CRV/GMH/II/2023', '273153', 'Vendor:CASH INTERNAL 004/II/2023/MTI - D/A DINAS KNO ASISTENSI VERIFIKASI SARANA PELATIHAN AVSEC 9-11 FEB\'23 (DEDY SULISTYO)', 'IDR', 660000, 0, '2023-02-16'),
(299, 73, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0092B/CRV/GMH/II/2023', '273222', 'Vendor:CASH INTERNAL 025/II/2023/MND - D/A OPENING CEREMONY DPM POLTEKBANG 2023 SUB 19-20 FEB\'23 (ALFIAN MULIA PRADANA)', 'IDR', 440000, 0, '2023-02-17'),
(300, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020841', '273583', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Maria Elisa & Atik Sugiarti to DPS-CGK on 11 Feb-23', 'IDR', 2020672, 0, '2023-02-23'),
(301, 121, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI TRANSPORT DAN E TOLL JAN\'23', 'IDR', 1148000, 0, '2023-02-08'),
(302, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH & SNACK PARTICIPANT & INSTRUCTOR WEIGHT & BALANCE CARGO 9-10 DEC\'22', 'IDR', 2750829, 0, '2023-01-10'),
(303, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH & SNACK PELATIHAN ALAT DAMKAR 31 JAN\'23', 'IDR', 2283000, 0, '2023-02-08'),
(304, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '007/I/2023/MTI', '270796', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 5 JAN\'23 (2 PERSONS)', 'IDR', 1680000, 0, '2023-01-10'),
(305, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '039/II/2023/MTI', '272633', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 3 FEB\'23 (4 PERSONS)', 'IDR', 1240000, 0, '2023-02-08'),
(306, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/108/XI/2022/GMI', '270907', 'Vendor:BEN BARKA PA PAM JAS R.T.MAHKOTA - DEC \'22', 'IDR', 4158000, 0, '2023-01-11'),
(307, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.02/KSP/I/23\"08-MAR-23 11:03:00 - 7465746', 'Reverses \"JVW.02/KSP/I/23\"08-MAR-23 11:03:00', 'KSP TAGIHAN AIR MINUM TERMINAL - JAN \'23', 'IDR', 0, 320, '2023-02-28'),
(308, 288, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Repair Other / Double Tip,Quantity:3 - DELIVER', 'IDR', 73500, 0, '2023-02-28'),
(309, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.01/MCSTR/CGK/XII/22\"14-FEB-23 11:04:45 - 7448351', 'Reverses \"JVW.01/MCSTR/CGK/XII/22\"14-FEB-23 11:04:45', 'MICOSTAR TAGIHAN SW FTCOPY - DEC \'22', 'IDR', 0, 5, '2023-02-14'),
(310, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.02/KSP/XII/22\"01-FEB-23 11:34:09 - 7437208', 'Reverses \"JVW.02/KSP/XII/22\"01-FEB-23 11:34:09', 'KSP TAGIHAN AIR MINUM TERMINAL - DEC \'22', 'IDR', 0, 165, '2023-01-31'),
(311, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.02/KSP/iI/23 02-MAR-2023 09:44:30', 'JVW.02/KSP/II/23', 'KSP TAGIHAN AIR MINUM TERMINAL - FEB \'23', 'IDR', 165000, 0, '2023-02-28'),
(312, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Computer Hardware / Kabel Projector,Quantity:5 - DELIVER', 'IDR', 500000, 0, '2023-02-28'),
(313, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH SOSIALISASI E-ARSIP 7 DEC\'22', 'IDR', 166000, 0, '2023-01-10'),
(314, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH MEETING CARGO 25 JAN\'23', 'IDR', 45000, 0, '2023-02-08'),
(315, 169, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI PENEBANGAN POHON DEPAN LC 28 JAN\'23', 'IDR', 1803000, 0, '2023-02-08'),
(316, 116, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0062B/CRV/GMH/I/2023', '272314', 'Vendor:CASH INTERNAL 002/I/2023/MTI - D/A ASISTENSI VERIFIKASI AVSEC SUB 26-29 JAN\'23 (AJI ARIYONO)', 'IDR', 960000, 0, '2023-02-03'),
(317, 73, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0126B/CRV/GMH/II/2023', '273526', 'Vendor:CASH INTERNAL 008/II/2023/MCT - D/A DCOMMERCIAL TRAINING MARKETING ACTIVITY KJT 15-16 FEB\'23 (NENENG SUMIATI)', 'IDR', 560000, 0, '2023-02-22'),
(318, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23021283', '273602', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Udik Novianto at Medan on 10-11 Feb-23', 'IDR', 642928, 0, '2023-02-23'),
(319, 121, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI TRANSPORTASI TRAINING PHP LARAVEL 3 JAN\'23', 'IDR', 400000, 0, '2023-02-08'),
(320, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH CX AUDIT 13 DEC\'22', 'IDR', 252000, 0, '2023-01-10'),
(321, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH & SNACK TRANS NUSA INSTRUCTOR & PARTICIPANT 24-25 JAN\'23', 'IDR', 1350000, 0, '2023-02-08'),
(322, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '005/I/2023/MTI', '271495', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 3 JAN\'23 (5 PERSONS)2', 'IDR', 970000, 0, '2023-01-20'),
(323, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '042/II/2023/MTI', '272629', 'Vendor:CASH INTERNAL SUPERVISI RECURRENT BASIC AVSEC DPS 19-31 DEC\'22 (25 PERSONS)', 'IDR', 10515464, 0, '2023-02-08'),
(324, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '08/KOP.SPN/I/2023', '271699', 'Vendor:KOPERASI SEKAR PELANGI NUSA 20 Galons VIT f/Ruko Tmn Mahkota Dec\'22', 'IDR', 320000, 0, '2023-01-25'),
(325, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.02/KSP/iI/23 02-MAR-2023 09:44:30', 'JVW.02/KSP/II/23', 'KSP TAGIHAN AIR MINUM TERMINAL - FEB \'23', 'IDR', 480000, 0, '2023-02-28'),
(326, 288, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Repair Other / Survey, Koordinasi & Akomodasi,Quantity:1 - DELIVER', 'IDR', 500000, 0, '2023-02-28'),
(327, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.01/MCSTR/CGK/XI/22\"14-FEB-23 11:05:21 - 7448354', 'Reverses \"JVW.01/MCSTR/CGK/XI/22\"14-FEB-23 11:05:21', 'MICOSTAR TAGIHAN SW FTCOPY - NOV \'22', 'IDR', 0, 2, '2023-02-14'),
(328, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.02/KSP/I/23 01-FEB-2023 11:45:02', 'JVW.02/KSP/I/23', 'KSP TAGIHAN AIR MINUM TERMINAL - JAN \'23', 'IDR', 165000, 0, '2023-01-31'),
(329, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Computer Hardware / Kabel Management / Power 5 Outlet,Quantity:4 - DELIVER', 'IDR', 600000, 0, '2023-02-28'),
(330, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI SNACK MEETING GM 2 DEC\'22', 'IDR', 180000, 0, '2023-01-10'),
(331, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH MEETING E-ARSIP 13 JAN\'23', 'IDR', 40000, 0, '2023-02-08'),
(332, 170, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI PENGAMBILAN SKP AVSEC 5 JAN\'23', 'IDR', 500000, 0, '2023-02-08'),
(333, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23020958', '273590', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Agus Mustika at Bali on 9-11 Feb-23', 'IDR', 929773, 0, '2023-02-23'),
(334, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR DUTY SECURITY TRAINING 6-30 DEC\'22', 'IDR', 360000, 0, '2023-01-10'),
(335, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH EXAMINER UJIAN AVSEC DKP 11-27 JAN\'23', 'IDR', 321000, 0, '2023-02-08'),
(336, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '015/I/2023/MTI', '271493', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 13 JAN\'23 (12 PERSONS)', 'IDR', 3580000, 0, '2023-01-20'),
(337, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '043/II/2023/MTI', '272628', 'Vendor:CASH INTERNAL SUPERVISI RECURRENT JUNIOR AVSEC DPS 22-24 DEC\'22 (25 PERSONS)', 'IDR', 10515464, 0, '2023-02-08'),
(338, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.02/KSP/XII/22\"01-FEB-23 11:34:09 - 7437208', 'Reverses \"JVW.02/KSP/XII/22\"01-FEB-23 11:34:09', 'KSP TAGIHAN AIR MINUM TERMINAL - DEC \'22', 'IDR', 0, 528, '2023-01-31'),
(339, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PS/2211/0946', '269494', 'Vendor:MICOSTAR KARYAGRAHA.PT PO.51211 Sewa 2 unit Mesin Fotocopy f/Rk Mahkota Nov\'22', 'IDR', 5344750, 0, '2023-02-01'),
(340, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Installation Network & Jaringan Kabel UTP Rackmount Switch,Quantity:4 - DELIVER', 'IDR', 700000, 0, '2023-02-28'),
(341, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH MEETING INTERNAL 2 JAN\'23', 'IDR', 98000, 0, '2023-02-08'),
(342, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23020956', '273588', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Atik Sugiarti at Bali on 9-11 Feb-23', 'IDR', 929773, 0, '2023-02-23'),
(343, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR INDUCTION 1-26 DEC\'22', 'IDR', 267500, 0, '2023-01-10'),
(344, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR ANA 16-18 JAN\'23', 'IDR', 81000, 0, '2023-02-08'),
(345, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '017/I/2023/MTI', '271491', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 16 JAN\'23 (4 PERSONS)', 'IDR', 850000, 0, '2023-01-20'),
(346, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '046/II/2023/MTI', '273043', 'Vendor:CASH INTERNAL TRAINING MANAGING PEOPLE & PROCESS TO BOOST PERFORMANCE 13-14 JAN\'23 (ARMAND B. ARIEF)', 'IDR', 6000000, 0, '2023-02-15'),
(347, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.02/KSP/I/23 01-FEB-2023 11:45:02', 'JVW.02/KSP/I/23', 'KSP TAGIHAN AIR MINUM TERMINAL - JAN \'23', 'IDR', 320000, 0, '2023-01-31'),
(348, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PS/2212/0953', '271256', 'Vendor:MICOSTAR KARYAGRAHA.PT PO.51212 Sewa 3 unit Mesin Fotocopy f/Rk Mahkota Dec\'22', 'IDR', 2161200, 0, '2023-02-01'),
(349, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Installation Network & Jaringan Kabel UTP Ruangan Perpustakaan,Quantity:4 - DELIVER', 'IDR', 800000, 0, '2023-02-28'),
(350, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH PARTICIPANT MEETING W/ SQA 13 JAN\'23', 'IDR', 60000, 0, '2023-02-08'),
(351, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020815', '273582', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Maria Elisa; Atik Sugiarti & Agus Mustika to CGK-DPS on 9 Feb-23', 'IDR', 147071, 0, '2023-02-23'),
(352, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR LAR 5-6 DEC\'22', 'IDR', 63000, 0, '2023-01-10'),
(353, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR BTT 4 JAN\'23', 'IDR', 17000, 0, '2023-02-08'),
(354, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '052/II/2023/MTI', '273469', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 16 FEB\'23 (13 PERSONS)', 'IDR', 3195000, 0, '2023-02-21'),
(355, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.01/MCSTR/CGK/I/23\"02-MAR-23 09:31:53 - 7460341', 'Reverses \"JVW.01/MCSTR/CGK/I/23\"02-MAR-23 09:31:53', 'MICOSTAR TAGIHAN SW FTCOPY - JAN \'23', 'IDR', 0, 2, '2023-02-28'),
(356, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39183', '', 'Item:Computer Hardware / Kabel LAN UTP Cat 6 Merk Belden,Quantity:1 - DELIVER', 'IDR', 2300000, 0, '2023-02-28'),
(357, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI SNACK PARTICIPANT IROPS 4 JAN\'23', 'IDR', 180000, 0, '2023-02-08'),
(358, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020815', '273582', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Maria Elisa; Atik Sugiarti & Agus Mustika to CGK-DPS on 9 Feb-23', 'IDR', 4902390, 0, '2023-02-23'),
(359, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR RECURRENT SENIOR AVSEC 26-27 DEC\'22', 'IDR', 64000, 0, '2023-01-10'),
(360, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR DST 10-13 JAN\'23', 'IDR', 98000, 0, '2023-02-08'),
(361, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '056/II/2023/MTI', '273343', 'Vendor:CASH INTERNAL INSPECTOR FEE BIMBINGAN TEKNIS PENGAJAR GSE & AIRCRAFT MARSHALLER (10 PERSONS)', 'IDR', 7731959, 0, '2023-02-21'),
(362, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.01/MCSTR/CGK/II/23 02-MAR-2023 09:49:01', 'JVW.01/MCSTR/CGK/II/23', 'MICOSTAR TAGIHAN SW FTCOPY - FEB \'23', 'IDR', 2275270, 0, '2023-02-28'),
(363, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020674', '273578', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Udik Novianto to CGK-KNO-CGK on 10/11 Feb-23', 'IDR', 140987, 0, '2023-02-23'),
(364, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR UJIAN BTT 13 DEC\'22', 'IDR', 27000, 0, '2023-01-10'),
(365, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR FRM 17-18 JAN\'23', 'IDR', 66000, 0, '2023-02-08'),
(366, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '028/I/2023/MTI', '272123', 'Vendor:CASH INTERNAL INSPECTOR FEE EVALUASI SARANA PRASARANA AVSEC JAS CGK (2 PERSONS)', 'IDR', 7731959, 0, '2023-02-01'),
(367, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020674', '273578', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Udik Novianto to CGK-KNO-CGK on 10/11 Feb-23', 'IDR', 4699570, 0, '2023-02-23'),
(368, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/259/XII/2022/MTI', '270063', 'Vendor:HERI SETIAWAN PA OUTBOUND SUCCESSION PLAN - 2022', 'IDR', 34388410, 0, '2023-01-01'),
(369, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR INDUCTION 9 JAN-19 JAN\'23', 'IDR', 804500, 0, '2023-02-08'),
(370, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '029/I/2023/MTI', '272122', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 27 JAN\'23 (11 PERSONS)', 'IDR', 2725000, 0, '2023-02-01'),
(371, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020673', '273577', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Daud Roy to CGK-KNO-CGK on 10/12 Feb-23', 'IDR', 140987, 0, '2023-02-23'),
(372, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR JUNIOR AVSEC 23-25 JAN\'23', 'IDR', 87000, 0, '2023-02-08'),
(373, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '025/I/2023/MTI', '272333', 'Vendor:CASH INTERNAL INSPECTOR FEE EVAL SARANA PRASARANA AVSEC JAS SUB JAN\'23', 'IDR', 10206186, 0, '2023-02-03'),
(374, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020673', '273577', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Daud Roy to CGK-KNO-CGK on 10/12 Feb-23', 'IDR', 4699570, 0, '2023-02-23'),
(375, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '036/II/2023/MTI', '272667', 'Vendor:NENENG SUMIATI TRAINING ADVANCED VISUAL DOCKING GUIDANCE SYSTEM 16 JAN\'23', 'IDR', 200000, 0, '2023-02-08'),
(376, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '027/I/2023/MTI', '272329', 'Vendor:CASH INTERNAL INSPECTOR FEE EVAL SARANA PRASARANA AVSEC JAS KNO JAN\'23 (', 'IDR', 10206186, 0, '2023-02-03'),
(377, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020658', '273576', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Dedy Sulistiyo to CGK-KNO-CGK on 9/14 Feb-23', 'IDR', 67656, 0, '2023-02-23'),
(378, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '026/I/2023/MTI', '272331', 'Vendor:CASH INTERNAL INSPECTOR FEE EVAL SARANA PRASARANA AVSEC JAS DPS JAN\'23', 'IDR', 10206186, 0, '2023-02-03'),
(379, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020658', '273576', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Dedy Sulistiyo to CGK-KNO-CGK on 9/14 Feb-23', 'IDR', 2255230, 0, '2023-02-23'),
(380, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23020844', '273584', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Agus Mustika to DPS-CGK on 11 Feb-23', 'IDR', 1658028, 0, '2023-02-23'),
(381, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23020962', '273595', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Daud Roy at Kualanamu on 9-11 Feb-23', 'IDR', 1048467, 0, '2023-02-23'),
(382, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23020961', '273594', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Udik Novianto at Kualanamu on 9-11 Feb-23', 'IDR', 1048467, 0, '2023-02-23'),
(383, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23020960', '273592', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Dedy Sulistiyo at Kualanamu on 9-11 Feb-23', 'IDR', 1048467, 0, '2023-02-23'),
(384, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23020959', '273591', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Dedy Sulistiyo at Kualanamu on 11-14 Feb-23', 'IDR', 1483680, 0, '2023-02-23'),
(385, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23011153', '273113', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Aji Ariyono at Surabaya on 26 - 29Jan-23', 'IDR', 2136499, 0, '2023-02-15'),
(386, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23011122', '273108', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Aji Ariyono to CGK-SUB on 26Jan-23', 'IDR', 36583, 0, '2023-02-15'),
(387, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23011122', '273108', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Aji Ariyono to CGK-SUB on 26Jan-23', 'IDR', 1219451, 0, '2023-02-15'),
(388, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23011099', '273106', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Aji Ariyono to SUB-CGK on 29Jan-23', 'IDR', 30954, 0, '2023-02-15'),
(389, 119, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23011099', '273106', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Aji Ariyono to SUB-CGK on 29Jan-23', 'IDR', 1031830, 0, '2023-02-15'),
(390, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0012/I/2023/GMI', '271443', 'Vendor:JURIANI SETIA Pass New/Monthly/Renewal 2023 f/1 Staff CT-CGK Jan\'23 Phase 1st', 'IDR', 400000, 0, '2023-01-19'),
(391, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI PNBP PAS BANDARA BTT & JAA', 'IDR', 850000, 0, '2023-02-08'),
(392, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI LAPORAN PENCABUTAN PAS BANDARA 26 JAN\'23', 'IDR', 250000, 0, '2023-02-08'),
(393, 278, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI TRANSPORT DAN PARKIR 1-30 DEC\'22', 'IDR', 946700, 0, '2023-01-10'),
(394, 279, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI LUNCH INSTRUCTOR & PARTICIPANT SV 19-23 DEC\'22', 'IDR', 735500, 0, '2023-01-10'),
(395, 190, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '007/I/2023/GMI', '270851', 'Vendor:CASH INTERNAL 1-MSISDN Kartu Halo CUG f/CT CGK Jan\'23', 'IDR', 50000, 0, '2023-01-10'),
(396, 190, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0033/II/2023/GMI', '272734', 'Vendor:CASH INTERNAL 1-MSISDN Kartu Halo CUG f/CT CGK Feb\'23', 'IDR', 50000, 0, '2023-02-09'),
(397, 93, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '282/XII/2022/MCT', '270798', 'Vendor:NENENG SUMIATI BIY TELP MARKETING 22 DEC\'22', 'IDR', 161500, 0, '2023-01-10'),
(398, 96, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '282/XII/2022/MCT', '270798', 'Vendor:NENENG SUMIATI JILID MODUL 2-19 DEC\'22', 'IDR', 171000, 0, '2023-01-10'),
(399, 96, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI FOTOCOPY MODUL AVSEC 31 JAN\'23', 'IDR', 1171600, 0, '2023-02-08'),
(400, 97, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '282/XII/2022/MCT', '270798', 'Vendor:NENENG SUMIATI PENGIRIMAN SERTIFIKAT 20-26 DEC\'22', 'IDR', 259000, 0, '2023-01-10'),
(401, 97, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI PENGIRIMAN SERTIF KE BPN 24 JAN\'23', 'IDR', 62000, 0, '2023-02-08'),
(402, 280, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '282/XII/2022/MCT', '270798', 'Vendor:NENENG SUMIATI MEETING W/ PARTNERS (OTBAN) 7 DEC\'22 (NENENG)', 'IDR', 570600, 0, '2023-01-10'),
(403, 98, '000', '00000', 'OTHER - CASH CUSTOMER COMERCIAL TRAINING / JAS ACADEMY / LEARNING CENTRE.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '282/XII/2022/MCT', '270798', 'Vendor:NENENG SUMIATI ENTERTAIN W/ PERKASA FLYING SCHOOL 20 DEC\'22 (NENENG)', 'IDR', 157400, 0, '2023-01-10'),
(404, 98, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI ENTERTAIN W/ POLTEKBANG SURABAYA 16 JAN\'23', 'IDR', 587895, 0, '2023-02-08'),
(405, 191, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Cost Management', 'Receiving', '38972', '', 'Item:Repair Building Improvement / Renovation/ Fatch Fitting ( Us-10,PT-10,PT-20)Merk : Dorma', 'IDR', 3500000, 0, '2023-02-07'),
(406, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2362', '272256', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Services AC Split 1 - 2 PK', 'IDR', 1425000, 0, '2023-02-01'),
(407, 194, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Cost Management', 'Receiving', '38987', '', 'Item:Repair Other / Lampu Bulb LED 9.wattMerk : Philips', 'IDR', 900000, 0, '2023-02-08'),
(408, 281, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Assets', 'Depreciation', 'JAN-23 Depreciation IDR', '', '162534 - SEWA RUKO MES - APV. 262044', 'IDR', 8333333, 0, '2023-01-31'),
(409, 281, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Assets', 'Depreciation', 'FEB-23 Depreciation IDR', '', '162534 - SEWA RUKO MES - APV. 262044', 'IDR', 8333333, 0, '2023-02-28'),
(410, 100, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'PS/2301/0949', '273011', 'Vendor:MICOSTAR KARYAGRAHA.PT Photocopy Rent Expense, Rental Mesin Foto Copy Area Ruko Taman Mahkota Periode Januari 2023', 'IDR', 2275270, 0, '2023-02-14'),
(411, 282, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '282/XII/2022/MCT', '270798', 'Vendor:NENENG SUMIATI VERMAK CELANA SERAGAM JAA 26 DEC\'22', 'IDR', 20000, 0, '2023-01-10'),
(412, 282, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '282/XII/2022/MCT', '270798', 'Vendor:NENENG SUMIATI PEMBELIAN DASI 7 DEC\'22', 'IDR', 35500, 0, '2023-01-10'),
(413, 283, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI BIY ADMIN OTBAN 10 JAN\'23', 'IDR', 150000, 0, '2023-02-08'),
(414, 284, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '27277413/A/11/22', '274203', 'Vendor:PROVIS GARUDA SERVICES.PT Driver & Staff, Jasa Outsoursing Office Girl ( Ibu Putri Netalia ) PT. JAS - Learning Center Periode Oktober 2022', 'IDR', 5299515, 0, '2023-02-01'),
(415, 285, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '281/XII/2022/MTI', '270800', 'Vendor:NENENG SUMIATI ADMIN PENGAMBILAN SKP DAN LAPORAN KEHILANGAN', 'IDR', 350000, 0, '2023-01-10'),
(416, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '020/I/2023/MCT', '271544', 'Vendor:NENENG SUMIATI 820230104966229 - REIMBURSE PNBP INT BASIC AVSEC & OJT PASS BANDARA COMMERCIAL', 'IDR', 450000, 0, '2023-01-24'),
(417, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '024/I/2023/MCT', '272194', 'Vendor:NENENG SUMIATI PNBP PASS BANDARA 5 SISWA 2023 CT-CGK', 'IDR', 2000000, 0, '2023-02-01'),
(418, 96, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Cost Management', 'Receiving', '38680', '', 'Item:Printing (Barang Cetakan), Kartu Kompetensi GSE & FRM (Staff KNO),Quantity:5 - DELIVER', 'IDR', 275000, 0, '2023-01-06'),
(419, 96, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI FOTOCOPY MODUL BTT 23 JAN\'23', 'IDR', 233500, 0, '2023-02-08'),
(420, 97, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI PENGIRIMAN SERTIF KE PKU 24 JAN\'23', 'IDR', 44000, 0, '2023-02-08'),
(421, 98, '000', '00000', 'OTHER - CASH CUSTOMER COMERCIAL TRAINING / JAS ACADEMY / LEARNING CENTRE.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '282/XII/2022/MCT', '270798', 'Vendor:NENENG SUMIATI ENTERTAIN W/ PT FAS 14 DEC\'22 (NENENG)', 'IDR', 328000, 0, '2023-01-10'),
(422, 98, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI ENTERTAIN W/ PPI CURUG', 'IDR', 234000, 0, '2023-02-08'),
(423, 191, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Cost Management', 'Receiving', '38972', '', 'Item:Repair Building Improvement / Renovation/ Bongkar Pasang Pintu KacaMerk : Dorma', 'IDR', 1200000, 0, '2023-02-07'),
(424, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2363', '272257', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Isi Freom R 32 AC 1 PK', 'IDR', 275000, 0, '2023-02-01'),
(425, 100, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'PS/2301/0949', '273011', 'Vendor:MICOSTAR KARYAGRAHA.PT Photocopy Rent Expense, Rental Mesin Foto Copy Area Ruko Taman Mahkota Periode Januari 2023', 'IDR', 0, 2, '2023-02-14'),
(426, 284, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '27277413/A/11/22.', '268104', 'Vendor:PROVIS GARUDA SERVICES.PT Driver & Staff, Jasa Outsoursing Office Girl ( Ibu Putri Netalia ) PT. JAS - Learning Center Periode Oktober 2022', 'IDR', 4952818, 0, '2023-02-01'),
(427, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0016/I/2023/GMI', '271726', 'Vendor:JURIANI SETIA Pass New/Monthly/Renewal 2023 f/1 Staff CT-CGK Jan\'23 Phase 2nd', 'IDR', 400000, 0, '2023-01-25'),
(428, 96, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Cost Management', 'Receiving', '38680', '', 'Item:Printing (Barang Cetakan), Kartu Kompetensi GSE & FRM (Staff DPS),Quantity:58 - DELIVER', 'IDR', 3190000, 0, '2023-01-06'),
(429, 96, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI JILID MODUL DST 30 JAN\'23', 'IDR', 60000, 0, '2023-02-08'),
(430, 97, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI PENGIRIMAN SURAT PERMOHONAN VISITOR TO UMT 30 JAN\'23', 'IDR', 47000, 0, '2023-02-08'),
(431, 98, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '035/II/2023/MCT', '272637', 'Vendor:NENENG SUMIATI ENTERTAIN W/ PT INDOHYER', 'IDR', 252200, 0, '2023-02-08'),
(432, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2363', '272257', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Perbaiak Fan Indoor? AC 1,5 PK', 'IDR', 350000, 0, '2023-02-01'),
(433, 100, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'PS/2211/0946', '269494', 'Vendor:MICOSTAR KARYAGRAHA.PT Photocopy Rent Expense, Rental Mesin Foto Copy Area Ruko Taman Mahkota Periode November 2022', 'IDR', 5344750, 0, '2023-02-01'),
(434, 284, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '27277413/A/11/22', '274203', 'Vendor:PROVIS GARUDA SERVICES.PT Driver and Staff, Jasa Outsoursing Office Girl ( Ibu Putri Netalia ) PT. JAS - Learning Center Periode Oktober 2022', 'IDR', 0, 5, '2023-02-01'),
(435, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2363', '272257', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Perbaikan Dynamo Fan Indoor AC 1-2 PLK', 'IDR', 1125000, 0, '2023-02-01'),
(436, 100, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'PS/2212/0953', '271256', 'Vendor:MICOSTAR KARYAGRAHA.PT Photocopy Rent Expense, Rental Mesin Foto Copy Area Ruko Taman Mahkota Periode Desember 2022', 'IDR', 2161200, 0, '2023-02-01'),
(437, 284, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '27277413/A/11/22.', '268104', 'Vendor:PROVIS GARUDA SERVICES.PT Driver & Staff, Jasa Outsoursing Office Girl ( Ibu Putri Netalia ) PT. JAS - Learning Center Periode Oktober 2022', 'IDR', 0, 4, '2023-02-01'),
(438, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2363', '272257', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Perbaikan PCB Indoor AC 1 PK', 'IDR', 1050000, 0, '2023-02-01'),
(439, 100, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'PS/2211/0946', '269494', 'Vendor:MICOSTAR KARYAGRAHA.PT Photocopy Rent Expense, Rental Mesin Foto Copy Area Ruko Taman Mahkota Periode November 2022', 'IDR', 0, 5, '2023-02-01'),
(440, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0027/II/2023/GMI', '272510', 'Vendor:CASH INTERNAL INV-MT-008&9/II/2023(CV.MECCA TEKNIK) -REFIL 13-FIREX JAS RUKO 2023', 'IDR', 3403000, 0, '2023-02-07'),
(441, 100, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'PS/2212/0953', '271256', 'Vendor:MICOSTAR KARYAGRAHA.PT Photocopy Rent Expense, Rental Mesin Foto Copy Area Ruko Taman Mahkota Periode Desember 2022', 'IDR', 0, 2, '2023-02-01'),
(442, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2361', '272255', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC/ Ganti Capasitor Fan Outdoor AC Split 2 PK', 'IDR', 1700000, 0, '2023-02-01'),
(443, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2361', '272255', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC/ Isi Freon R22 AC Split 2 PK', 'IDR', 600000, 0, '2023-02-01'),
(444, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2361', '272255', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC/ Perbaikan Dynamo Fan Indoor AC Split 2 PK', 'IDR', 870000, 0, '2023-02-01'),
(445, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2361', '272255', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC/ Perbaikan Slang Pembuangan Air? AC Split', 'IDR', 90000, 0, '2023-02-01'),
(446, 297, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '080/III/2023/MTI', '275021', 'Vendor:CASH INTERNAL RIAH AGUSTIN - KEKURANGAN D/A FEB\'23', 'IDR', 156000, 0, '2023-03-16'),
(447, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI DINNER HANDLE REPLACEMENT JES MACHINE W/ IT (HC)', 'IDR', 83000, 0, '2023-03-15'),
(448, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI FUEL MOBIL HC OPS B 2352 UZY', 'IDR', 200000, 0, '2023-03-15'),
(449, 257, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-23020622', '274459', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Sumarlan at Bandung on 8-10 Feb-23', 'IDR', 1325420, 0, '2023-03-08'),
(450, 1, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '19/1172/KEU-FFT/2023', '274872', 'Vendor:FAJAR FARMATAMA.PT Medical Check-Up f/ New Recruitment per Feb-23', 'IDR', 23940000, 0, '2023-03-14'),
(451, 197, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0061/III/2023/GMI', '274493', 'Vendor:CASH INTERNAL 7-MSISDN Kartu Halo CUG f/HC HO Mar\'23', 'IDR', 439967, 0, '2023-03-09'),
(452, 203, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39478', '', 'Item:Tinta & Toner, Tinta Printer Canon TS 300 Black No 745,Quantity:3 - DELIVER', 'IDR', 705000, 0, '2023-03-28'),
(453, 211, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '874/III/2023/GMH', '274994', 'Vendor:CASH INTERNAL 001/INS/11/2022(JUNAEDI) -JASA KONSULTASI INTERVIEW PHL WELDER MTE & INSPEKSI KONSULTASI AREA MTE', 'IDR', 9230769, 0, '2023-03-16'),
(454, 300, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '23.92040478', '274968', 'Vendor:DWI KOMPUTER CV PO.51701-2023 Mouse Wireless Logitech M235 -HC', 'IDR', 235000, 0, '2023-03-15'),
(455, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300004', '274725', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ) Periode Februari 2023', 'IDR', 61600000, 0, '2023-03-13'),
(456, 198, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '109IC23100601', '274753', 'Vendor:AUTO PRIMA RENTALINDO.PT Vehicles Rental Expense, Sewa Kendaraan OPS HC PT. JAS Sta. CGK - B 2352 UZY Periode 25 Februari 2023 s.d 24 Maret 2023', 'IDR', 8400000, 0, '2023-03-13'),
(457, 264, '000', '00000', 'NA.NA.HR SERVICES', 'AutoCopy', 'Adjustment', 'JVT.012/03/23', '', 'MAR\'23 EST ASS UMUM BUMIPUTERAMUDA 1967 PT PROGRAM JAMINAN KECELAKAAN DIRI DILUAR JAM KERJA (JKDK)Perda DKI Jakarta No.6 Th.2004 f/Mar \'22', 'IDR', 3321313, 0, '2023-03-31'),
(458, 51, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '884/III/CEO/2023', '275912', 'Vendor:CARDIG INTERNATIONAL PT MANAGEMENT FEE K3 FEB\'23', 'IDR', 27500000, 0, '2023-03-31'),
(459, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'MAR-23 Depreciation IDR', '', '162540 - PT JOBSTREET INDONESIA - ADS FIXED BUNDLE PACKAGE - APV. 262513', 'IDR', 821333, 0, '2023-03-31'),
(460, 205, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '0056/III/2023/GMI', '274392', 'Vendor:TEDY SANTOSO PENAMBAHAN PARKIR HC DEPT AT WISMA SOEWARNA', 'IDR', 900000, 0, '2023-03-08'),
(461, 268, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '23.92040478', '274968', 'Vendor:DWI KOMPUTER CV Computer Hardware / Mouse Wireless Merk Logitech Type M235 - HC (Anindra)', 'IDR', 0, 235000, '2023-03-15'),
(462, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39355', '', 'Item:Obat-obatan K3 / Emergency / Hand Gloves Merk Sensi Uk. M,Quantity:10 - DELIVER', 'IDR', 1000000, 0, '2023-03-15'),
(463, 37, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/41/I/23/GMH', '274776', 'Vendor:SUMARLAN PA PENGAJIAN DI HO 20 JAN \'23', 'IDR', 4082872, 0, '2023-03-13'),
(464, 297, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '080/III/2023/MTI', '275021', 'Vendor:CASH INTERNAL SUMARLAN S.SOS - KEKURANGAN D/A FEB\'23', 'IDR', 168000, 0, '2023-03-16'),
(465, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI PARKIR B 2352 UZY 14-22 FEB\'23 (HC)', 'IDR', 84000, 0, '2023-03-15'),
(466, 196, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI FUEL MOBIL OPS HC B 2352 UZY', 'IDR', 150000, 0, '2023-03-15'),
(467, 299, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'SHD01-23020621', '274457', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Riah Agustin at Bandung on 8-10 Feb-23', 'IDR', 1325420, 0, '2023-03-08'),
(468, 203, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39478', '', 'Item:Tinta & Toner, Tinta Printer Canon TS 300 Color No 746,Quantity:3 - DELIVER', 'IDR', 960000, 0, '2023-03-28'),
(469, 268, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '23.92040473', '273756', 'Vendor:DWI KOMPUTER CV PO.51383-2023 2 units Mouse Wireless Merk Logitech Type M235 - HC (Anindra)', 'IDR', 470000, 0, '2023-03-01'),
(470, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300003', '272346', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ) Periode Januari 2023', 'IDR', 35200000, 0, '2023-03-01'),
(471, 51, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '885/III/CEO/2023', '275908', 'Vendor:CARDIG INTERNATIONAL PT MANAGEMENT FEE K3 MAR\'23', 'IDR', 27500000, 0, '2023-03-31'),
(472, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'MAR-23 Depreciation IDR', '', '176615 - JOBSTREETS INDONESIA - ADVERTISEMENT (AD BUDGET) JAN/DEC\'23 - APV.271062', 'IDR', 1000000, 0, '2023-03-31'),
(473, 268, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39412', '', 'Item:Computer Hardware / Mouse Wireless Merk Logitech Type M235 - HC (Anindra),Quantity:1 - DELIVER', 'IDR', 235000, 0, '2023-03-21'),
(474, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39355', '', 'Item:Obat-obatan K3 / Emergency / Hand Gloves Merk Sensi Uk. M,Quantity:10 - DELIVER', 'IDR', 1000000, 0, '2023-03-15'),
(475, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI TOL & PARKIR? MOBIL OPS HC B 2352 UZY', 'IDR', 193500, 0, '2023-03-15'),
(476, 32, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '48/II/GMH/23', '274155', 'Vendor:CASH INTERNAL 0084/ED/INV/II/23(CV.EDSIGN DELTA IMAJI) -PEMBUATAN 37 LEMBAR SERTIFIKAN G20 (TAMBAHAN)', 'IDR', 629000, 0, '2023-03-03'),
(477, 300, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '23.92040474', '273758', 'Vendor:DWI KOMPUTER CV PO.51388-2023 Charger Laptop HP HP Probook 4430S - HC', 'IDR', 625000, 0, '2023-03-01'),
(478, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300003', '272346', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01323 f/LC CGK', 'IDR', 2200000, 0, '2023-03-01'),
(479, 51, '000', '00000', 'NA.NA.HR SERVICES', 'AutoCopy', 'Manual', 'JVT.010/03/23.R', '', 'Mngt Fee CI K3 MAR\'23 EST', 'IDR', 27500000, 0, '2023-03-31'),
(480, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'MAR-23 Depreciation IDR', '', '176616 - JOBSTREET INDONESIA - NJP RESUME SEARCH JAN/APR\'23 - APV. 271062', 'IDR', 116500, 0, '2023-03-31'),
(481, 199, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/41/I/23/GMH', '274776', 'Vendor:SUMARLAN PA KARPET 2x3M u/ KEGIATAN PENGAJIAN BULANAN', 'IDR', 6600000, 0, '2023-03-13'),
(482, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Cost Management', 'Receiving', '39355', '', 'Item:Obat-obatan K3 / Emergency / Masker Merk GEA Medical,Quantity:310 - DELIVER', 'IDR', 12400000, 0, '2023-03-15'),
(483, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI TOL DAN PARKIR KE SOWARNA DR. WIDYO (HC)', 'IDR', 713000, 0, '2023-03-15'),
(484, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300003', '272346', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01356 f/T2 Mte Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(485, 22, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'MAR-23 Depreciation IDR', '', '156493 - INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV. 257570 -', 'IDR', 16962225, 0, '2023-03-31'),
(486, 268, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '23.92040473', '273756', 'Vendor:DWI KOMPUTER CV Computer Hardware / Mouse Wireless Merk Logitech Type M235 - HC (Anindra)', 'IDR', 0, 470000, '2023-03-01'),
(487, 25, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI KONSUM DUE TO MEETING PRA PKB W/ SP (HC)', 'IDR', 358000, 0, '2023-03-15'),
(488, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI TOL DAN PARKIR KE SOWARNA DR.WIDYO (HC)', 'IDR', 333000, 0, '2023-03-15'),
(489, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300003', '272346', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G04397 f/T3 PCI', 'IDR', 2200000, 0, '2023-03-01'),
(490, 22, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'MAR-23 Depreciation IDR', '', '162530 - PT INDODEV NIAGA INTERNET - RENEWAL SUNFISH SYSTEM - APV.257570', 'IDR', 16962225, 0, '2023-03-31'),
(491, 199, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '23.92040474', '273758', 'Vendor:DWI KOMPUTER CV Computer Hardware / Charger Laptop HP Probook 4430S - HC (Lisa Devi)', 'IDR', 0, 625000, '2023-03-01'),
(492, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI LUNCH W/ SP 23 FEB\'23 (HC)', 'IDR', 91000, 0, '2023-03-15'),
(493, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI TOL DAN PARKIR MOBIL HC OPS B 2352 UZY', 'IDR', 41604, 0, '2023-03-15'),
(494, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300003', '272346', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G07011 f/T1B', 'IDR', 2200000, 0, '2023-03-01'),
(495, 4, '000', '00000', 'NA.NA.HR SERVICES', 'Assets', 'Depreciation', 'MAR-23 Depreciation IDR', '', '176589 - AD BUDGET (JAN\'23 - JAN\'24) - Advertisement at Jobstreet on 2Jan/23-2Jan/24', 'IDR', 1000000, 0, '2023-03-31'),
(496, 200, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI SPUVENIR MENJENGUK KARY SAKIT ANINDRA WULANDARI (HC)', 'IDR', 204458, 0, '2023-03-15'),
(497, 195, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '004/PCV/HO/III/2023', '274894', 'Vendor:ENDANG SETIORINI TRANSPORT MENJENGUK KARY WAKIT (HC)', 'IDR', 151000, 0, '2023-03-15'),
(498, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300001', '272344', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ) Periode Januari 2023', 'IDR', 11000000, 0, '2023-03-01'),
(499, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300001', '272344', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G04806 f/T3 CGK Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(500, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300001', '272344', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06389 f/T3 Ops Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(501, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300001', '272344', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06850 f/HO Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(502, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300001', '272344', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G07945 f/CH-521 Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(503, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300001', '272344', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G08413 f/T3 Avsec Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(504, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office & IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ) Periode Januari 2023', 'IDR', 15400000, 0, '2023-03-01'),
(505, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01253 f/T3 SMJ Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(506, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01260 f/T3Svc Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(507, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01283 f/T3 Ramp Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(508, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01372 f/T2Ramp Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(509, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01621 f/2FArrival Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(510, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020OTFO20F01797 f/CH Exp Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(511, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT PO.51477 Rent SenseTime Thunder-E Mini SN:SPS020STDC19G06359 f/CH Imp Jan\'23', 'IDR', 2200000, 0, '2023-03-01'),
(512, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300003', '272346', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office and IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ) Periode Januari 2023', 'IDR', 0, 35200000, '2023-03-01');
INSERT INTO `tactual` (`id_actual`, `id_budget`, `subacc`, `product`, `description`, `source`, `category`, `doc_ref`, `doc_number`, `desc_source`, `currency`, `amount_debit`, `amount_credit`, `actual_date`) VALUES
(513, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300001', '272344', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office and IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ) Periode Januari 2023', 'IDR', 0, 11000000, '2023-03-01'),
(514, 12, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'GSE.INV-2300002', '272345', 'Vendor:GLOBAL SOLUSI ENJIN.PT Office and IT Equipment Rent Expense (PC, Printer, Server, Software, etc) / Thunder-Emini Thermal Camera Module - SenseTime Lokasi Terminal 3 (Ramp, Services, SMJ) Periode Januari 2023', 'IDR', 0, 15400000, '2023-03-01'),
(515, 73, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0205B/CRV/GMH/III/2023', '275392', 'Vendor:CASH INTERNAL 012/III/2023/MCT - D/A COMMERCIAL TRAINING MARKETING ACTIVITY TO MAJALENGKA 21 MAR\'23 (NENENG S)', 'IDR', 336000, 0, '2023-03-27'),
(516, 62, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '080/III/2023/MTI', '275021', 'Vendor:CASH INTERNAL DEDY SULISTYO - KEKURANGAN D/A FEB\'23', 'IDR', 132000, 0, '2023-03-16'),
(517, 78, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23021484', '274919', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Neneng Sumiati at Kertajati on 15-16 Feb-23', 'IDR', 697329, 0, '2023-03-15'),
(518, 121, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/075/III/2023/MTI', '276058', 'Vendor:HERI SETIAWAN TRANSPORT - PA BIY WORKSHOP GSE & MSH', 'IDR', 366000, 0, '2023-03-31'),
(519, 121, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '073/III/2023/MTI', '274598', 'Vendor:HRC PRIMA SEJAHTERA.PT ICW1723030017 - BY BUS WORKSHOP GSE & FRM', 'IDR', 2322000, 0, '2023-03-10'),
(520, 124, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN FUEL FEB-MAR\'23', 'IDR', 3759216, 0, '2023-03-15'),
(521, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '067/III/2023/MTI', '274813', 'Vendor:CASH INTERNAL HOTEL WORKSHOP GSE & FRM 15-17 MAR\'23 (BOGOR VALLEY HOTEL)', 'IDR', 18200000, 0, '2023-03-14'),
(522, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '063/II/2023/MTI', '274180', 'Vendor:CASH INTERNAL SUPERVISI & INSPECTOR FEE DG TYPE A NTERNAL (15 PERSONS)', 'IDR', 8041237, 0, '2023-03-03'),
(523, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '46/KOP.SPN/II/2023', '274205', 'Vendor:KOPERASI SEKAR PELANGI NUSA 30 Galons VIT f/Ruko Tmn Mahkota Jan\'23', 'IDR', 480000, 0, '2023-03-03'),
(524, 126, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/020/II/2023/GMI', '276271', 'Vendor:BEN BARKA PA LISTRIK JAS R.T.MAHKOTA - MAR \'23', 'IDR', 5822500, 0, '2023-03-31'),
(525, 127, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '0061/III/2023/GMI', '274493', 'Vendor:CASH INTERNAL 1-MSISDN Kartu Halo CUG f/LC LTU CGK Mar\'23', 'IDR', 100000, 0, '2023-03-09'),
(526, 130, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN BY KEBERSIHAN DAN KEAMANAN KOMPLEK FEB\'23', 'IDR', 300000, 0, '2023-03-15'),
(527, 136, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39530', '', 'Item:Printing (Barang Cetakan) / Kartu Kompetensi GSE (Staff KNO),Quantity:1 - DELIVER', 'IDR', 55000, 0, '2023-03-31'),
(528, 287, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN HERI SETIAWAN - MEETING W/ PARTNERS (TIM DIREKTORAT KEAMANAN PENERBANGAN) 11 FEB\'23', 'IDR', 481000, 0, '2023-03-15'),
(529, 149, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT PO.51413-2023 Installation Kabel Jaringan from Switch Offfice to Library & Photocopy Machine f/LC-CGK', 'IDR', 5630300, 0, '2023-03-07'),
(530, 288, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Repair Other / Double Tip', 'IDR', 0, 73500, '2023-03-07'),
(531, 286, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.01/MCSTR/CGK/III/23 05-APR-2023 13:53:50', 'JVW.01/MCSTR/CGK/III/23', 'MICOSTAR TAGIHAN SW FTCOPY - MAR \'23', 'IDR', 2161200, 0, '2023-03-31'),
(532, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '46/KOP.SPN/II/2023', '274205', 'Vendor:KOPERASI SEKAR PELANGI NUSA Sewa 3 units Mesin Dispenser f/Ruko Tmn Mahkota Jan\'23', 'IDR', 165000, 0, '2023-03-03'),
(533, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Computer Hardware / Jack RJ45', 'IDR', 0, 132300, '2023-03-07'),
(534, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/075/III/2023/MTI', '276058', 'Vendor:HERI SETIAWAN KONSUMSI - PA BIY WORKSHOP GSE & MSH', 'IDR', 275000, 0, '2023-03-31'),
(535, 62, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '069/III/2023/MTI', '275109', 'Vendor:CASH INTERNAL AGUS SUGIARTI - D/A WORKSHOP GSE & FRM 14-18 MAR\'23 (14 PERSONS)', 'IDR', 864000, 0, '2023-03-17'),
(536, 78, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23021433', '274918', 'Vendor:JENDELA TOURS & TRAVEL SF - Tix f/ Neneng Sumiati to CGK-SUB-CGK on 19/20 Feb-23', 'IDR', 94455, 0, '2023-03-15'),
(537, 121, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN PARKIR, ETOLL , DAN TRANSPORT ONLINE FEB-MAR\'23', 'IDR', 944500, 0, '2023-03-15'),
(538, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR CX 13-14 FEB\'23', 'IDR', 384000, 0, '2023-03-15'),
(539, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '091/III/2023/MTI', '275381', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 16 MAR 23 (9 PERSONS)', 'IDR', 3510000, 0, '2023-03-24'),
(540, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '64/KOP.SPN/III/2023', '275380', 'Vendor:KOPERASI SEKAR PELANGI NUSA 18 Galons VIT f/Ruko Tmn Mahkota Feb\'23', 'IDR', 288000, 0, '2023-03-24'),
(541, 126, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/09/I/2023/GMI', '274936', 'Vendor:BEN BARKA PA LISTRIK JAS R.T.MAHKOTA - FEB \'23', 'IDR', 5305000, 0, '2023-03-15'),
(542, 136, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Cost Management', 'Receiving', '39530', '', 'Item:Printing (Barang Cetakan) / Kartu Kompetensi GSE (Staff CGK),Quantity:93 - DELIVER', 'IDR', 5115000, 0, '2023-03-31'),
(543, 287, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN HERI SETIAWAN I MEETING W/ PARTNERS (TIM DIREKTORAT KEAMANAN PENERBANGAN) 14 FEB\'23', 'IDR', 541500, 0, '2023-03-15'),
(544, 288, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Repair Other / Kabel ties', 'IDR', 0, 24500, '2023-03-07'),
(545, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '64/KOP.SPN/III/2023', '275380', 'Vendor:KOPERASI SEKAR PELANGI NUSA Sewa 3 units Mesin Dispenser f/Ruko Tmn Mahkota Feb\'23', 'IDR', 165000, 0, '2023-03-24'),
(546, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Computer Hardware / Kabel LAN UTP Cat 6 Merk Belden', 'IDR', 0, 2300000, '2023-03-07'),
(547, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN CONSUM MEETING BOD 13 FEB\'23', 'IDR', 260000, 0, '2023-03-15'),
(548, 62, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '069/III/2023/MTI', '275109', 'Vendor:CASH INTERNAL AJI ARIYONO - D/A WORKSHOP GSE & FRM 14-18 MAR\'23 (14 PERSONS)', 'IDR', 864000, 0, '2023-03-17'),
(549, 78, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'STD01-23021433', '274918', 'Vendor:JENDELA TOURS & TRAVEL Tix f/ Neneng Sumiati to CGK-SUB-CGK on 19/20 Feb-23', 'IDR', 3148500, 0, '2023-03-15'),
(550, 121, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN TRANSPORT TRAINING TAX 15-16 FEB\'23 DAN 20-21 FEB\'23', 'IDR', 400000, 0, '2023-03-15'),
(551, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR DST 6 & 22 FEB\'23', 'IDR', 58000, 0, '2023-03-15'),
(552, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '085/III/2023/MTI', '275336', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 20 MAR\'23 (2 PERSON)(', 'IDR', 6160000, 0, '2023-03-24'),
(553, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.02/KSP/II/23\"04-APR-23 14:53:38 - 7485568', 'Reverses \"JVW.02/KSP/II/23\"04-APR-23 14:53:38', 'KSP TAGIHAN AIR MINUM TERMINAL - FEB \'23', 'IDR', 0, 480000, '2023-03-31'),
(554, 139, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/075/III/2023/MTI', '276058', 'Vendor:HERI SETIAWAN FLASHDISK & BANNER - PA BIY WORKSHOP GSE & MSH', 'IDR', 873000, 0, '2023-03-31'),
(555, 288, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Repair Other / Survey, Koordinasi and Akomodasi', 'IDR', 0, 500000, '2023-03-07'),
(556, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'Reverses \"JVW.02/KSP/II/23\"04-APR-23 14:53:38 - 7485568', 'Reverses \"JVW.02/KSP/II/23\"04-APR-23 14:53:38', 'KSP TAGIHAN AIR MINUM TERMINAL - FEB \'23', 'IDR', 0, 165000, '2023-03-31'),
(557, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Computer Hardware / Kabel Management / Power 5 Outlet', 'IDR', 0, 600000, '2023-03-07'),
(558, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN CONSUMPTION MEETING TDP 6 MAR\'23', 'IDR', 720500, 0, '2023-03-15'),
(559, 62, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '069/III/2023/MTI', '275109', 'Vendor:CASH INTERNAL DEDY SULISTYO - D/A WORKSHOP GSE & FRM 14-18 MAR\'23 (14 PERSONS)', 'IDR', 792000, 0, '2023-03-17'),
(560, 78, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'SHD01-23021754', '274923', 'Vendor:JENDELA TOURS & TRAVEL Hotel f/ Neneng Sumiati at Surabaya on 19-20 Feb-23', 'IDR', 618200, 0, '2023-03-15'),
(561, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR FRM 21-22 FEB\'23', 'IDR', 58000, 0, '2023-03-15'),
(562, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '087/III/2023/MTI', '275604', 'Vendor:CASH INTERNAL SUPERVISI RECURRENT DG STATION DPS BATCH 1 INTERNAL MAR\'23', 'IDR', 10515464, 0, '2023-03-29'),
(563, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.02/KSP/III/23 05-APR-2023 13:23:09', 'JVW.02/KSP/III/23', 'KSP TAGIHAN AIR MINUM TERMINAL - MAR \'23', 'IDR', 288000, 0, '2023-03-31'),
(564, 139, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN ATK,FOTOCOPY & JILID, PERLENGKAPAN LAIN', 'IDR', 3167700, 0, '2023-03-15'),
(565, 153, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Manual', 'Accrual', 'JVW.02/KSP/III/23 05-APR-2023 13:23:09', 'JVW.02/KSP/III/23', 'KSP TAGIHAN AIR MINUM TERMINAL - MAR \'23', 'IDR', 165000, 0, '2023-03-31'),
(566, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Computer Hardware / Kabel Projector', 'IDR', 0, 500000, '2023-03-07'),
(567, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INTERNAL MEETING 3 & 24 FEB\'23', 'IDR', 456000, 0, '2023-03-15'),
(568, 62, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '069/III/2023/MTI', '275109', 'Vendor:CASH INTERNAL HERI SETIAWAN - D/A WORKSHOP GSE & FRM 14-18 MAR\'23 (14 PERSONS)', 'IDR', 1008000, 0, '2023-03-17'),
(569, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR INDUCTION 13-24 FEB\'23', 'IDR', 1054500, 0, '2023-03-15'),
(570, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '088/III/2023/MTI', '275601', 'Vendor:CASH INTERNAL SUPERVISI RECURRENT DG STATION DPS BATCH 2 INTERNAL MAR\'23', 'IDR', 10515464, 0, '2023-03-29'),
(571, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/020/II/2023/GMI', '276271', 'Vendor:BEN BARKA PA PAM JAS R.T.MAHKOTA - MAR \'23', 'IDR', 4177500, 0, '2023-03-31'),
(572, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Installation Network & Jaringan Kabel UTP Rackmount Switch', 'IDR', 0, 700000, '2023-03-07'),
(573, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN SNACK MEETING CARGO 3 FEB\'23', 'IDR', 45000, 0, '2023-03-15'),
(574, 62, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '069/III/2023/MTI', '275109', 'Vendor:CASH INTERNAL VANESA VELICIA - D/A WORKSHOP GSE & FRM 14-18 MAR\'23 (14 PERSONS)', 'IDR', 792000, 0, '2023-03-17'),
(575, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR INDUCTION ASA 7 FEB\'23', 'IDR', 38000, 0, '2023-03-15'),
(576, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '064/II/2023/MTI', '274424', 'Vendor:CASH INTERNAL SUPERVISI & INSPECTOR FEE RECURRENT JUNIOR AVSEC INTERNAL (15 PERSONS)', 'IDR', 8041237, 0, '2023-03-08'),
(577, 125, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', 'PA/09/I/2023/GMI', '274936', 'Vendor:BEN BARKA PA PAM JAS R.T.MAHKOTA - FEB \'23', 'IDR', 4695000, 0, '2023-03-15'),
(578, 111, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '23.01620302', '274376', 'Vendor:DWI KURNIA ABADI.PT Installation Network & Jaringan Kabel UTP Ruangan Perpustakaan', 'IDR', 0, 800000, '2023-03-07'),
(579, 160, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN Tip & Lunch Koordinasi dengan DKP', 'IDR', 450000, 0, '2023-03-15'),
(580, 62, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '069/III/2023/MTI', '275109', 'Vendor:CASH INTERNAL HERI SETIAWAN - D/A WORKSHOP GSE & FRM 14-18 MAR\'23 (14 PERSONS)', 'IDR', 0, 672000, '2023-03-17'),
(581, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR K-MILE 28 FEB\'23', 'IDR', 234000, 0, '2023-03-15'),
(582, 65, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '062/II/2023/MTI', '274468', 'Vendor:CASH INTERNAL INSTRUCTOR FEE INTERNAL 28 FEB\'23 1(5 PERSONS)', 'IDR', 4430000, 0, '2023-03-08'),
(583, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR PBS 7-8 MAR\'23', 'IDR', 52000, 0, '2023-03-15'),
(584, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR SAFETY TRAINING', 'IDR', 33000, 0, '2023-03-15'),
(585, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR WEIGHT & BALANCE QZ 13-14 FEB\'23', 'IDR', 64000, 0, '2023-03-15'),
(586, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INVIGILATOR GSE EXA, 9 FEB-3 MAR\'23', 'IDR', 92500, 0, '2023-03-15'),
(587, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH PARTICIPANT SV 6-8 FEB\'23', 'IDR', 524000, 0, '2023-03-15'),
(588, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH PARTICIPANT TAPA 15-16 FEB\'23', 'IDR', 210000, 0, '2023-03-15'),
(589, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN CONSUMPTION EFFECTIVE COMMUNICATION SKILL 1 MAR\'23', 'IDR', 225000, 0, '2023-03-15'),
(590, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN CONSUMPTION INSTRUCTOR & PARTICIPANT AIR ASIA 15-16 FEB\'23', 'IDR', 544000, 0, '2023-03-15'),
(591, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN CONSUMPTION INSTRUCTOR & PARTICIPANT ALO 16 FEB\'23', 'IDR', 604000, 0, '2023-03-15'),
(592, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH BIMTEK GSE 22-23 FEB\'23', 'IDR', 1449300, 0, '2023-03-15'),
(593, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR & PARTICIPANT ETIHAD 2-22 FEB\'23', 'IDR', 3421000, 0, '2023-03-15'),
(594, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR ATT 7-8 FEB\'23', 'IDR', 45000, 0, '2023-03-15'),
(595, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR BCS 28 FEB-1 MAR\'23', 'IDR', 54000, 0, '2023-03-15'),
(596, 63, '000', '00000', 'NA.NA.HR LEARNING CENTER', 'Payables', 'Purchase Invoices', '072/III/2023/MTI', '274939', 'Vendor:HERI SETIAWAN LUNCH INSTRUCTOR BTT 15,21,22 FEB\'23', 'IDR', 79500, 0, '2023-03-15'),
(597, 301, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI MARKETING FEE AERO DIRGANTARA', 'IDR', 150000, 0, '2023-03-15'),
(598, 73, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0206B/CRV/GMH/III/2023', '275391', 'Vendor:CASH INTERNAL FIA NURFIANTI - 012/III/2023/MCT - D/A COMMERCIAL TRAINING MARKETING ACTIVITY TO MAJALENGKA 21 MAR\'23', 'IDR', 264000, 0, '2023-03-27'),
(599, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0078/III/2023/GMI', '275614', 'Vendor:JURIANI SETIA Pass New/Monthly/Renewal 2023 f/1 Staff LTU Mar\'23 Phase 2nd', 'IDR', 400000, 0, '2023-03-29'),
(600, 278, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI ROAD TRIP COMMERCIAL TEAM 15-16 FEB\'23', 'IDR', 1044500, 0, '2023-03-15'),
(601, 190, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0061/III/2023/GMI', '274493', 'Vendor:CASH INTERNAL 1-MSISDN Kartu Halo CUG f/CT CGK Mar\'23', 'IDR', 100000, 0, '2023-03-09'),
(602, 93, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI BY TELP 2 MAR\'23', 'IDR', 168500, 0, '2023-03-15'),
(603, 96, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI BY LAIN-LAIN (FOTOCOPY DAN JILID MODUL)', 'IDR', 382000, 0, '2023-03-15'),
(604, 97, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI PEMFIRIMAN SERTIFIKAT KE SEMARANG 6 MAR\'23', 'IDR', 35000, 0, '2023-03-15'),
(605, 280, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI NENENG SUMIATI - MEETING W/? PARTNERS17 FEB\'23', 'IDR', 320000, 0, '2023-03-15'),
(606, 98, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI NENENG SUMIATI - ENTERTAIN W/ PARTNERS 20 FEB\'23', 'IDR', 240000, 0, '2023-03-15'),
(607, 191, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '004/Inv-UJS/II/2023', '273018', 'Vendor:ULUNG JAYA? SUKSES.PT Repair Building Improvement / Renovation/ Floor Hinge BTS? 75.', 'IDR', 5750000, 0, '2023-03-01'),
(608, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2368', '275277', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Ganti Thermistor AC Split 1 PK', 'IDR', 975000, 0, '2023-03-21'),
(609, 99, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'LT22122459', '269533', 'Vendor:HRC PRIMA SEJAHTERA.PT Vehicles Rental Expense, Sewa Kendaraan Ops PT. JAS Learning Center - B 2196 PKO Periode 15 Desember 2022 s.d 14 Januari 2023', 'IDR', 3900000, 0, '2023-03-01'),
(610, 101, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI CONSUMPTION VISIT AIRPORT TOUR 6&8 FEB\'23', 'IDR', 1638000, 0, '2023-03-15'),
(611, 73, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0206B/CRV/GMH/III/2023', '275391', 'Vendor:CASH INTERNAL LUQMAN DARY PRATIKTO - 012/III/2023/MCT - D/A COMMERCIAL TRAINING MARKETING ACTIVITY TO MAJALENGKA 21 MAR\'23', 'IDR', 264000, 0, '2023-03-27'),
(612, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '066/III/2023/MCT', '274467', 'Vendor:NENENG SUMIATI REIMBS PNBP PASS BANDARA OJT, JAA & INITIAL BASIC 7-21/FEB\'23 CT-CGK', 'IDR', 2855000, 0, '2023-03-08'),
(613, 98, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI NENENG SUMIATI - ENTERTAIN W/ PARTNERS 3 FEB\'23', 'IDR', 255300, 0, '2023-03-15'),
(614, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2368', '275277', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Isi Freon R32 AC Split 2 PK', 'IDR', 700000, 0, '2023-03-21'),
(615, 99, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'LT23014080', '272519', 'Vendor:HRC PRIMA SEJAHTERA.PT Vehicles Rental Expense, Sewa Kendaraan Ops PT. JAS Learning Center - B 2196 PKO Periode 15 Januari 2023 s.d 14 Februari 2023', 'IDR', 3900000, 0, '2023-03-01'),
(616, 101, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI LUNCH PARTICIPANT & GUEST ROAD TRIP COMM TEAM 15-16 FEB\'23', 'IDR', 1720700, 0, '2023-03-15'),
(617, 73, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0134B/CRV/GMH/II/2023', '274255', 'Vendor:CASH INTERNAL (FIA NURFIANTO) 009/II/2023/MCT - D/A COMMERCIAL TRAINING MARKETING ACTIVITY KJT 15-16 FEB\'23', 'IDR', 480000, 0, '2023-03-06'),
(618, 91, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI PAS BANDARA PNBP OJT 7-8 MAR\'23', 'IDR', 2400000, 0, '2023-03-15'),
(619, 98, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI NENENG SUMIATI - ENTERTAIN W/ PARTNERS 9 FEB\'23', 'IDR', 49999, 0, '2023-03-15'),
(620, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2368', '275277', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Perbaikan Dynamo Indoor AC Split 1 PK', 'IDR', 350000, 0, '2023-03-21'),
(621, 99, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', 'LT23023811', '274767', 'Vendor:HRC PRIMA SEJAHTERA.PT Vehicles Rental Expense, Sewa Kendaraan Ops PT. JAS Learning Center - B 2196 PKO Periode 15 Februari 2023 s.d 14 Maret 2023', 'IDR', 3900000, 0, '2023-03-13'),
(622, 101, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI LUNCH PARTICIPANT VISIT SEKOLAH 3 MAR\'23', 'IDR', 44000, 0, '2023-03-15'),
(623, 73, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '0134B/CRV/GMH/II/2023', '274255', 'Vendor:CASH INTERNAL (LUQMAN DARY PRATIKTO) 009/II/2023/MCT - D/A COMMERCIAL TRAINING MARKETING ACTIVITY KJT 15-16 FEB\'23', 'IDR', 528000, 0, '2023-03-06'),
(624, 98, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '071/III/2023/MCT', '274912', 'Vendor:NENENG SUMIATI NENENG SUMIATI - ENTERTAIN W/ PARTNERS17 FEB\'23', 'IDR', 361000, 0, '2023-03-15'),
(625, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2368', '275277', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Perbaikan Selang Pembuangan Air AC Split 2 PK', 'IDR', 450000, 0, '2023-03-21'),
(626, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2367', '275276', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Services Rutin AC Split 1-2 PK', 'IDR', 1425000, 0, '2023-03-21'),
(627, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2366', '274124', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Isi Freon R32 AC 1 PK', 'IDR', 275000, 0, '2023-03-02'),
(628, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2366', '274124', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Perbaikan Dynamo Fan Indoor AC Split 1,5 PK', 'IDR', 350000, 0, '2023-03-02'),
(629, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2366', '274124', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Perbaikan Selang Pembuangan Air AC Split 2 PK', 'IDR', 180000, 0, '2023-03-02'),
(630, 192, '000', '00000', 'NA.NA.COMMERCIAL TRAINING', 'Payables', 'Purchase Invoices', '2365', '274123', 'Vendor:BELECA SALA BERSAUDARA. PT Repair AC / Services AC Split 1-2 PK', 'IDR', 1425000, 0, '2023-03-02'),
(631, 297, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '048/II/2023/MTI', '273139', 'Vendor:CASH INTERNAL RIAH AGUSTIN - 006/II/2023/MTI - D/A WORKSHOP NASIONAL WAJIB SERTIFIKASI BIDANG HUB INDUCTRIAL KEPMENAKER (8-10 FEB\'23)', 'IDR', 780000, 0, '2023-02-16'),
(632, 298, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', 'PA/44/I/GMH/22', '272538', 'Vendor:SUMARLAN PA PELATIHAN DAMKAR JAS CGK & HO - JAN \'23, KONSUMSI & INSTRUKTUR 37xRp.35.000,-', 'IDR', 6000000, 0, '2023-01-31'),
(633, 299, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '038/II/2023/MTI', '272634', 'Vendor:CASH INTERNAL 7.02/INVOICE-PUSDIKNAS/I/2023 - TRAINING WAJIB SERTIFIKASI BIDANG HUBUNGAN INDUSTRIAL LEMBAGA PUSAT STUDI KEBIJAKAN NASIONAL 9-10 FEB\'23 (SUMARLAN DAN RIAH AGUSTIN)', 'IDR', 4000000, 0, '2023-02-08'),
(634, 298, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '038/II/2023/MTI', '272634', 'Vendor:CASH INTERNAL 7.02/INVOICE-PUSDIKNAS/I/2023 - TRAINING WAJIB SERTIFIKASI BIDANG HUBUNGAN INDUSTRIAL LEMBAGA PUSAT STUDI KEBIJAKAN NASIONAL 9-10 FEB\'23 (SUMARLAN DAN RIAH AGUSTIN)', 'IDR', 4000000, 0, '2023-02-08'),
(635, 297, '000', '00000', 'NA.NA.HR SERVICES', 'Payables', 'Purchase Invoices', '048/II/2023/MTI', '273139', 'Vendor:CASH INTERNAL SUMARLAN S.SOS - 006/II/2023/MTI - D/A WORKSHOP NASIONAL WAJIB SERTIFIKASI BIDANG HUB INDUCTRIAL KEPMENAKER (8-10 FEB\'23)', 'IDR', 840000, 0, '2023-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbudget`
--

CREATE TABLE `tbudget` (
  `id_bdgt` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total_budget` bigint(24) NOT NULL,
  `id_acc` int(11) NOT NULL,
  `subacc` varchar(11) NOT NULL,
  `product` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbudget`
--

INSERT INTO `tbudget` (`id_bdgt`, `id_user`, `total_budget`, `id_acc`, `subacc`, `product`) VALUES
(1, 4, 897600000, 161, '000', '00000'),
(2, 4, 203546700, 179, '000', '00000'),
(3, 7, 473000000, 118, '000', '00000'),
(4, 7, 100000000, 119, '000', '00000'),
(5, 7, 18750000, 134, '000', '00000'),
(6, 7, 30000000, 204, '000', '00000'),
(7, 9, 186550000, 57, '000', '00000'),
(8, 9, 200000000, 61, '000', '00000'),
(9, 9, 1068120000, 119, '000', '00000'),
(10, 9, 2275000, 134, '000', '00000'),
(11, 9, 10000000, 139, '000', '00000'),
(12, 9, 10000000, 140, '000', '00000'),
(13, 9, 330000000, 175, '000', '00000'),
(14, 9, 375000000, 177, '000', '00000'),
(15, 9, 60000000, 185, '000', '00000'),
(16, 9, 20000000, 192, '000', '00000'),
(17, 9, 602450000, 194, '000', '00000'),
(18, 9, 554187500, 204, '000', '00000'),
(19, 11, 31400000, 104, '000', '00000'),
(20, 11, 128883828, 106, '000', '00000'),
(21, 11, 3200000, 108, '000', '00000'),
(22, 11, 18400000, 109, '000', '00000'),
(23, 11, 18000000, 110, '000', '00000'),
(24, 11, 19200000, 114, '000', '00000'),
(25, 11, 1447540000, 115, '000', '00000'),
(26, 11, 245000000, 117, '000', '00000'),
(27, 11, 42300000, 120, '000', '00000'),
(28, 11, 88000000, 121, '000', '00000'),
(29, 11, 48983873, 123, '000', '00000'),
(30, 11, 106591793, 124, '000', '00000'),
(31, 11, 9600000, 132, '000', '00000'),
(32, 11, 14400000, 133, '000', '00000'),
(33, 11, 194235000, 134, '000', '00000'),
(34, 11, 14400000, 135, '000', '00000'),
(35, 11, 162000000, 136, '000', '00000'),
(36, 11, 127119167, 142, '000', '00000'),
(37, 11, 7000000, 148, '000', '00000'),
(38, 11, 1980000, 160, '000', '00000'),
(39, 11, 705251600, 180, '000', '00000'),
(40, 11, 115000000, 187, '000', '00000'),
(41, 11, 266000000, 192, '000', '00000'),
(42, 11, 9600000, 194, '000', '00000'),
(43, 11, 5600000, 195, '000', '00000'),
(44, 11, 2921200, 197, '000', '00000'),
(45, 11, 290376720, 201, '000', '00000'),
(46, 11, 8300000, 204, '000', '00000'),
(47, 10, 0, 114, '000', '00000'),
(48, 10, 0, 115, '000', '00000'),
(49, 10, 0, 116, '000', '00000'),
(50, 10, 0, 117, '000', '00000'),
(51, 12, 153400000, 106, '000', '00000'),
(52, 12, 144400000, 107, '000', '00000'),
(53, 12, 36000000, 104, '000', '00000'),
(54, 13, 4940000, 104, '000', '00000'),
(55, 4, 7040000, 104, '000', '00000'),
(56, 7, 8280000, 104, '000', '00000'),
(57, 9, 8640000, 104, '000', '00000'),
(58, 9, 0, 107, '000', '00000'),
(59, 7, 0, 107, '000', '00000'),
(60, 4, 0, 107, '000', '00000'),
(61, 13, 0, 107, '000', '00000'),
(62, 9, 28800000, 106, '000', '00000'),
(63, 7, 29100000, 106, '000', '00000'),
(64, 4, 15200000, 106, '000', '00000'),
(65, 13, 0, 106, '000', '00000'),
(66, 10, 0, 106, '000', '00000'),
(68, 14, 9200000, 104, '000', '00000'),
(69, 14, 74600000, 106, '000', '00000'),
(70, 14, 2000000, 108, '000', '00000'),
(71, 14, 21600000, 110, '000', '00000'),
(72, 14, 2040000, 130, '000', '00000'),
(73, 14, 4725000, 132, '000', '00000'),
(74, 14, 9450000, 133, '000', '00000'),
(75, 14, 56895552, 134, '000', '00000'),
(76, 14, 1150000, 135, '000', '00000'),
(77, 14, 2000000, 140, '000', '00000'),
(78, 14, 48000000, 157, '000', '00000'),
(79, 14, 19200000, 159, '000', '00000'),
(80, 14, 3000000, 194, '000', '00000'),
(81, 14, 0, 197, '000', '00000'),
(84, 14, 2160000, 126, '000', '00000'),
(87, 14, 501148792, 142, '000', '00000'),
(88, 14, 10366950, 146, '000', '00000'),
(89, 14, 2731100, 147, '000', '00000'),
(90, 14, 7647750, 152, '000', '00000'),
(91, 14, 8750000, 197, '000', '00000'),
(92, 14, 535000000, 192, '000', '00000'),
(93, 11, 1927178, 126, '000', '00000'),
(94, 11, 1200000, 130, '000', '00000'),
(95, 10, 0, 104, '000', '00000'),
(97, 10, 24095925, 109, '000', '00000'),
(98, 10, 6174074, 110, '000', '00000'),
(99, 10, 0, 126, '000', '00000'),
(100, 10, 0, 157, '000', '00000'),
(101, 10, 0, 192, '000', '00000'),
(102, 10, 0, 194, '000', '00000'),
(103, 10, 0, 195, '000', '00000'),
(104, 10, 0, 197, '000', '00000'),
(105, 10, 0, 134, '000', '00000'),
(106, 10, 0, 130, '000', '00000'),
(107, 10, 0, 183, '000', '00000'),
(108, 10, 0, 108, '000', '00000'),
(109, 10, 0, 204, '000', '00000'),
(110, 12, 0, 130, '000', '00000'),
(111, 7, 0, 139, '000', '00000'),
(112, 7, 0, 177, '000', '00000'),
(113, 12, 59200000, 116, '000', '00000'),
(114, 12, 1382500, 115, '000', '00000'),
(116, 12, 25390227, 117, '000', '00000'),
(117, 12, 7104000, 114, '000', '00000'),
(118, 4, 37317045, 117, '000', '00000'),
(119, 4, 2737500, 115, '000', '00000'),
(120, 19, 9926818, 117, '000', '00000'),
(121, 19, 855000, 115, '000', '00000'),
(122, 13, 20890227, 117, '000', '00000'),
(123, 13, 1282500, 115, '000', '00000'),
(124, 7, 92122028, 117, '000', '00000'),
(125, 4, 6937500, 115, '000', '00000'),
(126, 9, 23853636, 117, '000', '00000'),
(127, 9, 1310000, 115, '000', '00000'),
(128, 10, 7408275, 133, '000', '00000'),
(129, 10, 1412130, 135, '000', '00000'),
(130, 10, 48907200, 169, '000', '00000'),
(132, 7, 193000000, 192, '000', '00000'),
(133, 13, 12000000, 192, '000', '00000'),
(134, 4, 145000000, 192, '000', '00000'),
(135, 12, 4000000, 192, '000', '00000'),
(136, 14, 0, 109, '000', '00000'),
(137, 14, 0, 115, '000', '00000'),
(138, 14, 0, 139, '000', '00000'),
(139, 14, 0, 155, '000', '00000'),
(140, 14, 0, 195, '000', '00000'),
(141, 14, 0, 199, '000', '00000'),
(142, 14, 0, 201, '000', '00000'),
(143, 14, 0, 204, '000', '00000'),
(144, 11, 0, 159, '000', '00000'),
(145, 11, 0, 139, '000', '00000'),
(146, 11, 0, 152, '000', '00000'),
(161, 10, 0, 148, '000', '00000'),
(162, 14, 0, 56, '000', '00000');

-- --------------------------------------------------------

--
-- Table structure for table `tcostcen`
--

CREATE TABLE `tcostcen` (
  `id_costcen` int(11) NOT NULL,
  `code_costcen` varchar(64) NOT NULL,
  `name_costcenter` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tcostcen`
--

INSERT INTO `tcostcen` (`id_costcen`, `code_costcen`, `name_costcenter`) VALUES
(1, '1101', 'BOC'),
(2, '1201', 'BOD'),
(3, '2101', 'Corsec n Legal'),
(4, '2301', 'HR Services'),
(5, '2302', 'GA'),
(6, '2401', 'HR Learning Ctr'),
(7, '2402', 'Commercial Learning Center'),
(8, '2501', 'Procurement'),
(9, '2601', 'IT'),
(10, '2701', 'Security'),
(11, '3101', 'Finance'),
(12, '4101', 'IARMU'),
(13, '5101', 'Business Development'),
(14, '6201', 'Comm Relation'),
(15, '6202', 'Commercial Relation & Com-Chartered Flight'),
(16, '6501', 'SSQA'),
(17, '6601', 'Maintenance'),
(18, '7401', 'GM/SM Premier'),
(19, '7409', 'Terminal'),
(20, '7410', 'Apron'),
(21, '7414', 'ASA'),
(22, '7502', 'Lounges Prem'),
(23, '7601', 'GM/SM Cargo'),
(24, '7602', 'Export'),
(25, '7603', 'Import'),
(26, '7702', 'GM/ Mgr Silver'),
(27, '7703', 'C/i Gate Silver'),
(28, '7704', 'Ramp Silver'),
(29, '7706', 'Towing Cargo Silver');

-- --------------------------------------------------------

--
-- Table structure for table `tdepartement`
--

CREATE TABLE `tdepartement` (
  `id_dpt` int(11) NOT NULL,
  `name_dpt` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tdepartement`
--

INSERT INTO `tdepartement` (`id_dpt`, `name_dpt`) VALUES
(1, 'Human Capital'),
(2, 'Learning Center'),
(3, 'Commercial LC'),
(4, 'Commercial LC DPS'),
(5, 'Learning Center DPS'),
(6, 'Human Capital Dps'),
(7, 'Learning Center SUB'),
(8, 'Commercial LC SUB');

-- --------------------------------------------------------

--
-- Table structure for table `tdetail_budget`
--

CREATE TABLE `tdetail_budget` (
  `id_budget` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `id_bdgt` int(11) NOT NULL,
  `subacc` varchar(11) NOT NULL,
  `product` varchar(11) NOT NULL,
  `id_user` int(64) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `source` varchar(256) DEFAULT NULL,
  `category` varchar(256) DEFAULT NULL,
  `doc_ref` varchar(256) DEFAULT NULL,
  `doc_number` varchar(256) DEFAULT NULL,
  `desc_source` varchar(256) DEFAULT NULL,
  `currency` varchar(256) NOT NULL,
  `amount_debit` bigint(20) DEFAULT NULL,
  `amount_credit` bigint(20) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(64) NOT NULL,
  `budget_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tdetail_budget`
--

INSERT INTO `tdetail_budget` (`id_budget`, `id_account`, `id_bdgt`, `subacc`, `product`, `id_user`, `description`, `source`, `category`, `doc_ref`, `doc_number`, `desc_source`, `currency`, `amount_debit`, `amount_credit`, `create_date`, `status`, `budget_year`) VALUES
(1, 119, 4, '000', '00000', 7, 'New Employee', '', '', '', '', 'Medical Checkup', 'IDR', 92400000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(2, 119, 4, '000', '00000', 7, 'Replacement', '', '', '', '', 'Medical Checkup', 'IDR', 86520000, 0, '0000-00-00 00:00:00', 'no', 2023),
(3, 118, 3, '000', '00000', 7, ' Psikotes, alat tes, medical in station ', '', '', '', '', 'Recruitment process in other Station ', 'IDR', 90000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(4, 118, 3, '000', '00000', 7, 'Vacancies advertisement (Jobstreet)', '', '', '', '', 'Vacancies advertisement (Jobstreet)', 'IDR', 33000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(5, 118, 3, '000', '00000', 7, 'Assessment Center test by vendor', '', '', '', '', 'Assessment Center test by vendor', 'IDR', 50000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(6, 204, 6, '000', '00000', 7, 'JOBFAIR (vendor)', '', '', '', '', 'JOBFAIR (vendor)', 'IDR', 30000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(7, 134, 5, '000', '00000', 7, ' Proximitty ', '', '', '', '', 'ID Card', 'IDR', 2250000, 0, '0000-00-00 00:00:00', 'no', 2023),
(8, 134, 5, '000', '00000', 7, ' Non Proxi  ', '', '', '', '', 'ID Card', 'IDR', 16500000, 0, '0000-00-00 00:00:00', 'no', 2023),
(9, 118, 3, '000', '00000', 7, 'Employee', '', '', '', '', 'Outsourching Fee', 'IDR', 300000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(10, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Jan 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(11, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Feb 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(12, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Mar 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(13, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (April 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(14, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Mei 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(15, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year(Juni 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(16, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Juli 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(17, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Agust 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(18, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Sept 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(19, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Okt 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(20, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Nov 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(21, 161, 1, '000', '00000', 4, 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', '', '', '', '', 'Rental Mesin Absensi Face, 3 year (Des 2023)', 'IDR', 74800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(22, 179, 2, '000', '00000', 4, '', '', '', '', '', 'Contract Sunfish Yearly', 'IDR', 203546700, 0, '0000-00-00 00:00:00', 'yes', 2023),
(23, 192, 16, '000', '00000', 9, 'P2K3', '', '', '', '', 'HR Socialization', 'IDR', 15000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(24, 194, 17, '000', '00000', 9, 'Town Hall Meeting  ( CGK )', '', '', '', '', 'HR Socialization', 'IDR', 12000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(25, 194, 17, '000', '00000', 9, 'PKB  2020 -2022', '', '', '', '', 'HR Socialization', 'IDR', 50000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(26, 194, 17, '000', '00000', 9, 'Printing PKB', '', '', '', '', 'HR Socialization', 'IDR', 15000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(27, 194, 17, '000', '00000', 9, 'PKB Events (consumption)', '', '', '', '', 'HR Socialization', 'IDR', 5000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(28, 119, 9, '000', '00000', 9, 'Employee Medical Check-Up 40yrs above ', '', '', '', '', 'Employee Health Programme ', 'IDR', 1068120000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(29, 194, 17, '000', '00000', 9, 'CGK & Halim (consumption) & Health Talk', '', '', '', '', 'Employee Health Programme', 'IDR', 5000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(30, 177, 14, '000', '00000', 9, 'MPP  2023 for  pention 2024 by Vendor ', '', '', '', '', 'Pension', 'IDR', 375000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(31, 57, 7, '000', '00000', 9, 'Plakat  untuk  Pensiun tahun  2023', '', '', '', '', 'Pension', 'IDR', 24050000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(32, 134, 10, '000', '00000', 9, 'Sertifikat  untuk tahun  2023', '', '', '', '', 'Pension', 'IDR', 2275000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(33, 57, 7, '000', '00000', 9, 'Jam tangan, cincin mas (5 gr) atau sejenisnya ', '', '', '', '', 'Pension', 'IDR', 162500000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(34, 194, 17, '000', '00000', 9, 'Ceremony (consumption)', '', '', '', '', 'Pension', 'IDR', 16000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(35, 194, 17, '000', '00000', 9, 'Internal Meeting with Union Labour  Pra PKB', '', '', '', '', 'Internal Relation', 'IDR', 2000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(36, 194, 17, '000', '00000', 9, 'HR Visit (sick employee)', '', '', '', '', 'Internal Relation', 'IDR', 6200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(37, 204, 18, '000', '00000', 9, 'Family Gathering (..... for all CGk & Halim employees)', '', '', '', '', 'Internal Relation', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(38, 204, 18, '000', '00000', 9, 'Victim of Flood Disaster, earth quake (Catastrophe) ', '', '', '', '', 'Internal Relation', 'IDR', 170000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(39, 139, 11, '000', '00000', 9, 'Clearence Case with Kemenakertrans RI at all regional.', '', '', '', '', 'External Relation', 'IDR', 10000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(40, 61, 8, '000', '00000', 9, 'Bi/Triparty, lawyer, attorney', '', '', '', '', 'External Relation', 'IDR', 100000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(41, 140, 12, '000', '00000', 9, 'Coordination with Disnakertrans ', '', '', '', '', 'External Relation', 'IDR', 10000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(42, 61, 8, '000', '00000', 9, 'Beasiswa Eksternal', '', '', '', '', 'External Relation', 'IDR', 100000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(43, 194, 17, '000', '00000', 9, 'Buka puasa internal', '', '', '', '', 'HUT JAS di bulan Puasa', 'IDR', 146250000, 0, '0000-00-00 00:00:00', 'no', 2023),
(44, 194, 17, '000', '00000', 9, 'Buka puasa bersama external', '', '', '', '', '', 'IDR', 88500000, 0, '0000-00-00 00:00:00', 'no', 2023),
(45, 194, 17, '000', '00000', 9, 'Pengajian Bulanan + Yasinan malam jum\'at', '', '', '', '', '', 'IDR', 63000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(46, 194, 17, '000', '00000', 9, 'Kebaktian  ( nasrani)', '', '', '', '', '', 'IDR', 6000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(47, 194, 17, '000', '00000', 9, 'Meal Voucher hari pertama Idul Fitri 1441 H', '', '', '', '', '', 'IDR', 97500000, 0, '0000-00-00 00:00:00', 'no', 2023),
(48, 194, 17, '000', '00000', 9, 'Meal box malam pergantian tahun baru 2023', '', '', '', '', '', 'IDR', 78000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(49, 204, 18, '000', '00000', 9, 'With PMI Tangerang : 3 event (HUT JAS & End of Year 2023)', '', '', '', '', 'Blood Donation', 'IDR', 75000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(50, 185, 15, '000', '00000', 9, 'Cardig Club (Rp.5.000.000/month)', '', '', '', '', 'Membership for sport', 'IDR', 60000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(51, 175, 13, '000', '00000', 9, 'K3 fee (Doctor monthly fee) ', '', '', '', '', 'Manajemen fee ', 'IDR', 330000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(52, 204, 18, '000', '00000', 9, 'JAS Bikers  ', '', '', '', '', 'Employee Engagement Program (Retain)', 'IDR', 20000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(53, 204, 18, '000', '00000', 9, 'Perayaan HUT RI ke 78 tahun 2023', '', '', '', '', 'Employee Engagement Program (Retain)', 'IDR', 100000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(54, 204, 18, '000', '00000', 9, 'Upacara  HUT RI ke 78 tahun 2023', '', '', '', '', 'Employee Engagement Program (Retain)', 'IDR', 37187500, 0, '0000-00-00 00:00:00', 'no', 2023),
(55, 204, 18, '000', '00000', 9, 'Run 5 K, Jalan Sehat,  sepeda santai ', '', '', '', '', 'Employee Engagement Program (Retain)', 'IDR', 40000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(56, 194, 17, '000', '00000', 9, 'Gathering HC and Other Department', '', '', '', '', 'Employee Engagement Program (Retain)', 'IDR', 12000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(57, 204, 18, '000', '00000', 9, 'Aneka Lomba hari besar Nasional ', '', '', '', '', 'Employee Engagement Program (Retain)', 'IDR', 12000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(62, 114, 24, '000', '00000', 11, 'Daily Allowance - Trainning', '', '', '', '', 'Daily Allowance - Trainning', 'IDR', 19200000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(63, 115, 25, '000', '00000', 11, 'Training Domestic (In-House Training)', '', '', '', '', 'Training Domestic (In-House Training)', 'IDR', 1447540000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(64, 117, 26, '000', '00000', 11, 'Training for Company (O/S - Sbjcted to WHT)', '', '', '', '', 'Training for Company (O/S - Sbjcted to WHT)', 'IDR', 245000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(65, 120, 27, '000', '00000', 11, 'Instructors Fee', '', '', '', '', 'Instructors Fee', 'IDR', 42300000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(66, 121, 28, '000', '00000', 11, 'Workshop and Conference', '', '', '', '', 'Workshop and Conference', 'IDR', 88000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(68, 180, 39, '000', '00000', 11, 'Operator Licences', '', '', '', '', 'Operator Licences', 'IDR', 705251600, 0, '0000-00-00 00:00:00', 'no', 2023),
(72, 104, 68, '000', '00000', 14, 'Daily Allowance', '', '', '', '', 'MCT Station visit DPS', 'IDR', 1680000, 0, '0000-00-00 00:00:00', 'no', 2023),
(73, 104, 68, '000', '00000', 14, 'Daily Allowance', '', '', '', '', 'MCT Station visit SUB', 'IDR', 1680000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(74, 104, 68, '000', '00000', 14, 'Daily Allowance', '', '', '', '', 'MCT Station visit KNO', 'IDR', 1680000, 0, '0000-00-00 00:00:00', 'no', 2023),
(75, 104, 68, '000', '00000', 14, 'Daily Allowance', '', '', '', '', 'Marketing plan to Palembang', 'IDR', 2080000, 0, '0000-00-00 00:00:00', 'no', 2023),
(76, 104, 68, '000', '00000', 14, 'Daily Allowance', '', '', '', '', 'Marketing plan to Balik Papan', 'IDR', 2080000, 0, '0000-00-00 00:00:00', 'no', 2023),
(77, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'MCT Station visit DPS', 'IDR', 6400000, 0, '0000-00-00 00:00:00', 'no', 2023),
(78, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'MCT Station visit SUB', 'IDR', 6400000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(79, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'MCT Station visit KNO', 'IDR', 6400000, 0, '0000-00-00 00:00:00', 'no', 2023),
(80, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'Marketing plan to Palembang', 'IDR', 6400000, 0, '0000-00-00 00:00:00', 'no', 2023),
(81, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'Marketing plan to Balik Papan', 'IDR', 6400000, 0, '0000-00-00 00:00:00', 'no', 2023),
(82, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'Hotel accomodation to palembang ', 'IDR', 4200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(83, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'Hotel accomodation to Balik papan', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(84, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'MCT Station visit DPS', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(85, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'MCT Station visit SUB', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(86, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'MCT Station visit KNO', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(87, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'Marketing plan to Palembang', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(88, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'Marketing plan to Balik Papan', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(89, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'Hotel accomodation to palembang ', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(90, 106, 69, '000', '00000', 14, 'Travel Expense Domestic', '', '', '', '', 'Hotel accomodation to Balik papan', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(91, 108, 70, '000', '00000', 14, 'Airport Pass and ID Card', '', '', '', '', 'Airport Pass and ID Card', 'IDR', 2000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(92, 110, 71, '000', '00000', 14, 'Fuel for Vehicles', '', '', '', '', 'Fuel for Vehicles', 'IDR', 21600000, 0, '0000-00-00 00:00:00', 'no', 2023),
(93, 130, 72, '000', '00000', 14, 'Other Communication', '', '', '', '', 'Other Communication', 'IDR', 2040000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(94, 132, 73, '000', '00000', 14, 'Office Supplies and Stationary and Others', '', '', '', '', 'Photocopy (perbanyak materi training )', 'IDR', 4725000, 0, '0000-00-00 00:00:00', 'no', 2023),
(95, 133, 74, '000', '00000', 14, 'Office Supplies and Stationary and Others', '', '', '', '', 'Office Cleaning Supplies and Services', 'IDR', 9450000, 0, '0000-00-00 00:00:00', 'no', 2023),
(96, 134, 75, '000', '00000', 14, 'Office Supplies and Stationary and Others', '', '', '', '', 'Kop surat and Sertificate', 'IDR', 56895552, 0, '0000-00-00 00:00:00', 'yes', 2023),
(97, 135, 76, '000', '00000', 14, 'Office Supplies and Stationary and Others', '', '', '', '', 'Stamp and Postage', 'IDR', 1150000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(98, 140, 77, '000', '00000', 14, 'Entertainment (Fiscal Deductable Exp.) ', '', '', '', '', 'Entertainment', 'IDR', 2000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(99, 157, 78, '000', '00000', 14, 'Vehicles Rental Expense', '', '', '', '', 'Car rental', 'IDR', 48000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(100, 159, 79, '000', '00000', 14, 'Photocopy Machine', '', '', '', '', 'Photo copy', 'IDR', 19200000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(101, 194, 80, '000', '00000', 14, 'Consumption', '', '', '', '', 'Consumption', 'IDR', 3000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(102, 197, 91, '000', '00000', 14, 'Safety uniform', '', '', '', '', 'Safety shoes', 'IDR', 2750000, 0, '0000-00-00 00:00:00', 'no', 2023),
(103, 197, 91, '000', '00000', 14, 'Safety uniform', '', '', '', '', 'safety vest', 'IDR', 6000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(104, 192, 92, '000', '00000', 14, 'Other FFE', '', '', '', '', 'BILLBOARD JAS ACADEMY', 'IDR', 20000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(105, 192, 92, '000', '00000', 14, 'Upgrade Software & App', '', '', '', '', 'JAS Academy App v2', 'IDR', 500000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(106, 192, 92, '000', '00000', 14, 'CCTV & Camera', '', '', '', '', 'Camera SLR', 'IDR', 15000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(107, 192, 41, '000', '00000', 11, 'Other Fee (CAPEX)', '', '', '', '', 'KOMPOR LISTRIK 2 JAR', 'IDR', 9000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(108, 192, 41, '000', '00000', 11, 'Air Conditioner (AC) & Fan (CAPEX)', '', '', '', '', 'AC 1 PK PANASONIC BASIC TYPE', 'IDR', 21000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(109, 192, 41, '000', '00000', 11, 'CCTV & Camera (CAPEX)', '', '', '', '', 'Wide Angle Lens', 'IDR', 8000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(110, 192, 41, '000', '00000', 11, 'Upgrade Software & App (CAPEX)', '', '', '', '', 'Computer Assisted Software', 'IDR', 100000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(111, 192, 41, '000', '00000', 11, 'TV & Projector (CAPEX)', '', '', '', '', 'LCD Projector', 'IDR', 32000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(112, 192, 41, '000', '00000', 11, 'PC, Laptop, & LCD (CAPEX)', '', '', '', '', 'PC', 'IDR', 48000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(113, 192, 41, '000', '00000', 11, 'PC, Laptop, & LCD (CAPEX)', '', '', '', '', 'Laptop Staff', 'IDR', 23000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(114, 104, 19, '000', '00000', 11, 'Internal audit QC (DPS : 2, SUB : 2 , KNO: 2)', '', '', '', '', 'Internal audit QC (DPS : 2, SUB : 2 , KNO: 2)', 'IDR', 15840000, 0, '0000-00-00 00:00:00', 'no', 2023),
(115, 104, 19, '000', '00000', 11, 'MIT Quaterly ( 3 bulanan ) DPS, SUB, KNO', '', '', '', '', 'MIT Quaterly ( 3 bulanan ) DPS, SUB, KNO', 'IDR', 9800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(116, 104, 19, '000', '00000', 11, 'Internal Supervisor LC DPS, SUB, KNO', '', '', '', '', 'Internal Supervisor LC DPS, SUB, KNO', 'IDR', 5760000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(117, 106, 20, '000', '00000', 11, 'Internal audit QC (DPS : 2, SUB : 2 , KNO: 2)', '', '', '', '', 'Internal audit QC (DPS : 2, SUB : 2 , KNO: 2)', 'IDR', 71583828, 0, '0000-00-00 00:00:00', 'no', 2023),
(118, 106, 20, '000', '00000', 11, 'MIT Quaterly ( 3 times / year )', '', '', '', '', 'MIT Quaterly ( 3 times / year )', 'IDR', 24300000, 0, '0000-00-00 00:00:00', 'no', 2023),
(119, 106, 20, '000', '00000', 11, 'Internal Supervisor LC ( 3 times / year) ', '', '', '', '', 'Internal Supervisor LC ( 3 times / year) ', 'IDR', 33000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(120, 108, 21, '000', '00000', 11, 'Airport Pass  8 ( Staff ) @ Rp. 400.000', '', '', '', '', 'Airport Pass  8 ( Staff ) @ Rp. 400.000', 'IDR', 3200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(121, 109, 22, '000', '00000', 11, 'DEPHUB (Toll, bensin, parkir, transpotation online)', '', '', '', '', 'DEPHUB (Toll, bensin, parkir, transpotation online)', 'IDR', 6000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(122, 109, 22, '000', '00000', 11, 'JAS Soewarna, Cargo, Terminal', '', '', '', '', 'JAS Soewarna, Cargo, Terminal', 'IDR', 5200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(123, 109, 22, '000', '00000', 11, 'Taxi / Angkot / Ojek / Grab ', '', '', '', '', 'Taxi / Angkot / Ojek / Grab ', 'IDR', 7200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(124, 110, 23, '000', '00000', 11, 'Avanza operasional Rp. 300.000 / week', '', '', '', '', 'Avanza operasional Rp. 300.000 / week', 'IDR', 18000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(125, 123, 29, '000', '00000', 11, 'Water (increase 5 % from Rp. 3.887.609/month)', '', '', '', '', 'Water (increase 5 % from Rp. 3.887.609/month)', 'IDR', 48983873, 0, '0000-00-00 00:00:00', 'yes', 2023),
(126, 124, 30, '000', '00000', 11, 'Electricity (increase 5 % from Rp.7.724.043/month)', '', '', '', '', 'Electricity (increase 5 % from Rp.7.724.043/month)', 'IDR', 106591793, 0, '0000-00-00 00:00:00', 'yes', 2023),
(127, 126, 93, '000', '00000', 11, 'Telephone and Faximile (Average Rp. 60.598 per month)', '', '', '', '', 'Telephone and Faximile (Average Rp. 60.598 per month)', 'IDR', 727178, 0, '0000-00-00 00:00:00', 'yes', 2023),
(128, 130, 94, '000', '00000', 11, 'Other Communication (Pulse for Agus)', '', '', '', '', 'Other Communication (Pulse for Agus)', 'IDR', 1200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(129, 132, 31, '000', '00000', 11, 'Photocopy', '', '', '', '', 'Photocopy', 'IDR', 9600000, 0, '0000-00-00 00:00:00', 'no', 2023),
(130, 133, 32, '000', '00000', 11, 'Office Cleaning Supplies and Services', '', '', '', '', 'Office Cleaning Supplies and Services', 'IDR', 14400000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(131, 134, 33, '000', '00000', 11, 'License Training  Avsec Modul  Rp. 15.000 x 399 participant = Rp. 5.985.000', '', '', '', '', 'License Training  Avsec Modul  Rp. 15.000 x 399 participant = Rp. 5.985.000', 'IDR', 5985000, 0, '0000-00-00 00:00:00', 'no', 2023),
(132, 134, 33, '000', '00000', 11, 'License Training  GSE & FRM Modul Rp. 15.000 x 375 participant =Rp. 5.625.000', '', '', '', '', 'License Training  GSE & FRM Modul Rp. 15.000 x 375 participant =Rp. 5.625.000', 'IDR', 5625000, 0, '0000-00-00 00:00:00', 'no', 2023),
(133, 134, 33, '000', '00000', 11, 'License Training  DG Modul  Rp. 15.000 x  120 participant = Rp. 1.800.000', '', '', '', '', 'License Training  DG Modul  Rp. 15.000 x  120 participant = Rp. 1.800.000', 'IDR', 1800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(134, 134, 33, '000', '00000', 11, 'Non License Training 15 Modul @ (Rp. 15.000  x 20 participant = Rp. 300.000)', '', '', '', '', 'Non License Training 15 Modul @ (Rp. 15.000  x 20 participant = Rp. 300.000)', 'IDR', 54000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(135, 134, 33, '000', '00000', 11, 'Induction Training 8 Modul @ (Rp. 15.000 x 20 participant = Rp. 300.000)', '', '', '', '', 'Induction Training 8 Modul @ (Rp. 15.000 x 20 participant = Rp. 300.000)', 'IDR', 28800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(136, 134, 33, '000', '00000', 11, 'Competency card issuance @ Rp. 55.000 x 615 card', '', '', '', '', 'Competency card issuance @ Rp. 55.000 x 615 card', 'IDR', 33825000, 0, '0000-00-00 00:00:00', 'no', 2023),
(137, 134, 33, '000', '00000', 11, 'Certificate Competency  20 rim @ Rp. 2.700.000/rim  (4 request per year each 5 rim)', '', '', '', '', 'Certificate Competency  20 rim @ Rp. 2.700.000/rim  (4 request per year each 5 rim)', 'IDR', 54000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(138, 134, 33, '000', '00000', 11, 'Paper  A4 84 rim @ Rp. 50.000', '', '', '', '', 'Paper  A4 84 rim @ Rp. 50.000', 'IDR', 4200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(139, 134, 33, '000', '00000', 11, 'ATK (paper clips, pulpen ect)', '', '', '', '', 'ATK (paper clips, pulpen ect)', 'IDR', 6000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(140, 135, 34, '000', '00000', 11, 'Courier Document (Training material, Licence)', '', '', '', '', 'Courier Document (Training material, Licence)', 'IDR', 13200000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(141, 135, 34, '000', '00000', 11, 'Materai Dll', '', '', '', '', 'Materai Dll', 'IDR', 1200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(143, 142, 36, '000', '00000', 11, 'Penggantian lampu bulp LED 9 W (philips) 19 Unit @ Rp. 95.000 = Rp. 1.805.000', '', '', '', '', 'Penggantian lampu bulp LED 9 W (philips) 19 Unit @ Rp. 95.000 = Rp. 1.805.000', 'IDR', 1805000, 0, '0000-00-00 00:00:00', 'no', 2023),
(144, 142, 36, '000', '00000', 11, 'Penggantian lampu Philips LED 9 W (philips)+ fiting + kabel Jumper 29 Unit @ Rp. 285.000 = Rp. 8.265.000', '', '', '', '', 'Penggantian lampu Philips LED 9 W (philips)+ fiting + kabel Jumper 29 Unit @ Rp. 285.000 = Rp. 8.265.000', 'IDR', 8265000, 0, '0000-00-00 00:00:00', 'no', 2023),
(145, 142, 36, '000', '00000', 11, 'Penggantian pintu  wastafel lantai 1 @ Rp. 2.260.000', '', '', '', '', 'Penggantian pintu  wastafel lantai 1 @ Rp. 2.260.000', 'IDR', 2260000, 0, '0000-00-00 00:00:00', 'no', 2023),
(146, 142, 36, '000', '00000', 11, 'Water JetPump Sanyo 250 watt 1 unit Rp. 4.500.000', '', '', '', '', 'Water JetPump Sanyo 250 watt 1 unit Rp. 4.500.000', 'IDR', 4500000, 0, '0000-00-00 00:00:00', 'no', 2023),
(147, 142, 36, '000', '00000', 11, 'Perbaikan Atap dan talang  Rp. 10.000.000', '', '', '', '', 'Perbaikan Atap dan talang  Rp. 10.000.000', 'IDR', 10000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(148, 142, 36, '000', '00000', 11, 'Repainting  lantai 1,2 & 3 Rp. 100.000.000', '', '', '', '', 'Repainting  lantai 1,2 & 3 Rp. 100.000.000', 'IDR', 100000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(149, 142, 36, '000', '00000', 11, 'Others', '', '', '', '', 'Others', 'IDR', 289167, 0, '0000-00-00 00:00:00', 'yes', 2023),
(150, 148, 37, '000', '00000', 11, 'Pemasangan dan instalasi LCD Projector di Plafon di ruang Ruang 202, 203, 303, CBT 5 Unit @ Rp. 800.000 = Rp. 4.000.000', '', '', '', '', 'Pemasangan dan instalasi LCD Projector di Plafon di ruang Ruang 202, 203, 303, CBT 5 Unit @ Rp. 800.000 = Rp. 4.000.000', 'IDR', 4000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(151, 148, 37, '000', '00000', 11, 'Penggantian Mouse di CBT Room 10 item dari 20 PC @ Rp. 100.000 (kondisi mouse yang akan diganti kondisinya tidak serviciable)', '', '', '', '', 'Penggantian Mouse di CBT Room 10 item dari 20 PC @ Rp. 100.000 (kondisi mouse yang akan diganti kondisinya tidak serviciable)', 'IDR', 1000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(152, 148, 37, '000', '00000', 11, 'Penggatian Keybord di CBT Room 10 item dari 20 PC @Rp. 200.000 (kondisi Keybord yang akan diganti kondisinya tidak serviciable)', '', '', '', '', 'Penggatian Keybord di CBT Room 10 item dari 20 PC @Rp. 200.000 (kondisi Keybord yang akan diganti kondisinya tidak serviciable)', 'IDR', 2000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(153, 160, 38, '000', '00000', 11, 'Dispenser Machine 3 unit @ Rp. 55.000 per unit', '', '', '', '', 'Dispenser Machine 3 unit @ Rp. 55.000 per unit', 'IDR', 1980000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(154, 187, 40, '000', '00000', 11, 'Sertifikat Lemdik GSE & FRM Rp. 30.000.000', '', '', '', '', 'Sertifikat Lemdik GSE & FRM Rp. 30.000.000', 'IDR', 30000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(155, 187, 40, '000', '00000', 11, 'VerifikasiLapangan tuk penerbitan  Sertifikat GSE & FRM Rp. 20.000.000', '', '', '', '', 'VerifikasiLapangan tuk penerbitan  Sertifikat GSE & FRM Rp. 20.000.000', 'IDR', 20000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(156, 187, 40, '000', '00000', 11, 'Sertifikat Lemdik Avsec Rp. 15.000.000', '', '', '', '', 'Sertifikat Lemdik Avsec Rp. 15.000.000', 'IDR', 15000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(157, 187, 40, '000', '00000', 11, 'VerifikasiLapangan tuk penerbitan  Sertifikat GSE & FRM Rp. 50.000.000', '', '', '', '', 'VerifikasiLapangan tuk penerbitan  Sertifikat GSE & FRM Rp. 50.000.000', 'IDR', 50000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(158, 192, 41, '000', '00000', 11, '50 Unit Kursi Kuliah @ Rp. 500.000 ', '', '', '', '', '50 Unit Kursi Kuliah @ Rp. 500.000 ', 'IDR', 25000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(159, 194, 42, '000', '00000', 11, 'Groseries @ Rp. 150.000 / week', '', '', '', '', 'Groseries @ Rp. 150.000 / week', 'IDR', 6000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(160, 194, 42, '000', '00000', 11, 'Meals Meeting 1 Time per week @ Rp. 75.000 (standard Gudeg Bu Hani)', '', '', '', '', 'Meals Meeting 1 Time per week @ Rp. 75.000 (standard Gudeg Bu Hani)', 'IDR', 3600000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(161, 195, 43, '000', '00000', 11, '2 Shirt @ Rp. 200.000', '', '', '', '', '2 Shirt @ Rp. 200.000', 'IDR', 3200000, 0, '0000-00-00 00:00:00', 'no', 2023),
(162, 195, 43, '000', '00000', 11, '1 trousers @ Rp. 300.000', '', '', '', '', '1 trousers @ Rp. 300.000', 'IDR', 2400000, 0, '0000-00-00 00:00:00', 'no', 2023),
(163, 197, 44, '000', '00000', 11, 'Rompi 8 ( Heri, Aji, Agus, Agis, Dedi, Vanesa, Ute, Nisa)', '', '', '', '', 'Rompi 8 ( Heri, Aji, Agus, Agis, Dedi, Vanesa, Ute, Nisa)', 'IDR', 760000, 0, '0000-00-00 00:00:00', 'no', 2023),
(164, 197, 44, '000', '00000', 11, 'Safety Shoes 8 ( Heri, Aji, Agus, Agis, Dedi, Vanesa, Ute, Nisa)', '', '', '', '', 'Safety Shoes 8 ( Heri, Aji, Agus, Agis, Dedi, Vanesa, Ute, Nisa)', 'IDR', 2161200, 0, '0000-00-00 00:00:00', 'no', 2023),
(167, 201, 45, '000', '00000', 11, '4 Security Ruko', '', '', '', '', '4 Security Ruko', 'IDR', 254376720, 0, '0000-00-00 00:00:00', 'no', 2023),
(168, 201, 45, '000', '00000', 11, 'Lumpsum Over time @ Rp. 500.000 / month', '', '', '', '', 'Lumpsum Over time @ Rp. 500.000 / month', 'IDR', 36000000, 0, '0000-00-00 00:00:00', 'no', 2023),
(169, 204, 46, '000', '00000', 11, 'Iuran Kebersihan', '', '', '', '', 'Iuran Kebersihan', 'IDR', 4800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(170, 204, 46, '000', '00000', 11, 'Partisipasi lingkungan', '', '', '', '', 'Partisipasi lingkungan', 'IDR', 3500000, 0, '0000-00-00 00:00:00', 'no', 2023),
(171, 106, 64, '000', '00000', 4, 'Travel Expense Domestic', '', '', '', '', 'Travel Expense Domestic', 'IDR', 15200000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(172, 106, 63, '000', '00000', 7, 'Travel Expense Domestic', '', '', '', '', 'Travel Expense Domestic', 'IDR', 29100000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(173, 106, 62, '000', '00000', 9, 'Travel Expense Domestic', '', '', '', '', 'Travel Expense Domestic', 'IDR', 28800000, 0, '0000-00-00 00:00:00', 'no', 2023),
(174, 106, 51, '000', '00000', 12, 'Travel Expense Domestic', '', '', '', '', 'Travel Expense Domestic', 'IDR', 153400000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(175, 106, 65, '000', '00000', 13, 'Travel Expense Domestic', '', '', '', '', 'Travel Expense Domestic', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(176, 107, 60, '000', '00000', 4, 'Transport Services', '', '', '', '', 'Transport Services', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(177, 107, 59, '000', '00000', 7, 'Transport Services', '', '', '', '', 'Transport Services', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(178, 107, 58, '000', '00000', 9, 'Transport Services', '', '', '', '', 'Transport Services', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(179, 107, 52, '000', '00000', 12, 'Transport Services', '', '', '', '', 'Transport Services', 'IDR', 144400000, 0, '0000-00-00 00:00:00', 'no', 2023),
(180, 107, 61, '000', '00000', 13, 'Transport Services', '', '', '', '', 'Transport Services', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(181, 107, 0, '000', '00000', 10, 'Transport Services', '', '', '', '', 'Transport Services', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(182, 104, 55, '000', '00000', 4, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 7040000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(183, 104, 56, '000', '00000', 7, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 8280000, 0, '0000-00-00 00:00:00', 'no', 2023),
(184, 104, 57, '000', '00000', 9, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 8640000, 0, '0000-00-00 00:00:00', 'no', 2023),
(185, 104, 53, '000', '00000', 12, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 36000000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(186, 104, 54, '000', '00000', 13, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 4940000, 0, '0000-00-00 00:00:00', 'yes', 2023),
(187, 104, 95, '000', '00000', 10, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(188, 106, 66, '000', '00000', 10, 'Travel Expense Domestic', '', '', '', '', 'Travel Expense Domestic', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(189, 136, 35, '000', '00000', 11, 'Library', NULL, NULL, NULL, NULL, 'Library', 'IDR', 162000000, NULL, '2023-03-28 06:32:51', 'no', 2023),
(190, 126, 84, '000', '00000', 14, 'Telephone and Faximile', '', '', '', '', 'Telephone and Faximile', 'IDR', 2160000, 0, '2023-03-28 07:15:22', 'yes', 2023),
(191, 142, 87, '000', '00000', 14, 'RM - Building and Building Improvement', '', '', '', '', 'RM - Building and Building Improvement', 'IDR', 501148792, 0, '2023-03-28 07:50:52', 'yes', 2023),
(192, 146, 88, '000', '00000', 14, 'RM - Office Equipment and Furniture', '', '', '', '', 'RM - Office Equipment and Furniture', 'IDR', 10366950, 0, '2023-03-28 07:51:30', 'yes', 2023),
(193, 147, 89, '000', '00000', 14, 'RM - Communication Equipment', '', '', '', '', 'RM - Communication Equipment', 'IDR', 2731100, 0, '2023-03-28 07:51:56', 'no', 2023),
(194, 152, 90, '000', '00000', 14, 'RM - Others', '', '', '', '', 'RM - Others', 'IDR', 7647750, 0, '2023-03-28 07:52:30', 'yes', 2023),
(195, 109, 97, '000', '00000', 10, 'Transportation Local', '', '', '', '', 'Transportation Local', 'IDR', 24095925, 0, '0000-00-00 00:00:00', 'yes', 2023),
(196, 110, 98, '000', '00000', 10, 'Fuel for Vehicles', '', '', '', '', 'Fuel for Vehicles', 'IDR', 6174074, 0, '0000-00-00 00:00:00', 'yes', 2023),
(197, 126, 99, '000', '00000', 10, 'Telephone and Faximile', '', '', '', '', 'Telephone and Faximile', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(198, 157, 100, '000', '00000', 10, 'Vehicles Rental Expense', '', '', '', '', 'Vehicles Rental Expense', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(199, 192, 101, '000', '00000', 10, 'Business Tools (UCA)', '', '', '', '', 'Business Tools (UCA)', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(200, 194, 102, '000', '00000', 10, 'Consumption', '', '', '', '', 'Consumption', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(201, 195, 103, '000', '00000', 10, 'Uniform', '', '', '', '', 'Uniform', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(202, 197, 104, '000', '00000', 10, 'Safety Uniform', '', '', '', '', 'Safety Uniform', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(203, 134, 105, '000', '00000', 10, 'Printing, Stationery, Office Supplies', '', '', '', '', 'Printing, Stationery, Office Supplies', 'IDR', 0, 0, '0000-00-00 00:00:00', 'yes', 2023),
(204, 130, 106, '000', '00000', 10, 'Other Communication', '', '', '', '', 'Other Communication', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(205, 183, 107, '000', '00000', 10, 'Non-GSE Parking Permits', '', '', '', '', 'Non-GSE Parking Permits', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(206, 108, 108, '000', '00000', 10, 'Airport Pass and ID Card', '', '', '', '', 'Airport Pass and ID Card', 'IDR', 0, 0, '0000-00-00 00:00:00', 'no', 2023),
(207, 204, 109, '000', '00000', 10, 'Others', '', '', '', '', 'Others', 'IDR', 0, 0, '2023-03-30 01:28:03', 'no', 2023),
(208, 204, 18, '000', '00000', 9, 'Others', '', '', '', '', 'Bantuan Dana Pemilu SP JAS Tahun 2023/2025', 'IDR', 0, 0, '2023-03-30 01:46:35', 'yes', 2023),
(209, 139, 11, '000', '00000', 9, 'Others', '', '', '', '', 'Others', 'IDR', 0, 0, '2023-03-30 01:48:34', 'no', 2023),
(210, 130, 110, '000', '00000', 12, 'Others', '', '', '', '', 'Others', 'IDR', 0, 0, '2023-03-30 02:12:00', 'yes', 2023),
(211, 139, 111, '000', '00000', 7, 'Others', '', '', '', '', 'Others', 'IDR', 0, 0, '2023-03-30 02:12:57', 'yes', 2023),
(212, 177, 112, '000', '00000', 7, 'Others', '', '', '', '', 'Others', 'IDR', 0, 0, '2023-03-30 02:13:58', 'no', 2023),
(213, 117, 116, '000', '00000', 12, 'CHCGM', '', '', '', '', 'CHCGM', 'IDR', 10163409, 0, '0000-00-00 00:00:00', 'no', 2023),
(214, 117, 116, '000', '00000', 12, 'HUMAN RESOURCE MANAGEMENT', '', '', '', '', 'HUMAN RESOURCE MANAGEMENT', 'IDR', 8463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(215, 117, 116, '000', '00000', 12, 'EMPLOYEE ENGAGEMENT KEY TO YOUR ORGANIZATION\'S PERFORMANCE', '', '', '', '', 'EMPLOYEE ENGAGEMENT KEY TO YOUR ORGANIZATION\'S PERFORMANCE', 'IDR', 6763409, 0, '0000-00-00 00:00:00', 'no', 2023),
(216, 114, 117, '000', '00000', 12, 'NAVIGATING THE NEW PARADIGMS OF PEOPLE AND WORK', '', '', '', '', 'NAVIGATING THE NEW PARADIGMS OF PEOPLE AND WORK', 'IDR', 3552000, 0, '0000-00-00 00:00:00', 'no', 2023),
(217, 114, 117, '000', '00000', 12, '2023 NSW HR LEADERSHIP SUMMIT', '', '', '', '', '2023 NSW HR LEADERSHIP SUMMIT', 'IDR', 3552000, 0, '0000-00-00 00:00:00', 'no', 2023),
(218, 115, 114, '000', '00000', 12, 'CHCGM', '', '', '', '', 'CHCGM', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(219, 115, 114, '000', '00000', 12, 'HUMAN RESOURCE MANAGEMENT', '', '', '', '', 'HUMAN RESOURCE MANAGEMENT', 'IDR', 627500, 0, '0000-00-00 00:00:00', 'no', 2023),
(220, 115, 114, '000', '00000', 12, 'EMPLOYEE ENGAGEMENT KEY TO YOUR ORGANIZATION\'S PERFORMANCE', '', '', '', '', 'EMPLOYEE ENGAGEMENT KEY TO YOUR ORGANIZATION\'S PERFORMANCE', 'IDR', 327500, 0, '0000-00-00 00:00:00', 'no', 2023),
(221, 116, 113, '000', '00000', 12, 'NAVIGATING THE NEW PARADIGMS OF PEOPLE AND WORK', '', '', '', '', 'NAVIGATING THE NEW PARADIGMS OF PEOPLE AND WORK', 'IDR', 29600000, 0, '0000-00-00 00:00:00', 'no', 2023),
(222, 116, 113, '000', '00000', 12, '2023 NSW HR LEADERSHIP SUMMIT', '', '', '', '', '2023 NSW HR LEADERSHIP SUMMIT', 'IDR', 29600000, 0, '0000-00-00 00:00:00', 'no', 2023),
(223, 117, 118, '000', '00000', 4, 'Database', '', '', '', '', 'Database', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(224, 117, 118, '000', '00000', 4, 'Programming + API', '', '', '', '', 'Programming + API', 'IDR', 10463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(225, 117, 118, '000', '00000', 4, 'Communication Skills', '', '', '', '', 'Communication Skills', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(226, 117, 118, '000', '00000', 4, 'Analytical thinking', '', '', '', '', 'Analytical thinking', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(227, 117, 118, '000', '00000', 4, 'DESIGNING ORGANISASI STRUCTURE', '', '', '', '', 'DESIGNING ORGANISASI STRUCTURE', 'IDR', 10463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(228, 115, 119, '000', '00000', 4, 'Database', '', '', '', '', 'Database', 'IDR', 627500, 0, '0000-00-00 00:00:00', 'no', 2023),
(229, 115, 119, '000', '00000', 4, 'Programming + API', '', '', '', '', 'Programming + API', 'IDR', 1127500, 0, '0000-00-00 00:00:00', 'no', 2023),
(230, 115, 119, '000', '00000', 4, 'Communication Skills', '', '', '', '', 'Communication Skills', 'IDR', 327500, 0, '0000-00-00 00:00:00', 'no', 2023),
(231, 115, 119, '000', '00000', 4, 'Analytical thinking', '', '', '', '', 'Analytical thinking', 'IDR', 327500, 0, '0000-00-00 00:00:00', 'no', 2023),
(232, 115, 119, '000', '00000', 4, 'DESIGNING ORGANISASI STRUCTURE', '', '', '', '', 'DESIGNING ORGANISASI STRUCTURE', 'IDR', 327500, 0, '0000-00-00 00:00:00', 'no', 2023),
(233, 117, 120, '000', '00000', 19, 'DESIGNING STANDARD OPERATING PROCEDURES', '', '', '', '', 'DESIGNING STANDARD OPERATING PROCEDURES', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(234, 117, 120, '000', '00000', 19, 'ENHANCING YOUR PERSONAL EFFECTIVENESS', '', '', '', '', 'ENHANCING YOUR PERSONAL EFFECTIVENESS', 'IDR', 4463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(235, 115, 121, '000', '00000', 19, 'DESIGNING STANDARD OPERATING PROCEDURES', '', '', '', '', 'DESIGNING STANDARD OPERATING PROCEDURES', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(236, 115, 121, '000', '00000', 19, 'ENHANCING YOUR PERSONAL EFFECTIVENESS', '', '', '', '', 'ENHANCING YOUR PERSONAL EFFECTIVENESS', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(237, 117, 122, '000', '00000', 13, 'Salary structure and Job Grading', '', '', '', '', 'Salary structure and Job Grading', 'IDR', 12463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(238, 117, 122, '000', '00000', 13, 'Compensation and Benefit Course', '', '', '', '', 'Compensation and Benefit Course', 'IDR', 3963409, 0, '0000-00-00 00:00:00', 'no', 2023),
(239, 117, 122, '000', '00000', 13, 'PP No. 35 Tahun 2021', '', '', '', '', 'PP No. 35 Tahun 2021', 'IDR', 4463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(240, 115, 123, '000', '00000', 13, 'Salary structure and Job Grading', '', '', '', '', 'Salary structure and Job Grading', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(241, 115, 123, '000', '00000', 13, 'Compensation and Benefit Course', '', '', '', '', 'Compensation and Benefit Course', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(242, 115, 123, '000', '00000', 13, 'PP No. 35 Tahun 2021', '', '', '', '', 'PP No. 35 Tahun 2021', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(243, 117, 124, '000', '00000', 7, 'Gemba Kaizen (HC Team)', '', '', '', '', 'Gemba Kaizen (HC Team)', 'IDR', 71268392, 0, '0000-00-00 00:00:00', 'no', 2023),
(244, 117, 124, '000', '00000', 7, 'Training Need Analysis', '', '', '', '', 'Training Need Analysis', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(245, 117, 124, '000', '00000', 7, 'Organization Development', '', '', '', '', 'Organization Development', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(246, 117, 124, '000', '00000', 7, 'Talent Acquisition ', '', '', '', '', 'Talent Acquisition ', 'IDR', 4963409, 0, '0000-00-00 00:00:00', 'no', 2023),
(247, 117, 124, '000', '00000', 7, 'Behavior Event Interview (BEI) certification', '', '', '', '', 'Behavior Event Interview (BEI) certification', 'IDR', 4963409, 0, '0000-00-00 00:00:00', 'no', 2023),
(248, 115, 125, '000', '00000', 7, 'Gemba Kaizen (HC Team)', '', '', '', '', 'Gemba Kaizen (HC Team)', 'IDR', 5227500, 0, '0000-00-00 00:00:00', 'no', 2023),
(249, 115, 125, '000', '00000', 7, 'Training Need Analysis', '', '', '', '', 'Training Need Analysis', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(250, 115, 125, '000', '00000', 7, 'Organization Development', '', '', '', '', 'Organization Development', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(251, 115, 125, '000', '00000', 7, 'Talent Acquisition ', '', '', '', '', 'Talent Acquisition ', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(252, 115, 125, '000', '00000', 7, 'Behavior Event Interview (BEI) certification', '', '', '', '', 'Behavior Event Interview (BEI) certification', 'IDR', 427500, 0, '0000-00-00 00:00:00', 'no', 2023),
(253, 117, 126, '000', '00000', 9, 'Dasar - Dasar Administrasi Perkantoran', '', '', '', '', 'Dasar - Dasar Administrasi Perkantoran', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(254, 117, 126, '000', '00000', 9, 'Manajemen Sumber Daya Manusia', '', '', '', '', 'Manajemen Sumber Daya Manusia', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(255, 117, 126, '000', '00000', 9, 'Problem Solving and Decission makimg', '', '', '', '', 'Problem Solving and Decission makimg', 'IDR', 5463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(256, 117, 126, '000', '00000', 9, 'Industrial Relation & Hukum Ketenagakerjaan', '', '', '', '', 'Industrial Relation & Hukum Ketenagakerjaan', 'IDR', 7463409, 0, '0000-00-00 00:00:00', 'no', 2023),
(257, 115, 127, '000', '00000', 9, 'Dasar - Dasar Administrasi Perkantoran', '', '', '', '', 'Dasar - Dasar Administrasi Perkantoran', 'IDR', 327500, 0, '0000-00-00 00:00:00', 'yes', 2023),
(258, 115, 127, '000', '00000', 9, 'Manajemen Sumber Daya Manusia', '', '', '', '', 'Manajemen Sumber Daya Manusia', 'IDR', 327500, 0, '0000-00-00 00:00:00', 'no', 2023),
(259, 115, 127, '000', '00000', 9, 'Problem Solving and Decission makimg', '', '', '', '', 'Problem Solving and Decission makimg', 'IDR', 327500, 0, '0000-00-00 00:00:00', 'no', 2023),
(260, 115, 127, '000', '00000', 9, 'Industrial Relation & Hukum Ketenagakerjaan', '', '', '', '', 'Industrial Relation & Hukum Ketenagakerjaan', 'IDR', 327500, 0, '0000-00-00 00:00:00', 'no', 2023),
(261, 133, 128, '000', '00000', 10, 'Others', '', '', '', '', 'Others', 'IDR', 7408275, 0, '2023-03-30 07:27:41', 'no', 2023),
(262, 135, 129, '000', '00000', 10, 'Others', '', '', '', '', 'Others', 'IDR', 1412130, 0, '2023-03-30 07:28:59', 'no', 2023),
(263, 204, 18, '000', '00000', 9, 'Beasiswa Internal', '', '', '', '', 'Beasiswa Internal', 'IDR', 100000000, 0, '2023-03-30 07:39:54', 'no', 2023),
(264, 169, 130, '000', '00000', 10, 'Other Insurance Expense', '', '', '', '', 'Other Insurance Expense', 'IDR', 48907200, 0, '2023-03-30 07:42:09', 'yes', 2023),
(265, 192, 16, '000', '00000', 9, 'IT EQUIPMENT & SOFTWARE', '', '', '', '', 'Wide angle lens', 'IDR', 5000000, 0, '2023-03-30 07:55:47', 'no', 2023),
(266, 192, 132, '000', '00000', 7, 'IT EQUIPMENT & SOFTWARE', '', '', '', '', 'Laptop', 'IDR', 23000000, 0, '2023-03-30 07:56:39', 'no', 2023),
(267, 192, 132, '000', '00000', 7, 'IT EQUIPMENT & SOFTWARE', '', '', '', '', 'PC', 'IDR', 24000000, 0, '2023-03-30 07:57:04', 'no', 2023),
(268, 192, 132, '000', '00000', 7, 'IT EQUIPMENT & SOFTWARE', '', '', '', '', 'Laptop Manager', 'IDR', 46000000, 0, '2023-03-30 07:57:40', 'no', 2023),
(269, 192, 132, '000', '00000', 7, 'IT EQUIPMENT & SOFTWARE', '', '', '', '', 'Recruitment Assesment Software', 'IDR', 100000000, 0, '2023-03-30 07:58:10', 'no', 2023),
(270, 192, 133, '000', '00000', 13, 'IT EQUIPMENT & SOFTWARE', '', '', '', '', 'PC', 'IDR', 12000000, 0, '2023-03-30 07:58:58', 'no', 2023),
(271, 192, 134, '000', '00000', 4, 'IT EQUIPMENT & SOFTWARE', '', '', '', '', 'Server Replacement for JES', 'IDR', 145000000, 0, '2023-03-30 07:59:29', 'no', 2023),
(272, 192, 135, '000', '00000', 12, 'FURNITURE & FIXTURES', '', '', '', '', 'KURSI KERJA', 'IDR', 4000000, 0, '2023-03-30 08:00:08', 'no', 2023),
(278, 109, 136, '000', '00000', 14, 'Transportation Local', '', '', '', '', 'Transportation Local', 'IDR', 0, 0, '2023-03-31 02:10:23', 'yes', 2023),
(279, 115, 137, '000', '00000', 14, 'Training Domestic (In-House Training)', '', '', '', '', 'Training Domestic (In-House Training)', 'IDR', 0, 0, '2023-03-31 02:13:28', 'yes', 2023),
(280, 139, 138, '000', '00000', 14, 'Represent. and Donation (Fiscal Non-Deductable Exp.)', '', '', '', '', 'Represent. and Donation (Fiscal Non-Deductable Exp.)', 'IDR', 0, 0, '2023-03-31 02:15:46', 'yes', 2023),
(281, 155, 139, '000', '00000', 14, 'Space & Office rental', '', '', '', '', 'Space & Office rental', 'IDR', 0, 0, '2023-03-31 02:19:16', 'yes', 2023),
(282, 195, 140, '000', '00000', 14, 'Uniform', '', '', '', '', 'Uniform', 'IDR', 0, 0, '2023-03-31 02:20:39', 'yes', 2023),
(283, 199, 141, '000', '00000', 14, 'Administration Fee (Sbjct to PPH Art. 23)', '', '', '', '', 'Administration Fee (Sbjct to PPH Art. 23)', 'IDR', 0, 0, '2023-03-31 02:22:19', 'yes', 2023),
(284, 201, 142, '000', '00000', 14, 'General Driver and Office Cleaning Staff - O/S', '', '', '', '', 'General Driver and Office Cleaning Staff - O/S', 'IDR', 0, 0, '2023-03-31 02:22:44', 'yes', 2023),
(285, 204, 143, '000', '00000', 14, 'Other General Expense', '', '', '', '', 'Other General Expense', 'IDR', 0, 0, '2023-03-31 02:23:12', 'yes', 2023),
(286, 159, 144, '000', '00000', 11, 'Photocopy Machine', '', '', '', '', 'Photocopy Machine', 'IDR', 0, 0, '2023-03-31 02:41:38', 'yes', 2023),
(287, 139, 145, '000', '00000', 11, 'Represent. and Donation (Fiscal Non-Deductable Exp.)', '', '', '', '', 'Represent. and Donation (Fiscal Non-Deductable Exp.)', 'IDR', 0, 0, '2023-03-31 02:43:11', 'yes', 2023),
(288, 152, 146, '000', '00000', 11, 'RM - Others', '', '', '', '', 'RM - Others', 'IDR', 0, 0, '2023-03-31 02:45:23', 'no', 2023),
(297, 114, 47, '000', '00000', 10, 'Daily Allowance Training', '', '', '', '', 'Daily Allowance Training', 'IDR', 0, 0, '2023-04-26 04:16:37', 'yes', 2023),
(298, 115, 127, '000', '00000', 9, 'Others Daily Allowance Training', '', '', '', '', 'Others Daily Allowance Training', 'IDR', 0, 0, '2023-04-26 04:29:39', 'yes', 2023),
(299, 115, 123, '000', '00000', 13, 'Others Daily Allowance Training', '', '', '', '', 'Others Daily Allowance Training', 'IDR', 0, 0, '2023-04-26 04:45:05', 'yes', 2023),
(300, 148, 161, '000', '00000', 10, 'RM - IT Equipment, Software', '', '', '', '', 'RM - IT Equipment, Software', 'IDR', 0, 0, '2023-04-26 07:20:50', 'yes', 2023),
(301, 56, 162, '000', '00000', 14, 'Promotion', '', '', '', '', 'Promotion', 'IDR', 0, 0, '2023-04-26 08:49:34', 'yes', 2023),
(302, 115, 48, '000', '00000', 10, 'Training Domestic (In-House Training)', '', '', '', '', 'Training Domestic (In-House Training)', 'IDR', 0, 0, '2023-05-02 04:28:39', 'no', 2023),
(303, 116, 49, '000', '00000', 10, 'Training Abroad', '', '', '', '', 'Training Abroad', 'IDR', 0, 0, '2023-05-02 04:29:06', 'no', 2023),
(304, 117, 50, '000', '00000', 10, 'Training for Company', '', '', '', '', 'Training for Company', 'IDR', 0, 0, '2023-05-02 04:30:30', 'no', 2023),
(305, 197, 81, '000', '00000', 14, 'Safety Uniform', '', '', '', '', 'Safety Uniform', 'IDR', 0, 0, '2023-05-02 07:14:41', 'no', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `tdivision`
--

CREATE TABLE `tdivision` (
  `id_dvn` int(11) NOT NULL,
  `division` varchar(64) NOT NULL,
  `id_dpt` int(11) NOT NULL,
  `id_costcen` int(11) NOT NULL,
  `id_station` int(11) NOT NULL,
  `id_lob` int(11) NOT NULL,
  `company` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tdivision`
--

INSERT INTO `tdivision` (`id_dvn`, `division`, `id_dpt`, `id_costcen`, `id_station`, `id_lob`, `company`) VALUES
(1, 'HCIS', 1, 4, 6, 7, 1),
(2, 'HC Recruitment', 1, 4, 6, 7, 1),
(3, 'HC Payroll and Comben', 1, 4, 6, 7, 1),
(4, 'HCIR', 1, 4, 6, 7, 1),
(5, 'Others HC', 1, 4, 6, 7, 1),
(6, 'GMH', 1, 4, 6, 7, 1),
(7, 'HC Comben', 1, 4, 6, 7, 1),
(8, 'Learning Center', 2, 6, 6, 7, 1),
(9, 'Commercial LC', 3, 7, 1, 7, 1),
(10, 'Commercial LC DPS', 4, 7, 2, 7, 1),
(11, 'Learning Center DPS', 5, 6, 2, 7, 1),
(12, 'Human Capital', 6, 4, 2, 7, 1),
(13, 'Learning Center SUB', 7, 6, 3, 7, 1),
(14, 'Commercial LC SUB', 8, 7, 3, 7, 1),
(15, 'Policy Procedures', 1, 4, 6, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tlob`
--

CREATE TABLE `tlob` (
  `id_lob` int(11) NOT NULL,
  `name_lob` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlob`
--

INSERT INTO `tlob` (`id_lob`, `name_lob`) VALUES
(1, 'Cargo'),
(2, 'Ground'),
(3, 'Insourcing'),
(4, 'Lounge'),
(5, 'Security'),
(6, 'Silver'),
(7, 'Support');

-- --------------------------------------------------------

--
-- Table structure for table `trole_user`
--

CREATE TABLE `trole_user` (
  `id_role` int(11) NOT NULL,
  `roles` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trole_user`
--

INSERT INTO `trole_user` (`id_role`, `roles`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'UserAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `tstation`
--

CREATE TABLE `tstation` (
  `id_station` int(11) NOT NULL,
  `code_station` varchar(64) NOT NULL,
  `name_station` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tstation`
--

INSERT INTO `tstation` (`id_station`, `code_station`, `name_station`) VALUES
(1, 'CGK', 'CENGKARENG'),
(2, 'DPS', 'DENPASAR'),
(3, 'SUB', 'SURABAYA'),
(4, 'MES', 'MEDAN'),
(5, 'HLM', 'HALIM'),
(6, '000', 'HEAD OFFICE'),
(7, 'BPN', 'BALIKPAPAN'),
(8, 'JOG', 'YOGYAKARTA');

-- --------------------------------------------------------

--
-- Table structure for table `tuser`
--

CREATE TABLE `tuser` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(256) NOT NULL,
  `username_user` varchar(256) NOT NULL,
  `password_user` varchar(256) NOT NULL,
  `fotouser` varchar(250) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_dvn` int(11) NOT NULL,
  `access` varchar(64) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tuser`
--

INSERT INTO `tuser` (`id_user`, `name_user`, `username_user`, `password_user`, `fotouser`, `id_role`, `id_dvn`, `access`, `create_date`) VALUES
(2, 'admin', 'admin', '$2y$10$4SFOo/BcnpatzPwAuQQriOh3Z9YYwJNMryFPtA9ag3aX/e4Ppkx4O', '', 1, 1, '', '2023-03-21 01:51:07'),
(4, 'Dadang', 'Dadang', '$2a$04$MYYKS4P6xguzfmFG6KNgWe3jvNrbmIU8NkCWsyNvpHDo8OtL2PjkC', 'IMG-75331.jpg', 3, 1, '', '2023-03-21 01:51:07'),
(7, 'Ajeng', 'Ajeng', '$2a$04$HT39yn.IRDn5xXYb2UQa.u5wwytDJbI96oFdJzSQuC9Vfcz3LJ1oi', 'JAS-Airport-Services-640x2134.png', 3, 2, '', '2023-03-21 01:51:07'),
(9, 'Marlan', 'Marlan', '$2a$04$n1F2FnuPdkHmfw7q9eM5eO4/jk.WBCm7zPCMm/n9UJKMshf0ab4Hy', 'JAS-Airport-Services-640x21311.png', 3, 4, '', '2023-03-21 01:51:07'),
(10, 'Others', 'others', '$2y$10$yS6Wq.FBmLjqkXKCkMX6ueIinoPRdQvIRdoQy1SqkW.26M3LduMPa', 'JAS-Airport-Services-640x213.png', 3, 5, '', '2023-03-21 01:51:07'),
(11, 'Learning Center', 'learning', '$2y$10$xKMAJXdH/lCg0viovRwAw.uACWtbhzxkQ4V9bjMOy.vQ53iq5c/vK', 'JAS-Airport-Services-640x2131.png', 3, 8, '', '2023-03-21 01:51:07'),
(12, 'Jimmy', 'Jimmy', '$2y$10$YKvvhC1qaNIaRLJpeCenPOSKgB/YQdsCt.S1IZ3.wfxtDyyHF2uQ.', 'JAS-Airport-Services-640x2132.png', 3, 6, '', '2023-03-21 01:51:07'),
(13, 'Comben', 'Comben', '$2y$10$uI.dBlmfcAt08zEQUaA5zOmZlw1HS/7s//Hz6TrA3XSug71sBkKEO', 'JAS-Airport-Services-640x2133.png', 3, 7, '', '2023-03-21 01:51:07'),
(14, 'Commercial LC', 'commercialcgk', '$2y$10$Al7BkP2UD3GB1xEvW8xaM.7I8P7V.rvXQjSLIYInKuYb3hKvuilyC', 'JAS-Airport-Services-640x2135.png', 3, 9, '', '2023-03-21 01:51:07'),
(15, 'LC DPS', 'learningdps', '$2y$10$ngYBfr2abBidZGQwyTIdL.YWZvEAbF2Lf8ANtghdWhx74s3TGEydK', 'JAS-Airport-Services-640x2136.png', 3, 11, '', '2023-03-21 01:51:07'),
(16, 'Commercial LC DPS', 'Commercialdps', '$2y$10$E4xxyZ37TNa7wF5CE/N28.S9LsD/Uc89AMGVERQ3sGtbhwtfUxrp.', 'JAS-Airport-Services-640x2137.png', 3, 10, '', '2023-03-21 01:51:07'),
(17, 'Learning Center SUB', 'lcsub', '$2y$10$MC1o0yeF3FUKyGBpyotnNeNN0IPBfO9.qgW.u8zIA8GCwyLaebBCC', 'JAS-Airport-Services-640x2138.png', 3, 13, '', '2023-03-21 01:51:07'),
(18, 'Commercial LC SUB', 'commercialsub', '$2y$10$YoQau4FeERFSxDx2o5XideBqSfEZ9oo3v5450.e1/Po9/ctWnBxSu', 'JAS-Airport-Services-640x2139.png', 3, 14, '', '2023-03-21 01:51:07'),
(19, 'Lisa', 'Lisa', '$2y$10$YaiyHr3eLHCEIHRNqnw7q.nvScduFu4BKaH/lDmmI9lWobuGoSjua', 'JAS-Airport-Services-640x21310.png', 3, 15, '', '2023-03-30 04:42:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group_data`
--
ALTER TABLE `group_data`
  ADD PRIMARY KEY (`id_group`);

--
-- Indexes for table `taccess`
--
ALTER TABLE `taccess`
  ADD PRIMARY KEY (`id_access`);

--
-- Indexes for table `taccount`
--
ALTER TABLE `taccount`
  ADD PRIMARY KEY (`id_account`);

--
-- Indexes for table `tactual`
--
ALTER TABLE `tactual`
  ADD PRIMARY KEY (`id_actual`),
  ADD KEY `budget_fk_actual` (`id_budget`);

--
-- Indexes for table `tbudget`
--
ALTER TABLE `tbudget`
  ADD PRIMARY KEY (`id_bdgt`),
  ADD KEY `user_fk_budget` (`id_user`);

--
-- Indexes for table `tcostcen`
--
ALTER TABLE `tcostcen`
  ADD PRIMARY KEY (`id_costcen`);

--
-- Indexes for table `tdepartement`
--
ALTER TABLE `tdepartement`
  ADD PRIMARY KEY (`id_dpt`);

--
-- Indexes for table `tdetail_budget`
--
ALTER TABLE `tdetail_budget`
  ADD PRIMARY KEY (`id_budget`),
  ADD KEY `user_fk_budget` (`id_user`),
  ADD KEY `account_fk_budget` (`id_account`),
  ADD KEY `header_fk_detailbudget` (`id_bdgt`);

--
-- Indexes for table `tdivision`
--
ALTER TABLE `tdivision`
  ADD PRIMARY KEY (`id_dvn`),
  ADD KEY `dpt_fk_dvn` (`id_dpt`),
  ADD KEY `costcen_fk_dvn` (`id_costcen`),
  ADD KEY `station_fk_dvn` (`id_station`),
  ADD KEY `lob_fk_dvn` (`id_lob`);

--
-- Indexes for table `tlob`
--
ALTER TABLE `tlob`
  ADD PRIMARY KEY (`id_lob`);

--
-- Indexes for table `trole_user`
--
ALTER TABLE `trole_user`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `tstation`
--
ALTER TABLE `tstation`
  ADD PRIMARY KEY (`id_station`);

--
-- Indexes for table `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `dvn_fk_user` (`id_dvn`),
  ADD KEY `role_fk_user` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group_data`
--
ALTER TABLE `group_data`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taccess`
--
ALTER TABLE `taccess`
  MODIFY `id_access` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taccount`
--
ALTER TABLE `taccount`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `tactual`
--
ALTER TABLE `tactual`
  MODIFY `id_actual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- AUTO_INCREMENT for table `tbudget`
--
ALTER TABLE `tbudget`
  MODIFY `id_bdgt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tcostcen`
--
ALTER TABLE `tcostcen`
  MODIFY `id_costcen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tdepartement`
--
ALTER TABLE `tdepartement`
  MODIFY `id_dpt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tdetail_budget`
--
ALTER TABLE `tdetail_budget`
  MODIFY `id_budget` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `tdivision`
--
ALTER TABLE `tdivision`
  MODIFY `id_dvn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tlob`
--
ALTER TABLE `tlob`
  MODIFY `id_lob` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trole_user`
--
ALTER TABLE `trole_user`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tstation`
--
ALTER TABLE `tstation`
  MODIFY `id_station` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tuser`
--
ALTER TABLE `tuser`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbudget`
--
ALTER TABLE `tbudget`
  ADD CONSTRAINT `user_fk_budget` FOREIGN KEY (`id_user`) REFERENCES `tuser` (`id_user`);

--
-- Constraints for table `tdetail_budget`
--
ALTER TABLE `tdetail_budget`
  ADD CONSTRAINT `account_fk_budget` FOREIGN KEY (`id_account`) REFERENCES `taccount` (`id_account`),
  ADD CONSTRAINT `header_fk_detailbudget` FOREIGN KEY (`id_bdgt`) REFERENCES `tbudget` (`id_bdgt`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tdivision`
--
ALTER TABLE `tdivision`
  ADD CONSTRAINT `costcen_fk_dvn` FOREIGN KEY (`id_costcen`) REFERENCES `tcostcen` (`id_costcen`),
  ADD CONSTRAINT `dpt_fk_dvn` FOREIGN KEY (`id_dpt`) REFERENCES `tdepartement` (`id_dpt`),
  ADD CONSTRAINT `lob_fk_dvn` FOREIGN KEY (`id_lob`) REFERENCES `tlob` (`id_lob`),
  ADD CONSTRAINT `station_fk_dvn` FOREIGN KEY (`id_station`) REFERENCES `tstation` (`id_station`);

--
-- Constraints for table `tuser`
--
ALTER TABLE `tuser`
  ADD CONSTRAINT `dvn_fk_user` FOREIGN KEY (`id_dvn`) REFERENCES `tdivision` (`id_dvn`),
  ADD CONSTRAINT `role_fk_user` FOREIGN KEY (`id_role`) REFERENCES `trole_user` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
