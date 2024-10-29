-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 22-06-07 13:48
-- 서버 버전: 8.0.28
-- PHP 버전: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `member`
--
CREATE DATABASE IF NOT EXISTS `member` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `member`;

-- --------------------------------------------------------

--
-- 테이블 구조 `anniversary`
--

CREATE TABLE `anniversary` (
  `number` int NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `id` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `hit` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 테이블의 덤프 데이터 `anniversary`
--

INSERT INTO `anniversary` (`number`, `title`, `content`, `id`, `date`, `hit`) VALUES
(1, '50일', '50일 기념 반지공방에서 커플링 제작. 직접 만들어서 더 의미있다.', 'kristie123', '2022-06-06 16:19:44', 8),
(2, '1주년!', '고백받은 날 했던 데이트 그대로 재연. 그때의 설렘을 다시 느낄 수 있어 좋았다.', 'mchaery', '2022-06-06 16:25:28', 7),
(3, '로즈데이', '하루종일 꽃을 들고 다녀 손은 모자랐지만 기분은 너무 좋았다. 그래도 헤어질 시간 즈음 사는거 추천.', 'chachaw_98', '2022-06-06 16:28:06', 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `number` int NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `id` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `hit` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`number`, `title`, `content`, `id`, `date`, `hit`) VALUES
(1, '2021.03.25 고3 생일', '이화교회에서 서프라이즈,, 낭만,,', 'mchaery', '2022-06-04 12:05:29', 6),
(3, '2020년 3월 25일', '기숙사에서 생일축하받는게 로망이었던 고2때, 코로나때문에 집콕 생일이었는데 케이크 가져다준 하늘이 고맙다', 'chaerin', '2022-06-06 16:22:49', 9),
(4, '2010년 초1 생일파티', '초등학생 생일파티 국룰 햄버거집에서 레크레이션도 하고 마술도 보고 그랬는데 추억이네... 소연아 한걸아 잘 살고 있니..?', 'kristie123', '2022-06-06 17:07:58', 3);

-- --------------------------------------------------------

--
-- 테이블 구조 `member_tb`
--

CREATE TABLE `member_tb` (
  `id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 테이블의 덤프 데이터 `member_tb`
--

INSERT INTO `member_tb` (`id`, `password`, `date`) VALUES
('chachaw_98', 'cktmddhks', '1998-03-06'),
('chaerin', 'dlcofls', '2022-06-07'),
('helenkim88', 'sangwoo0408!', '1970-07-19'),
('kristie123', 'kristie123', '2003-03-25'),
('mchaery', 'dlcofls', '2003-03-25');

-- --------------------------------------------------------

--
-- 테이블 구조 `travel`
--

CREATE TABLE `travel` (
  `number` int NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `id` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `hit` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 테이블의 덤프 데이터 `travel`
--

INSERT INTO `travel` (`number`, `title`, `content`, `id`, `date`, `hit`) VALUES
(1, '가을 울산', '회 최고 조개 최고 바다 최고 울산 최고,,,', 'kristie123', '2022-06-06 17:18:58', 6),
(2, '2020년 1월의 이탈리아', '코로나 사태 직전 막차로 해외여행. 감성적인 로마도, 시크한 밀라노도 좋았다.', 'mchaery', '2022-06-06 17:18:32', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `xmas`
--

CREATE TABLE `xmas` (
  `number` int NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `id` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `hit` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 테이블의 덤프 데이터 `xmas`
--

INSERT INTO `xmas` (`number`, `title`, `content`, `id`, `date`, `hit`) VALUES
(1, '열아홉의 메리 크리스마스 이브', '입시가 끝나지 않은 시기, 강민이 집에서 인반 친구들과 모든게 다 잘 되길 간절히 바랐던 크리스마스 이브.', 'kristie123', '2022-06-06 16:33:49', 11),
(2, '10대 마지막 크리스마스', '중학교 친구들과 호캉스. 다이소 파티용품들도 꽤 괜찮았다. 꾸미고 사진찍는것도 좋지만 역시 씻고 옷갈아입고 편하게 수다떠는게 가장 즐겁다.', 'chachaw_98', '2022-06-06 16:33:00', 2),
(6, '2020 크리스마스', '희서 서희 희재랑 보드게임하고 겨울왕국보고 폴라로이드 찍고 아이스크림 먹고... 소박하고 풍성한 날이었다', 'chaerin', '2022-06-06 17:10:50', 5),
(7, '중3 크리스마스', '죽반 친구들이랑 옥인하우스 꾸미고 사진 엄청 찍고 배그하고 수다떨며 16살의 에너지로 왁자지껄했던 2018년 크리스마스', 'mchaery', '2022-06-06 17:14:07', 6);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `anniversary`
--
ALTER TABLE `anniversary`
  ADD PRIMARY KEY (`number`);

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`number`);

--
-- 테이블의 인덱스 `member_tb`
--
ALTER TABLE `member_tb`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`number`);

--
-- 테이블의 인덱스 `xmas`
--
ALTER TABLE `xmas`
  ADD PRIMARY KEY (`number`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `anniversary`
--
ALTER TABLE `anniversary`
  MODIFY `number` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `number` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `travel`
--
ALTER TABLE `travel`
  MODIFY `number` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `xmas`
--
ALTER TABLE `xmas`
  MODIFY `number` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
