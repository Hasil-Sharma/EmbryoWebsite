-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 31, 2013 at 02:17 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.6-1ubuntu1.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Embryo`
--

-- --------------------------------------------------------

--
-- Table structure for table `speaker_contacts`
--

CREATE TABLE IF NOT EXISTS `speaker_contacts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `credentials` longtext,
  `company` longtext,
  `mobile` longtext,
  `email` longtext,
  `fax` longtext,
  `website` longtext,
  `phone` longtext,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `speaker_contacts`
--

INSERT INTO `speaker_contacts` (`Id`, `name`, `credentials`, `company`, `mobile`, `email`, `fax`, `website`, `phone`) VALUES
(1, 'Vivek Bihani I', 'CEO', 'InSync Advisors Pvt. Ltd.', '919810246895', 'vivek@insyncadvisors.in', '', '', '1204262700'),
(2, 'Vishu Bhoosnurmath', '', 'Vishva Associates', '919323040973', 'vishva.associates@gmail.com', '', '', '2227561588'),
(3, 'V Pradeep', 'Chairman & Managing Diredoi', 'ABS India pvt. Ltd.', '919845067469', 'vish.pradeep@absindio.net', '', '', ''),
(4, 'VINOD PURI', '', 'Vipko Services Pvt. Ltd.', '', 'vinod@vpun', '', '', '26880378'),
(5, 'Alok Sood', 'Director', 'N.K.E. ELECTRONICS & COMMUNICATIONS PVT. LTD', '9845010114', 'alok@nkegroup.com', '918025280429', 'www.nkegroup.com', ''),
(6, 'Subroto Roy', 'President', 'Stratoserve LLC', '', 'subroto.roy@stratoserve.com', '', 'www.stratoserve.com', '12037685690'),
(7, 'Sunil Sapra', 'Country Manager - india/SAARC', 'ASTARO (Internet Security)', '919810090217', 'ssapra@astaro.com', '911244712001', 'www.astaro.com', '911244711901'),
(8, 'Ramaprasad Sreenivassan', 'Executive Director', 'CADD Centre India Pvt. Ltd.', '9109884060353', 'sramaprasad@caddcentre.co.in', '914424986098', '', '914424994678'),
(9, 'Sanjay Kaul', 'Director, Channel Sales India', 'Research In Motion India Pvt Limited', '', 'skaul@rim.com', '', 'wwvv.m''ri', ''),
(10, 'Shyam S. Bajaj', 'Director', 'SUN n MOON ', '919829012641', 'shyam.bajaj@sunnmoon.in', '911415106666', 'www.sunnmoon.in', ''),
(11, 'Srihari', 'Dean (College of engineering)', 'UNIVERSITY OF PETROLEUM & ENERGY STUDIES', '', 'shrihari@ddn.upes.ac.ln', '911352694204', 'www.upes.ac.in', '91135210269091'),
(12, 'Shravni sinha', '', '', '9983523126', 'shravs_hp@yahoo.co.in', '', '', ''),
(13, 'Shantanu Dash', 'CEO', 'MosPay Infotech (India) Pvt. Ltd.', '919818442041', 'shantanu@mospay.com', '', 'www.mospay.com', ''),
(14, 'Dr. A. Sankara Reddy, M.Sc., Ph.D (Pilani)', 'Advisor', '', '9811950505', 'sankarareddy@hotmail.com', '01124115565', '', ''),
(15, 'SANDHYA MITRA', 'Molecular geneticist', '', '9818923792', 'sandhya.mitra@gmail.com', '', '', ''),
(16, 'Sandeep Arora', 'Chief Operating Officer', 'knack systems', '', 'sandeep.arora@knacksystems.com', '7325960114', 'www.knacksystems.com', ''),
(17, 'S. Natrajan', 'Oy. General Manager - Sales Municipal Business Group', 'VA TECK WABAG LTD.', '919380569937', 's_natrajan@wabag.in', '914442232324', 'www.wabag.com', '914442232323'),
(18, 'Unknown', 'G D Goenka Education City', '', '', 's.suneel@lancaster.ac.ul', '911243315950', 'www.gdgwi.gdgoenta.com', '91124331590030'),
(19, 'Ajay Rungta', 'Business Development Manager', 'EduKriti Learning Solutions Pvt. Ltd.', '918826008787', 'rungta.ajay@entrancecorner.com', '01145873272', 'www.EntranceCorner.com', ''),
(20, 'CA RISHABH', 'Indirect Tax Manager Tax', 'Oracle India Private Ltd.', '', 'rishabh.sawansukha@oracle.com', '911244328101', 'www.oracle.com', '911244328496'),
(21, 'RAJENDRA SISODIA,', 'CHAIRMAN', 'CONSCIOUS CAPITALISM INSTITUTE', '', 'RSSSODIA@CC-INSTITUTE.COM', '7817886456', 'www.cc-institue.com', ''),
(22, 'Ravi Baid', 'President', 'Alliance Infotech Pvt. Ltd.', '919811089715', 'ravi.baid@alliance-infotech.com', '911126371852', 'http://www.alliance-infotech.com', '911140517700'),
(23, 'Ratnesh Sharma', 'Vice President - Marketing', 'OnMobile Global Ltd.', '', 'ratnesh.shanna@onmobile.com', '', 'www.onmobile.com', ''),
(24, 'Ramaswamy Ganesh', 'Regional Operations Manager - Asean/lndia/ME', 'Shell India Markets Private Limited', '919818554574', 'ramaswamy.ganesh@shell.com', '911244771600', 'http://www.shell.com/india', ''),
(25, 'Rajiv Patel', 'Vice President. Systems Engineering Fabric and Switching Technologies', 'JUNIPER', '', 'rajivp@juniper.net', '4089363172', '', '4089360100'),
(26, 'Rajiv Agarwal', 'IntelUsoft Services', '', '', 'rajiv@intetUsoft-services.com', '', '', '919810400568'),
(27, 'R. Dayal', 'Executive Officer', 'MARUTI SUZUKI INDIA LIMITED', '', 'R. Dayal@maruti.co.in', '', 'www.marutisuzuki.com', ''),
(28, 'Praduman Jain', 'Group Project Manager', 'HCL TECHNOLOGIES LTD.', '919811051108', 'pradumanj@hcl.in', '911242212381', 'www.hcltech.com', '911244656565'),
(29, 'Paras Jain', 'Director - Design & Projects', 'Korus Engineering Solution', '9871133822', 'pnjain@korus.in, korusengg@gmail.com.', '911125226266', 'www.korus.co.in', '9111252262646560.00'),
(30, 'Prem Jain', 'Senior Vice President SAVBU', 'Cisco', '4089814645', 'pjain@cisco.com', '4083876100', 'www.cisco.com', '4083876040'),
(31, 'Phanindra Sama', 'CEO', 'Pilani Soft Labs Pvt. Ltd.', '', 'phani@redbus.in', '+918041645755', 'www.redBus.in', '+918041480875'),
(32, 'Vijay Lahoty', 'Director B. E. (Hons.) Civil', 'ADVERTISING PVT. LTD.', '9820290066', 'pert_136@rediff.com', '', '', ''),
(33, 'L.S.Singhvi', 'B.E.Hons(Elec)', 'Power System', '9829043999', 'powersystem23@gmail.com', '', 'http://www.powersystemudaipur.com', '982904298'),
(34, 'DARSHAN SINGH', 'CHIEF EXECUTIVE', 'PAN INDIA CONSULTANTS PVT. LTD.', '', 'panind@airtelmail.in', '01242346646', '', '2346643'),
(35, 'R.S. Virdi', '', 'TRAK ENTERPRISES', '', 'osctwin@vsnl.net', '25532566', '', '2025121589'),
(36, 'Nilesh Kothari', 'Executive Director and Financial Officer', 'ZENTA', '9820033866', 'NKOTHARI@ZENTA.COM', '912230565800', '', '912230565703'),
(37, 'Nivedita Sachdev', 'Principal Operations Engineer Devices R&D', 'NOKIA INDIA PVT. LTD.', '919980504906', 'nivedita.sachdev@nokia.com', '', 'www.nokia.com', '918040159000'),
(38, 'Nagesh N. Murthy', 'DEPARTMENT OF DECISION SCIENCES', 'UNIVERSITY OF OREGON Lundquist College of Business', '', 'niuurthy@uoregon.edu', '5413463341', 'www.uoregon.edu', '5413465137'),
(39, 'Nitin Bhatia', 'Senior Manager Operations M.Phil (KHSM), B.Pharmacy (Hons.)', 'B.I.T.S. Pilani, PGDMM, PGDHA', '9826198990', 'nitin_bhatia40@re<liffmail.com', '7552748309', '', '7552746700'),
(40, 'Dr.Nilay Yajnik', 'Ph.D (Mumbai University) Professor & Chairman-', 'NMIMS School Of Business Management', '', 'nilayv@nmims.edu', '912226114512', 'www.nmims.edu', '912226134577'),
(41, 'AshoK Agarwal', '', 'sp', '9371070568', '', '', '', '26355524'),
(42, 'Neeraj Gupta', 'Principal Consultant - Advance Services Services Sales (India & SAARC)', 'Cisco Systems (India) Pvt. Ltd.', '919810434619', 'neerajgu@cisco.com', '911123766126', 'www.cisco.com/in', '911142611123'),
(43, 'NEELANSHU VARMA', 'Consultant', '• Software Project Management', '', 'neelanshu.varma0gmail.com', '', '', ''),
(44, 'NARESH C. VAISH', 'B.E. (Mech), FIE.P.Eng.C Eng.(l) Managing Director', 'KMP TECHNOLOGIES PVT. LTD.', '', 'ncvaish@kmpbearings.com', '915122297176', 'wvvw.kmpbearings.com', '915122295248'),
(45, 'Manish Kumar', 'General Manager - ESG', 'Birlasoft (India) Limited', '919899703291', 'mamshl. kumar@birlasoft.com', '911202586121', 'www.birlasoft.com', '911203912133'),
(46, 'SANJEEV MAHAJAN', 'Senior General Manager', 'ITOCHU India Pvt. Ltd.', '', 'mahajan@itochu.co.in', '911123413898', '', '911123411891'),
(47, 'Dr.KRV "Raja" Subramanian', 'Adjunct Proff', 'International Institue Of Information Technology Bangalore', '', 'krvs@iiitb.ac.in', '', 'www.iiitb.ac.in', '918040950614'),
(48, 'Vijay Kumar Khatore', 'Chairman & co-founder', 'Khatore Pharmaceuticals Pvt. Ltd.', '', 'khatorepharmaceuticals@gmail .com', '', 'ww.khatorepharma.com', '6767275407'),
(49, 'Jitendra B. Divgi', 'Managing Director', 'DivgiWamer Private Ltd.', '', 'jbdivgi@divgi-warner.com', '912027129691', 'www.divgi-warner.com', '912027129690'),
(50, 'Jasdeep Singh Dawar', 'Director', 'GEWISS', '919810658660', 'jasdeep.dawar@indersonsindia.com', '+911141440456', 'www.indersonsindia.com', '911125465662'),
(51, 'Jalmitra'' Vijay Kedia', 'Kedia Rainwater Harvesting Pvt. Ltd', 'Varsha Jal', '', 'jalmitra@varshajal.com', '', 'www.varshajal.com', '919822053690'),
(52, 'SUNDEEP S.CHAUHAN', '(Registered EIA Consultant Oiganization from NABET-Q.C.I./MoEF and NABL & MoEF EPA Approved Environment)', 'J.M. EnviroNet (P) Ltd.', '9811413104', 'jmenviron@hotmoil.com', '01244141029', 'www.jmenvironet.com', '1244873400'),
(53, 'NAVEEN NANDHANA', 'Director & Sr. Vice President', 'VIDEOCON INDUSTRIES LTD.', '919833098811', 'nmandhana@ vgmail.in', '+911244215401', 'www. videoconworld.com', '911244215400'),
(54, 'Hemendra Shanna', 'Asst. Manager-CRM', 'Sistema Shyam TeleServlces Limited', '919875007320', 'hemendra.sharma@mtslndla.ln', '', '', '9101515130650'),
(55, 'Harish Bhat', 'Chief Operating Office', 'TITAN INDUSTRIES', '', 'harish@titan.co.in', '918025269923', 'www.titan.co.in', '918025268551'),
(56, 'Gurmeet Singh', 'Vice-president Commercial', 'Orchid Chemicals I Cf Pharmaceuticals Ltd.', '9500034345', 'gurmeetsingh@orchidphanna.com', '914428211413', 'www.orchidphaima.com', '914428244744'),
(57, 'Gulshan Kharbanda', '', 'Akriti', '919811147282', 'gulshank@vsnl.com', '9101242347951', '', '9101242347952'),
(58, 'Eddie Chandhok', 'President', 'Infogain India (P) Ltd.', '919899705569', 'eddie.chandhok@infogain.com', '911202580406', 'www.infogain.com', '911202445144'),
(59, 'Dinesh Mirchandani', 'President', 'Boyden', '919820064724', 'dmirchandani@boyden.in', '912243457725', 'www.boyden.com', '912243457724'),
(60, 'Dinesh Kumar Goyal I.A.S', 'Principal Secretary to Government of Rajasthan ', 'PUBLIC WORKS DEPARTMENT', '', 'dineshkumargoyal@gmail.com', '14122271070', '', '1412706437'),
(61, 'Dinesh Goyal', 'General Manager - E & M', 'ERA INFRA', '919350795399', 'dinesh.goel@eragroup.in', '911204145145', 'www.eragroup.co.in', '911204145000'),
(62, 'Deepak Maniyar', 'B.E. (Chem)', 'Deepak Industries', '9422224091', 'deepakmaniyar@gmail.com', '02425-259217', 'www.deepakindustries.biz', '02425-259217'),
(63, 'SATISH BAHADUR', 'Secretary Finance (Intl. Seminar)', 'Indian Institution of Plant Engineers', '9811916962', 'bahadur37@gmail.com.', '26493974', '', '26493252'),
(64, 'Atul Bhargava', 'Head of Operations', '0-Zone Networks Pvt. Ltd.', '918800443354', 'atul.bhargava@ozonewifi.com', '', 'www.ozonewifi.com', '911146127777'),
(65, 'Atul Sharma', 'Sr. Associate Professor MDP Chairman', 'GBS', '9818697979', 'atulsharma@galgotiasbschool.in', '', 'www.galgotiasbschool.in', ''),
(66, 'ASHOK SIKKA', 'ADVOCATE INCOME TAX & INTERNATIONAL FISCAL LAWS CONSULTANT', '', '9811049880', 'ashoksikka@gmail.com', '', '', '1125935505'),
(67, 'Ashok Suri', 'Chief Construction Engineer (R & D) West', '', '', 'ashok_suri@hotmail.com', '912025880061', '', ''),
(68, 'ANIL MADAN', 'BE, (ELECT.) M.I.E. , D.I.M. MBA (MANAGING PARTNER)', 'JAM Services', '', 'anilmadan@vsnl.com', '26873422', '', '26876564'),
(69, 'Amit Singh', 'Executive Director, Co-Head Technology and Outsourcing Group', 'Avendus Capital Private Limited', '919886411118', 'amit.singh@avendus.com', '918066483636', 'www.avendus.com', '918066483601'),
(70, 'D.D.Agarwal', 'DIRECTOR', 'SWASTIKA CONCAB (INDIA) PVT. LTD.', '9414041718', 'agarwaldd@yahoo.com', '1412318319', '', '1412865424'),
(71, 'Aditya Shanna', 'Dell Services Delivery', 'DELL', '12142507173', 'aditya_a_sharma(a)dell.com', '19725772625', '', '19725775467'),
(72, 'Ahil Asthana, P.', 'Eng Vice President', 'Research In Motion Limited', '14162719377', 'aasthana@rim.com', '15198834966', 'www.nm.com', ''),
(73, 'D. D.DHANUKA', 'DIRECTOR', 'A & A Infracon Ltd.', '9810104882', 'aa_homes@yahoo.com', '', '', '30880393'),
(74, 'MBL Bhargava', 'Engg Consultant, Cement Industry Secretary & Trustee - LetzDream Foundation', 'LetzDream Foundation', '9818652332', '', '', '', '1244063459'),
(75, 'Chandan Sengupta', '', 'atmanirbhara', '919830953556', 'chandansengupta_bits80@yahoo.co.in', '', '', ''),
(76, 'Er.N.K.Mittal', 'SubDivisional Engineer', 'CCS Haryana Agricultural University', '9812265453', 'mittal_nk2005@yahoo.co.in', '', '', '01662-228513'),
(77, 'V.K.Murthy', 'VICE PRESIDENT OF CAPITAL MANAGEMENT', 'ASHFORD HOSPITALITY TRUST', '', 'vkmurthy@ahtreit.com', '972-7789243', 'www.ahtreit.com', '972-7789424'),
(78, 'Amit Sheth', 'Director', 'Mind''s Eye', '919824021607', 'design@mindseyedesign.org', '', 'www.mindseyedesign.org', '917926764135/36'),
(79, 'Vijay Athreye', 'Advisor', 'FINISH', '9886230110', 'vijayathreye@gmail.com', '011-46035197', 'www.finishsociety.com', ''),
(80, 'Prem Narayan Garg', 'Director', 'Ajmer Gases', '', 'hca2008@gmail.com', '0145-2695414', '', '2427232'),
(81, 'M.M.Kothari', '', 'EL-TRONICS', '9829050327', 'info@eltronicsjaipur.com', '0141-2377730', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
