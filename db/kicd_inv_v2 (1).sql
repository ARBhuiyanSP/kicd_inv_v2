-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 01:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kicd_inv_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `building_type` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chart_data_column`
--

CREATE TABLE `chart_data_column` (
  `month` varchar(10) NOT NULL,
  `sale` int(3) NOT NULL,
  `profit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complain_type`
--

CREATE TABLE `complain_type` (
  `id` int(11) NOT NULL,
  `complain_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `id` int(11) NOT NULL,
  `equipment_id` varchar(10) NOT NULL,
  `equipment_no` varchar(25) NOT NULL,
  `type_id` varchar(15) NOT NULL,
  `project_id` varchar(15) NOT NULL,
  `created_at` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `text` varchar(191) NOT NULL,
  `assets` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_types`
--

CREATE TABLE `history_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_challan`
--

CREATE TABLE `inv_challan` (
  `id` int(11) NOT NULL,
  `challan_no` varchar(100) NOT NULL,
  `challan_date` varchar(100) NOT NULL,
  `csn` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complain`
--

CREATE TABLE `inv_complain` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `vehicle_reg_no` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `chasis_no` varchar(100) NOT NULL,
  `brand_model` varchar(100) NOT NULL,
  `engine_no` varchar(100) NOT NULL,
  `owner_phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `driver_phone` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complaindetails`
--

