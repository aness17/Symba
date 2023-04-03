-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 07:33 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `tbudget`
--

CREATE TABLE `tbudget` (
  `id_budget` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
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
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbudget`
--

INSERT INTO `tbudget` (`id_budget`, `id_account`, `subacc`, `product`, `id_user`, `description`, `source`, `category`, `doc_ref`, `doc_number`, `desc_source`, `currency`, `amount_debit`, `amount_credit`, `create_date`, `status`) VALUES
(1, 119, '000', '00000', 7, 'New Employee and Replacement', '', '', '', '', 'Medical Checkup', 'IDR', 178920000, 0, '2023-01-01 17:00:00', 'used'),
(2, 118, '000', '00000', 7, ' Psikotes, alat tes, medical in station ', '', '', '', '', 'Recruitment process in other Station ', 'IDR', 473000000, 0, '2023-02-02 17:00:00', 'used'),
(3, 204, '000', '00000', 7, '', '', '', '', '', 'JOBFAIR (vendor)', 'IDR', 30000000, 0, '2023-03-31 17:00:00', 'unused'),
(4, 134, '000', '00000', 7, ' Non Proxi  and Proximitty', '', '', '', '', 'ID Card', 'IDR', 18750000, 0, '2022-12-31 17:00:00', 'unused'),
(5, 161, '000', '00000', 4, 'Rental Mesin Absensi Face 34 unit, 3 year', '', '', '', '', 'CGK Gound,CGK Cargo, Soewarna,Rawabokor, Surabaya, Denpasar', 'IDR', 897600000, 0, '2022-12-31 17:00:00', 'used'),
(6, 179, '000', '00000', 4, 'Contract Sunfish Yearly', '', '', '', '', '', 'IDR', 203546700, 0, '2023-01-01 17:00:00', 'used'),
(7, 194, '000', '00000', 9, 'HR Socialization', '', '', '', '', 'P2K3', 'IDR', 15000000, 0, '2022-12-31 17:00:00', 'unused'),
(8, 194, '000', '00000', 9, 'IR Events', '', '', '', '', 'Town Hall Meeting, PKB Events,Health Talk,Ceremony, HR Visit, Buka Puasa, Pengajian Bulanan, Kebaktian, Meal Box New Year,Gathering', 'IDR', 602450000, 0, '2023-01-01 17:00:00', 'used'),
(9, 119, '000', '00000', 9, 'Employee Health Programme : ', '', '', '', '', 'Employee Medical Check-Up 40yrs above ', 'IDR', 1068120000, 0, '2022-12-31 17:00:00', 'unused'),
(10, 177, '000', '00000', 9, 'Pension', '', '', '', '', 'MPP  2023 for  pention 2024 by Vendor, Bi/Triparty, lawyer, attorney', 'IDR', 375000000, 0, '2022-12-31 17:00:00', 'unused'),
(11, 57, '000', '00000', 9, 'Pension', '', '', '', '', 'Plakat  untuk  Pensiun tahun  2023', 'IDR', 24050000, 0, '2022-12-31 17:00:00', 'unused'),
(12, 134, '000', '00000', 9, 'Pension', '', '', '', '', 'Sertifikat  untuk tahun  2023', 'IDR', 2275000, 0, '2022-12-31 17:00:00', 'used'),
(13, 57, '000', '00000', 9, 'Pension', '', '', '', '', 'Jam tangan, cincin mas (5 gr) atau sejenisnya ', 'IDR', 162500000, 0, '2022-12-31 17:00:00', 'unused'),
(14, 204, '000', '00000', 9, 'IR General Expense', '', '', '', '', 'IR Events', 'IDR', 554187500, 0, '2022-12-31 17:00:00', 'used'),
(15, 139, '000', '00000', 9, 'External Relations', '', '', '', '', 'Clearence Case with Kemenakertrans RI at all regional.', 'IDR', 10000000, 0, '2022-12-31 17:00:00', 'used'),
(16, 140, '000', '00000', 9, 'External Relations', '', '', '', '', 'Coordination with Disnakertrans ', 'IDR', 10000000, 0, '2022-12-31 17:00:00', 'used'),
(17, 185, '000', '00000', 9, 'Membership for sport', '', '', '', '', 'Cardig Club (Rp.5.000.000/month)', 'IDR', 60000000, 0, '2022-12-31 17:00:00', 'unused'),
(18, 175, '000', '00000', 9, 'Management Fee', '', '', '', '', 'K3 fee (Doctor monthly fee) ', 'IDR', 330000000, 0, '2022-12-31 17:00:00', 'used'),
(19, 106, '000', '00000', 12, 'Ticket Travel and DA', '', '', '', '', 'Ticket Travel and DA', 'IDR', 144400000, 0, '2023-03-16 02:14:04', 'used'),
(20, 107, '000', '00000', 12, 'Akomodasi TravelDA', '', '', '', '', 'Akomodasi TravelDA', 'IDR', 153400000, 0, '2023-03-16 02:15:13', 'unused'),
(21, 104, '000', '00000', 12, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 8640000, 0, '2023-03-16 02:19:22', 'used'),
(22, 104, '000', '00000', 13, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 4940000, 0, '2023-03-16 02:19:58', 'used'),
(23, 104, '000', '00000', 4, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 7040000, 0, '2023-03-16 02:21:09', 'used'),
(24, 104, '000', '00000', 7, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 8280000, 0, '2023-03-16 02:21:31', 'used'),
(25, 104, '000', '00000', 9, 'Daily Allowance', '', '', '', '', 'Daily Allowance', 'IDR', 8640000, 0, '2023-03-16 02:21:50', 'used'),
(26, 107, '000', '00000', 9, 'Akomodasi TravelDA', '', '', '', '', 'Akomodasi TravelDA', 'IDR', 28800000, 0, '2023-03-16 02:22:54', 'unused'),
(27, 107, '000', '00000', 7, 'Akomodasi TravelDA', '', '', '', '', 'Akomodasi TravelDA', 'IDR', 29100000, 0, '2023-03-16 02:24:18', 'unused'),
(28, 107, '000', '00000', 4, 'Akomodasi TravelDA', '', '', '', '', 'Akomodasi TravelDA', 'IDR', 15200000, 0, '2023-03-16 02:24:36', 'used'),
(29, 107, '000', '00000', 13, 'Akomodasi TravelDA', '', '', '', '', 'Akomodasi TravelDA', 'IDR', 0, 0, '2023-03-16 02:24:55', 'unused'),
(30, 106, '000', '00000', 9, 'Ticket Travel and DA', '', '', '', '', 'Ticket Travel and DA', 'IDR', 0, 0, '2023-03-16 02:25:40', 'unused'),
(31, 106, '000', '00000', 7, 'Ticket Travel and DA', '', '', '', '', 'Ticket Travel and DA', 'IDR', 0, 0, '2023-03-16 02:27:25', 'used'),
(32, 106, '000', '00000', 4, 'Ticket Travel and DA', '', '', '', '', 'Ticket Travel and DA', 'IDR', 0, 0, '2023-03-16 02:27:46', 'unused'),
(33, 106, '000', '00000', 13, 'Ticket Travel and DA', '', '', '', '', 'Ticket Travel and DA', 'IDR', 0, 0, '2023-03-16 02:27:59', 'unused'),
(35, 106, '000', '00000', 10, 'Ticket Travel and DA', '', '', '', '', 'Ticket Travel and DA', 'IDR', 0, 0, '2023-03-16 04:35:45', 'used'),
(36, 109, '000', '00000', 10, 'Akomodasi Lokal', '', '', '', '', 'Akomodasi Lokal', 'IDR', 0, 0, '2023-03-16 04:36:17', 'used'),
(37, 110, '000', '00000', 10, 'Bensin', '', '', '', '', 'Bensin', 'IDR', 0, 0, '2023-03-16 04:36:52', 'used'),
(38, 126, '000', '00000', 10, 'Lainnya', '', '', '', '', 'Lainnya', 'IDR', 0, 0, '2023-03-16 04:37:28', 'used'),
(39, 157, '000', '00000', 10, 'Sewa Kendaraan', '', '', '', '', 'Sewa Kendaraan', 'IDR', 0, 0, '2023-03-16 04:38:05', 'used'),
(40, 192, '000', '00000', 10, 'BusinessTools', '', '', '', '', 'BusinessTools', 'IDR', 0, 0, '2023-03-16 04:38:49', 'used'),
(41, 194, '000', '00000', 10, 'Komsumsi', '', '', '', '', 'Komsumsi', 'IDR', 0, 0, '2023-03-16 04:39:12', 'used'),
(42, 195, '000', '00000', 10, 'Baju Seragam Karyawan', '', '', '', '', 'Baju Seragam Karyawan', 'IDR', 0, 0, '2023-03-16 04:39:37', 'used'),
(43, 197, '000', '00000', 10, 'Safety Uniform', '', '', '', '', 'Safety Uniform', 'IDR', 0, 0, '2023-03-16 04:40:58', 'used'),
(44, 134, '000', '00000', 10, 'Stationery', '', '', '', '', 'Stationery', 'IDR', 0, 0, '2023-03-16 08:51:18', 'used'),
(45, 130, '000', '00000', 10, 'Other Communication', '', '', '', '', 'Other Communication', 'IDR', 0, 0, '2023-03-16 08:51:46', 'used'),
(46, 183, '000', '00000', 10, 'Non-GSE Parking Permits', '', '', '', '', 'Non-GSE Parking Permits', 'IDR', 0, 0, '2023-03-16 08:55:34', 'used'),
(47, 108, '000', '00000', 10, 'Airport Pass and ID Card', '', '', '', '', 'Airport Pass and ID Card', 'IDR', 0, 0, '2023-03-16 09:09:39', 'used'),
(48, 115, '000', '00000', 10, 'Training Domestic (In-House Training)', '', '', '', '', 'Training Domestic (In-House Training)', 'IDR', 0, 0, '2023-03-16 09:10:20', 'used'),
(49, 114, '000', '00000', 11, 'Internal Training', '', '', '', '', 'Internal Training', 'IDR', 7104000, 0, '2023-03-20 00:58:32', 'unused'),
(50, 115, '000', '00000', 11, 'Internal Training', '', '', '', '', 'Internal Training', 'IDR', 14505000, 0, '2023-03-20 00:59:37', 'unused'),
(51, 116, '000', '00000', 11, 'Internal Training', '', '', '', '', 'Internal Training', 'IDR', 59200000, 0, '2023-03-20 01:00:13', 'unused'),
(52, 117, '000', '00000', 11, 'Internal Training', '', '', '', '', 'Internal Training', 'IDR', 209499983, 0, '2023-03-20 01:00:46', 'unused'),
(53, 156, '000', '00000', 11, 'CCTV & Camera', '', '', '', '', 'Wide Angle Lens', 'IDR', 8000000, 0, '2023-01-01 17:00:00', 'unused'),
(54, 156, '000', '00000', 11, 'Upgrade Software & App', '', '', '', '', 'Computer Assisted Software', 'IDR', 100000000, 0, '2023-01-02 17:00:00', 'unused'),
(55, 156, '000', '00000', 11, 'TV & Projector', '', '', '', '', 'LCD Projector', 'IDR', 32000000, 0, '2022-12-31 17:00:00', 'unused'),
(56, 156, '000', '00000', 11, 'PC, Laptop, & LCD', '', '', '', '', 'PC', 'IDR', 48000000, 0, '2022-12-31 17:00:00', 'unused'),
(57, 156, '000', '00000', 11, 'PC, Laptop, & LCD', '', '', '', '', 'Laptop Staff', 'IDR', 23000000, 0, '2022-12-31 17:00:00', 'unused'),
(58, 156, '000', '00000', 11, 'Upgrade Software & App', '', '', '', '', 'JAS Academy App v2', 'IDR', 500000000, 0, '2023-01-01 17:00:00', 'unused'),
(59, 156, '000', '00000', 14, 'CCTV & Camera', '', '', '', '', 'Camera SLR', 'IDR', 15000000, 0, '2022-12-31 17:00:00', 'unused'),
(60, 192, '000', '00000', 14, 'Other FFE', '', '', '', '', 'BILLBOARD JAS ACADEMY', 'IDR', 20000000, 0, '2023-01-01 17:00:00', 'unused'),
(62, 192, '000', '00000', 14, 'Other Fee', '', '', '', '', 'KOMPOR LISTRIK 2 JAR', 'IDR', 9000000, 0, '2023-03-20 01:17:04', 'unused'),
(63, 192, '000', '00000', 14, 'Air Conditioner (AC) & Fan', '', '', '', '', 'AC 1 PK PANASONIC BASIC TYPE', 'IDR', 21000000, 0, '2023-03-20 01:17:48', 'unused'),
(64, 156, '0', '0', 18, 'PC, Laptop, & LCD', '', '', '', '', 'PC for CBT', 'IDR', 120000000, 0, '2023-01-01 17:00:00', 'unused'),
(65, 156, '0', '0', 18, 'Other ITE', '', '', '', '', 'UPS for CBT', 'IDR', 6000000, 0, '2023-01-02 17:00:00', 'unused'),
(66, 156, '0', '0', 18, 'Other ITE', '', '', '', '', 'Access Point Ubiquiti U6-LR', 'IDR', 6000000, 0, '2022-12-31 17:00:00', 'unused'),
(67, 192, '0', '0', 16, 'Furniture', '', '', '', '', 'STEEL FILE CABINET 4 SHELF GLASS SLIDING KRISBOW  90x39x180.', 'IDR', 4100000, 0, '2022-12-31 17:00:00', 'unused'),
(68, 192, '0', '0', 16, 'Furniture', '', '', '', '', 'KURSI RUANG TUNGGU 4 SEATER INDACHI', 'IDR', 4300000, 0, '2022-12-31 17:00:00', 'unused'),
(69, 192, '0', '0', 16, 'Other FFE', '', '', '', '', 'SAMSUNG LED 32 INCH HD SMART TV', 'IDR', 4150000, 0, '2023-01-01 17:00:00', 'unused'),
(70, 192, '0', '0', 16, 'Other FFE', '', '', '', '', 'GENSET', 'IDR', 54000000, 0, '2022-12-31 17:00:00', 'unused'),
(71, 156, '', '', 16, 'PC, Laptop, & LCD', '', '', '', '', 'Laptop', 'IDR', 34500000, 0, '2023-01-02 17:00:00', 'unused');

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
(14, 'Commercial LC SUB', 8, 7, 3, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `titems`
--

CREATE TABLE `titems` (
  `id_item` int(11) NOT NULL,
  `name_items` varchar(256) NOT NULL,
  `information_items` varchar(256) NOT NULL,
  `item_price` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titems`
--

INSERT INTO `titems` (`id_item`, `name_items`, `information_items`, `item_price`) VALUES
(2, 'LAPTOP LENOVO SLIM 3 N5030 8GB 512GB SSD UMA W10+OHS FHD', 'Processor Onboard : INTEL N5030\r\n- Display : 14\" FHD (1920 x 1080) Anti-Glare 250Nits\r\n- Memori Standar : 8 GB DDR4 (4+4)\r\n- Hard Disk : SSD 512GB PCIe® NVMe™ M.2 SSD\r\n- Tipe Grafis : UHD INTEL GRAPHIC\r\n- Audio : 2 x 2W stereo speakers with Dolby Audio™\r\n-', 5499000);

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
  `access` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tuser`
--

INSERT INTO `tuser` (`id_user`, `name_user`, `username_user`, `password_user`, `fotouser`, `id_role`, `id_dvn`, `access`) VALUES
(2, 'admin', 'admin', '$2y$10$4SFOo/BcnpatzPwAuQQriOh3Z9YYwJNMryFPtA9ag3aX/e4Ppkx4O', '', 1, 1, ''),
(4, 'Dadang', 'Dadang', '$2y$10$0oCrP8ZA28GfaNMFjpqilOxF.mzSQwzo4zUKSXeZ7KoAkzYhpytKy', 'IMG-75331.jpg', 2, 1, ''),
(7, 'Ajeng', 'Ajeng', '$2y$10$LdVQqqFZaksaDnrQqpGFTuHoyy3ozJhBziF2Phqsq5frAI6.kYLAi', 'JAS-Airport-Services-640x2134.png', 2, 2, ''),
(9, 'Marlan', 'Marlan', '$2y$10$iRL0zj0ygi62Ua.6DMVMtu1jb183mVcACxrnjeOO3OAsD.WwXldm6', 'profil.jpg', 2, 4, ''),
(10, 'Others', 'others', '$2y$10$yS6Wq.FBmLjqkXKCkMX6ueIinoPRdQvIRdoQy1SqkW.26M3LduMPa', 'JAS-Airport-Services-640x213.png', 2, 5, ''),
(11, 'Learning Center', 'learning', '$2y$10$xKMAJXdH/lCg0viovRwAw.uACWtbhzxkQ4V9bjMOy.vQ53iq5c/vK', 'JAS-Airport-Services-640x2131.png', 2, 8, ''),
(12, 'Jimmy', 'Jimmy', '$2y$10$YKvvhC1qaNIaRLJpeCenPOSKgB/YQdsCt.S1IZ3.wfxtDyyHF2uQ.', 'JAS-Airport-Services-640x2132.png', 2, 6, ''),
(13, 'Comben', 'Comben', '$2y$10$uI.dBlmfcAt08zEQUaA5zOmZlw1HS/7s//Hz6TrA3XSug71sBkKEO', 'JAS-Airport-Services-640x2133.png', 2, 7, ''),
(14, 'Commercial LC', 'commercialcgk', '$2y$10$Al7BkP2UD3GB1xEvW8xaM.7I8P7V.rvXQjSLIYInKuYb3hKvuilyC', 'JAS-Airport-Services-640x2135.png', 2, 9, ''),
(15, 'LC DPS', 'LC DPS', '$2y$10$ngYBfr2abBidZGQwyTIdL.YWZvEAbF2Lf8ANtghdWhx74s3TGEydK', 'JAS-Airport-Services-640x2136.png', 2, 11, ''),
(16, 'Commercial LC DPS', 'Commersialdps', '$2y$10$E4xxyZ37TNa7wF5CE/N28.S9LsD/Uc89AMGVERQ3sGtbhwtfUxrp.', 'JAS-Airport-Services-640x2137.png', 2, 10, ''),
(17, 'Learning Center SUB', 'lcsub', '$2y$10$MC1o0yeF3FUKyGBpyotnNeNN0IPBfO9.qgW.u8zIA8GCwyLaebBCC', 'JAS-Airport-Services-640x2138.png', 2, 13, ''),
(18, 'Commercial LC SUB', 'commercialsub', '$2y$10$YoQau4FeERFSxDx2o5XideBqSfEZ9oo3v5450.e1/Po9/ctWnBxSu', 'JAS-Airport-Services-640x2139.png', 2, 14, '');

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
  ADD PRIMARY KEY (`id_budget`),
  ADD KEY `user_fk_budget` (`id_user`),
  ADD KEY `account_fk_budget` (`id_account`);

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
-- Indexes for table `tdivision`
--
ALTER TABLE `tdivision`
  ADD PRIMARY KEY (`id_dvn`),
  ADD KEY `dpt_fk_dvn` (`id_dpt`),
  ADD KEY `costcen_fk_dvn` (`id_costcen`),
  ADD KEY `station_fk_dvn` (`id_station`),
  ADD KEY `lob_fk_dvn` (`id_lob`);

--
-- Indexes for table `titems`
--
ALTER TABLE `titems`
  ADD PRIMARY KEY (`id_item`);

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
  MODIFY `id_actual` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `tbudget`
--
ALTER TABLE `tbudget`
  MODIFY `id_budget` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
-- AUTO_INCREMENT for table `tdivision`
--
ALTER TABLE `tdivision`
  MODIFY `id_dvn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `titems`
--
ALTER TABLE `titems`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tactual`
--
ALTER TABLE `tactual`
  ADD CONSTRAINT `budget_fk_actual` FOREIGN KEY (`id_budget`) REFERENCES `tbudget` (`id_budget`);

--
-- Constraints for table `tbudget`
--
ALTER TABLE `tbudget`
  ADD CONSTRAINT `account_fk_budget` FOREIGN KEY (`id_account`) REFERENCES `taccount` (`id_account`),
  ADD CONSTRAINT `user_fk_budget` FOREIGN KEY (`id_user`) REFERENCES `tuser` (`id_user`);

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
