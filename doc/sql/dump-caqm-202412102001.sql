-- MySQL dump 10.13  Distrib 9.0.1, for Linux (x86_64)
--
-- Host: localhost    Database: caqm
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_evaluates`
--

DROP TABLE IF EXISTS `audit_evaluates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_evaluates` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `auditName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审计名',
  `checklistName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检查单名',
  `checklistItemName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检查项名称',
  `checklistContent` text COLLATE utf8mb4_unicode_ci COMMENT '检查项内容',
  `auditor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审核员',
  `findingName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '不符合项目',
  `status` int DEFAULT NULL COMMENT '状态：0-未完成，1-符合，2-文文不符，3-文实不符，4-不适用',
  `summary` text COLLATE utf8mb4_unicode_ci COMMENT '审核结论',
  `fileNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参考文档',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_evaluates`
--

LOCK TABLES `audit_evaluates` WRITE;
/*!40000 ALTER TABLE `audit_evaluates` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_evaluates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_methods`
--

DROP TABLE IF EXISTS `audit_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_methods` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_methods`
--

LOCK TABLES `audit_methods` WRITE;
/*!40000 ALTER TABLE `audit_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audits` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '审计名',
  `deptName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '受审部门',
  `plannedStartDate` date DEFAULT NULL COMMENT '计划开始日期',
  `plannedEndDate` date DEFAULT NULL COMMENT '计划结束日期',
  `realStartDate` date DEFAULT NULL COMMENT '实际开始日期',
  `realEndDate` date DEFAULT NULL COMMENT '实际结束日期',
  `aiportName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地点',
  `processName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '流程',
  `mainAuditor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主审计员',
  `otherAuditors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他审计员',
  `methodName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '审计方法',
  `status` int NOT NULL COMMENT '状态，0：计划，1：执行，2：取消，3：待关闭，4：已关闭',
  `closeUser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关闭人',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `checklistNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检查单',
  `findingNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '不符合项',
  `summary` text COLLATE utf8mb4_unicode_ci COMMENT '审计总结',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklist_items`
--

DROP TABLE IF EXISTS `checklist_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checklist_items` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `details` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `fileNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参考文件，多个文件名用逗号分隔',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `guidance` text COLLATE utf8mb4_unicode_ci COMMENT '指南',
  `actions` text COLLATE utf8mb4_unicode_ci COMMENT '措施',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist_items`
--

LOCK TABLES `checklist_items` WRITE;
/*!40000 ALTER TABLE `checklist_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklist_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checklists`
--

DROP TABLE IF EXISTS `checklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checklists` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `deptName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门',
  `status` int DEFAULT NULL COMMENT '状态：1-有效，0-无效',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `fileNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '附件，多个文件名用逗号分隔',
  `checklistItemNames` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检查项，多个检查项名称用逗号分隔',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklists`
--

LOCK TABLES `checklists` WRITE;
/*!40000 ALTER TABLE `checklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `checklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公司名称',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corrective_measures`
--

DROP TABLE IF EXISTS `corrective_measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corrective_measures` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `findingName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '不符合项名称',
  `dutyMan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '责任人',
  `finisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '完成人',
  `targetDate` date DEFAULT NULL COMMENT '目标日期',
  `finishDate` date DEFAULT NULL COMMENT '完成日期',
  `details` text COLLATE utf8mb4_unicode_ci COMMENT '详细方法',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corrective_measures`
--

LOCK TABLES `corrective_measures` WRITE;
/*!40000 ALTER TABLE `corrective_measures` DISABLE KEYS */;
/*!40000 ALTER TABLE `corrective_measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '所属部门：0-顶级部门，其他为子部门',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件名称',
  `status` int DEFAULT NULL COMMENT '状态',
  `parentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属部门',
  `filePath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件地址',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finding_types`
--

DROP TABLE IF EXISTS `finding_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finding_types` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finding_types`
--

LOCK TABLES `finding_types` WRITE;
/*!40000 ALTER TABLE `finding_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `finding_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `findings`
--

DROP TABLE IF EXISTS `findings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `findings` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `auditName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '来源审计',
  `status` int DEFAULT NULL COMMENT '状态：1-开启，0-关闭',
  `processName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '流程',
  `airportName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地点',
  `userName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '流程负责人',
  `targetCloseTime` date DEFAULT NULL COMMENT '目标解决日期',
  `closer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关闭人',
  `detpName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '不符合部门',
  `findingTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '不符合类型',
  `evaluateResult` text COLLATE utf8mb4_unicode_ci COMMENT '详细内容',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `findings`
--

LOCK TABLES `findings` WRITE;
/*!40000 ALTER TABLE `findings` DISABLE KEYS */;
/*!40000 ALTER TABLE `findings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow_measures`
--

DROP TABLE IF EXISTS `follow_measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow_measures` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `findingName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '不符合项名称',
  `dutyMan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '责任人',
  `finisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '完成人',
  `targetDate` date DEFAULT NULL COMMENT '目标日期',
  `finishDate` date DEFAULT NULL COMMENT '完成日期',
  `details` text COLLATE utf8mb4_unicode_ci COMMENT '详细方法',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow_measures`
--

LOCK TABLES `follow_measures` WRITE;
/*!40000 ALTER TABLE `follow_measures` DISABLE KEYS */;
/*!40000 ALTER TABLE `follow_measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `permissionName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processes`
--

DROP TABLE IF EXISTS `processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processes` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '所属流程：0-顶级流程，其他为子流程',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processes`
--

LOCK TABLES `processes` WRITE;
/*!40000 ALTER TABLE `processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_analyze_evaluates`
--

DROP TABLE IF EXISTS `risk_analyze_evaluates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_analyze_evaluates` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `findingName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '来源',
  `rootName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '根源分析',
  `riskRelatedDeptName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门',
  `dutyMan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '责任人',
  `possibility` int DEFAULT NULL COMMENT '可能性',
  `severity` int DEFAULT NULL COMMENT '严重性',
  `riskValue` int DEFAULT NULL COMMENT '风险',
  `isSecure` int DEFAULT NULL COMMENT '是否是安全事件',
  `eventDiscribe` text COLLATE utf8mb4_unicode_ci COMMENT '事件描述',
  `excuteDate` date DEFAULT NULL COMMENT '实施日期',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_analyze_evaluates`
--

LOCK TABLES `risk_analyze_evaluates` WRITE;
/*!40000 ALTER TABLE `risk_analyze_evaluates` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_analyze_evaluates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_sources`
--

DROP TABLE IF EXISTS `risk_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_sources` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '所属流程：0-顶级风险源，其他为子风险源',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_sources`
--

LOCK TABLES `risk_sources` WRITE;
/*!40000 ALTER TABLE `risk_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `risk_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `permissions` text COLLATE utf8mb4_unicode_ci COMMENT '权限',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `root_analyzes`
--

DROP TABLE IF EXISTS `root_analyzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `root_analyzes` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `parentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '所属部门：0-顶级根源，其他为子根源',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `root_analyzes`
--

LOCK TABLES `root_analyzes` WRITE;
/*!40000 ALTER TABLE `root_analyzes` DISABLE KEYS */;
/*!40000 ALTER TABLE `root_analyzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一标识',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `deptName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属部门',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱号',
  `status` int DEFAULT NULL COMMENT '状态',
  `passwd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `roleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'caqm'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-10 20:01:05