CREATE TABLE `inv_complaindetails` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `complain_details` varchar(5000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_designation`
--

CREATE TABLE `inv_designation` (
  `id` int(11) NOT NULL,
  `des_id` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_employee`
--

CREATE TABLE `inv_employee` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `join_date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_ga_listunit`
--

CREATE TABLE `inv_ga_listunit` (
  `id` int(11) NOT NULL,
  `lunit_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lunit_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice`
--

CREATE TABLE `inv_invoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `invoice_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `total_qty` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `total_service` varchar(100) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice_details`
--

CREATE TABLE `inv_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `unit_price` varchar(100) NOT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issue`
--

CREATE TABLE `inv_issue` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `use_in` varchar(30) NOT NULL,
  `no_of_material` int(11) NOT NULL,
  `total_amount` float NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issuedetail`
--

CREATE TABLE `inv_issuedetail` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `issue_date` date NOT NULL,
  `material_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `use_in` varchar(50) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `is_manual_code_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for checking manual code update'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_item_unit`
--

CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_item_unit`
--

INSERT INTO `inv_item_unit` (`id`, `unit_name`) VALUES
(20, 'Pcs'),
(21, 'Ltr'),
(22, 'Kg'),
(23, 'Sets'),
(27, 'Set'),
(28, 'Coil'),
(29, 'Meters'),
(30, 'Feet');

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card`
--

CREATE TABLE `inv_job_card` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `inv_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card_details`
--

CREATE TABLE `inv_job_card_details` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `task_details` varchar(100) NOT NULL,
  `assign_to` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_material`
--

CREATE TABLE `inv_material` (
  `id` int(11) NOT NULL,
  `material_id_code` varchar(100) DEFAULT NULL,
  `material_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material_sub_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `material_level3_id` int(11) DEFAULT NULL,
  `material_level4_id` int(11) DEFAULT NULL,
  `material_description` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spec` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `material_min_stock` int(11) DEFAULT NULL,
  `avg_con_sump` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `re_order_level` int(11) NOT NULL,
  `qty_unit` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `op_balance_qty` int(11) NOT NULL,
  `op_balance_val` int(11) NOT NULL,
  `chk_print` int(11) DEFAULT NULL,
  `cur_qty` int(11) DEFAULT NULL,
  `cur_price` int(11) DEFAULT NULL,
  `cur_value` int(11) DEFAULT NULL,
  `last_issue` date DEFAULT NULL,
  `last_receive` date DEFAULT NULL,
  `part_no` varchar(100) NOT NULL,
  `current_balance` float NOT NULL,
  `is_manual_code_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for checking manual code update '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_material`
--

INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_level3_id`, `material_level4_id`, `material_description`, `spec`, `location`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`, `current_balance`, `is_manual_code_edit`) VALUES
(1, '01-01-01-01-001', '62', '2', 2, 2, 'ENGINE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920871.0163', 0, 0),
(2, '01-01-01-01-002', '62', '2', 2, 2, 'FILTER HOUSING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1401', 0, 0),
(3, '01-01-01-01-003', '62', '2', 2, 2, 'FUEL FILTER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0537', 0, 0),
(4, '01-01-01-01-004', '62', '2', 2, 2, 'WATER SEPARATOR', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0538', 0, 0),
(5, '01-01-01-01-005', '62', '2', 2, 2, 'FUEL PUMP', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2250', 0, 0),
(6, '01-01-01-01-006', '62', '2', 2, 2, 'INJECTOR', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.U092', 0, 0),
(7, '04-01-01-01-001', '65', '1', 1, 1, 'DIESEL', '', '', '', 0, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(8, '04-01-01-01-002', '65', '1', 1, 1, 'ENGINE OIL', '15W40', '', '', 0, NULL, NULL, 0, '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0),
(9, '01-01-01-01-007', '62', '2', 2, 2, 'SENSOR', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1349', 0, 0),
(10, '01-01-01-01-008', '62', '2', 2, 2, 'SENSOR, PRESSURE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3135', 0, 0),
(11, '01-01-01-01-009', '62', '2', 2, 2, 'CYLINDER BLOCK', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0525', 0, 0),
(12, '01-01-01-01-010', '62', '2', 2, 2, 'GASKET', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0527', 0, 0),
(13, '01-01-01-01-011', '62', '2', 2, 2, 'CRANKSHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1217', 0, 0),
(14, '01-01-01-01-012', '62', '2', 2, 2, 'THRUST WASHER KIT', 'STD', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0035', 0, 0),
(15, '01-01-01-01-013', '62', '2', 2, 2, 'BASE BEARING KIT ', 'STD', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.4323', 0, 0),
(16, '01-01-01-01-014', '62', '2', 2, 2, 'CYLINDER LINER KIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0575', 0, 0),
(17, '01-01-01-01-015', '62', '2', 2, 2, 'PISTON RING KIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1219', 0, 0),
(18, '01-01-01-01-016', '62', '2', 2, 2, 'PIN', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1220', 0, 0),
(19, '01-01-01-01-017', '62', '2', 2, 2, 'SEALING RING KIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923705.0173', 0, 0),
(20, '01-01-01-01-018', '62', '2', 2, 2, 'LOCK RING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1221', 0, 0),
(21, '01-01-01-01-019', '62', '2', 2, 2, 'CONNECTING ROD', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1222', 0, 0),
(22, '01-01-01-01-020', '62', '2', 2, 2, 'BUSHING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1223', 0, 0),
(23, '01-01-01-01-021', '62', '2', 2, 2, 'BASE BEARING KIT ', 'STD', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1225', 0, 0),
(24, '01-01-01-01-022', '62', '2', 2, 2, 'BASE BEARING KIT ', 'OD=0.25MM', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1226', 0, 0),
(25, '01-01-01-01-023', '62', '2', 2, 2, 'BASE BEARING KIT ', 'OD=0.50MM', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1227', 0, 0),
(26, '01-01-01-01-024', '62', '2', 2, 2, 'BASE BEARING KIT ', 'OD=1.00MM', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1228', 0, 0),
(27, '01-01-01-01-025', '62', '2', 2, 2, 'FLYWHEEL', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1200', 0, 0),
(28, '01-01-01-01-026', '62', '2', 2, 2, 'GEAR RIM', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3349', 0, 0),
(29, '01-01-01-01-027', '62', '2', 2, 2, 'OIL COOLER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08555.0100', 0, 0),
(30, '01-01-01-01-028', '62', '2', 2, 2, 'COVER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3410', 0, 0),
(31, '01-01-01-01-029', '62', '2', 2, 2, 'SEAL RING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.6013', 0, 0),
(32, '01-01-01-01-030', '62', '2', 2, 2, 'BEARING HOUSING', 'FRONT', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0522', 0, 0),
(33, '01-01-01-01-031', '62', '2', 2, 2, 'BEARING HOUSING', 'REAR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0523', 0, 0),
(34, '01-01-01-01-032', '62', '2', 2, 2, 'CYLINDER HEAD', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.U036', 0, 0),
(35, '01-01-01-01-033', '62', '2', 2, 2, 'VALVE SEAT', 'EXHAUST', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1175', 0, 0),
(36, '01-01-01-01-034', '62', '2', 2, 2, 'EXHAUST VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1176', 0, 0),
(37, '01-01-01-01-035', '62', '2', 2, 2, 'VALVE SEAT', 'INTAKE', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1178', 0, 0),
(38, '01-01-01-01-036', '62', '2', 2, 2, 'INDUCTION VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1178', 0, 0),
(39, '01-01-01-01-037', '62', '2', 2, 2, 'VALVE LOCK', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3324', 0, 0),
(40, '01-01-01-01-038', '62', '2', 2, 2, 'VALVE GUIDE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1180', 0, 0),
(41, '01-01-01-01-039', '62', '2', 2, 2, 'VALVE SLEEVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1181', 0, 0),
(42, '01-01-01-01-040', '62', '2', 2, 2, 'BEARING', 'KPL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '9234829.1183', 0, 0),
(43, '01-01-01-01-041', '62', '2', 2, 2, 'BEARING', 'KPL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1211', 0, 0),
(44, '01-01-01-01-042', '62', '2', 2, 2, 'SHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1185', 0, 0),
(45, '01-01-01-01-043', '62', '2', 2, 2, 'GASKET', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0520', 0, 0),
(46, '01-01-01-01-044', '62', '2', 2, 2, 'SEAL', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0501', 0, 0),
(47, '01-01-01-01-045', '62', '2', 2, 2, 'ROCKER ARM', 'INTAKE', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1201', 0, 0),
(48, '01-01-01-01-046', '62', '2', 2, 2, 'ROCKER ARM', 'INJECTOR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1202', 0, 0),
(49, '01-01-01-01-047', '62', '2', 2, 2, 'ROCKER ARM', 'EXHAUST', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923736.0941', 0, 0),
(50, '01-01-01-01-048', '62', '2', 2, 2, 'YOKE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0130', 0, 0),
(51, '01-01-01-01-049', '62', '2', 2, 2, 'YOKE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923736.0932', 0, 0),
(52, '01-01-01-01-050', '62', '2', 2, 2, 'FLYWHEEL HOUSING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0594', 0, 0),
(53, '01-01-01-01-051', '62', '2', 2, 2, 'O-RING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0530', 0, 0),
(54, '01-01-01-01-052', '62', '2', 2, 2, 'TRANSMISSION CASE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1198', 0, 0),
(55, '01-01-01-01-053', '62', '2', 2, 2, 'SEAL RING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0176', 0, 0),
(56, '01-01-01-01-054', '62', '2', 2, 2, 'CAM SHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0533', 0, 0),
(57, '01-01-01-01-055', '62', '2', 2, 2, 'BEARING CUP', 'KIT STD CYL.1-6', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1211', 0, 0),
(58, '01-01-01-01-056', '62', '2', 2, 2, 'BEARING CUP', 'KIT REAR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1212', 0, 0),
(59, '01-01-01-01-057', '62', '2', 2, 2, 'BEARING HOUSING', 'FRONT', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0522', 0, 0),
(60, '01-01-01-01-058', '62', '2', 2, 2, 'BEARING HOUSING', 'REAR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0523', 0, 0),
(61, '01-01-01-01-059', '62', '2', 2, 2, 'V-BELT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1409', 0, 0),
(62, '01-01-01-01-060', '62', '2', 2, 2, 'PULLEY', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1410', 0, 0),
(63, '01-01-01-01-061', '62', '2', 2, 2, 'PULLEY', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0580', 0, 0),
(64, '01-01-01-01-062', '62', '2', 2, 2, 'BELT ADJUSTER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0581', 0, 0),
(65, '01-01-01-01-063', '62', '2', 2, 2, 'BELT ADJUSTER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0581', 0, 0),
(66, '01-01-01-01-064', '62', '2', 2, 2, 'V-BELT', 'WITH AC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923692.0022', 0, 0),
(67, '01-01-01-01-065', '62', '2', 2, 2, 'V-BELT', 'WITHOUT AC', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1395', 0, 0),
(68, '01-01-01-01-066', '62', '2', 2, 2, 'BREATHER PIPE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0576', 0, 0),
(69, '01-01-01-01-067', '62', '2', 2, 2, 'SENSOR,PRESSURE', 'CRANKCASE PRESSURE', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3604', 0, 0),
(70, '01-01-01-01-068', '62', '2', 2, 2, 'TRANSMITTER,MOTOR SPEED', 'FLYWHEEL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1350', 0, 0),
(71, '01-01-01-01-069', '62', '2', 2, 2, 'SUNSHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110.0976', 0, 0),
(72, '01-01-01-01-070', '62', '2', 2, 2, 'AIR CLEANER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920969.0030', 0, 0),
(73, '01-01-01-01-071', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1224', 0, 0),
(74, '01-01-01-01-072', '62', '2', 2, 2, 'SAFETY FILTER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1225', 0, 0),
(75, '01-01-01-01-073', '62', '2', 2, 2, 'ELBOW', 'KPL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0591', 0, 0),
(76, '01-01-01-01-074', '62', '2', 2, 2, 'TURBO COMPRESSOR', 'UTB', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.U091', 0, 0),
(77, '01-01-01-01-075', '62', '2', 2, 2, 'SILENCER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921079.0078', 0, 0),
(78, '01-01-01-01-076', '62', '2', 2, 2, 'INDUCTION PIPE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1296', 0, 0),
(79, '01-01-01-01-077', '62', '2', 2, 2, 'HEAT PROTECTION', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1270', 0, 0),
(80, '01-01-01-01-078', '62', '2', 2, 2, 'RADIATOR', 'KPL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923581.0071', 0, 0),
(81, '01-01-01-01-079', '62', '2', 2, 2, 'PRESSURE SENSOR,RED', 'CHARGE PRESS./TEMP', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06585.0100', 0, 0),
(82, '01-01-01-01-080', '62', '2', 2, 2, 'COOLING PIPE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A57812.0100', 0, 0),
(83, '01-01-01-01-081', '62', '2', 2, 2, 'RADIATOR', 'KPL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923581.0071', 0, 0),
(84, '01-01-01-01-082', '62', '2', 2, 2, 'FAN', 'SUCTION', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0327', 0, 0),
(85, '01-01-01-01-083', '62', '2', 2, 2, 'WATER PUMP', 'UTB', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.U056', 0, 0),
(86, '01-01-01-01-084', '62', '2', 2, 2, 'COOLANT FILTER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0179', 0, 0),
(87, '01-01-01-01-085', '62', '2', 2, 2, 'OIL COOLER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0550', 0, 0),
(88, '01-01-01-01-086', '62', '2', 2, 2, 'LEVEL SENSOR', 'EXPANSION TANK', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0308', 0, 0),
(89, '01-01-01-01-087', '62', '2', 2, 2, 'OILSUMP', 'KPL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1235', 0, 0),
(90, '01-01-01-01-088', '62', '2', 2, 2, 'LEVEL SENSOR', 'OIL LEVEL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3425', 0, 0),
(91, '01-01-01-01-089', '62', '2', 2, 2, 'GASKET', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1237', 0, 0),
(92, '01-01-01-01-090', '62', '2', 2, 2, 'OIL FILLING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3430', 0, 0),
(93, '01-01-01-01-091', '62', '2', 2, 2, 'LEVER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0912', 0, 0),
(94, '01-01-01-01-092', '62', '2', 2, 2, 'GASKET', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.4306', 0, 0),
(95, '01-01-01-01-093', '62', '2', 2, 2, 'DIPSTICK', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0494', 0, 0),
(96, '01-01-01-01-094', '62', '2', 2, 2, 'O-RING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923705.0032', 0, 0),
(97, '01-01-01-01-095', '62', '2', 2, 2, 'OIL PUMP', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1241', 0, 0),
(98, '01-01-01-01-096', '62', '2', 2, 2, 'FILTER HOUSING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1251', 0, 0),
(99, '01-01-01-01-097', '62', '2', 2, 2, 'THERMOSTAT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1254', 0, 0),
(100, '01-01-01-01-098', '62', '2', 2, 2, 'PRESSURE SWITCH', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0535', 0, 0),
(101, '01-01-01-01-099', '62', '2', 2, 2, 'BY-PASS FILTER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110.0057', 0, 0),
(102, '01-01-01-01-100', '62', '2', 2, 2, 'OIL FILTER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3462', 0, 0),
(103, '01-01-01-01-101', '62', '2', 2, 2, 'SENSOR,PRESSURE', 'OIL PRESSURE/TEMP', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3135', 0, 0),
(104, '01-01-01-01-102', '62', '2', 2, 2, 'LEVEL SENSOR', 'OIL LEVER', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3425', 0, 0),
(105, '01-01-01-01-103', '62', '2', 2, 2, 'SENSOR,TEMPERATURE', 'OIL PRESSURE/TEMP', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0395', 0, 0),
(106, '01-01-01-01-104', '62', '2', 2, 2, 'PRESSURE SWITCH', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0535', 0, 0),
(107, '01-01-01-01-105', '62', '2', 2, 2, 'CABLE UNIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0561', 0, 0),
(108, '01-01-01-01-106', '62', '2', 2, 2, 'CABLE UNIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A57170.0200', 0, 0),
(109, '01-01-01-01-107', '62', '2', 2, 2, 'CABLE UNIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A44250.0100', 0, 0),
(110, '01-01-01-01-108', '62', '2', 2, 2, 'CALBE UNIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A47518.0100', 0, 0),
(111, '01-01-01-01-109', '62', '2', 2, 2, 'CABLE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A05532.2700', 0, 0),
(112, '01-01-01-01-110', '62', '2', 2, 2, 'CABLE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A05532.2800', 0, 0),
(113, '01-01-01-01-111', '62', '2', 2, 2, 'STOP BUTTON', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0506', 0, 0),
(114, '01-01-01-01-112', '62', '2', 2, 2, 'RELAY', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924504.1052', 0, 0),
(115, '01-01-01-01-113', '62', '2', 2, 2, 'BOX', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.3595', 0, 0),
(116, '01-01-01-01-114', '62', '2', 2, 2, 'ENGINE HEATER', 'KPL', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921896.0018', 0, 0),
(117, '01-01-01-01-115', '62', '2', 2, 2, 'ENGINE HEATER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1412', 0, 0),
(118, '01-01-01-01-116', '62', '2', 2, 2, 'CABLE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0312', 0, 0),
(119, '01-01-01-01-117', '62', '2', 2, 2, 'CABLE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0524', 0, 0),
(120, '01-01-01-01-118', '62', '2', 2, 2, 'CABLE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.0322', 0, 0),
(121, '01-01-01-01-119', '62', '2', 2, 2, 'DIODE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.0838', 0, 0),
(122, '01-01-01-01-120', '62', '2', 2, 2, 'RELAY,PREHEATING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923120.0708', 0, 0),
(123, '01-01-01-01-121', '62', '2', 2, 2, 'STARTER MOTOR', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.0583', 0, 0),
(124, '01-01-01-01-122', '62', '2', 2, 2, 'GEAR BOX', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922297.0170', 0, 0),
(125, '01-01-01-01-123', '62', '2', 2, 2, 'CONVERTER HOUSING', 'INCL.ITEMS 2-23', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.2810', 0, 0),
(126, '01-01-01-01-124', '62', '2', 2, 2, 'BREATHER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920378.002', 0, 0),
(127, '01-01-01-01-125', '62', '2', 2, 2, 'TEMP.SENSOR,GEAR BOX', 'SWITCH', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923941.0552', 0, 0),
(128, '01-01-01-01-126', '62', '2', 2, 2, 'SENSOR', 'ENGINE SPEED L=26MM, BLUE RING 2 WIRES, INCL.ITEM35', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1822', 0, 0),
(129, '01-01-01-01-127', '62', '2', 2, 2, 'O-RING', 'INCL IN POS 34 AND 36', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.2427', 0, 0),
(130, '01-01-01-01-128', '62', '2', 2, 2, 'SENSOR', 'TURBINE SPEED L=60MM,3MM BLUE RING+RED MARKING 2WIRES,INCL. ITEM35', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1821', 0, 0),
(131, '01-01-01-01-129', '62', '2', 2, 2, 'SEAL KIT', 'GEAR BOX', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923941.0554', 0, 0),
(132, '01-01-01-01-130', '62', '2', 2, 2, 'SENSOR', 'DRUM SPEED L=26,5MM, BLUE RING 2 WIRES', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1822', 0, 0),
(133, '01-01-01-01-131', '62', '2', 2, 2, 'SENSOR', 'TRANSM,OUTPUT SPEED L=60,3MM, BLUE RING 2WIRES', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1820', 0, 0),
(134, '01-01-01-01-132', '62', '2', 2, 2, 'TEMP.SENSOR, GEAR BOX', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1400', 0, 0),
(135, '01-01-01-01-133', '62', '2', 2, 2, 'BEARING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1414', 0, 0),
(136, '01-01-01-01-134', '62', '2', 2, 2, 'BEARING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1415', 0, 0),
(137, '01-01-01-01-135', '62', '2', 2, 2, 'FLEXPLATES', 'KIT INCL.ITEM 1-4', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923763.0002', 0, 0),
(138, '01-01-01-01-136', '62', '2', 2, 2, 'STATOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923828.0121', 0, 0),
(139, '01-01-01-01-137', '62', '2', 2, 2, 'IMPELLER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923636.0277', 0, 0),
(140, '01-01-01-01-138', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923109.0331', 0, 0),
(141, '01-01-01-01-139', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923109.0340', 0, 0),
(142, '01-01-01-01-140', '62', '2', 2, 2, 'BALL BEARING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923978.0773', 0, 0),
(143, '01-01-01-01-141', '62', '2', 2, 2, 'GEAR', '81 TEETH', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923828.0129', 0, 0),
(144, '01-01-01-01-142', '62', '2', 2, 2, 'GEAR', '78 TEETH', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923978.0774', 0, 0),
(145, '01-01-01-01-143', '62', '2', 2, 2, 'GEAR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1424', 0, 0),
(146, '01-01-01-01-144', '62', '2', 2, 2, 'BALL BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923978.0775', 0, 0),
(147, '01-01-01-01-145', '62', '2', 2, 2, 'CLUTCH PISTON', 'INCL.ITEMS 2-4', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1430', 0, 0),
(148, '01-01-01-01-146', '62', '2', 2, 2, 'CLUTCH INNER DISC', '', '', '', 11, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1492', 0, 0),
(149, '01-01-01-01-147', '62', '2', 2, 2, 'CLUTCH OUTER DISC', '', '', '', 11, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1433', 0, 0),
(150, '01-01-01-01-148', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1439', 0, 0),
(151, '01-01-01-01-149', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.0725', 0, 0),
(152, '01-01-01-01-150', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1441', 0, 0),
(153, '01-01-01-01-151', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923109.0340', 0, 0),
(154, '01-01-01-01-152', '62', '2', 2, 2, 'CLUTCH PISTON', 'INCL.ITEMS 2-4', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1447', 0, 0),
(155, '01-01-01-01-153', '62', '2', 2, 2, 'CLUTCH INNER DISC', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1493', 0, 0),
(156, '01-01-01-01-154', '62', '2', 2, 2, 'CLUTCH OUTER DISC', '', '', '', 11, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1494', 0, 0),
(157, '01-01-01-01-155', '62', '2', 2, 2, 'CLUTCH STEEL PLATE', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1495', 0, 0),
(158, '01-01-01-01-156', '62', '2', 2, 2, 'END PLATE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1453', 0, 0),
(159, '01-01-01-01-157', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923109.0383', 0, 0),
(160, '01-01-01-01-158', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923109.0384', 0, 0),
(161, '01-01-01-01-159', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923109.0340', 0, 0),
(162, '01-01-01-01-160', '62', '2', 2, 2, 'CLUTCH PISTON', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1430', 0, 0),
(163, '01-01-01-01-161', '62', '2', 2, 2, 'CLUTCH INNER DISC', '', '', '', 7, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1492', 0, 0),
(164, '01-01-01-01-162', '62', '2', 2, 2, 'CLUTCH OUTER DISC', '', '', '', 7, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1469', 0, 0),
(165, '01-01-01-01-163', '62', '2', 2, 2, 'END PLATE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1470', 0, 0),
(166, '01-01-01-01-164', '62', '2', 2, 2, 'CLUTCH PISTON', 'INCL. ITEMS 13-15', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1430', 0, 0),
(167, '01-01-01-01-165', '62', '2', 2, 2, 'CLUTCH INNER DISC', '', '', '', 11, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1492', 0, 0),
(168, '01-01-01-01-166', '62', '2', 2, 2, 'CLUTCH OUTER DISC', '', '', '', 11, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1433', 0, 0),
(169, '01-01-01-01-167', '62', '2', 2, 2, 'END PLATE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1434', 0, 0),
(170, '01-01-01-01-168', '62', '2', 2, 2, 'CLUTCH PISTON', 'INCL. ITEMS 2-4', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1430', 0, 0),
(171, '01-01-01-01-169', '62', '2', 2, 2, 'SHAFT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1491', 0, 0),
(172, '01-01-01-01-170', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1492', 0, 0),
(173, '01-01-01-01-171', '62', '2', 2, 2, 'OIL FILTER', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921028.0008', 0, 0),
(174, '01-01-01-01-172', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921028.0007', 0, 0),
(175, '01-01-01-01-173', '62', '2', 2, 2, 'REGULATOR VALVE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923978.0790', 0, 0),
(176, '01-01-01-01-174', '62', '2', 2, 2, 'CABLE UNIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A56888.0100', 0, 0),
(177, '01-01-01-01-175', '62', '2', 2, 2, 'CONTROL UNIT', 'TRASMISSION ', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923315.0058', 0, 0),
(178, '01-01-01-01-176', '62', '2', 2, 2, 'CONTROL VALVE KPL', 'COMPL. INCL. POS. 1-27', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.6046', 0, 0),
(179, '01-01-01-01-177', '62', '2', 2, 2, 'CONTROL VALVE', 'INCL. POS. 2-4A', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923978.0791', 0, 0),
(180, '01-01-01-01-178', '62', '2', 2, 2, 'SOLENOID ', 'INCL. POS. 6-7', '', '', 3, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J020307', 0, 0),
(181, '01-01-01-01-179', '62', '2', 2, 2, 'SOLENOID', '24V, INCL. POS. 10-13', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923978.0796', 0, 0),
(182, '01-01-01-01-180', '62', '2', 2, 2, 'SOLENOID', 'INCL. POS. 15-18', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923978.0801', 0, 0),
(183, '01-01-01-01-181', '62', '2', 2, 2, 'SENSOR', 'TRANSM. PRESSURE ', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923978.0806', 0, 0),
(184, '01-01-01-01-182', '62', '2', 2, 2, 'UNIVERSAL DRIVE SHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923083.0014', 0, 0),
(185, '01-01-01-01-183', '62', '2', 2, 2, 'SHIM RING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920981.0050', 0, 0),
(186, '01-01-01-01-184', '62', '2', 2, 2, 'GEAR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.0796', 0, 0),
(187, '01-01-01-01-185', '62', '2', 2, 2, 'BEARING,INNER,KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5510', 0, 0),
(188, '01-01-01-01-186', '62', '2', 2, 2, 'BEARING,OUTER,KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5511', 0, 0),
(189, '01-01-01-01-187', '62', '2', 2, 2, 'SEAL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923828.0399', 0, 0),
(190, '01-01-01-01-188', '62', '2', 2, 2, 'DIFF. DRIVE GEAR KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923828.0431', 0, 0),
(191, '01-01-01-01-189', '62', '2', 2, 2, 'DIFFERENTIAL CASE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5552', 0, 0),
(192, '01-01-01-01-190', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5515', 0, 0),
(193, '01-01-01-01-191', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5517', 0, 0),
(194, '01-01-01-01-192', '62', '2', 2, 2, 'AXLE SHAFT', 'RIGHT', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5518', 0, 0),
(195, '01-01-01-01-193', '62', '2', 2, 2, 'AXLE SHAFT', 'LEFT', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5519', 0, 0),
(196, '01-01-01-01-194', '62', '2', 2, 2, 'OIL SEAL', '', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923109.0128', 0, 0),
(197, '01-01-01-01-195', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-8380188', 0, 0),
(198, '01-01-01-01-196', '62', '2', 2, 2, 'WHEEL BOLT', '', '', '', 56, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ICM2018069', 0, 0),
(199, '01-01-01-01-197', '62', '2', 2, 2, 'CLAMP', '', '', '', 56, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '802308761', 0, 0),
(200, '01-01-01-01-198', '62', '2', 2, 2, 'WHEEL NUT', '', '', '', 56, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '1095', 0, 0),
(201, '01-01-01-01-199', '62', '2', 2, 2, 'BRAKE VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.2407', 0, 0),
(202, '01-01-01-01-200', '62', '2', 2, 2, 'ACCUMULATOR', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922593.0010', 0, 0),
(203, '01-01-01-01-201', '62', '2', 2, 2, 'BRACKET', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922672.0005', 0, 0),
(204, '01-01-01-01-202', '62', '2', 2, 2, 'ACC.CHARGING VALVE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923543.0025', 0, 0),
(205, '01-01-01-01-203', '62', '2', 2, 2, 'HIGH PRESSURE FILTER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920523.0027', 0, 0),
(206, '01-01-01-01-204', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.2805', 0, 0),
(207, '01-01-01-01-205', '62', '2', 2, 2, 'INDICATOR', 'VISUAL, 5.0 BAR', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923576.0009', 0, 0),
(208, '01-01-01-01-206', '62', '2', 2, 2, 'PRESSURE SENSOR,RED', 'BRAKE LIGHT', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920596.0022', 0, 0),
(209, '01-01-01-01-207', '62', '2', 2, 2, 'SENSOR, PRESSURE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920596.0055', 0, 0),
(210, '01-01-01-01-208', '62', '2', 2, 2, 'SENSOR, PRESSURE', 'PARKING BRAKE 3 MPA', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920596.0029', 0, 0),
(211, '01-01-01-01-209', '62', '2', 2, 2, 'SEAL', '', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922748.0001', 0, 0),
(212, '01-01-01-01-210', '62', '2', 2, 2, 'SEAL RING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923636.0749', 0, 0),
(213, '01-01-01-01-211', '62', '2', 2, 2, 'CLUTCH DRIVE PLATE', '', '', '', 22, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922746.0001', 0, 0),
(214, '01-01-01-01-212', '62', '2', 2, 2, 'CLUTCH PLATE', '', '', '', 20, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1376', 0, 0),
(215, '01-01-01-01-213', '62', '2', 2, 2, 'BRAKE ', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.0776', 0, 0),
(216, '01-01-01-01-214', '62', '2', 2, 2, 'O-RING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1689', 0, 0),
(217, '01-01-01-01-215', '62', '2', 2, 2, 'O-RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1691', 0, 0),
(218, '01-01-01-01-216', '62', '2', 2, 2, 'SPRING', '', '', '', 6, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1692', 0, 0),
(219, '01-01-01-01-217', '62', '2', 2, 2, 'PISTON', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.2264', 0, 0),
(220, '01-01-01-01-218', '62', '2', 2, 2, 'BACK-UP RING', 'OUTER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1695', 0, 0),
(221, '01-01-01-01-219', '62', '2', 2, 2, 'SEAL RING', 'INNER', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1701', 0, 0),
(222, '01-01-01-01-220', '62', '2', 2, 2, 'O-RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1702', 0, 0),
(223, '01-01-01-01-221', '62', '2', 2, 2, 'BACK-UP RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1706', 0, 0),
(224, '01-01-01-01-222', '62', '2', 2, 2, 'BRAKE SHOE LINING,KIT', 'KIT INCLUDING 2 PCS', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923726.0424', 0, 0),
(225, '01-01-01-01-223', '62', '2', 2, 2, 'SENSOR, TEMPERATURE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920169.011', 0, 0),
(226, '01-01-01-01-224', '62', '2', 2, 2, 'BREATHING FILTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923432.0005', 0, 0),
(227, '01-01-01-01-225', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1185', 0, 0),
(228, '01-01-01-01-226', '62', '2', 2, 2, 'OIL COOLER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921679.0019', 0, 0),
(229, '01-01-01-01-227', '62', '2', 2, 2, 'OIL COOLER', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.6005', 0, 0),
(230, '01-01-01-01-228', '62', '2', 2, 2, 'FAN', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.6006', 0, 0),
(231, '01-01-01-01-229', '62', '2', 2, 2, 'OIL SEAL', 'INCL. IN 923764.0218', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922804.0002', 0, 0),
(232, '01-01-01-01-230', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923764.0218', 0, 0),
(233, '01-01-01-01-231', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1450', 0, 0),
(234, '01-01-01-01-232', '62', '2', 2, 2, 'PISTON ROD', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1451', 0, 0),
(235, '01-01-01-01-233', '62', '2', 2, 2, 'HUB', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A34950.0100', 0, 0),
(236, '01-01-01-01-234', '62', '2', 2, 2, 'CONICAL ROLLER BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921162.0011', 0, 0),
(237, '01-01-01-01-235', '62', '2', 2, 2, 'CONICAL ROLLER BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921162.0010', 0, 0),
(238, '01-01-01-01-236', '62', '2', 2, 2, 'WHEEL BOLT', '', '', '', 12, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A02107.0100', 0, 0),
(239, '01-01-01-01-237', '62', '2', 2, 2, 'CHECK VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920081.010', 0, 0),
(240, '01-01-01-01-238', '62', '2', 2, 2, 'CHECK VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920081.036', 0, 0),
(241, '01-01-01-01-239', '62', '2', 2, 2, 'SLIDE BEARING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A50442.0100', 0, 0),
(242, '01-01-01-01-240', '62', '2', 2, 2, 'SHAFT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A60749.0100', 0, 0),
(243, '01-01-01-01-241', '62', '2', 2, 2, 'BEARING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920070.018', 0, 0),
(244, '01-01-01-01-242', '62', '2', 2, 2, 'BEARING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920070.049', 0, 0),
(245, '01-01-01-01-243', '62', '2', 2, 2, 'SEAL', '', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A41371.0100', 0, 0),
(246, '01-01-01-01-244', '62', '2', 2, 2, 'WHEEL NUT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '548', 0, 0),
(247, '01-01-01-01-245', '62', '2', 2, 2, 'SEAL', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920598.0004', 0, 0),
(248, '01-01-01-01-246', '62', '2', 2, 2, 'WHEEL CLAMP', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A02104.0300', 0, 0),
(249, '01-01-01-01-247', '62', '2', 2, 2, 'SEAL', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A27135.0100', 0, 0),
(250, '01-01-01-01-248', '62', '2', 2, 2, 'VALVE PLATE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923543.0023', 0, 0),
(251, '01-01-01-01-249', '62', '2', 2, 2, 'ACCUMULATOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921589.0008', 0, 0),
(252, '01-01-01-01-250', '62', '2', 2, 2, 'SERVO FILTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920130.013', 0, 0),
(253, '01-01-01-01-251', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1184', 0, 0),
(254, '01-01-01-01-252', '62', '2', 2, 2, 'SEAL KIT', 'INCL. POS. 1-10', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1507', 0, 0),
(255, '01-01-01-01-253', '62', '2', 2, 2, 'BEARING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921463.0008', 0, 0),
(256, '01-01-01-01-254', '62', '2', 2, 2, 'BACK-UP BRACKET', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1493', 0, 0),
(257, '01-01-01-01-255', '62', '2', 2, 2, 'SMALL PARTS KIT', 'INCL. POS 11-18', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2484', 0, 0),
(258, '01-01-01-01-256', '62', '2', 2, 2, 'BEARING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '9270070.031', 0, 0),
(259, '01-01-01-01-257', '62', '2', 2, 2, 'VALVE PLATE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923543.0026', 0, 0),
(260, '01-01-01-01-258', '62', '2', 2, 2, 'SEAL KIT', 'INCL. POS 1-10', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1798', 0, 0),
(261, '01-01-01-01-259', '62', '2', 2, 2, 'SMALL PARTS KIT', 'INCL. POS 11-18', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.2531', 0, 0),
(262, '01-01-01-01-260', '62', '2', 2, 2, 'BRARING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1551', 0, 0),
(263, '01-01-01-01-261', '62', '2', 2, 2, 'BEARING', '', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923828.0721', 0, 0),
(264, '01-01-01-01-262', '62', '2', 2, 2, 'BEARING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923828.0748', 0, 0),
(265, '01-01-01-01-263', '62', '2', 2, 2, 'HYDRAULIC MOTOR', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1362', 0, 0),
(266, '01-01-01-01-264', '62', '2', 2, 2, 'CONTROL VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.0822', 0, 0),
(267, '01-01-01-01-265', '62', '2', 2, 2, 'MAGNETIC VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-4000207', 0, 0),
(268, '01-01-01-01-266', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923828.0012', 0, 0),
(269, '01-01-01-01-267', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923726.0558', 0, 0),
(270, '01-01-01-01-268', '62', '2', 2, 2, 'VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2596', 0, 0),
(271, '01-01-01-01-269', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.0845', 0, 0),
(272, '01-01-01-01-270', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923764.0644', 0, 0),
(273, '01-01-01-01-271', '62', '2', 2, 2, 'CONTROL LEVER,MULTI TOOL,LEFT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-9049955', 0, 0),
(274, '01-01-01-01-272', '62', '2', 2, 2, 'CONTROL,OPERATING LEVER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-6932196', 0, 0),
(275, '01-01-01-01-273', '62', '2', 2, 2, 'SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920169.016', 0, 0),
(276, '01-01-01-01-274', '62', '2', 2, 2, 'WIPER MOTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923934.0097', 0, 0),
(277, '01-01-01-01-275', '62', '2', 2, 2, 'HORN', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920150.003', 0, 0),
(278, '01-01-01-01-276', '62', '2', 2, 2, 'FAN', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5557', 0, 0),
(279, '01-01-01-01-277', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2131', 0, 0),
(280, '01-01-01-01-278', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1573', 0, 0),
(281, '01-01-01-01-279', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922316.0007', 0, 0),
(282, '01-01-01-01-280', '62', '2', 2, 2, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2379', 0, 0),
(283, '01-01-01-01-281', '62', '2', 2, 2, 'BREATHING FILTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923432.0004', 0, 0),
(284, '01-01-01-01-282', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1183', 0, 0),
(285, '01-01-01-01-283', '62', '2', 2, 2, 'FILTER', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922316.0006', 0, 0),
(286, '01-01-01-01-284', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '922315.0004', 0, 0),
(287, '01-01-01-01-285', '62', '2', 2, 2, 'ALTERNATOR', '80A', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.1780', 0, 0),
(288, '01-01-01-01-286', '62', '2', 2, 2, 'CABLE CHAIN', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K23021651H', 0, 0),
(289, '01-01-01-01-287', '62', '2', 2, 2, 'FAN', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J08090.0100', 0, 0),
(290, '01-01-01-01-288', '62', '2', 2, 2, 'LOCK NUT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110.0436', 0, 0),
(291, '01-01-01-01-289', '62', '2', 2, 2, 'ROLLER BEARING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923828.0422', 0, 0),
(292, '01-01-01-01-290', '62', '2', 2, 2, 'BEARING,INNER,KIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.551', 0, 0),
(293, '01-01-01-01-291', '62', '2', 2, 2, 'BEARING', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921463.0009', 0, 0),
(294, '02-01-01-01-001', '63', '3', 3, 3, 'CHARGING PUMP', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923941.0820', 0, 0),
(295, '02-01-01-01-002', '63', '3', 3, 3, 'GASKET,INNER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920379.002', 0, 0),
(296, '02-01-01-01-003', '63', '3', 3, 3, 'SEAL', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1448', 0, 0),
(297, '02-01-01-01-004', '63', '3', 3, 3, 'PISTON RING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1459', 0, 0),
(298, '02-01-01-01-005', '63', '3', 3, 3, 'SEAL', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924627.2207', 0, 0),
(299, '02-01-01-01-006', '63', '3', 3, 3, 'SEAL RING', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923108.0057', 0, 0),
(300, '02-01-01-01-007', '63', '3', 3, 3, 'GASKET', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923941.0835', 0, 0),
(301, '01-01-01-01-292', '62', '2', 2, 2, 'PRESSURE SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J020321', 0, 0),
(302, '01-01-01-01-293', '62', '2', 2, 2, 'O-RING(TYRE)', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920981.0023', 0, 0),
(303, '01-01-01-01-294', '62', '2', 2, 2, 'BY-PASS FILTER', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.3091', 0, 0),
(304, '01-01-01-01-295', '62', '2', 2, 2, 'OIL FILTER', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.3092', 0, 0),
(305, '01-01-01-01-296', '62', '2', 2, 2, 'FUEL FILTER', '', '', '', 2, NULL, NULL, 0, '27', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018288', 0, 0),
(306, '02-01-01-01-008', '63', '3', 3, 3, 'FUEL FILTER,WATER SEPARATOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.0700', 0, 0),
(307, '01-01-01-01-297', '62', '2', 2, 2, 'FUEL FILTER,WATER SEPARATOR', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J018289', 0, 0),
(308, '02-01-01-01-009', '63', '3', 3, 3, 'FUEL FILTER', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '90031422', 0, 0),
(309, '02-01-01-01-010', '63', '3', 3, 3, 'OIL FILTER', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.0620', 0, 0),
(310, '02-01-01-01-011', '63', '3', 3, 3, 'FILTER INSERT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1274', 0, 0),
(311, '02-01-01-01-012', '63', '3', 3, 3, 'WATER SEPARATOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924548.0289', 0, 0),
(312, '02-01-01-01-013', '63', '3', 3, 3, 'CAP', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924523.1314', 0, 0),
(313, '01-01-01-01-298', '62', '2', 2, 2, 'PLANETARY GEARING,REDUCING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110.0975', 0, 0),
(314, '01-01-01-01-299', '62', '2', 2, 2, 'PLANETARY GEARING,COMPLETE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923349.0652', 0, 0),
(315, '01-01-01-01-300', '62', '2', 2, 2, 'AXLE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923941.0400', 0, 0);
INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_level3_id`, `material_level4_id`, `material_description`, `spec`, `location`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`, `current_balance`, `is_manual_code_edit`) VALUES
(316, '01-01-01-01-301', '62', '2', 2, 2, 'SPRING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923349.0516', 0, 0),
(317, '02-01-01-01-014', '63', '3', 3, 3, 'FILTER INSERT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110.0577', 0, 0),
(318, '01-01-01-01-302', '62', '2', 2, 2, 'FILTER INSERT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.3095', 0, 0),
(319, '01-01-01-01-303', '62', '2', 2, 2, 'RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.0289', 0, 0),
(320, '01-01-01-01-304', '62', '2', 2, 2, 'RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.0281', 0, 0),
(321, '01-01-01-01-305', '62', '2', 2, 2, 'KIT,DIFFERENTIAL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J036124', 0, 0),
(322, '01-01-01-01-306', '62', '2', 2, 2, 'TWISTLOCK', '', '', '', 4, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'K5679210', 0, 0),
(323, '02-01-01-01-015', '63', '3', 3, 3, 'OIL FILTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ICM2022038', 0, 0),
(324, '01-01-01-01-307', '62', '2', 2, 2, 'MIRRORS,KIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'ICM2027714', 0, 0),
(325, '01-01-01-01-308', '62', '2', 2, 2, 'WIRING HARNESS', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06551.0100', 0, 0),
(326, '01-01-01-01-309', '62', '2', 2, 2, 'OIL LEVEL SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924627.1504', 0, 0),
(327, '01-01-01-01-310', '62', '2', 2, 2, 'SEAL RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '800820061', 0, 0),
(328, '01-01-01-01-311', '62', '2', 2, 2, 'TEMPERATURE SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J023936', 0, 0),
(329, '02-01-01-01-016', '63', '3', 3, 3, 'VALVE', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924011.0018', 0, 0),
(330, '01-01-01-01-312', '62', '2', 2, 2, 'FLEX-PLATE KIT', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'T0209036H', 0, 0),
(331, '02-01-01-01-017', '63', '3', 3, 3, 'INJECTION PUMP', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924287.0071', 0, 0),
(332, '01-01-01-01-313', '62', '2', 2, 2, 'GEAR RIM', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-9337815', 0, 0),
(333, '01-01-01-01-314', '62', '2', 2, 2, 'PUMP', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924334.0001', 0, 0),
(334, '02-01-01-01-018', '63', '3', 3, 3, 'PUMP', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923142.0036', 0, 0),
(335, '02-01-01-01-019', '63', '3', 3, 3, 'VALVE BLOCK', '', '', '', 0, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923543.0098', 0, 0),
(336, '01-01-01-01-315', '62', '2', 2, 2, 'GEAR RIM', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-3620536', 0, 0),
(337, '01-01-01-01-316', '62', '2', 2, 2, 'VALVE PLATE,BOOM NOSE,STANDARD', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923543.0066', 0, 0),
(338, '01-01-01-01-317', '62', '2', 2, 2, 'HYDRAULIC MOTOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP106371', 0, 0),
(339, '01-01-01-01-318', '62', '2', 2, 2, 'SENSOR,LENGTH', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923625.0016', 0, 0),
(340, '01-01-01-01-319', '62', '2', 2, 2, 'BELT ADJUSTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J032471', 0, 0),
(341, '01-01-01-01-320', '62', '2', 2, 2, 'SHAFT SEAL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '921157.0007', 0, 0),
(342, '01-01-01-01-321', '62', '2', 2, 2, 'REVERSE ALARM', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A39309.0100', 0, 0),
(343, '01-01-01-01-322', '62', '2', 2, 2, 'SEAL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.0777', 0, 0),
(344, '01-01-01-01-323', '62', '2', 2, 2, 'GAS PEDAL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923935.0154', 0, 0),
(345, '01-01-01-01-324', '62', '2', 2, 2, 'GEAR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1306', 0, 0),
(346, '01-01-01-01-325', '62', '2', 2, 2, 'KEYBOARD,CONTROL UNIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923732.0012', 0, 0),
(347, '01-01-01-01-326', '62', '2', 2, 2, 'DISPLAY', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923741.0013', 0, 0),
(348, '02-01-01-01-020', '63', '3', 3, 3, 'GASKET KIT,SPREADING CYLINDER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.0834', 0, 0),
(349, '01-01-01-01-327', '62', '2', 2, 2, 'SUNSHAFT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923349.0653', 0, 0),
(350, '02-01-01-01-021', '63', '3', 3, 3, 'SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP101636', 0, 0),
(351, '02-01-01-01-022', '63', '3', 3, 3, 'PRESSURE SENSOR,INTAKE MANIFOLD', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.2097', 0, 0),
(352, '01-01-01-01-328', '62', '2', 2, 2, 'PRESSURE SENSOR', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J038489', 0, 0),
(353, '01-01-01-01-329', '62', '2', 2, 2, 'OIL SEAL RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2203', 0, 0),
(354, '02-01-01-01-023', '63', '3', 3, 3, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1454', 0, 0),
(355, '01-01-01-01-330', '62', '2', 2, 2, 'RUBBER BEND', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A49710.0300', 0, 0),
(356, '01-01-01-01-331', '62', '2', 2, 2, 'INDUCTIVE SWITCH', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'JP107575', 0, 0),
(357, '05-01-01-01-001', '66', '4', 5, 4, 'CONTROLLER ASSY;OPERATOR SENSING SYS.', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '300611-00423', 0, 0),
(358, '05-01-01-01-002', '66', '4', 5, 4, 'VALVE ASSY,SOLENOID', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D513680', 0, 0),
(359, '05-01-01-01-003', '66', '4', 5, 4, 'VALVE,SOLENOID', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D517424', 0, 0),
(360, '05-01-01-01-004', '66', '4', 5, 4, 'VALVE,SOLENOID', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A403501', 0, 0),
(361, '01-01-01-01-332', '62', '2', 2, 2, 'BELT ADJUSTER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923829.1394', 0, 0),
(362, '05-01-01-01-005', '66', '4', 5, 4, 'SEAL KIT-MASTER CYL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D504725', 0, 0),
(363, '05-01-01-01-006', '66', '4', 5, 4, 'VALVE GROUP,SOLENOID', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'D517203', 0, 0),
(364, '05-01-01-01-007', '66', '4', 5, 4, 'VALVE ASSY,SOLENOID', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A353101', 0, 0),
(365, '01-01-01-01-333', '62', '2', 2, 2, 'CLAMP,FASTENING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'A09206.0300', 0, 0),
(366, '01-01-01-01-334', '62', '2', 2, 2, 'NUT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920068.019', 0, 0),
(367, '01-01-01-01-335', '62', '2', 2, 2, 'STUD', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923110.0850', 0, 0),
(368, '01-01-01-01-336', '62', '2', 2, 2, 'BEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923976.5517', 0, 0),
(369, '01-01-01-01-337', '62', '2', 2, 2, 'SEAL RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923109.0322', 0, 0),
(370, '02-01-01-01-024', '63', '3', 3, 3, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '924015.1508', 0, 0),
(371, '01-01-01-01-338', '62', '2', 2, 2, 'O-RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920584.0004', 0, 0),
(372, '02-01-01-01-025', '63', '3', 3, 3, 'SEAL KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.0518', 0, 0),
(373, '01-01-01-01-339', '62', '2', 2, 2, 'OIL SEAL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J06742.0100', 0, 0),
(374, '01-01-01-01-340', '62', '2', 2, 2, 'O-RING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923108.0063', 0, 0),
(375, '01-01-01-01-341', '62', '2', 2, 2, 'IGNITION SWITCH', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920451.005', 0, 0),
(376, '01-01-01-01-342', '62', '2', 2, 2, 'HOUR METER', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.2324', 0, 0),
(377, '01-01-01-01-343', '62', '2', 2, 2, 'MAIN SWITCH', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '920857.0002', 0, 0),
(378, '01-01-01-01-344', '62', '2', 2, 2, 'RELAY', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923341.0004', 0, 0),
(379, '01-01-01-01-345', '62', '2', 2, 2, 'COIL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923855.1186', 0, 0),
(380, '01-01-01-01-346', '62', '2', 2, 2, 'ELECTRIC VALVE', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'J09738.0100', 0, 0),
(381, '01-01-01-01-347', '62', '2', 2, 2, 'PLANETARY GEARING', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-3620496', 0, 0),
(382, '01-01-01-01-348', '62', '2', 2, 2, 'SUNSHAFT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-3620497', 0, 0),
(383, '01-01-01-01-349', '62', '2', 2, 2, 'GEAR RIM', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '923944.0096', 0, 0),
(384, '01-01-01-01-350', '62', '2', 2, 2, 'SUNSHAFT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-40278979', 0, 0),
(385, '01-01-01-01-351', '62', '2', 2, 2, 'OIL SEAL', '', '', '', 2, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-1198926', 0, 0),
(386, '01-01-01-01-352', '62', '2', 2, 2, 'GASKET', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-6136027', 0, 0),
(387, '01-01-01-01-353', '62', '2', 2, 2, 'GASKET KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-7610524', 0, 0),
(388, '01-01-01-01-354', '62', '2', 2, 2, 'GASKET KIT', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-6937720', 0, 0),
(389, '01-01-01-01-355', '62', '2', 2, 2, 'OIL SEAL', '', '', '', 1, NULL, NULL, 0, '20', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'TVH-34036549', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialbalance`
--

CREATE TABLE `inv_materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `is_manual_code_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for checking manual code update	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_materialbalance`
--

INSERT INTO `inv_materialbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbin_val`, `mbout_qty`, `mbout_val`, `mbprice`, `mbtype`, `mbserial`, `mbserial_id`, `mbunit_id`, `jvno`, `part_no`, `project_id`, `warehouse_id`, `package_id`, `building_id`, `approval_status`, `is_manual_code_edit`) VALUES
(35940, 'OP', '01-01-01-01-001', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920871.0163', '1', '1', '', '', 0, 0),
(35941, 'OP', '01-01-01-01-002', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1401', '1', '1', '', '', 0, 0),
(35942, 'OP', '01-01-01-01-003', '2023-05-31', 10, 100, 0, 10, 0, 'OP', 0, '', '', '', '924523.0537', '1', '1', '', '', 0, 0),
(35943, 'OP', '01-01-01-01-004', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0538', '1', '1', '', '', 0, 0),
(35944, 'OP', '01-01-01-01-005', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.2250', '1', '1', '', '', 0, 0),
(35945, 'OP', '01-01-01-01-006', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924287.U092', '1', '1', '', '', 0, 0),
(35946, 'OP', '04-01-01-01-001', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '', '1', '1', '', '', 0, 0),
(35947, 'OP', '04-01-01-01-002', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '', '1', '1', '', '', 0, 0),
(35948, 'OP', '01-01-01-01-007', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1349', '1', '1', '', '', 0, 0),
(35949, 'OP', '01-01-01-01-008', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3135', '1', '1', '', '', 0, 0),
(35950, 'OP', '01-01-01-01-009', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0525', '1', '1', '', '', 0, 0),
(35951, 'OP', '01-01-01-01-010', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0527', '1', '1', '', '', 0, 0),
(35952, 'OP', '01-01-01-01-011', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1217', '1', '1', '', '', 0, 0),
(35953, 'OP', '01-01-01-01-012', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0035', '1', '1', '', '', 0, 0),
(35954, 'OP', '01-01-01-01-013', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.4323', '1', '1', '', '', 0, 0),
(35955, 'OP', '01-01-01-01-014', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0575', '1', '1', '', '', 0, 0),
(35956, 'OP', '01-01-01-01-015', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1219', '1', '1', '', '', 0, 0),
(35957, 'OP', '01-01-01-01-016', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1220', '1', '1', '', '', 0, 0),
(35958, 'OP', '01-01-01-01-017', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923705.0173', '1', '1', '', '', 0, 0),
(35959, 'OP', '01-01-01-01-018', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1221', '1', '1', '', '', 0, 0),
(35960, 'OP', '01-01-01-01-019', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1222', '1', '1', '', '', 0, 0),
(35961, 'OP', '01-01-01-01-020', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1223', '1', '1', '', '', 0, 0),
(35962, 'OP', '01-01-01-01-021', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1225', '1', '1', '', '', 0, 0),
(35963, 'OP', '01-01-01-01-022', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1226', '1', '1', '', '', 0, 0),
(35964, 'OP', '01-01-01-01-023', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1227', '1', '1', '', '', 0, 0),
(35965, 'OP', '01-01-01-01-024', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1228', '1', '1', '', '', 0, 0),
(35966, 'OP', '01-01-01-01-025', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1200', '1', '1', '', '', 0, 0),
(35967, 'OP', '01-01-01-01-026', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3349', '1', '1', '', '', 0, 0),
(35968, 'OP', '01-01-01-01-027', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J08555.0100', '1', '1', '', '', 0, 0),
(35969, 'OP', '01-01-01-01-028', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3410', '1', '1', '', '', 0, 0),
(35970, 'OP', '01-01-01-01-029', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.6013', '1', '1', '', '', 0, 0),
(35971, 'OP', '01-01-01-01-030', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0522', '1', '1', '', '', 0, 0),
(35972, 'OP', '01-01-01-01-031', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0523', '1', '1', '', '', 0, 0),
(35973, 'OP', '01-01-01-01-032', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924287.U036', '1', '1', '', '', 0, 0),
(35974, 'OP', '01-01-01-01-033', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1175', '1', '1', '', '', 0, 0),
(35975, 'OP', '01-01-01-01-034', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1176', '1', '1', '', '', 0, 0),
(35976, 'OP', '01-01-01-01-035', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1178', '1', '1', '', '', 0, 0),
(35977, 'OP', '01-01-01-01-036', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1178', '1', '1', '', '', 0, 0),
(35978, 'OP', '01-01-01-01-037', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3324', '1', '1', '', '', 0, 0),
(35979, 'OP', '01-01-01-01-038', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1180', '1', '1', '', '', 0, 0),
(35980, 'OP', '01-01-01-01-039', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1181', '1', '1', '', '', 0, 0),
(35981, 'OP', '01-01-01-01-040', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '9234829.1183', '1', '1', '', '', 0, 0),
(35982, 'OP', '01-01-01-01-041', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1211', '1', '1', '', '', 0, 0),
(35983, 'OP', '01-01-01-01-042', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1185', '1', '1', '', '', 0, 0),
(35984, 'OP', '01-01-01-01-043', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0520', '1', '1', '', '', 0, 0),
(35985, 'OP', '01-01-01-01-044', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0501', '1', '1', '', '', 0, 0),
(35986, 'OP', '01-01-01-01-045', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1201', '1', '1', '', '', 0, 0),
(35987, 'OP', '01-01-01-01-046', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1202', '1', '1', '', '', 0, 0),
(35988, 'OP', '01-01-01-01-047', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923736.0941', '1', '1', '', '', 0, 0),
(35989, 'OP', '01-01-01-01-048', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0130', '1', '1', '', '', 0, 0),
(35990, 'OP', '01-01-01-01-049', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923736.0932', '1', '1', '', '', 0, 0),
(35991, 'OP', '01-01-01-01-050', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0594', '1', '1', '', '', 0, 0),
(35992, 'OP', '01-01-01-01-051', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0530', '1', '1', '', '', 0, 0),
(35993, 'OP', '01-01-01-01-052', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1198', '1', '1', '', '', 0, 0),
(35994, 'OP', '01-01-01-01-053', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0176', '1', '1', '', '', 0, 0),
(35995, 'OP', '01-01-01-01-054', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0533', '1', '1', '', '', 0, 0),
(35996, 'OP', '01-01-01-01-055', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1211', '1', '1', '', '', 0, 0),
(35997, 'OP', '01-01-01-01-056', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1212', '1', '1', '', '', 0, 0),
(35998, 'OP', '01-01-01-01-057', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0522', '1', '1', '', '', 0, 0),
(35999, 'OP', '01-01-01-01-058', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0523', '1', '1', '', '', 0, 0),
(36000, 'OP', '01-01-01-01-059', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1409', '1', '1', '', '', 0, 0),
(36001, 'OP', '01-01-01-01-060', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1410', '1', '1', '', '', 0, 0),
(36002, 'OP', '01-01-01-01-061', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0580', '1', '1', '', '', 0, 0),
(36003, 'OP', '01-01-01-01-062', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0581', '1', '1', '', '', 0, 0),
(36004, 'OP', '01-01-01-01-063', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0581', '1', '1', '', '', 0, 0),
(36005, 'OP', '01-01-01-01-064', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923692.0022', '1', '1', '', '', 0, 0),
(36006, 'OP', '01-01-01-01-065', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1395', '1', '1', '', '', 0, 0),
(36007, 'OP', '01-01-01-01-066', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0576', '1', '1', '', '', 0, 0),
(36008, 'OP', '01-01-01-01-067', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3604', '1', '1', '', '', 0, 0),
(36009, 'OP', '01-01-01-01-068', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1350', '1', '1', '', '', 0, 0),
(36010, 'OP', '01-01-01-01-069', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923110.0976', '1', '1', '', '', 0, 0),
(36011, 'OP', '01-01-01-01-070', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920969.0030', '1', '1', '', '', 0, 0),
(36012, 'OP', '01-01-01-01-071', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1224', '1', '1', '', '', 0, 0),
(36013, 'OP', '01-01-01-01-072', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1225', '1', '1', '', '', 0, 0),
(36014, 'OP', '01-01-01-01-073', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0591', '1', '1', '', '', 0, 0),
(36015, 'OP', '01-01-01-01-074', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924287.U091', '1', '1', '', '', 0, 0),
(36016, 'OP', '01-01-01-01-075', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921079.0078', '1', '1', '', '', 0, 0),
(36017, 'OP', '01-01-01-01-076', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1296', '1', '1', '', '', 0, 0),
(36018, 'OP', '01-01-01-01-077', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1270', '1', '1', '', '', 0, 0),
(36019, 'OP', '01-01-01-01-078', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923581.0071', '1', '1', '', '', 0, 0),
(36020, 'OP', '01-01-01-01-079', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J06585.0100', '1', '1', '', '', 0, 0),
(36021, 'OP', '01-01-01-01-080', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A57812.0100', '1', '1', '', '', 0, 0),
(36022, 'OP', '01-01-01-01-081', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923581.0071', '1', '1', '', '', 0, 0),
(36023, 'OP', '01-01-01-01-082', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0327', '1', '1', '', '', 0, 0),
(36024, 'OP', '01-01-01-01-083', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924287.U056', '1', '1', '', '', 0, 0),
(36025, 'OP', '01-01-01-01-084', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0179', '1', '1', '', '', 0, 0),
(36026, 'OP', '01-01-01-01-085', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0550', '1', '1', '', '', 0, 0),
(36027, 'OP', '01-01-01-01-086', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0308', '1', '1', '', '', 0, 0),
(36028, 'OP', '01-01-01-01-087', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1235', '1', '1', '', '', 0, 0),
(36029, 'OP', '01-01-01-01-088', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3425', '1', '1', '', '', 0, 0),
(36030, 'OP', '01-01-01-01-089', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1237', '1', '1', '', '', 0, 0),
(36031, 'OP', '01-01-01-01-090', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3430', '1', '1', '', '', 0, 0),
(36032, 'OP', '01-01-01-01-091', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0912', '1', '1', '', '', 0, 0),
(36033, 'OP', '01-01-01-01-092', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.4306', '1', '1', '', '', 0, 0),
(36034, 'OP', '01-01-01-01-093', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0494', '1', '1', '', '', 0, 0),
(36035, 'OP', '01-01-01-01-094', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923705.0032', '1', '1', '', '', 0, 0),
(36036, 'OP', '01-01-01-01-095', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1241', '1', '1', '', '', 0, 0),
(36037, 'OP', '01-01-01-01-096', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1251', '1', '1', '', '', 0, 0),
(36038, 'OP', '01-01-01-01-097', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1254', '1', '1', '', '', 0, 0),
(36039, 'OP', '01-01-01-01-098', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0535', '1', '1', '', '', 0, 0),
(36040, 'OP', '01-01-01-01-099', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923110.0057', '1', '1', '', '', 0, 0),
(36041, 'OP', '01-01-01-01-100', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3462', '1', '1', '', '', 0, 0),
(36042, 'OP', '01-01-01-01-101', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3135', '1', '1', '', '', 0, 0),
(36043, 'OP', '01-01-01-01-102', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3425', '1', '1', '', '', 0, 0),
(36044, 'OP', '01-01-01-01-103', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0395', '1', '1', '', '', 0, 0),
(36045, 'OP', '01-01-01-01-104', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0535', '1', '1', '', '', 0, 0),
(36046, 'OP', '01-01-01-01-105', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0561', '1', '1', '', '', 0, 0),
(36047, 'OP', '01-01-01-01-106', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A57170.0200', '1', '1', '', '', 0, 0),
(36048, 'OP', '01-01-01-01-107', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A44250.0100', '1', '1', '', '', 0, 0),
(36049, 'OP', '01-01-01-01-108', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A47518.0100', '1', '1', '', '', 0, 0),
(36050, 'OP', '01-01-01-01-109', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A05532.2700', '1', '1', '', '', 0, 0),
(36051, 'OP', '01-01-01-01-110', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A05532.2800', '1', '1', '', '', 0, 0),
(36052, 'OP', '01-01-01-01-111', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0506', '1', '1', '', '', 0, 0),
(36053, 'OP', '01-01-01-01-112', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924504.1052', '1', '1', '', '', 0, 0),
(36054, 'OP', '01-01-01-01-113', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.3595', '1', '1', '', '', 0, 0),
(36055, 'OP', '01-01-01-01-114', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921896.0018', '1', '1', '', '', 0, 0),
(36056, 'OP', '01-01-01-01-115', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1412', '1', '1', '', '', 0, 0),
(36057, 'OP', '01-01-01-01-116', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0312', '1', '1', '', '', 0, 0),
(36058, 'OP', '01-01-01-01-117', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0524', '1', '1', '', '', 0, 0),
(36059, 'OP', '01-01-01-01-118', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.0322', '1', '1', '', '', 0, 0),
(36060, 'OP', '01-01-01-01-119', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.0838', '1', '1', '', '', 0, 0),
(36061, 'OP', '01-01-01-01-120', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923120.0708', '1', '1', '', '', 0, 0),
(36062, 'OP', '01-01-01-01-121', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.0583', '1', '1', '', '', 0, 0),
(36063, 'OP', '01-01-01-01-122', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922297.0170', '1', '1', '', '', 0, 0),
(36064, 'OP', '01-01-01-01-123', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.2810', '1', '1', '', '', 0, 0),
(36065, 'OP', '01-01-01-01-124', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920378.002', '1', '1', '', '', 0, 0),
(36066, 'OP', '01-01-01-01-125', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923941.0552', '1', '1', '', '', 0, 0),
(36067, 'OP', '01-01-01-01-126', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1822', '1', '1', '', '', 0, 0),
(36068, 'OP', '01-01-01-01-127', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.2427', '1', '1', '', '', 0, 0),
(36069, 'OP', '01-01-01-01-128', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1821', '1', '1', '', '', 0, 0),
(36070, 'OP', '01-01-01-01-129', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923941.0554', '1', '1', '', '', 0, 0),
(36071, 'OP', '01-01-01-01-130', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1822', '1', '1', '', '', 0, 0),
(36072, 'OP', '01-01-01-01-131', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1820', '1', '1', '', '', 0, 0),
(36073, 'OP', '01-01-01-01-132', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1400', '1', '1', '', '', 0, 0),
(36074, 'OP', '01-01-01-01-133', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1414', '1', '1', '', '', 0, 0),
(36075, 'OP', '01-01-01-01-134', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1415', '1', '1', '', '', 0, 0),
(36076, 'OP', '01-01-01-01-135', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923763.0002', '1', '1', '', '', 0, 0),
(36077, 'OP', '01-01-01-01-136', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923828.0121', '1', '1', '', '', 0, 0),
(36078, 'OP', '01-01-01-01-137', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923636.0277', '1', '1', '', '', 0, 0),
(36079, 'OP', '01-01-01-01-138', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923109.0331', '1', '1', '', '', 0, 0),
(36080, 'OP', '01-01-01-01-139', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923109.0340', '1', '1', '', '', 0, 0),
(36081, 'OP', '01-01-01-01-140', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923978.0773', '1', '1', '', '', 0, 0),
(36082, 'OP', '01-01-01-01-141', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923828.0129', '1', '1', '', '', 0, 0),
(36083, 'OP', '01-01-01-01-142', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923978.0774', '1', '1', '', '', 0, 0),
(36084, 'OP', '01-01-01-01-143', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1424', '1', '1', '', '', 0, 0),
(36085, 'OP', '01-01-01-01-144', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923978.0775', '1', '1', '', '', 0, 0),
(36086, 'OP', '01-01-01-01-145', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1430', '1', '1', '', '', 0, 0),
(36087, 'OP', '01-01-01-01-146', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.1492', '1', '1', '', '', 0, 0),
(36088, 'OP', '01-01-01-01-147', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1433', '1', '1', '', '', 0, 0),
(36089, 'OP', '01-01-01-01-148', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1439', '1', '1', '', '', 0, 0),
(36090, 'OP', '01-01-01-01-149', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.0725', '1', '1', '', '', 0, 0),
(36091, 'OP', '01-01-01-01-150', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1441', '1', '1', '', '', 0, 0),
(36092, 'OP', '01-01-01-01-151', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923109.0340', '1', '1', '', '', 0, 0),
(36093, 'OP', '01-01-01-01-152', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1447', '1', '1', '', '', 0, 0),
(36094, 'OP', '01-01-01-01-153', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.1493', '1', '1', '', '', 0, 0),
(36095, 'OP', '01-01-01-01-154', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.1494', '1', '1', '', '', 0, 0),
(36096, 'OP', '01-01-01-01-155', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.1495', '1', '1', '', '', 0, 0),
(36097, 'OP', '01-01-01-01-156', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1453', '1', '1', '', '', 0, 0),
(36098, 'OP', '01-01-01-01-157', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923109.0383', '1', '1', '', '', 0, 0),
(36099, 'OP', '01-01-01-01-158', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923109.0384', '1', '1', '', '', 0, 0),
(36100, 'OP', '01-01-01-01-159', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923109.0340', '1', '1', '', '', 0, 0),
(36101, 'OP', '01-01-01-01-160', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1430', '1', '1', '', '', 0, 0),
(36102, 'OP', '01-01-01-01-161', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.1492', '1', '1', '', '', 0, 0),
(36103, 'OP', '01-01-01-01-162', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1469', '1', '1', '', '', 0, 0),
(36104, 'OP', '01-01-01-01-163', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1470', '1', '1', '', '', 0, 0),
(36105, 'OP', '01-01-01-01-164', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1430', '1', '1', '', '', 0, 0),
(36106, 'OP', '01-01-01-01-165', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.1492', '1', '1', '', '', 0, 0),
(36107, 'OP', '01-01-01-01-166', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1433', '1', '1', '', '', 0, 0),
(36108, 'OP', '01-01-01-01-167', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1434', '1', '1', '', '', 0, 0),
(36109, 'OP', '01-01-01-01-168', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1430', '1', '1', '', '', 0, 0),
(36110, 'OP', '01-01-01-01-169', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1491', '1', '1', '', '', 0, 0),
(36111, 'OP', '01-01-01-01-170', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1492', '1', '1', '', '', 0, 0),
(36112, 'OP', '01-01-01-01-171', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921028.0008', '1', '1', '', '', 0, 0),
(36113, 'OP', '01-01-01-01-172', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921028.0007', '1', '1', '', '', 0, 0),
(36114, 'OP', '01-01-01-01-173', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923978.0790', '1', '1', '', '', 0, 0),
(36115, 'OP', '01-01-01-01-174', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A56888.0100', '1', '1', '', '', 0, 0),
(36116, 'OP', '01-01-01-01-175', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923315.0058', '1', '1', '', '', 0, 0),
(36117, 'OP', '01-01-01-01-176', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.6046', '1', '1', '', '', 0, 0),
(36118, 'OP', '01-01-01-01-177', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923978.0791', '1', '1', '', '', 0, 0),
(36119, 'OP', '01-01-01-01-178', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J020307', '1', '1', '', '', 0, 0),
(36120, 'OP', '01-01-01-01-179', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923978.0796', '1', '1', '', '', 0, 0),
(36121, 'OP', '01-01-01-01-180', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923978.0801', '1', '1', '', '', 0, 0),
(36122, 'OP', '01-01-01-01-181', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923978.0806', '1', '1', '', '', 0, 0),
(36123, 'OP', '01-01-01-01-182', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923083.0014', '1', '1', '', '', 0, 0),
(36124, 'OP', '01-01-01-01-183', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920981.0050', '1', '1', '', '', 0, 0),
(36125, 'OP', '01-01-01-01-184', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.0796', '1', '1', '', '', 0, 0),
(36126, 'OP', '01-01-01-01-185', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5510', '1', '1', '', '', 0, 0),
(36127, 'OP', '01-01-01-01-186', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5511', '1', '1', '', '', 0, 0),
(36128, 'OP', '01-01-01-01-187', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923828.0399', '1', '1', '', '', 0, 0),
(36129, 'OP', '01-01-01-01-188', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923828.0431', '1', '1', '', '', 0, 0),
(36130, 'OP', '01-01-01-01-189', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5552', '1', '1', '', '', 0, 0),
(36131, 'OP', '01-01-01-01-190', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5515', '1', '1', '', '', 0, 0),
(36132, 'OP', '01-01-01-01-191', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5517', '1', '1', '', '', 0, 0),
(36133, 'OP', '01-01-01-01-192', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5518', '1', '1', '', '', 0, 0),
(36134, 'OP', '01-01-01-01-193', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5519', '1', '1', '', '', 0, 0),
(36135, 'OP', '01-01-01-01-194', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923109.0128', '1', '1', '', '', 0, 0),
(36136, 'OP', '01-01-01-01-195', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-8380188', '1', '1', '', '', 0, 0),
(36137, 'OP', '01-01-01-01-196', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'ICM2018069', '1', '1', '', '', 0, 0),
(36138, 'OP', '01-01-01-01-197', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '802308761', '1', '1', '', '', 0, 0),
(36139, 'OP', '01-01-01-01-198', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '1095', '1', '1', '', '', 0, 0),
(36140, 'OP', '01-01-01-01-199', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.2407', '1', '1', '', '', 0, 0),
(36141, 'OP', '01-01-01-01-200', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922593.0010', '1', '1', '', '', 0, 0),
(36142, 'OP', '01-01-01-01-201', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922672.0005', '1', '1', '', '', 0, 0),
(36143, 'OP', '01-01-01-01-202', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923543.0025', '1', '1', '', '', 0, 0),
(36144, 'OP', '01-01-01-01-203', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920523.0027', '1', '1', '', '', 0, 0),
(36145, 'OP', '01-01-01-01-204', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.2805', '1', '1', '', '', 0, 0),
(36146, 'OP', '01-01-01-01-205', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923576.0009', '1', '1', '', '', 0, 0),
(36147, 'OP', '01-01-01-01-206', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920596.0022', '1', '1', '', '', 0, 0),
(36148, 'OP', '01-01-01-01-207', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920596.0055', '1', '1', '', '', 0, 0),
(36149, 'OP', '01-01-01-01-208', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920596.0029', '1', '1', '', '', 0, 0),
(36150, 'OP', '01-01-01-01-209', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922748.0001', '1', '1', '', '', 0, 0),
(36151, 'OP', '01-01-01-01-210', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923636.0749', '1', '1', '', '', 0, 0),
(36152, 'OP', '01-01-01-01-211', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922746.0001', '1', '1', '', '', 0, 0),
(36153, 'OP', '01-01-01-01-212', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1376', '1', '1', '', '', 0, 0),
(36154, 'OP', '01-01-01-01-213', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.0776', '1', '1', '', '', 0, 0),
(36155, 'OP', '01-01-01-01-214', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1689', '1', '1', '', '', 0, 0),
(36156, 'OP', '01-01-01-01-215', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1691', '1', '1', '', '', 0, 0),
(36157, 'OP', '01-01-01-01-216', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1692', '1', '1', '', '', 0, 0),
(36158, 'OP', '01-01-01-01-217', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.2264', '1', '1', '', '', 0, 0),
(36159, 'OP', '01-01-01-01-218', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1695', '1', '1', '', '', 0, 0),
(36160, 'OP', '01-01-01-01-219', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1701', '1', '1', '', '', 0, 0),
(36161, 'OP', '01-01-01-01-220', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1702', '1', '1', '', '', 0, 0),
(36162, 'OP', '01-01-01-01-221', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1706', '1', '1', '', '', 0, 0),
(36163, 'OP', '01-01-01-01-222', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923726.0424', '1', '1', '', '', 0, 0),
(36164, 'OP', '01-01-01-01-223', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920169.011', '1', '1', '', '', 0, 0),
(36165, 'OP', '01-01-01-01-224', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923432.0005', '1', '1', '', '', 0, 0),
(36166, 'OP', '01-01-01-01-225', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1185', '1', '1', '', '', 0, 0),
(36167, 'OP', '01-01-01-01-226', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921679.0019', '1', '1', '', '', 0, 0),
(36168, 'OP', '01-01-01-01-227', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.6005', '1', '1', '', '', 0, 0),
(36169, 'OP', '01-01-01-01-228', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.6006', '1', '1', '', '', 0, 0),
(36170, 'OP', '01-01-01-01-229', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922804.0002', '1', '1', '', '', 0, 0),
(36171, 'OP', '01-01-01-01-230', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923764.0218', '1', '1', '', '', 0, 0),
(36172, 'OP', '01-01-01-01-231', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1450', '1', '1', '', '', 0, 0),
(36173, 'OP', '01-01-01-01-232', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1451', '1', '1', '', '', 0, 0),
(36174, 'OP', '01-01-01-01-233', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A34950.0100', '1', '1', '', '', 0, 0),
(36175, 'OP', '01-01-01-01-234', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921162.0011', '1', '1', '', '', 0, 0),
(36176, 'OP', '01-01-01-01-235', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921162.0010', '1', '1', '', '', 0, 0),
(36177, 'OP', '01-01-01-01-236', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A02107.0100', '1', '1', '', '', 0, 0),
(36178, 'OP', '01-01-01-01-237', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920081.010', '1', '1', '', '', 0, 0),
(36179, 'OP', '01-01-01-01-238', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920081.036', '1', '1', '', '', 0, 0),
(36180, 'OP', '01-01-01-01-239', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A50442.0100', '1', '1', '', '', 0, 0),
(36181, 'OP', '01-01-01-01-240', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A60749.0100', '1', '1', '', '', 0, 0),
(36182, 'OP', '01-01-01-01-241', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920070.018', '1', '1', '', '', 0, 0),
(36183, 'OP', '01-01-01-01-242', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920070.049', '1', '1', '', '', 0, 0),
(36184, 'OP', '01-01-01-01-243', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A41371.0100', '1', '1', '', '', 0, 0),
(36185, 'OP', '01-01-01-01-244', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '548', '1', '1', '', '', 0, 0),
(36186, 'OP', '01-01-01-01-245', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920598.0004', '1', '1', '', '', 0, 0),
(36187, 'OP', '01-01-01-01-246', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A02104.0300', '1', '1', '', '', 0, 0),
(36188, 'OP', '01-01-01-01-247', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A27135.0100', '1', '1', '', '', 0, 0),
(36189, 'OP', '01-01-01-01-248', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923543.0023', '1', '1', '', '', 0, 0),
(36190, 'OP', '01-01-01-01-249', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921589.0008', '1', '1', '', '', 0, 0),
(36191, 'OP', '01-01-01-01-250', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920130.013', '1', '1', '', '', 0, 0),
(36192, 'OP', '01-01-01-01-251', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1184', '1', '1', '', '', 0, 0),
(36193, 'OP', '01-01-01-01-252', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1507', '1', '1', '', '', 0, 0),
(36194, 'OP', '01-01-01-01-253', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921463.0008', '1', '1', '', '', 0, 0),
(36195, 'OP', '01-01-01-01-254', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1493', '1', '1', '', '', 0, 0),
(36196, 'OP', '01-01-01-01-255', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.2484', '1', '1', '', '', 0, 0),
(36197, 'OP', '01-01-01-01-256', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '9270070.031', '1', '1', '', '', 0, 0),
(36198, 'OP', '01-01-01-01-257', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923543.0026', '1', '1', '', '', 0, 0),
(36199, 'OP', '01-01-01-01-258', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1798', '1', '1', '', '', 0, 0),
(36200, 'OP', '01-01-01-01-259', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.2531', '1', '1', '', '', 0, 0),
(36201, 'OP', '01-01-01-01-260', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1551', '1', '1', '', '', 0, 0),
(36202, 'OP', '01-01-01-01-261', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923828.0721', '1', '1', '', '', 0, 0),
(36203, 'OP', '01-01-01-01-262', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923828.0748', '1', '1', '', '', 0, 0),
(36204, 'OP', '01-01-01-01-263', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1362', '1', '1', '', '', 0, 0),
(36205, 'OP', '01-01-01-01-264', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.0822', '1', '1', '', '', 0, 0),
(36206, 'OP', '01-01-01-01-265', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-4000207', '1', '1', '', '', 0, 0),
(36207, 'OP', '01-01-01-01-266', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923828.0012', '1', '1', '', '', 0, 0),
(36208, 'OP', '01-01-01-01-267', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923726.0558', '1', '1', '', '', 0, 0),
(36209, 'OP', '01-01-01-01-268', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.2596', '1', '1', '', '', 0, 0),
(36210, 'OP', '01-01-01-01-269', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.0845', '1', '1', '', '', 0, 0),
(36211, 'OP', '01-01-01-01-270', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923764.0644', '1', '1', '', '', 0, 0),
(36212, 'OP', '01-01-01-01-271', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-9049955', '1', '1', '', '', 0, 0),
(36213, 'OP', '01-01-01-01-272', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-6932196', '1', '1', '', '', 0, 0),
(36214, 'OP', '01-01-01-01-273', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920169.016', '1', '1', '', '', 0, 0),
(36215, 'OP', '01-01-01-01-274', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923934.0097', '1', '1', '', '', 0, 0),
(36216, 'OP', '01-01-01-01-275', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920150.003', '1', '1', '', '', 0, 0),
(36217, 'OP', '01-01-01-01-276', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5557', '1', '1', '', '', 0, 0),
(36218, 'OP', '01-01-01-01-277', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.2131', '1', '1', '', '', 0, 0),
(36219, 'OP', '01-01-01-01-278', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.1573', '1', '1', '', '', 0, 0),
(36220, 'OP', '01-01-01-01-279', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922316.0007', '1', '1', '', '', 0, 0),
(36221, 'OP', '01-01-01-01-280', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.2379', '1', '1', '', '', 0, 0),
(36222, 'OP', '01-01-01-01-281', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923432.0004', '1', '1', '', '', 0, 0),
(36223, 'OP', '01-01-01-01-282', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1183', '1', '1', '', '', 0, 0),
(36224, 'OP', '01-01-01-01-283', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922316.0006', '1', '1', '', '', 0, 0),
(36225, 'OP', '01-01-01-01-284', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '922315.0004', '1', '1', '', '', 0, 0),
(36226, 'OP', '01-01-01-01-285', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.1780', '1', '1', '', '', 0, 0),
(36227, 'OP', '01-01-01-01-286', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'K23021651H', '1', '1', '', '', 0, 0),
(36228, 'OP', '01-01-01-01-287', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J08090.0100', '1', '1', '', '', 0, 0),
(36229, 'OP', '01-01-01-01-288', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923110.0436', '1', '1', '', '', 0, 0),
(36230, 'OP', '01-01-01-01-289', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923828.0422', '1', '1', '', '', 0, 0),
(36231, 'OP', '01-01-01-01-290', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.551', '1', '1', '', '', 0, 0),
(36232, 'OP', '01-01-01-01-291', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921463.0009', '1', '1', '', '', 0, 0),
(36233, 'OP', '02-01-01-01-001', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923941.0820', '1', '1', '', '', 0, 0),
(36234, 'OP', '02-01-01-01-002', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920379.002', '1', '1', '', '', 0, 0),
(36235, 'OP', '02-01-01-01-003', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1448', '1', '1', '', '', 0, 0),
(36236, 'OP', '02-01-01-01-004', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1459', '1', '1', '', '', 0, 0),
(36237, 'OP', '02-01-01-01-005', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924627.2207', '1', '1', '', '', 0, 0),
(36238, 'OP', '02-01-01-01-006', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923108.0057', '1', '1', '', '', 0, 0),
(36239, 'OP', '02-01-01-01-007', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923941.0835', '1', '1', '', '', 0, 0),
(36240, 'OP', '01-01-01-01-292', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J020321', '1', '1', '', '', 0, 0),
(36241, 'OP', '01-01-01-01-293', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920981.0023', '1', '1', '', '', 0, 0),
(36242, 'OP', '01-01-01-01-294', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.3091', '1', '1', '', '', 0, 0),
(36243, 'OP', '01-01-01-01-295', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.3092', '1', '1', '', '', 0, 0),
(36244, 'OP', '01-01-01-01-296', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J018288', '1', '1', '', '', 0, 0),
(36245, 'OP', '02-01-01-01-008', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.0700', '1', '1', '', '', 0, 0),
(36246, 'OP', '01-01-01-01-297', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J018289', '1', '1', '', '', 0, 0),
(36247, 'OP', '02-01-01-01-009', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '90031422', '1', '1', '', '', 0, 0),
(36248, 'OP', '02-01-01-01-010', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.0620', '1', '1', '', '', 0, 0),
(36249, 'OP', '02-01-01-01-011', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.1274', '1', '1', '', '', 0, 0),
(36250, 'OP', '02-01-01-01-012', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924548.0289', '1', '1', '', '', 0, 0),
(36251, 'OP', '02-01-01-01-013', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924523.1314', '1', '1', '', '', 0, 0),
(36252, 'OP', '01-01-01-01-298', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923110.0975', '1', '1', '', '', 0, 0),
(36253, 'OP', '01-01-01-01-299', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923349.0652', '1', '1', '', '', 0, 0),
(36254, 'OP', '01-01-01-01-300', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923941.0400', '1', '1', '', '', 0, 0),
(36255, 'OP', '01-01-01-01-301', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923349.0516', '1', '1', '', '', 0, 0),
(36256, 'OP', '02-01-01-01-014', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923110.0577', '1', '1', '', '', 0, 0),
(36257, 'OP', '01-01-01-01-302', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.3095', '1', '1', '', '', 0, 0),
(36258, 'OP', '01-01-01-01-303', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.0289', '1', '1', '', '', 0, 0),
(36259, 'OP', '01-01-01-01-304', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.0281', '1', '1', '', '', 0, 0),
(36260, 'OP', '01-01-01-01-305', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J036124', '1', '1', '', '', 0, 0),
(36261, 'OP', '01-01-01-01-306', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'K5679210', '1', '1', '', '', 0, 0),
(36262, 'OP', '02-01-01-01-015', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'ICM2022038', '1', '1', '', '', 0, 0),
(36263, 'OP', '01-01-01-01-307', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'ICM2027714', '1', '1', '', '', 0, 0),
(36264, 'OP', '01-01-01-01-308', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J06551.0100', '1', '1', '', '', 0, 0),
(36265, 'OP', '01-01-01-01-309', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924627.1504', '1', '1', '', '', 0, 0),
(36266, 'OP', '01-01-01-01-310', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '800820061', '1', '1', '', '', 0, 0),
(36267, 'OP', '01-01-01-01-311', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J023936', '1', '1', '', '', 0, 0),
(36268, 'OP', '02-01-01-01-016', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924011.0018', '1', '1', '', '', 0, 0),
(36269, 'OP', '01-01-01-01-312', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'T0209036H', '1', '1', '', '', 0, 0),
(36270, 'OP', '02-01-01-01-017', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924287.0071', '1', '1', '', '', 0, 0),
(36271, 'OP', '01-01-01-01-313', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-9337815', '1', '1', '', '', 0, 0),
(36272, 'OP', '01-01-01-01-314', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924334.0001', '1', '1', '', '', 0, 0),
(36273, 'OP', '02-01-01-01-018', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923142.0036', '1', '1', '', '', 0, 0),
(36274, 'OP', '02-01-01-01-019', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923543.0098', '1', '1', '', '', 0, 0),
(36275, 'OP', '01-01-01-01-315', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-3620536', '1', '1', '', '', 0, 0),
(36276, 'OP', '01-01-01-01-316', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923543.0066', '1', '1', '', '', 0, 0),
(36277, 'OP', '01-01-01-01-317', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'JP106371', '1', '1', '', '', 0, 0),
(36278, 'OP', '01-01-01-01-318', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923625.0016', '1', '1', '', '', 0, 0),
(36279, 'OP', '01-01-01-01-319', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J032471', '1', '1', '', '', 0, 0),
(36280, 'OP', '01-01-01-01-320', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '921157.0007', '1', '1', '', '', 0, 0),
(36281, 'OP', '01-01-01-01-321', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A39309.0100', '1', '1', '', '', 0, 0),
(36282, 'OP', '01-01-01-01-322', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.0777', '1', '1', '', '', 0, 0),
(36283, 'OP', '01-01-01-01-323', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923935.0154', '1', '1', '', '', 0, 0),
(36284, 'OP', '01-01-01-01-324', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1306', '1', '1', '', '', 0, 0),
(36285, 'OP', '01-01-01-01-325', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923732.0012', '1', '1', '', '', 0, 0),
(36286, 'OP', '01-01-01-01-326', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923741.0013', '1', '1', '', '', 0, 0),
(36287, 'OP', '02-01-01-01-020', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.0834', '1', '1', '', '', 0, 0),
(36288, 'OP', '01-01-01-01-327', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923349.0653', '1', '1', '', '', 0, 0),
(36289, 'OP', '02-01-01-01-021', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'JP101636', '1', '1', '', '', 0, 0),
(36290, 'OP', '02-01-01-01-022', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.2097', '1', '1', '', '', 0, 0),
(36291, 'OP', '01-01-01-01-328', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J038489', '1', '1', '', '', 0, 0),
(36292, 'OP', '01-01-01-01-329', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.2203', '1', '1', '', '', 0, 0),
(36293, 'OP', '02-01-01-01-023', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1454', '1', '1', '', '', 0, 0),
(36294, 'OP', '01-01-01-01-330', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A49710.0300', '1', '1', '', '', 0, 0),
(36295, 'OP', '01-01-01-01-331', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'JP107575', '1', '1', '', '', 0, 0),
(36296, 'OP', '05-01-01-01-001', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '300611-00423', '1', '1', '', '', 0, 0),
(36297, 'OP', '05-01-01-01-002', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'D513680', '1', '1', '', '', 0, 0),
(36298, 'OP', '05-01-01-01-003', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'D517424', '1', '1', '', '', 0, 0),
(36299, 'OP', '05-01-01-01-004', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A403501', '1', '1', '', '', 0, 0),
(36300, 'OP', '01-01-01-01-332', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923829.1394', '1', '1', '', '', 0, 0),
(36301, 'OP', '05-01-01-01-005', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'D504725', '1', '1', '', '', 0, 0),
(36302, 'OP', '05-01-01-01-006', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'D517203', '1', '1', '', '', 0, 0),
(36303, 'OP', '05-01-01-01-007', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A353101', '1', '1', '', '', 0, 0),
(36304, 'OP', '01-01-01-01-333', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'A09206.0300', '1', '1', '', '', 0, 0),
(36305, 'OP', '01-01-01-01-334', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920068.019', '1', '1', '', '', 0, 0),
(36306, 'OP', '01-01-01-01-335', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923110.0850', '1', '1', '', '', 0, 0),
(36307, 'OP', '01-01-01-01-336', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923976.5517', '1', '1', '', '', 0, 0),
(36308, 'OP', '01-01-01-01-337', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923109.0322', '1', '1', '', '', 0, 0),
(36309, 'OP', '02-01-01-01-024', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '924015.1508', '1', '1', '', '', 0, 0),
(36310, 'OP', '01-01-01-01-338', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920584.0004', '1', '1', '', '', 0, 0),
(36311, 'OP', '02-01-01-01-025', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.0518', '1', '1', '', '', 0, 0),
(36312, 'OP', '01-01-01-01-339', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J06742.0100', '1', '1', '', '', 0, 0),
(36313, 'OP', '01-01-01-01-340', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923108.0063', '1', '1', '', '', 0, 0),
(36314, 'OP', '01-01-01-01-341', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920451.005', '1', '1', '', '', 0, 0),
(36315, 'OP', '01-01-01-01-342', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.2324', '1', '1', '', '', 0, 0),
(36316, 'OP', '01-01-01-01-343', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '920857.0002', '1', '1', '', '', 0, 0),
(36317, 'OP', '01-01-01-01-344', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923341.0004', '1', '1', '', '', 0, 0),
(36318, 'OP', '01-01-01-01-345', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923855.1186', '1', '1', '', '', 0, 0),
(36319, 'OP', '01-01-01-01-346', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'J09738.0100', '1', '1', '', '', 0, 0),
(36320, 'OP', '01-01-01-01-347', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-3620496', '1', '1', '', '', 0, 0),
(36321, 'OP', '01-01-01-01-348', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-3620497', '1', '1', '', '', 0, 0),
(36322, 'OP', '01-01-01-01-349', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', '923944.0096', '1', '1', '', '', 0, 0),
(36323, 'OP', '01-01-01-01-350', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-40278979', '1', '1', '', '', 0, 0),
(36324, 'OP', '01-01-01-01-351', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-1198926', '1', '1', '', '', 0, 0),
(36325, 'OP', '01-01-01-01-352', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-6136027', '1', '1', '', '', 0, 0),
(36326, 'OP', '01-01-01-01-353', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-7610524', '1', '1', '', '', 0, 0),
(36327, 'OP', '01-01-01-01-354', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-6937720', '1', '1', '', '', 0, 0),
(36328, 'OP', '01-01-01-01-355', '2023-05-31', 0, 0, 0, 0, 0, 'OP', 0, '', '', '', 'TVH-34036549', '1', '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategory`
--

CREATE TABLE `inv_materialcategory` (
  `id` int(11) NOT NULL,
  `material_sub_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_sub_description` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_materialcategory`
--

INSERT INTO `inv_materialcategory` (`id`, `material_sub_id`, `category_id`, `material_sub_description`) VALUES
(1, '04-01-00-00-000', '65', 'No Category'),
(2, '01-01-00-00-000', '62', 'KALMAR'),
(3, '02-01-00-00-000', '63', 'KALMAR'),
(4, '05-01-00-00-000', '66', 'DOOSAN'),
(5, '03-01-00-00-000', '64', 'EICHER'),
(6, '03-02-00-00-000', '64', 'TATA'),
(7, '01-02-00-00-000', '62', 'LIEBHERR');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategorysub`
--

CREATE TABLE `inv_materialcategorysub` (
  `id` int(11) NOT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `category_description` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stock_acct_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chk_sbalance` int(11) DEFAULT NULL,
  `consumption_ac` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `same_level` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_materialcategorysub`
--

INSERT INTO `inv_materialcategorysub` (`id`, `category_id`, `category_description`, `stock_acct_id`, `chk_sbalance`, `consumption_ac`, `same_level`) VALUES
(62, '01-00-00-00-000', 'RST', NULL, NULL, NULL, 0),
(63, '02-00-00-00-000', 'ECH', NULL, NULL, NULL, 0),
(64, '03-00-00-00-000', 'TT ', NULL, NULL, NULL, 0),
(65, '04-00-00-00-000', 'NO CATEGORY', NULL, NULL, NULL, 1),
(66, '05-00-00-00-000', 'FORKLIFT', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_level3`
--

CREATE TABLE `inv_material_level3` (
  `id` int(11) NOT NULL,
  `material_level3_code` varchar(15) NOT NULL,
  `category_id` varchar(15) NOT NULL,
  `category_sub_id` varchar(15) NOT NULL,
  `material_level3_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inv_material_level3`
--

INSERT INTO `inv_material_level3` (`id`, `material_level3_code`, `category_id`, `category_sub_id`, `material_level3_description`) VALUES
(1, '04-01-01-00-000', '65', '1', 'No Category'),
(2, '01-01-01-00-000', '62', '2', 'RST'),
(3, '02-01-01-00-000', '63', '3', 'ECH'),
(4, '03-01-01-00-000', '64', '5', 'TT'),
(5, '05-01-01-00-000', '66', '4', 'FORKLIFT');

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_level4`
--

CREATE TABLE `inv_material_level4` (
  `id` int(11) NOT NULL,
  `material_level4_code` varchar(15) NOT NULL,
  `category_id` varchar(15) NOT NULL,
  `category_sub_id` varchar(15) NOT NULL,
  `level3_id` varchar(15) NOT NULL,
  `material_level4_description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `inv_material_level4`
--

INSERT INTO `inv_material_level4` (`id`, `material_level4_code`, `category_id`, `category_sub_id`, `level3_id`, `material_level4_description`) VALUES
(1, '04-01-01-01-000', '65', '1', '1', 'No Category'),
(2, '01-01-01-01-000', '62', '2', '2', 'RST'),
(3, '02-01-01-01-000', '63', '3', '3', 'ECH'),
(4, '05-01-01-01-000', '66', '4', '5', 'FORKLIFT'),
(5, '03-01-01-01-000', '64', '5', '4', 'TT');

-- --------------------------------------------------------

--
-- Table structure for table `inv_material_partno_detail`
--

CREATE TABLE `inv_material_partno_detail` (
  `id` int(11) NOT NULL,
  `inv_material_id` int(11) DEFAULT NULL,
  `material_id_code` varchar(255) DEFAULT NULL,
  `part_no` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv_material_partno_detail`
--

INSERT INTO `inv_material_partno_detail` (`id`, `inv_material_id`, `material_id_code`, `part_no`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(425, 275, '02-02-01-01-001', 'JP116606S', 0, 1, 1, '2023-05-28 00:00:00', '2023-05-28 00:00:00'),
(426, 275, '02-02-01-01-001', 'JP116606', 1, 1, 1, '2023-05-28 00:00:00', '2023-05-28 00:00:00'),
(427, 390, '04-01-01-01-003', 'T1234', 0, 1, 1, '2023-05-31 00:00:00', '2023-05-31 00:00:00'),
(428, 390, '04-01-01-01-003', 'T123', 1, 1, 1, '2023-05-31 00:00:00', '2023-05-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars`
--

CREATE TABLE `inv_particulars` (
  `id` int(11) NOT NULL,
  `particulars_id` varchar(100) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `particulars` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars_type`
--

CREATE TABLE `inv_particulars_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_product_price`
--

CREATE TABLE `inv_product_price` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(20) NOT NULL,
  `material_id` varchar(20) NOT NULL,
  `receive_details_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `part_no` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `cerated_by` varchar(15) NOT NULL,
  `updated_at` date NOT NULL,
  `updated_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inv_product_price`
--

INSERT INTO `inv_product_price` (`id`, `mrr_no`, `material_id`, `receive_details_id`, `qty`, `price`, `part_no`, `status`, `created_at`, `cerated_by`, `updated_at`, `updated_by`) VALUES
(411, '-', '01-01-01-01-001', 0, 0, 0, '920871.0163', 1, '2023-05-31', '', '0000-00-00', ''),
(412, '-', '01-01-01-01-002', 0, 0, 0, '923829.1401', 1, '2023-05-31', '', '0000-00-00', ''),
(413, '-', '01-01-01-01-003', 0, 0, 0, '924523.0537', 1, '2023-05-31', '', '0000-00-00', ''),
(414, '-', '01-01-01-01-004', 0, 0, 0, '924523.0538', 1, '2023-05-31', '', '0000-00-00', ''),
(415, '-', '01-01-01-01-005', 0, 0, 0, '923944.2250', 1, '2023-05-31', '', '0000-00-00', ''),
(416, '-', '01-01-01-01-006', 0, 0, 0, '924287.U092', 1, '2023-05-31', '', '0000-00-00', ''),
(417, '-', '04-01-01-01-001', 0, 0, 0, '', 1, '2023-05-31', '', '0000-00-00', ''),
(418, '-', '04-01-01-01-002', 0, 0, 0, '', 1, '2023-05-31', '', '0000-00-00', ''),
(419, '-', '01-01-01-01-007', 0, 0, 0, '923829.1349', 1, '2023-05-31', '', '0000-00-00', ''),
(420, '-', '01-01-01-01-008', 0, 0, 0, '923976.3135', 1, '2023-05-31', '', '0000-00-00', ''),
(421, '-', '01-01-01-01-009', 0, 0, 0, '924523.0525', 1, '2023-05-31', '', '0000-00-00', ''),
(422, '-', '01-01-01-01-010', 0, 0, 0, '924523.0527', 1, '2023-05-31', '', '0000-00-00', ''),
(423, '-', '01-01-01-01-011', 0, 0, 0, '923829.1217', 1, '2023-05-31', '', '0000-00-00', ''),
(424, '-', '01-01-01-01-012', 0, 0, 0, '923976.0035', 1, '2023-05-31', '', '0000-00-00', ''),
(425, '-', '01-01-01-01-013', 0, 0, 0, '923976.4323', 1, '2023-05-31', '', '0000-00-00', ''),
(426, '-', '01-01-01-01-014', 0, 0, 0, '924523.0575', 1, '2023-05-31', '', '0000-00-00', ''),
(427, '-', '01-01-01-01-015', 0, 0, 0, '923829.1219', 1, '2023-05-31', '', '0000-00-00', ''),
(428, '-', '01-01-01-01-016', 0, 0, 0, '923829.1220', 1, '2023-05-31', '', '0000-00-00', ''),
(429, '-', '01-01-01-01-017', 0, 0, 0, '923705.0173', 1, '2023-05-31', '', '0000-00-00', ''),
(430, '-', '01-01-01-01-018', 0, 0, 0, '923829.1221', 1, '2023-05-31', '', '0000-00-00', ''),
(431, '-', '01-01-01-01-019', 0, 0, 0, '923829.1222', 1, '2023-05-31', '', '0000-00-00', ''),
(432, '-', '01-01-01-01-020', 0, 0, 0, '923829.1223', 1, '2023-05-31', '', '0000-00-00', ''),
(433, '-', '01-01-01-01-021', 0, 0, 0, '923829.1225', 1, '2023-05-31', '', '0000-00-00', ''),
(434, '-', '01-01-01-01-022', 0, 0, 0, '923829.1226', 1, '2023-05-31', '', '0000-00-00', ''),
(435, '-', '01-01-01-01-023', 0, 0, 0, '923829.1227', 1, '2023-05-31', '', '0000-00-00', ''),
(436, '-', '01-01-01-01-024', 0, 0, 0, '923829.1228', 1, '2023-05-31', '', '0000-00-00', ''),
(437, '-', '01-01-01-01-025', 0, 0, 0, '923829.1200', 1, '2023-05-31', '', '0000-00-00', ''),
(438, '-', '01-01-01-01-026', 0, 0, 0, '923976.3349', 1, '2023-05-31', '', '0000-00-00', ''),
(439, '-', '01-01-01-01-027', 0, 0, 0, 'J08555.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(440, '-', '01-01-01-01-028', 0, 0, 0, '923976.3410', 1, '2023-05-31', '', '0000-00-00', ''),
(441, '-', '01-01-01-01-029', 0, 0, 0, '923976.6013', 1, '2023-05-31', '', '0000-00-00', ''),
(442, '-', '01-01-01-01-030', 0, 0, 0, '924523.0522', 1, '2023-05-31', '', '0000-00-00', ''),
(443, '-', '01-01-01-01-031', 0, 0, 0, '924523.0523', 1, '2023-05-31', '', '0000-00-00', ''),
(444, '-', '01-01-01-01-032', 0, 0, 0, '924287.U036', 1, '2023-05-31', '', '0000-00-00', ''),
(445, '-', '01-01-01-01-033', 0, 0, 0, '923829.1175', 1, '2023-05-31', '', '0000-00-00', ''),
(446, '-', '01-01-01-01-034', 0, 0, 0, '923829.1176', 1, '2023-05-31', '', '0000-00-00', ''),
(447, '-', '01-01-01-01-035', 0, 0, 0, '923829.1178', 1, '2023-05-31', '', '0000-00-00', ''),
(448, '-', '01-01-01-01-036', 0, 0, 0, '923829.1178', 1, '2023-05-31', '', '0000-00-00', ''),
(449, '-', '01-01-01-01-037', 0, 0, 0, '923976.3324', 1, '2023-05-31', '', '0000-00-00', ''),
(450, '-', '01-01-01-01-038', 0, 0, 0, '923829.1180', 1, '2023-05-31', '', '0000-00-00', ''),
(451, '-', '01-01-01-01-039', 0, 0, 0, '923829.1181', 1, '2023-05-31', '', '0000-00-00', ''),
(452, '-', '01-01-01-01-040', 0, 0, 0, '9234829.1183', 1, '2023-05-31', '', '0000-00-00', ''),
(453, '-', '01-01-01-01-041', 0, 0, 0, '923829.1211', 1, '2023-05-31', '', '0000-00-00', ''),
(454, '-', '01-01-01-01-042', 0, 0, 0, '923829.1185', 1, '2023-05-31', '', '0000-00-00', ''),
(455, '-', '01-01-01-01-043', 0, 0, 0, '924523.0520', 1, '2023-05-31', '', '0000-00-00', ''),
(456, '-', '01-01-01-01-044', 0, 0, 0, '924523.0501', 1, '2023-05-31', '', '0000-00-00', ''),
(457, '-', '01-01-01-01-045', 0, 0, 0, '923829.1201', 1, '2023-05-31', '', '0000-00-00', ''),
(458, '-', '01-01-01-01-046', 0, 0, 0, '923829.1202', 1, '2023-05-31', '', '0000-00-00', ''),
(459, '-', '01-01-01-01-047', 0, 0, 0, '923736.0941', 1, '2023-05-31', '', '0000-00-00', ''),
(460, '-', '01-01-01-01-048', 0, 0, 0, '923976.0130', 1, '2023-05-31', '', '0000-00-00', ''),
(461, '-', '01-01-01-01-049', 0, 0, 0, '923736.0932', 1, '2023-05-31', '', '0000-00-00', ''),
(462, '-', '01-01-01-01-050', 0, 0, 0, '924523.0594', 1, '2023-05-31', '', '0000-00-00', ''),
(463, '-', '01-01-01-01-051', 0, 0, 0, '924523.0530', 1, '2023-05-31', '', '0000-00-00', ''),
(464, '-', '01-01-01-01-052', 0, 0, 0, '923829.1198', 1, '2023-05-31', '', '0000-00-00', ''),
(465, '-', '01-01-01-01-053', 0, 0, 0, '923976.0176', 1, '2023-05-31', '', '0000-00-00', ''),
(466, '-', '01-01-01-01-054', 0, 0, 0, '924523.0533', 1, '2023-05-31', '', '0000-00-00', ''),
(467, '-', '01-01-01-01-055', 0, 0, 0, '923829.1211', 1, '2023-05-31', '', '0000-00-00', ''),
(468, '-', '01-01-01-01-056', 0, 0, 0, '923829.1212', 1, '2023-05-31', '', '0000-00-00', ''),
(469, '-', '01-01-01-01-057', 0, 0, 0, '924523.0522', 1, '2023-05-31', '', '0000-00-00', ''),
(470, '-', '01-01-01-01-058', 0, 0, 0, '924523.0523', 1, '2023-05-31', '', '0000-00-00', ''),
(471, '-', '01-01-01-01-059', 0, 0, 0, '923829.1409', 1, '2023-05-31', '', '0000-00-00', ''),
(472, '-', '01-01-01-01-060', 0, 0, 0, '923829.1410', 1, '2023-05-31', '', '0000-00-00', ''),
(473, '-', '01-01-01-01-061', 0, 0, 0, '924523.0580', 1, '2023-05-31', '', '0000-00-00', ''),
(474, '-', '01-01-01-01-062', 0, 0, 0, '924523.0581', 1, '2023-05-31', '', '0000-00-00', ''),
(475, '-', '01-01-01-01-063', 0, 0, 0, '924523.0581', 1, '2023-05-31', '', '0000-00-00', ''),
(476, '-', '01-01-01-01-064', 0, 0, 0, '923692.0022', 1, '2023-05-31', '', '0000-00-00', ''),
(477, '-', '01-01-01-01-065', 0, 0, 0, '923829.1395', 1, '2023-05-31', '', '0000-00-00', ''),
(478, '-', '01-01-01-01-066', 0, 0, 0, '924523.0576', 1, '2023-05-31', '', '0000-00-00', ''),
(479, '-', '01-01-01-01-067', 0, 0, 0, '923976.3604', 1, '2023-05-31', '', '0000-00-00', ''),
(480, '-', '01-01-01-01-068', 0, 0, 0, '923829.1350', 1, '2023-05-31', '', '0000-00-00', ''),
(481, '-', '01-01-01-01-069', 0, 0, 0, '923110.0976', 1, '2023-05-31', '', '0000-00-00', ''),
(482, '-', '01-01-01-01-070', 0, 0, 0, '920969.0030', 1, '2023-05-31', '', '0000-00-00', ''),
(483, '-', '01-01-01-01-071', 0, 0, 0, '923855.1224', 1, '2023-05-31', '', '0000-00-00', ''),
(484, '-', '01-01-01-01-072', 0, 0, 0, '923855.1225', 1, '2023-05-31', '', '0000-00-00', ''),
(485, '-', '01-01-01-01-073', 0, 0, 0, '924523.0591', 1, '2023-05-31', '', '0000-00-00', ''),
(486, '-', '01-01-01-01-074', 0, 0, 0, '924287.U091', 1, '2023-05-31', '', '0000-00-00', ''),
(487, '-', '01-01-01-01-075', 0, 0, 0, '921079.0078', 1, '2023-05-31', '', '0000-00-00', ''),
(488, '-', '01-01-01-01-076', 0, 0, 0, '923829.1296', 1, '2023-05-31', '', '0000-00-00', ''),
(489, '-', '01-01-01-01-077', 0, 0, 0, '923829.1270', 1, '2023-05-31', '', '0000-00-00', ''),
(490, '-', '01-01-01-01-078', 0, 0, 0, '923581.0071', 1, '2023-05-31', '', '0000-00-00', ''),
(491, '-', '01-01-01-01-079', 0, 0, 0, 'J06585.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(492, '-', '01-01-01-01-080', 0, 0, 0, 'A57812.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(493, '-', '01-01-01-01-081', 0, 0, 0, '923581.0071', 1, '2023-05-31', '', '0000-00-00', ''),
(494, '-', '01-01-01-01-082', 0, 0, 0, '923976.0327', 1, '2023-05-31', '', '0000-00-00', ''),
(495, '-', '01-01-01-01-083', 0, 0, 0, '924287.U056', 1, '2023-05-31', '', '0000-00-00', ''),
(496, '-', '01-01-01-01-084', 0, 0, 0, '923976.0179', 1, '2023-05-31', '', '0000-00-00', ''),
(497, '-', '01-01-01-01-085', 0, 0, 0, '924523.0550', 1, '2023-05-31', '', '0000-00-00', ''),
(498, '-', '01-01-01-01-086', 0, 0, 0, '923976.0308', 1, '2023-05-31', '', '0000-00-00', ''),
(499, '-', '01-01-01-01-087', 0, 0, 0, '923829.1235', 1, '2023-05-31', '', '0000-00-00', ''),
(500, '-', '01-01-01-01-088', 0, 0, 0, '923976.3425', 1, '2023-05-31', '', '0000-00-00', ''),
(501, '-', '01-01-01-01-089', 0, 0, 0, '923829.1237', 1, '2023-05-31', '', '0000-00-00', ''),
(502, '-', '01-01-01-01-090', 0, 0, 0, '923976.3430', 1, '2023-05-31', '', '0000-00-00', ''),
(503, '-', '01-01-01-01-091', 0, 0, 0, '923976.0912', 1, '2023-05-31', '', '0000-00-00', ''),
(504, '-', '01-01-01-01-092', 0, 0, 0, '923976.4306', 1, '2023-05-31', '', '0000-00-00', ''),
(505, '-', '01-01-01-01-093', 0, 0, 0, '924523.0494', 1, '2023-05-31', '', '0000-00-00', ''),
(506, '-', '01-01-01-01-094', 0, 0, 0, '923705.0032', 1, '2023-05-31', '', '0000-00-00', ''),
(507, '-', '01-01-01-01-095', 0, 0, 0, '923829.1241', 1, '2023-05-31', '', '0000-00-00', ''),
(508, '-', '01-01-01-01-096', 0, 0, 0, '923829.1251', 1, '2023-05-31', '', '0000-00-00', ''),
(509, '-', '01-01-01-01-097', 0, 0, 0, '923829.1254', 1, '2023-05-31', '', '0000-00-00', ''),
(510, '-', '01-01-01-01-098', 0, 0, 0, '924523.0535', 1, '2023-05-31', '', '0000-00-00', ''),
(511, '-', '01-01-01-01-099', 0, 0, 0, '923110.0057', 1, '2023-05-31', '', '0000-00-00', ''),
(512, '-', '01-01-01-01-100', 0, 0, 0, '923976.3462', 1, '2023-05-31', '', '0000-00-00', ''),
(513, '-', '01-01-01-01-101', 0, 0, 0, '923976.3135', 1, '2023-05-31', '', '0000-00-00', ''),
(514, '-', '01-01-01-01-102', 0, 0, 0, '923976.3425', 1, '2023-05-31', '', '0000-00-00', ''),
(515, '-', '01-01-01-01-103', 0, 0, 0, '923976.0395', 1, '2023-05-31', '', '0000-00-00', ''),
(516, '-', '01-01-01-01-104', 0, 0, 0, '924523.0535', 1, '2023-05-31', '', '0000-00-00', ''),
(517, '-', '01-01-01-01-105', 0, 0, 0, '924523.0561', 1, '2023-05-31', '', '0000-00-00', ''),
(518, '-', '01-01-01-01-106', 0, 0, 0, 'A57170.0200', 1, '2023-05-31', '', '0000-00-00', ''),
(519, '-', '01-01-01-01-107', 0, 0, 0, 'A44250.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(520, '-', '01-01-01-01-108', 0, 0, 0, 'A47518.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(521, '-', '01-01-01-01-109', 0, 0, 0, 'A05532.2700', 1, '2023-05-31', '', '0000-00-00', ''),
(522, '-', '01-01-01-01-110', 0, 0, 0, 'A05532.2800', 1, '2023-05-31', '', '0000-00-00', ''),
(523, '-', '01-01-01-01-111', 0, 0, 0, '924523.0506', 1, '2023-05-31', '', '0000-00-00', ''),
(524, '-', '01-01-01-01-112', 0, 0, 0, '924504.1052', 1, '2023-05-31', '', '0000-00-00', ''),
(525, '-', '01-01-01-01-113', 0, 0, 0, '923976.3595', 1, '2023-05-31', '', '0000-00-00', ''),
(526, '-', '01-01-01-01-114', 0, 0, 0, '921896.0018', 1, '2023-05-31', '', '0000-00-00', ''),
(527, '-', '01-01-01-01-115', 0, 0, 0, '923829.1412', 1, '2023-05-31', '', '0000-00-00', ''),
(528, '-', '01-01-01-01-116', 0, 0, 0, '923976.0312', 1, '2023-05-31', '', '0000-00-00', ''),
(529, '-', '01-01-01-01-117', 0, 0, 0, '924523.0524', 1, '2023-05-31', '', '0000-00-00', ''),
(530, '-', '01-01-01-01-118', 0, 0, 0, '923976.0322', 1, '2023-05-31', '', '0000-00-00', ''),
(531, '-', '01-01-01-01-119', 0, 0, 0, '923855.0838', 1, '2023-05-31', '', '0000-00-00', ''),
(532, '-', '01-01-01-01-120', 0, 0, 0, '923120.0708', 1, '2023-05-31', '', '0000-00-00', ''),
(533, '-', '01-01-01-01-121', 0, 0, 0, '924523.0583', 1, '2023-05-31', '', '0000-00-00', ''),
(534, '-', '01-01-01-01-122', 0, 0, 0, '922297.0170', 1, '2023-05-31', '', '0000-00-00', ''),
(535, '-', '01-01-01-01-123', 0, 0, 0, '923976.2810', 1, '2023-05-31', '', '0000-00-00', ''),
(536, '-', '01-01-01-01-124', 0, 0, 0, '920378.002', 1, '2023-05-31', '', '0000-00-00', ''),
(537, '-', '01-01-01-01-125', 0, 0, 0, '923941.0552', 1, '2023-05-31', '', '0000-00-00', ''),
(538, '-', '01-01-01-01-126', 0, 0, 0, '923855.1822', 1, '2023-05-31', '', '0000-00-00', ''),
(539, '-', '01-01-01-01-127', 0, 0, 0, '923976.2427', 1, '2023-05-31', '', '0000-00-00', ''),
(540, '-', '01-01-01-01-128', 0, 0, 0, '923855.1821', 1, '2023-05-31', '', '0000-00-00', ''),
(541, '-', '01-01-01-01-129', 0, 0, 0, '923941.0554', 1, '2023-05-31', '', '0000-00-00', ''),
(542, '-', '01-01-01-01-130', 0, 0, 0, '923855.1822', 1, '2023-05-31', '', '0000-00-00', ''),
(543, '-', '01-01-01-01-131', 0, 0, 0, '923855.1820', 1, '2023-05-31', '', '0000-00-00', ''),
(544, '-', '01-01-01-01-132', 0, 0, 0, '923855.1400', 1, '2023-05-31', '', '0000-00-00', ''),
(545, '-', '01-01-01-01-133', 0, 0, 0, '923855.1414', 1, '2023-05-31', '', '0000-00-00', ''),
(546, '-', '01-01-01-01-134', 0, 0, 0, '923855.1415', 1, '2023-05-31', '', '0000-00-00', ''),
(547, '-', '01-01-01-01-135', 0, 0, 0, '923763.0002', 1, '2023-05-31', '', '0000-00-00', ''),
(548, '-', '01-01-01-01-136', 0, 0, 0, '923828.0121', 1, '2023-05-31', '', '0000-00-00', ''),
(549, '-', '01-01-01-01-137', 0, 0, 0, '923636.0277', 1, '2023-05-31', '', '0000-00-00', ''),
(550, '-', '01-01-01-01-138', 0, 0, 0, '923109.0331', 1, '2023-05-31', '', '0000-00-00', ''),
(551, '-', '01-01-01-01-139', 0, 0, 0, '923109.0340', 1, '2023-05-31', '', '0000-00-00', ''),
(552, '-', '01-01-01-01-140', 0, 0, 0, '923978.0773', 1, '2023-05-31', '', '0000-00-00', ''),
(553, '-', '01-01-01-01-141', 0, 0, 0, '923828.0129', 1, '2023-05-31', '', '0000-00-00', ''),
(554, '-', '01-01-01-01-142', 0, 0, 0, '923978.0774', 1, '2023-05-31', '', '0000-00-00', ''),
(555, '-', '01-01-01-01-143', 0, 0, 0, '923855.1424', 1, '2023-05-31', '', '0000-00-00', ''),
(556, '-', '01-01-01-01-144', 0, 0, 0, '923978.0775', 1, '2023-05-31', '', '0000-00-00', ''),
(557, '-', '01-01-01-01-145', 0, 0, 0, '923855.1430', 1, '2023-05-31', '', '0000-00-00', ''),
(558, '-', '01-01-01-01-146', 0, 0, 0, '923944.1492', 1, '2023-05-31', '', '0000-00-00', ''),
(559, '-', '01-01-01-01-147', 0, 0, 0, '923855.1433', 1, '2023-05-31', '', '0000-00-00', ''),
(560, '-', '01-01-01-01-148', 0, 0, 0, '923855.1439', 1, '2023-05-31', '', '0000-00-00', ''),
(561, '-', '01-01-01-01-149', 0, 0, 0, '923829.0725', 1, '2023-05-31', '', '0000-00-00', ''),
(562, '-', '01-01-01-01-150', 0, 0, 0, '923855.1441', 1, '2023-05-31', '', '0000-00-00', ''),
(563, '-', '01-01-01-01-151', 0, 0, 0, '923109.0340', 1, '2023-05-31', '', '0000-00-00', ''),
(564, '-', '01-01-01-01-152', 0, 0, 0, '923855.1447', 1, '2023-05-31', '', '0000-00-00', ''),
(565, '-', '01-01-01-01-153', 0, 0, 0, '923944.1493', 1, '2023-05-31', '', '0000-00-00', ''),
(566, '-', '01-01-01-01-154', 0, 0, 0, '923944.1494', 1, '2023-05-31', '', '0000-00-00', ''),
(567, '-', '01-01-01-01-155', 0, 0, 0, '923944.1495', 1, '2023-05-31', '', '0000-00-00', ''),
(568, '-', '01-01-01-01-156', 0, 0, 0, '923855.1453', 1, '2023-05-31', '', '0000-00-00', ''),
(569, '-', '01-01-01-01-157', 0, 0, 0, '923109.0383', 1, '2023-05-31', '', '0000-00-00', ''),
(570, '-', '01-01-01-01-158', 0, 0, 0, '923109.0384', 1, '2023-05-31', '', '0000-00-00', ''),
(571, '-', '01-01-01-01-159', 0, 0, 0, '923109.0340', 1, '2023-05-31', '', '0000-00-00', ''),
(572, '-', '01-01-01-01-160', 0, 0, 0, '923855.1430', 1, '2023-05-31', '', '0000-00-00', ''),
(573, '-', '01-01-01-01-161', 0, 0, 0, '923944.1492', 1, '2023-05-31', '', '0000-00-00', ''),
(574, '-', '01-01-01-01-162', 0, 0, 0, '923855.1469', 1, '2023-05-31', '', '0000-00-00', ''),
(575, '-', '01-01-01-01-163', 0, 0, 0, '923855.1470', 1, '2023-05-31', '', '0000-00-00', ''),
(576, '-', '01-01-01-01-164', 0, 0, 0, '923855.1430', 1, '2023-05-31', '', '0000-00-00', ''),
(577, '-', '01-01-01-01-165', 0, 0, 0, '923944.1492', 1, '2023-05-31', '', '0000-00-00', ''),
(578, '-', '01-01-01-01-166', 0, 0, 0, '923855.1433', 1, '2023-05-31', '', '0000-00-00', ''),
(579, '-', '01-01-01-01-167', 0, 0, 0, '923855.1434', 1, '2023-05-31', '', '0000-00-00', ''),
(580, '-', '01-01-01-01-168', 0, 0, 0, '923855.1430', 1, '2023-05-31', '', '0000-00-00', ''),
(581, '-', '01-01-01-01-169', 0, 0, 0, '923855.1491', 1, '2023-05-31', '', '0000-00-00', ''),
(582, '-', '01-01-01-01-170', 0, 0, 0, '923855.1492', 1, '2023-05-31', '', '0000-00-00', ''),
(583, '-', '01-01-01-01-171', 0, 0, 0, '921028.0008', 1, '2023-05-31', '', '0000-00-00', ''),
(584, '-', '01-01-01-01-172', 0, 0, 0, '921028.0007', 1, '2023-05-31', '', '0000-00-00', ''),
(585, '-', '01-01-01-01-173', 0, 0, 0, '923978.0790', 1, '2023-05-31', '', '0000-00-00', ''),
(586, '-', '01-01-01-01-174', 0, 0, 0, 'A56888.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(587, '-', '01-01-01-01-175', 0, 0, 0, '923315.0058', 1, '2023-05-31', '', '0000-00-00', ''),
(588, '-', '01-01-01-01-176', 0, 0, 0, '923976.6046', 1, '2023-05-31', '', '0000-00-00', ''),
(589, '-', '01-01-01-01-177', 0, 0, 0, '923978.0791', 1, '2023-05-31', '', '0000-00-00', ''),
(590, '-', '01-01-01-01-178', 0, 0, 0, 'J020307', 1, '2023-05-31', '', '0000-00-00', ''),
(591, '-', '01-01-01-01-179', 0, 0, 0, '923978.0796', 1, '2023-05-31', '', '0000-00-00', ''),
(592, '-', '01-01-01-01-180', 0, 0, 0, '923978.0801', 1, '2023-05-31', '', '0000-00-00', ''),
(593, '-', '01-01-01-01-181', 0, 0, 0, '923978.0806', 1, '2023-05-31', '', '0000-00-00', ''),
(594, '-', '01-01-01-01-182', 0, 0, 0, '923083.0014', 1, '2023-05-31', '', '0000-00-00', ''),
(595, '-', '01-01-01-01-183', 0, 0, 0, '920981.0050', 1, '2023-05-31', '', '0000-00-00', ''),
(596, '-', '01-01-01-01-184', 0, 0, 0, '924015.0796', 1, '2023-05-31', '', '0000-00-00', ''),
(597, '-', '01-01-01-01-185', 0, 0, 0, '923976.5510', 1, '2023-05-31', '', '0000-00-00', ''),
(598, '-', '01-01-01-01-186', 0, 0, 0, '923976.5511', 1, '2023-05-31', '', '0000-00-00', ''),
(599, '-', '01-01-01-01-187', 0, 0, 0, '923828.0399', 1, '2023-05-31', '', '0000-00-00', ''),
(600, '-', '01-01-01-01-188', 0, 0, 0, '923828.0431', 1, '2023-05-31', '', '0000-00-00', ''),
(601, '-', '01-01-01-01-189', 0, 0, 0, '923976.5552', 1, '2023-05-31', '', '0000-00-00', ''),
(602, '-', '01-01-01-01-190', 0, 0, 0, '923976.5515', 1, '2023-05-31', '', '0000-00-00', ''),
(603, '-', '01-01-01-01-191', 0, 0, 0, '923976.5517', 1, '2023-05-31', '', '0000-00-00', ''),
(604, '-', '01-01-01-01-192', 0, 0, 0, '923976.5518', 1, '2023-05-31', '', '0000-00-00', ''),
(605, '-', '01-01-01-01-193', 0, 0, 0, '923976.5519', 1, '2023-05-31', '', '0000-00-00', ''),
(606, '-', '01-01-01-01-194', 0, 0, 0, '923109.0128', 1, '2023-05-31', '', '0000-00-00', ''),
(607, '-', '01-01-01-01-195', 0, 0, 0, 'TVH-8380188', 1, '2023-05-31', '', '0000-00-00', ''),
(608, '-', '01-01-01-01-196', 0, 0, 0, 'ICM2018069', 1, '2023-05-31', '', '0000-00-00', ''),
(609, '-', '01-01-01-01-197', 0, 0, 0, '802308761', 1, '2023-05-31', '', '0000-00-00', ''),
(610, '-', '01-01-01-01-198', 0, 0, 0, '1095', 1, '2023-05-31', '', '0000-00-00', ''),
(611, '-', '01-01-01-01-199', 0, 0, 0, '923976.2407', 1, '2023-05-31', '', '0000-00-00', ''),
(612, '-', '01-01-01-01-200', 0, 0, 0, '922593.0010', 1, '2023-05-31', '', '0000-00-00', ''),
(613, '-', '01-01-01-01-201', 0, 0, 0, '922672.0005', 1, '2023-05-31', '', '0000-00-00', ''),
(614, '-', '01-01-01-01-202', 0, 0, 0, '923543.0025', 1, '2023-05-31', '', '0000-00-00', ''),
(615, '-', '01-01-01-01-203', 0, 0, 0, '920523.0027', 1, '2023-05-31', '', '0000-00-00', ''),
(616, '-', '01-01-01-01-204', 0, 0, 0, '923976.2805', 1, '2023-05-31', '', '0000-00-00', ''),
(617, '-', '01-01-01-01-205', 0, 0, 0, '923576.0009', 1, '2023-05-31', '', '0000-00-00', ''),
(618, '-', '01-01-01-01-206', 0, 0, 0, '920596.0022', 1, '2023-05-31', '', '0000-00-00', ''),
(619, '-', '01-01-01-01-207', 0, 0, 0, '920596.0055', 1, '2023-05-31', '', '0000-00-00', ''),
(620, '-', '01-01-01-01-208', 0, 0, 0, '920596.0029', 1, '2023-05-31', '', '0000-00-00', ''),
(621, '-', '01-01-01-01-209', 0, 0, 0, '922748.0001', 1, '2023-05-31', '', '0000-00-00', ''),
(622, '-', '01-01-01-01-210', 0, 0, 0, '923636.0749', 1, '2023-05-31', '', '0000-00-00', ''),
(623, '-', '01-01-01-01-211', 0, 0, 0, '922746.0001', 1, '2023-05-31', '', '0000-00-00', ''),
(624, '-', '01-01-01-01-212', 0, 0, 0, '923855.1376', 1, '2023-05-31', '', '0000-00-00', ''),
(625, '-', '01-01-01-01-213', 0, 0, 0, '923855.0776', 1, '2023-05-31', '', '0000-00-00', ''),
(626, '-', '01-01-01-01-214', 0, 0, 0, '923855.1689', 1, '2023-05-31', '', '0000-00-00', ''),
(627, '-', '01-01-01-01-215', 0, 0, 0, '923855.1691', 1, '2023-05-31', '', '0000-00-00', ''),
(628, '-', '01-01-01-01-216', 0, 0, 0, '923855.1692', 1, '2023-05-31', '', '0000-00-00', ''),
(629, '-', '01-01-01-01-217', 0, 0, 0, '923976.2264', 1, '2023-05-31', '', '0000-00-00', ''),
(630, '-', '01-01-01-01-218', 0, 0, 0, '923855.1695', 1, '2023-05-31', '', '0000-00-00', ''),
(631, '-', '01-01-01-01-219', 0, 0, 0, '923855.1701', 1, '2023-05-31', '', '0000-00-00', ''),
(632, '-', '01-01-01-01-220', 0, 0, 0, '923855.1702', 1, '2023-05-31', '', '0000-00-00', ''),
(633, '-', '01-01-01-01-221', 0, 0, 0, '923855.1706', 1, '2023-05-31', '', '0000-00-00', ''),
(634, '-', '01-01-01-01-222', 0, 0, 0, '923726.0424', 1, '2023-05-31', '', '0000-00-00', ''),
(635, '-', '01-01-01-01-223', 0, 0, 0, '920169.011', 1, '2023-05-31', '', '0000-00-00', ''),
(636, '-', '01-01-01-01-224', 0, 0, 0, '923432.0005', 1, '2023-05-31', '', '0000-00-00', ''),
(637, '-', '01-01-01-01-225', 0, 0, 0, '923855.1185', 1, '2023-05-31', '', '0000-00-00', ''),
(638, '-', '01-01-01-01-226', 0, 0, 0, '921679.0019', 1, '2023-05-31', '', '0000-00-00', ''),
(639, '-', '01-01-01-01-227', 0, 0, 0, '923976.6005', 1, '2023-05-31', '', '0000-00-00', ''),
(640, '-', '01-01-01-01-228', 0, 0, 0, '923976.6006', 1, '2023-05-31', '', '0000-00-00', ''),
(641, '-', '01-01-01-01-229', 0, 0, 0, '922804.0002', 1, '2023-05-31', '', '0000-00-00', ''),
(642, '-', '01-01-01-01-230', 0, 0, 0, '923764.0218', 1, '2023-05-31', '', '0000-00-00', ''),
(643, '-', '01-01-01-01-231', 0, 0, 0, '924015.1450', 1, '2023-05-31', '', '0000-00-00', ''),
(644, '-', '01-01-01-01-232', 0, 0, 0, '924015.1451', 1, '2023-05-31', '', '0000-00-00', ''),
(645, '-', '01-01-01-01-233', 0, 0, 0, 'A34950.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(646, '-', '01-01-01-01-234', 0, 0, 0, '921162.0011', 1, '2023-05-31', '', '0000-00-00', ''),
(647, '-', '01-01-01-01-235', 0, 0, 0, '921162.0010', 1, '2023-05-31', '', '0000-00-00', ''),
(648, '-', '01-01-01-01-236', 0, 0, 0, 'A02107.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(649, '-', '01-01-01-01-237', 0, 0, 0, '920081.010', 1, '2023-05-31', '', '0000-00-00', ''),
(650, '-', '01-01-01-01-238', 0, 0, 0, '920081.036', 1, '2023-05-31', '', '0000-00-00', ''),
(651, '-', '01-01-01-01-239', 0, 0, 0, 'A50442.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(652, '-', '01-01-01-01-240', 0, 0, 0, 'A60749.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(653, '-', '01-01-01-01-241', 0, 0, 0, '920070.018', 1, '2023-05-31', '', '0000-00-00', ''),
(654, '-', '01-01-01-01-242', 0, 0, 0, '920070.049', 1, '2023-05-31', '', '0000-00-00', ''),
(655, '-', '01-01-01-01-243', 0, 0, 0, 'A41371.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(656, '-', '01-01-01-01-244', 0, 0, 0, '548', 1, '2023-05-31', '', '0000-00-00', ''),
(657, '-', '01-01-01-01-245', 0, 0, 0, '920598.0004', 1, '2023-05-31', '', '0000-00-00', ''),
(658, '-', '01-01-01-01-246', 0, 0, 0, 'A02104.0300', 1, '2023-05-31', '', '0000-00-00', ''),
(659, '-', '01-01-01-01-247', 0, 0, 0, 'A27135.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(660, '-', '01-01-01-01-248', 0, 0, 0, '923543.0023', 1, '2023-05-31', '', '0000-00-00', ''),
(661, '-', '01-01-01-01-249', 0, 0, 0, '921589.0008', 1, '2023-05-31', '', '0000-00-00', ''),
(662, '-', '01-01-01-01-250', 0, 0, 0, '920130.013', 1, '2023-05-31', '', '0000-00-00', ''),
(663, '-', '01-01-01-01-251', 0, 0, 0, '923855.1184', 1, '2023-05-31', '', '0000-00-00', ''),
(664, '-', '01-01-01-01-252', 0, 0, 0, '924015.1507', 1, '2023-05-31', '', '0000-00-00', ''),
(665, '-', '01-01-01-01-253', 0, 0, 0, '921463.0008', 1, '2023-05-31', '', '0000-00-00', ''),
(666, '-', '01-01-01-01-254', 0, 0, 0, '924015.1493', 1, '2023-05-31', '', '0000-00-00', ''),
(667, '-', '01-01-01-01-255', 0, 0, 0, '923944.2484', 1, '2023-05-31', '', '0000-00-00', ''),
(668, '-', '01-01-01-01-256', 0, 0, 0, '9270070.031', 1, '2023-05-31', '', '0000-00-00', ''),
(669, '-', '01-01-01-01-257', 0, 0, 0, '923543.0026', 1, '2023-05-31', '', '0000-00-00', ''),
(670, '-', '01-01-01-01-258', 0, 0, 0, '924015.1798', 1, '2023-05-31', '', '0000-00-00', ''),
(671, '-', '01-01-01-01-259', 0, 0, 0, '924015.2531', 1, '2023-05-31', '', '0000-00-00', ''),
(672, '-', '01-01-01-01-260', 0, 0, 0, '924015.1551', 1, '2023-05-31', '', '0000-00-00', ''),
(673, '-', '01-01-01-01-261', 0, 0, 0, '923828.0721', 1, '2023-05-31', '', '0000-00-00', ''),
(674, '-', '01-01-01-01-262', 0, 0, 0, '923828.0748', 1, '2023-05-31', '', '0000-00-00', ''),
(675, '-', '01-01-01-01-263', 0, 0, 0, '924015.1362', 1, '2023-05-31', '', '0000-00-00', ''),
(676, '-', '01-01-01-01-264', 0, 0, 0, '924015.0822', 1, '2023-05-31', '', '0000-00-00', ''),
(677, '-', '01-01-01-01-265', 0, 0, 0, 'TVH-4000207', 1, '2023-05-31', '', '0000-00-00', ''),
(678, '-', '01-01-01-01-266', 0, 0, 0, '923828.0012', 1, '2023-05-31', '', '0000-00-00', ''),
(679, '-', '01-01-01-01-267', 0, 0, 0, '923726.0558', 1, '2023-05-31', '', '0000-00-00', ''),
(680, '-', '01-01-01-01-268', 0, 0, 0, '923944.2596', 1, '2023-05-31', '', '0000-00-00', ''),
(681, '-', '01-01-01-01-269', 0, 0, 0, '924015.0845', 1, '2023-05-31', '', '0000-00-00', ''),
(682, '-', '01-01-01-01-270', 0, 0, 0, '923764.0644', 1, '2023-05-31', '', '0000-00-00', ''),
(683, '-', '01-01-01-01-271', 0, 0, 0, 'TVH-9049955', 1, '2023-05-31', '', '0000-00-00', ''),
(684, '-', '01-01-01-01-272', 0, 0, 0, 'TVH-6932196', 1, '2023-05-31', '', '0000-00-00', ''),
(685, '-', '01-01-01-01-273', 0, 0, 0, '920169.016', 1, '2023-05-31', '', '0000-00-00', ''),
(686, '-', '01-01-01-01-274', 0, 0, 0, '923934.0097', 1, '2023-05-31', '', '0000-00-00', ''),
(687, '-', '01-01-01-01-275', 0, 0, 0, '920150.003', 1, '2023-05-31', '', '0000-00-00', ''),
(688, '-', '01-01-01-01-276', 0, 0, 0, '923976.5557', 1, '2023-05-31', '', '0000-00-00', ''),
(689, '-', '01-01-01-01-277', 0, 0, 0, '923944.2131', 1, '2023-05-31', '', '0000-00-00', ''),
(690, '-', '01-01-01-01-278', 0, 0, 0, '923944.1573', 1, '2023-05-31', '', '0000-00-00', ''),
(691, '-', '01-01-01-01-279', 0, 0, 0, '922316.0007', 1, '2023-05-31', '', '0000-00-00', ''),
(692, '-', '01-01-01-01-280', 0, 0, 0, '923944.2379', 1, '2023-05-31', '', '0000-00-00', ''),
(693, '-', '01-01-01-01-281', 0, 0, 0, '923432.0004', 1, '2023-05-31', '', '0000-00-00', ''),
(694, '-', '01-01-01-01-282', 0, 0, 0, '923855.1183', 1, '2023-05-31', '', '0000-00-00', ''),
(695, '-', '01-01-01-01-283', 0, 0, 0, '922316.0006', 1, '2023-05-31', '', '0000-00-00', ''),
(696, '-', '01-01-01-01-284', 0, 0, 0, '922315.0004', 1, '2023-05-31', '', '0000-00-00', ''),
(697, '-', '01-01-01-01-285', 0, 0, 0, '923944.1780', 1, '2023-05-31', '', '0000-00-00', ''),
(698, '-', '01-01-01-01-286', 0, 0, 0, 'K23021651H', 1, '2023-05-31', '', '0000-00-00', ''),
(699, '-', '01-01-01-01-287', 0, 0, 0, 'J08090.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(700, '-', '01-01-01-01-288', 0, 0, 0, '923110.0436', 1, '2023-05-31', '', '0000-00-00', ''),
(701, '-', '01-01-01-01-289', 0, 0, 0, '923828.0422', 1, '2023-05-31', '', '0000-00-00', ''),
(702, '-', '01-01-01-01-290', 0, 0, 0, '923976.551', 1, '2023-05-31', '', '0000-00-00', ''),
(703, '-', '01-01-01-01-291', 0, 0, 0, '921463.0009', 1, '2023-05-31', '', '0000-00-00', ''),
(704, '-', '02-01-01-01-001', 0, 0, 0, '923941.0820', 1, '2023-05-31', '', '0000-00-00', ''),
(705, '-', '02-01-01-01-002', 0, 0, 0, '920379.002', 1, '2023-05-31', '', '0000-00-00', ''),
(706, '-', '02-01-01-01-003', 0, 0, 0, '923855.1448', 1, '2023-05-31', '', '0000-00-00', ''),
(707, '-', '02-01-01-01-004', 0, 0, 0, '923855.1459', 1, '2023-05-31', '', '0000-00-00', ''),
(708, '-', '02-01-01-01-005', 0, 0, 0, '924627.2207', 1, '2023-05-31', '', '0000-00-00', ''),
(709, '-', '02-01-01-01-006', 0, 0, 0, '923108.0057', 1, '2023-05-31', '', '0000-00-00', ''),
(710, '-', '02-01-01-01-007', 0, 0, 0, '923941.0835', 1, '2023-05-31', '', '0000-00-00', ''),
(711, '-', '01-01-01-01-292', 0, 0, 0, 'J020321', 1, '2023-05-31', '', '0000-00-00', ''),
(712, '-', '01-01-01-01-293', 0, 0, 0, '920981.0023', 1, '2023-05-31', '', '0000-00-00', ''),
(713, '-', '01-01-01-01-294', 0, 0, 0, '923944.3091', 1, '2023-05-31', '', '0000-00-00', ''),
(714, '-', '01-01-01-01-295', 0, 0, 0, '923944.3092', 1, '2023-05-31', '', '0000-00-00', ''),
(715, '-', '01-01-01-01-296', 0, 0, 0, 'J018288', 1, '2023-05-31', '', '0000-00-00', ''),
(716, '-', '02-01-01-01-008', 0, 0, 0, '923829.0700', 1, '2023-05-31', '', '0000-00-00', ''),
(717, '-', '01-01-01-01-297', 0, 0, 0, 'J018289', 1, '2023-05-31', '', '0000-00-00', ''),
(718, '-', '02-01-01-01-009', 0, 0, 0, '90031422', 1, '2023-05-31', '', '0000-00-00', ''),
(719, '-', '02-01-01-01-010', 0, 0, 0, '923829.0620', 1, '2023-05-31', '', '0000-00-00', ''),
(720, '-', '02-01-01-01-011', 0, 0, 0, '924523.1274', 1, '2023-05-31', '', '0000-00-00', ''),
(721, '-', '02-01-01-01-012', 0, 0, 0, '924548.0289', 1, '2023-05-31', '', '0000-00-00', ''),
(722, '-', '02-01-01-01-013', 0, 0, 0, '924523.1314', 1, '2023-05-31', '', '0000-00-00', ''),
(723, '-', '01-01-01-01-298', 0, 0, 0, '923110.0975', 1, '2023-05-31', '', '0000-00-00', ''),
(724, '-', '01-01-01-01-299', 0, 0, 0, '923349.0652', 1, '2023-05-31', '', '0000-00-00', ''),
(725, '-', '01-01-01-01-300', 0, 0, 0, '923941.0400', 1, '2023-05-31', '', '0000-00-00', ''),
(726, '-', '01-01-01-01-301', 0, 0, 0, '923349.0516', 1, '2023-05-31', '', '0000-00-00', ''),
(727, '-', '02-01-01-01-014', 0, 0, 0, '923110.0577', 1, '2023-05-31', '', '0000-00-00', ''),
(728, '-', '01-01-01-01-302', 0, 0, 0, '923944.3095', 1, '2023-05-31', '', '0000-00-00', ''),
(729, '-', '01-01-01-01-303', 0, 0, 0, '923855.0289', 1, '2023-05-31', '', '0000-00-00', ''),
(730, '-', '01-01-01-01-304', 0, 0, 0, '923855.0281', 1, '2023-05-31', '', '0000-00-00', ''),
(731, '-', '01-01-01-01-305', 0, 0, 0, 'J036124', 1, '2023-05-31', '', '0000-00-00', ''),
(732, '-', '01-01-01-01-306', 0, 0, 0, 'K5679210', 1, '2023-05-31', '', '0000-00-00', ''),
(733, '-', '02-01-01-01-015', 0, 0, 0, 'ICM2022038', 1, '2023-05-31', '', '0000-00-00', ''),
(734, '-', '01-01-01-01-307', 0, 0, 0, 'ICM2027714', 1, '2023-05-31', '', '0000-00-00', ''),
(735, '-', '01-01-01-01-308', 0, 0, 0, 'J06551.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(736, '-', '01-01-01-01-309', 0, 0, 0, '924627.1504', 1, '2023-05-31', '', '0000-00-00', ''),
(737, '-', '01-01-01-01-310', 0, 0, 0, '800820061', 1, '2023-05-31', '', '0000-00-00', ''),
(738, '-', '01-01-01-01-311', 0, 0, 0, 'J023936', 1, '2023-05-31', '', '0000-00-00', ''),
(739, '-', '02-01-01-01-016', 0, 0, 0, '924011.0018', 1, '2023-05-31', '', '0000-00-00', ''),
(740, '-', '01-01-01-01-312', 0, 0, 0, 'T0209036H', 1, '2023-05-31', '', '0000-00-00', ''),
(741, '-', '02-01-01-01-017', 0, 0, 0, '924287.0071', 1, '2023-05-31', '', '0000-00-00', ''),
(742, '-', '01-01-01-01-313', 0, 0, 0, 'TVH-9337815', 1, '2023-05-31', '', '0000-00-00', ''),
(743, '-', '01-01-01-01-314', 0, 0, 0, '924334.0001', 1, '2023-05-31', '', '0000-00-00', ''),
(744, '-', '02-01-01-01-018', 0, 0, 0, '923142.0036', 1, '2023-05-31', '', '0000-00-00', ''),
(745, '-', '02-01-01-01-019', 0, 0, 0, '923543.0098', 1, '2023-05-31', '', '0000-00-00', ''),
(746, '-', '01-01-01-01-315', 0, 0, 0, 'TVH-3620536', 1, '2023-05-31', '', '0000-00-00', ''),
(747, '-', '01-01-01-01-316', 0, 0, 0, '923543.0066', 1, '2023-05-31', '', '0000-00-00', ''),
(748, '-', '01-01-01-01-317', 0, 0, 0, 'JP106371', 1, '2023-05-31', '', '0000-00-00', ''),
(749, '-', '01-01-01-01-318', 0, 0, 0, '923625.0016', 1, '2023-05-31', '', '0000-00-00', ''),
(750, '-', '01-01-01-01-319', 0, 0, 0, 'J032471', 1, '2023-05-31', '', '0000-00-00', ''),
(751, '-', '01-01-01-01-320', 0, 0, 0, '921157.0007', 1, '2023-05-31', '', '0000-00-00', ''),
(752, '-', '01-01-01-01-321', 0, 0, 0, 'A39309.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(753, '-', '01-01-01-01-322', 0, 0, 0, '924015.0777', 1, '2023-05-31', '', '0000-00-00', ''),
(754, '-', '01-01-01-01-323', 0, 0, 0, '923935.0154', 1, '2023-05-31', '', '0000-00-00', ''),
(755, '-', '01-01-01-01-324', 0, 0, 0, '923855.1306', 1, '2023-05-31', '', '0000-00-00', ''),
(756, '-', '01-01-01-01-325', 0, 0, 0, '923732.0012', 1, '2023-05-31', '', '0000-00-00', ''),
(757, '-', '01-01-01-01-326', 0, 0, 0, '923741.0013', 1, '2023-05-31', '', '0000-00-00', ''),
(758, '-', '02-01-01-01-020', 0, 0, 0, '924015.0834', 1, '2023-05-31', '', '0000-00-00', ''),
(759, '-', '01-01-01-01-327', 0, 0, 0, '923349.0653', 1, '2023-05-31', '', '0000-00-00', ''),
(760, '-', '02-01-01-01-021', 0, 0, 0, 'JP101636', 1, '2023-05-31', '', '0000-00-00', ''),
(761, '-', '02-01-01-01-022', 0, 0, 0, '923829.2097', 1, '2023-05-31', '', '0000-00-00', ''),
(762, '-', '01-01-01-01-328', 0, 0, 0, 'J038489', 1, '2023-05-31', '', '0000-00-00', ''),
(763, '-', '01-01-01-01-329', 0, 0, 0, '923944.2203', 1, '2023-05-31', '', '0000-00-00', ''),
(764, '-', '02-01-01-01-023', 0, 0, 0, '924015.1454', 1, '2023-05-31', '', '0000-00-00', ''),
(765, '-', '01-01-01-01-330', 0, 0, 0, 'A49710.0300', 1, '2023-05-31', '', '0000-00-00', ''),
(766, '-', '01-01-01-01-331', 0, 0, 0, 'JP107575', 1, '2023-05-31', '', '0000-00-00', ''),
(767, '-', '05-01-01-01-001', 0, 0, 0, '300611-00423', 1, '2023-05-31', '', '0000-00-00', ''),
(768, '-', '05-01-01-01-002', 0, 0, 0, 'D513680', 1, '2023-05-31', '', '0000-00-00', ''),
(769, '-', '05-01-01-01-003', 0, 0, 0, 'D517424', 1, '2023-05-31', '', '0000-00-00', ''),
(770, '-', '05-01-01-01-004', 0, 0, 0, 'A403501', 1, '2023-05-31', '', '0000-00-00', ''),
(771, '-', '01-01-01-01-332', 0, 0, 0, '923829.1394', 1, '2023-05-31', '', '0000-00-00', ''),
(772, '-', '05-01-01-01-005', 0, 0, 0, 'D504725', 1, '2023-05-31', '', '0000-00-00', ''),
(773, '-', '05-01-01-01-006', 0, 0, 0, 'D517203', 1, '2023-05-31', '', '0000-00-00', ''),
(774, '-', '05-01-01-01-007', 0, 0, 0, 'A353101', 1, '2023-05-31', '', '0000-00-00', ''),
(775, '-', '01-01-01-01-333', 0, 0, 0, 'A09206.0300', 1, '2023-05-31', '', '0000-00-00', ''),
(776, '-', '01-01-01-01-334', 0, 0, 0, '920068.019', 1, '2023-05-31', '', '0000-00-00', ''),
(777, '-', '01-01-01-01-335', 0, 0, 0, '923110.0850', 1, '2023-05-31', '', '0000-00-00', ''),
(778, '-', '01-01-01-01-336', 0, 0, 0, '923976.5517', 1, '2023-05-31', '', '0000-00-00', ''),
(779, '-', '01-01-01-01-337', 0, 0, 0, '923109.0322', 1, '2023-05-31', '', '0000-00-00', ''),
(780, '-', '02-01-01-01-024', 0, 0, 0, '924015.1508', 1, '2023-05-31', '', '0000-00-00', ''),
(781, '-', '01-01-01-01-338', 0, 0, 0, '920584.0004', 1, '2023-05-31', '', '0000-00-00', ''),
(782, '-', '02-01-01-01-025', 0, 0, 0, '923944.0518', 1, '2023-05-31', '', '0000-00-00', ''),
(783, '-', '01-01-01-01-339', 0, 0, 0, 'J06742.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(784, '-', '01-01-01-01-340', 0, 0, 0, '923108.0063', 1, '2023-05-31', '', '0000-00-00', ''),
(785, '-', '01-01-01-01-341', 0, 0, 0, '920451.005', 1, '2023-05-31', '', '0000-00-00', ''),
(786, '-', '01-01-01-01-342', 0, 0, 0, '923944.2324', 1, '2023-05-31', '', '0000-00-00', ''),
(787, '-', '01-01-01-01-343', 0, 0, 0, '920857.0002', 1, '2023-05-31', '', '0000-00-00', ''),
(788, '-', '01-01-01-01-344', 0, 0, 0, '923341.0004', 1, '2023-05-31', '', '0000-00-00', ''),
(789, '-', '01-01-01-01-345', 0, 0, 0, '923855.1186', 1, '2023-05-31', '', '0000-00-00', ''),
(790, '-', '01-01-01-01-346', 0, 0, 0, 'J09738.0100', 1, '2023-05-31', '', '0000-00-00', ''),
(791, '-', '01-01-01-01-347', 0, 0, 0, 'TVH-3620496', 1, '2023-05-31', '', '0000-00-00', ''),
(792, '-', '01-01-01-01-348', 0, 0, 0, 'TVH-3620497', 1, '2023-05-31', '', '0000-00-00', ''),
(793, '-', '01-01-01-01-349', 0, 0, 0, '923944.0096', 1, '2023-05-31', '', '0000-00-00', ''),
(794, '-', '01-01-01-01-350', 0, 0, 0, 'TVH-40278979', 1, '2023-05-31', '', '0000-00-00', ''),
(795, '-', '01-01-01-01-351', 0, 0, 0, 'TVH-1198926', 1, '2023-05-31', '', '0000-00-00', ''),
(796, '-', '01-01-01-01-352', 0, 0, 0, 'TVH-6136027', 1, '2023-05-31', '', '0000-00-00', ''),
(797, '-', '01-01-01-01-353', 0, 0, 0, 'TVH-7610524', 1, '2023-05-31', '', '0000-00-00', ''),
(798, '-', '01-01-01-01-354', 0, 0, 0, 'TVH-6937720', 1, '2023-05-31', '', '0000-00-00', ''),
(799, '-', '01-01-01-01-355', 0, 0, 0, 'TVH-34036549', 1, '2023-05-31', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchase`
--

CREATE TABLE `inv_purchase` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `purchase_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `purchase_ware_hosue_id` int(11) DEFAULT NULL,
  `purchase_unit_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchasedetail`
--

CREATE TABLE `inv_purchasedetail` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `purchase_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_purchase` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_receive`
--

CREATE TABLE `inv_receive` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mrr_date` date DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `vat_challan_no` varchar(100) NOT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `receive_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) DEFAULT NULL,
  `receive_unit_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `challan_date` date NOT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `received_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `mrr_image` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_receivedetail`
--

CREATE TABLE `inv_receivedetail` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `receive_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_receive` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(1000) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `is_manual_code_edit` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'for checking manual code update'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition`
--

CREATE TABLE `inv_requisition` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(25) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `requisition_date` datetime NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `no_of_material` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition_details`
--

CREATE TABLE `inv_requisition_details` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requisition_qty` float NOT NULL,
  `sl_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_return`
--

CREATE TABLE `inv_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(25) NOT NULL,
  `return_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_returndetail`
--

CREATE TABLE `inv_returndetail` (
  `id` int(11) NOT NULL,
  `return_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `return_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_serviceinvoice`
--

CREATE TABLE `inv_serviceinvoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `service_name` varchar(2000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplier`
--

CREATE TABLE `inv_supplier` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_company` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact_person` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sposition` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_phone` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `supplier_op_balance` float NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL,
  `cc` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplierbalance`
--

CREATE TABLE `inv_supplierbalance` (
  `id` int(11) NOT NULL,
  `sb_ref_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `sb_date` date NOT NULL,
  `sb_supplier_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sb_dr_amount` float NOT NULL,
  `sb_cr_amount` float NOT NULL,
  `sb_remark` varchar(175) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sb_partac_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_supplierbalance`
--

INSERT INTO `inv_supplierbalance` (`id`, `sb_ref_id`, `warehouse_id`, `sb_date`, `sb_supplier_id`, `sb_dr_amount`, `sb_cr_amount`, `sb_remark`, `sb_partac_id`, `approval_status`) VALUES
(1611, 'sdf', '1', '2023-05-31', 'SID-001', 0, 100, 'fhfg', 'sdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_technicianinfo`
--

CREATE TABLE `inv_technicianinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `department` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `district` varchar(100) NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `emg_contact` varchar(100) NOT NULL,
  `emg_rel` varchar(100) NOT NULL,
  `emg_tel` varchar(100) NOT NULL,
  `emg_mob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_tranferdetail`
--

CREATE TABLE `inv_tranferdetail` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `transfer_qty` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `inwarehouse` varchar(100) NOT NULL,
  `outwarehouse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_transfermaster`
--

CREATE TABLE `inv_transfermaster` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `transfer_date` varchar(100) NOT NULL,
  `from_warehouse` varchar(100) NOT NULL,
  `to_warehouse` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher`
--

CREATE TABLE `inv_voucher` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucherdetails`
--

CREATE TABLE `inv_voucherdetails` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_cat` varchar(100) NOT NULL,
  `voucher_type` varchar(100) NOT NULL,
  `voucher_details` varchar(5000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher_cat`
--

CREATE TABLE `inv_voucher_cat` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inv_warehosueinfo`
--

CREATE TABLE `inv_warehosueinfo` (
  `id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `inv_warehosueinfo`
--

INSERT INTO `inv_warehosueinfo` (`id`, `warehouse_id`, `name`, `short_name`, `project_id`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'WH-001', 'KICD Warehouse', 'KICD-W', '1', 'Kamalapur,Dhaka', NULL, 0, '2020-12-14 04:49:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `code` varchar(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `id` int(11) NOT NULL,
  `parent_item_id` int(11) NOT NULL,
  `sub_item_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `item_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materialbalance`
--

CREATE TABLE `materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `part_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') NOT NULL,
  `name` varchar(191) NOT NULL,
  `items` text DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) DEFAULT NULL COMMENT 'view_route',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - Dashboard , 2 - Email , 3 - Both',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `project_id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `page_slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `cannonical_link` varchar(191) DEFAULT NULL,
  `seo_title` varchar(191) DEFAULT NULL,
  `seo_keyword` varchar(191) DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_category`
--

CREATE TABLE `parent_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plant_and_equipment`
--

CREATE TABLE `plant_and_equipment` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `equipment_type` int(11) DEFAULT NULL,
  `date_form` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `name` varchar(700) DEFAULT NULL,
  `eel_code` varchar(300) DEFAULT NULL,
  `country_of_origin` varchar(400) DEFAULT NULL,
  `capacity` varchar(300) DEFAULT NULL,
  `make_by` varchar(300) DEFAULT NULL,
  `model` varchar(300) DEFAULT NULL,
  `year_of_manufac` int(11) DEFAULT NULL,
  `present_location` varchar(300) DEFAULT NULL,
  `present_condition` varchar(400) DEFAULT NULL,
  `remarks` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `present_condition`
--

CREATE TABLE `present_condition` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement`
--

CREATE TABLE `product_movement` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `project_form` int(11) DEFAULT NULL,
  `project_to` int(11) DEFAULT NULL,
  `total_quantity` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `movement_type` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement_details`
--

CREATE TABLE `product_movement_details` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `code`, `name`, `incharge`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PR-001', 'CTED, Chattogram', 'Lt Commander M Tafsir Uddin Ahmed(Retd)', 'Chattogram Port, Chattogram', NULL, NULL, '2020-12-14 04:48:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `id` int(11) NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT 0,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `seo_title` varchar(191) DEFAULT NULL,
  `seo_keyword` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `company_contact` varchar(191) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `from_name` varchar(191) DEFAULT NULL,
  `from_email` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `google` varchar(191) DEFAULT NULL,
  `copyright_text` varchar(191) DEFAULT NULL,
  `footer_text` varchar(191) DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `disclaimer` text DEFAULT NULL,
  `google_analytics` text DEFAULT NULL,
  `home_video1` varchar(191) DEFAULT NULL,
  `home_video2` varchar(191) DEFAULT NULL,
  `home_video3` varchar(191) DEFAULT NULL,
  `home_video4` varchar(191) DEFAULT NULL,
  `explanation1` varchar(191) DEFAULT NULL,
  `explanation2` varchar(191) DEFAULT NULL,
  `explanation3` varchar(191) DEFAULT NULL,
  `explanation4` varchar(191) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `post_type` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `token` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sttable`
--

CREATE TABLE `sttable` (
  `id` int(11) NOT NULL,
  `vehicleno` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `registrationno` varchar(150) NOT NULL,
  `tax_issdt` date NOT NULL,
  `tax_expdt` date NOT NULL,
  `fit_issdt` date NOT NULL,
  `fit_expdt` date NOT NULL,
  `ins_issdt` date NOT NULL,
  `ins_expdt` date NOT NULL,
  `rou_issdt` date NOT NULL,
  `rou_expdt` date NOT NULL,
  `engineno` varchar(55) NOT NULL,
  `chasisno` varchar(50) NOT NULL,
  `regdate` date NOT NULL,
  `serialno` varchar(50) NOT NULL,
  `modelno` varchar(50) NOT NULL,
  `ccno` varchar(50) NOT NULL,
  `netvalue` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `myear` varchar(50) NOT NULL,
  `office` varchar(75) NOT NULL,
  `division` varchar(79) NOT NULL,
  `location` varchar(80) NOT NULL,
  `photo` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sub_code` varchar(400) NOT NULL,
  `name` varchar(600) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `supplier_op_balance` varchar(100) NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `code`, `name`, `address`, `contact_person`, `supplier_phone`, `supplier_op_balance`, `supplier_type`, `material_type`) VALUES
(1, 'SID-001', 'Saif Powertec Ltd', '-', '-', '-', '-', 'cash', '47');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `voucherdate` date NOT NULL,
  `supplierid` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_billpayment`
--

CREATE TABLE `tb_billpayment` (
  `id` int(11) NOT NULL,
  `mr_no` varchar(100) NOT NULL,
  `mr_date` varchar(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `accheadname` varchar(100) NOT NULL,
  `debitamount` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `check_no` text NOT NULL,
  `check_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ledger`
--

CREATE TABLE `tb_ledger` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_product_receive_data`
--

CREATE TABLE `temp_product_receive_data` (
  `id` int(11) NOT NULL,
  `receive_no` varchar(500) NOT NULL,
  `receive_date` datetime NOT NULL,
  `product_id` int(11) NOT NULL,
  `part_no` varchar(500) NOT NULL,
  `supplier_id` varchar(250) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL,
  `project_to_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id2` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id2`, `first_name`, `last_name`, `employee_id`, `user_type`, `project_id`, `warehouse_id`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `is_term_accept`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Admin', 'Saif', 'SPL-000001', 'admin', '1', '1', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 1, 1, '2019-01-14 00:17:02', '2019-01-20 20:36:38', NULL),
(4, 4, 'Super', 'Admin', 'SPL-000002', 'superAdmin', '1', '1', 'superadmin@kicd.com', '7e1682cdbf1a497faf0cb24025868186', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 4, 4, NULL, NULL, NULL),
(7, 0, 'IT', 'IT', 'SPL-000023', 'admin', '1', '1', 'fakhrulpalash@gmail.com', 'd90bc0ca0efbb03eaba518baf3053d2c', 1, NULL, 0, 0, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_login_history`
--

CREATE TABLE `user_login_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_type` varchar(100) DEFAULT NULL,
  `log_date` date NOT NULL,
  `login_ip` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_login_history`
--

INSERT INTO `user_login_history` (`id`, `user_id`, `log_time`, `log_type`, `log_date`, `login_ip`) VALUES
(1, 1, '2022-07-17 01:54:47', 'logout', '2022-07-17', '175.29.198.185'),
(2, 1, '2022-07-17 01:56:10', 'login', '2022-07-17', '175.29.198.185'),
(3, 1, '2022-07-18 02:26:29', 'login', '2022-07-18', '175.29.198.185'),
(4, 1, '2022-07-26 01:19:40', 'login', '2022-07-26', '175.29.187.217'),
(5, 1, '2022-07-27 00:00:24', 'login', '2022-07-27', '61.247.188.158'),
(6, 1, '2022-07-27 00:05:24', 'login', '2022-07-27', '175.29.187.217'),
(7, 1, '2022-07-31 00:26:59', 'login', '2022-07-31', '175.29.187.217'),
(8, 1, '2022-07-31 01:30:52', 'login', '2022-07-31', '61.247.188.158'),
(9, 1, '2022-07-31 02:07:09', 'login', '2022-07-31', '61.247.188.158'),
(10, 1, '2022-07-31 04:59:42', 'logout', '2022-07-31', '175.29.187.217'),
(11, 1, '2022-08-02 03:24:40', 'login', '2022-08-02', '61.247.188.158'),
(12, 1, '2022-08-02 04:51:06', 'login', '2022-08-02', '61.247.188.158'),
(13, 1, '2022-08-03 02:55:14', 'login', '2022-08-03', '175.29.187.217'),
(14, 1, '2022-08-03 22:32:03', 'login', '2022-08-04', '175.29.187.217'),
(15, 1, '2022-08-07 07:26:22', 'login', '2022-08-07', '61.247.188.158'),
(16, 1, '2022-08-07 07:27:46', 'logout', '2022-08-07', '61.247.188.158'),
(17, 1, '2022-08-07 07:27:52', 'login', '2022-08-07', '61.247.188.158'),
(18, 1, '2022-08-07 07:29:14', 'login', '2022-08-07', '61.247.188.158'),
(19, 1, '2022-08-07 07:31:26', 'logout', '2022-08-07', '61.247.188.158'),
(20, 1, '2022-08-07 07:31:30', 'login', '2022-08-07', '61.247.188.158'),
(21, 1, '2022-08-07 07:31:46', 'logout', '2022-08-07', '61.247.188.158'),
(22, 7, '2022-08-07 07:31:52', 'login', '2022-08-07', '61.247.188.158'),
(23, 7, '2022-08-07 07:31:58', 'logout', '2022-08-07', '61.247.188.158'),
(24, 7, '2022-08-07 07:32:02', 'login', '2022-08-07', '61.247.188.158'),
(25, 7, '2022-08-07 07:32:28', 'logout', '2022-08-07', '61.247.188.158'),
(26, 7, '2022-08-07 07:32:37', 'login', '2022-08-07', '61.247.188.158'),
(27, 7, '2022-08-07 07:33:12', 'logout', '2022-08-07', '61.247.188.158'),
(28, 1, '2022-08-07 07:33:25', 'login', '2022-08-07', '61.247.188.158'),
(29, 1, '2022-08-08 02:19:12', 'login', '2022-08-08', '61.247.188.158'),
(30, 1, '2022-09-05 00:32:57', 'login', '2022-09-05', '175.29.187.217'),
(31, 1, '2022-12-04 00:19:17', 'login', '2022-12-04', '175.29.187.217'),
(32, 1, '2023-03-11 23:10:20', 'login', '2023-03-12', '37.111.212.12'),
(33, 1, '2023-03-13 00:16:16', 'login', '2023-03-13', '37.111.212.97'),
(34, 1, '2023-03-13 02:02:00', 'logout', '2023-03-13', '175.29.187.217'),
(35, 1, '2023-03-15 02:11:04', 'login', '2023-03-15', '119.30.32.232'),
(36, 1, '2023-03-15 12:28:57', 'login', '2023-03-15', '119.30.32.232'),
(37, 1, '2023-03-16 00:29:19', 'login', '2023-03-16', '119.30.32.15'),
(38, 1, '2023-03-18 23:27:54', 'login', '2023-03-19', '175.29.198.97'),
(39, 1, '2023-03-27 01:26:23', 'login', '2023-03-27', '37.111.194.71'),
(40, 1, '2023-03-27 01:51:44', 'login', '2023-03-27', '175.29.198.97'),
(41, 1, '2023-03-27 01:53:10', 'login', '2023-03-27', '175.29.198.97'),
(42, 1, '2023-03-27 01:54:10', 'logout', '2023-03-27', '175.29.198.97'),
(43, 1, '2023-03-27 01:54:26', 'login', '2023-03-27', '175.29.198.97'),
(44, 1, '2023-03-27 01:54:55', 'login', '2023-03-27', '175.29.198.97'),
(45, 1, '2023-03-27 05:27:17', 'logout', '2023-03-27', '175.29.198.97'),
(46, 1, '2023-03-29 01:02:29', 'login', '2023-03-29', '37.111.206.194'),
(47, 1, '2023-03-29 04:54:56', 'login', '2023-03-29', '103.253.44.179'),
(48, 1, '2023-03-29 04:57:48', 'login', '2023-03-29', '103.253.44.179'),
(49, 1, '2023-04-02 06:28:32', 'login', '2023-04-02', '175.29.198.97'),
(50, 1, '2023-04-11 01:55:15', 'login', '2023-04-11', '175.29.198.97'),
(51, 1, '2023-04-11 02:49:47', 'login', '2023-04-11', '175.29.198.97'),
(52, 1, '2023-04-13 00:29:32', 'login', '2023-04-13', '175.29.198.97'),
(53, 1, '2023-04-25 01:52:47', 'login', '2023-04-25', '175.29.198.97'),
(54, 1, '2023-04-27 00:18:46', 'login', '2023-04-27', '::1'),
(55, 1, '2023-04-27 00:19:11', 'logout', '2023-04-27', '::1'),
(56, 1, '2023-04-27 00:19:19', 'login', '2023-04-27', '::1'),
(57, 1, '2023-04-27 00:29:32', 'login', '2023-04-27', '175.29.198.97'),
(58, 1, '2023-04-27 07:52:57', 'login', '2023-04-27', '175.29.198.97'),
(59, 1, '2023-05-02 23:48:16', 'login', '2023-05-03', '175.29.198.97'),
(60, 1, '2023-05-03 02:07:34', 'login', '2023-05-03', '175.29.187.217'),
(61, 1, '2023-05-03 02:22:07', 'logout', '2023-05-03', '175.29.187.217'),
(62, 1, '2023-05-03 02:23:01', 'login', '2023-05-03', '175.29.187.217'),
(63, 1, '2023-05-03 02:24:42', 'login', '2023-05-03', '37.111.212.78'),
(64, 1, '2023-05-03 03:53:52', 'login', '2023-05-03', '175.29.187.217'),
(65, 1, '2023-05-03 04:02:21', 'login', '2023-05-03', '175.29.187.217'),
(66, 1, '2023-05-03 04:06:37', 'logout', '2023-05-03', '175.29.187.217'),
(67, 1, '2023-05-03 09:59:11', 'logout', '2023-05-03', '175.29.187.217'),
(68, 1, '2023-05-08 00:06:26', 'login', '2023-05-08', '175.29.187.217'),
(69, 1, '2023-05-08 00:13:53', 'login', '2023-05-08', '175.29.198.97'),
(70, 1, '2023-05-08 00:16:32', 'login', '2023-05-08', '::1'),
(71, 1, '2023-05-08 00:23:42', 'logout', '2023-05-08', '175.29.198.97'),
(72, 1, '2023-05-08 01:10:38', 'login', '2023-05-08', '175.29.198.97'),
(73, 1, '2023-05-08 08:21:39', 'logout', '2023-05-08', '175.29.187.217'),
(74, 1, '2023-05-09 00:49:27', 'login', '2023-05-09', '175.29.198.97'),
(75, 1, '2023-05-10 05:28:26', 'login', '2023-05-10', '175.29.198.97'),
(76, 1, '2023-05-11 00:52:28', 'login', '2023-05-11', '175.29.187.217'),
(77, 1, '2023-05-11 01:21:05', 'login', '2023-05-11', '175.29.198.97'),
(78, 1, '2023-05-11 01:21:12', 'login', '2023-05-11', '175.29.198.97'),
(79, 1, '2023-05-11 02:09:24', 'login', '2023-05-11', '175.29.198.97'),
(80, 1, '2023-05-11 05:46:53', 'logout', '2023-05-11', '175.29.187.217'),
(81, 1, '2023-05-11 06:13:52', 'login', '2023-05-11', '175.29.187.217'),
(82, 1, '2023-05-11 07:07:40', 'login', '2023-05-11', '175.29.187.217'),
(83, 1, '2023-05-11 07:10:36', 'login', '2023-05-11', '175.29.198.97'),
(84, 1, '2023-05-11 07:11:19', 'logout', '2023-05-11', '175.29.187.217'),
(85, 1, '2023-05-11 08:32:08', 'logout', '2023-05-11', '175.29.187.217'),
(86, 1, '2023-05-13 07:31:56', 'login', '2023-05-13', '175.29.187.217'),
(87, 1, '2023-05-13 07:50:24', 'logout', '2023-05-13', '175.29.187.217'),
(88, 1, '2023-05-13 23:56:35', 'login', '2023-05-14', '119.30.41.19'),
(89, 1, '2023-05-14 05:27:25', 'logout', '2023-05-14', '175.29.187.217'),
(90, 1, '2023-05-14 05:29:37', 'login', '2023-05-14', '175.29.198.97'),
(91, 1, '2023-05-25 04:12:46', 'login', '2023-05-25', '175.29.198.97'),
(92, 1, '2023-05-29 04:50:27', 'login', '2023-05-29', '175.29.198.97'),
(93, 13, '2023-05-29 05:35:43', 'logout', '2023-05-29', '175.29.198.97'),
(94, 1, '2023-05-30 01:02:25', 'login', '2023-05-30', '175.29.187.217'),
(95, 1, '2023-05-30 01:02:33', 'login', '2023-05-30', '175.29.187.217'),
(96, 1, '2023-05-31 00:29:13', 'login', '2023-05-31', '175.29.187.217'),
(97, 1, '2023-05-31 00:40:59', 'login', '2023-05-31', '175.29.198.97'),
(98, 1, '2023-05-31 00:42:12', 'login', '2023-05-31', '175.29.198.97'),
(99, 1, '2023-05-31 00:46:45', 'login', '2023-05-31', '175.29.198.97'),
(100, 1, '2023-05-31 02:07:07', 'login', '2023-05-31', '175.29.198.97');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_type`
--
ALTER TABLE `complain_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_challan`
--
ALTER TABLE `inv_challan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complain`
--
ALTER TABLE `inv_complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_designation`
--
ALTER TABLE `inv_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_employee`
--
ALTER TABLE `inv_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issue`
--
ALTER TABLE `inv_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material`
--
ALTER TABLE `inv_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material_level3`
--
ALTER TABLE `inv_material_level3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material_level4`
--
ALTER TABLE `inv_material_level4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material_partno_detail`
--
ALTER TABLE `inv_material_partno_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_product_price`
--
ALTER TABLE `inv_product_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receive`
--
ALTER TABLE `inv_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_return`
--
ALTER TABLE `inv_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materialbalance`
--
ALTER TABLE `materialbalance`
  ADD KEY `id` (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sttable`
--
ALTER TABLE `sttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login_history`
--
ALTER TABLE `user_login_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complain_type`
--
ALTER TABLE `complain_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `inv_challan`
--
ALTER TABLE `inv_challan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_complain`
--
ALTER TABLE `inv_complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_designation`
--
ALTER TABLE `inv_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_employee`
--
ALTER TABLE `inv_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8651;

--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28863;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36459;

--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `inv_material_level3`
--
ALTER TABLE `inv_material_level3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inv_material_level4`
--
ALTER TABLE `inv_material_level4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inv_material_partno_detail`
--
ALTER TABLE `inv_material_partno_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_product_price`
--
ALTER TABLE `inv_product_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=928;

--
-- AUTO_INCREMENT for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611;

--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6862;

--
-- AUTO_INCREMENT for table `inv_return`
--
ALTER TABLE `inv_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1612;

--
-- AUTO_INCREMENT for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `materialbalance`
--
ALTER TABLE `materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sttable`
--
ALTER TABLE `sttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_login_history`
--
ALTER TABLE `user_login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
