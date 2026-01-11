-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 29, 2025 at 10:56 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exo_prostheses`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gallery`
--

CREATE TABLE `gallery` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `pro_exo` tinyint(1) NOT NULL,
  `y_manufacture` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `manufacturer`, `image`, `pro_exo`, `y_manufacture`, `description`) VALUES
(1, 'Michelangelo Hand', 'Ottobock', '1.png', 0, '2012-09-06', 'Michelangelo Hand (Ottobock) to zaawansowana, mioelektryczna proteza dłoni, sterowana sygnałami mięśni użytkownika. Umożliwia siedem funkcjonalnych rodzajów chwytu oraz naturalne ułożenie kciuka i nadgarstka, co pozwala na wykonywanie wielu codziennych czynności w sposób zbliżony do ruchów zdrowej ręki. '),
(2, 'Bebionic Hand', 'Ottobock', '2.png', 0, '2010-10-10', 'Bebionic Hand to zaawansowana, mioelektryczna proteza dłoni sterowana sygnałami mięśni użytkownika. Posiada indywidualnie napędzane palce, oferuje kilkanaście funkcjonalnych rodzajów chwytu (m.in. precyzyjny, cylindryczny, boczny), a dzięki kształtowi i prędkości ruchu zbliżonym do naturalnej ręki umożliwia wykonywanie wielu codziennych czynności – od chwytania kubka po pisanie na klawiaturze.'),
(3, 'i-Limb Quantum', 'Ossur', '3.png', 0, '2015-10-30', 'i-Limb Quantum to zaawansowana, wieloczłonowa proteza dłoni typu mioelektrycznego. Każdy z pięciu palców jest napędzany osobnym silnikiem, a tytanowe paliczki zwiększają udźwig i siłę chwytu. Proteza oferuje do kilkudziesięciu zdefiniowanych i personalizowanych chwytów, elektronicznie obracany kciuk oraz funkcje takie jak Vari-Grip™ (zwiększenie siły chwytu) i Auto-Grasp™ (zabezpieczenie przed upuszczeniem przedmiotu). Wyróżnia się także sterowaniem gestem, aplikacją i standardowym sterowaniem mięśniowym, co pozwala użytkownikowi płynnie dobierać odpowiedni chwyt do wykonywanej czynności '),
(4, 'Utah Arm 3+', 'Fillauer', '4.png', 0, '2012-02-04', 'Utah Arm 3+ to mikroprocesorowo sterowany, mioelektryczny staw łokciowy z przedramieniem, stosowany w protezach kończyny górnej powyżej łokcia. Umożliwia jednoczesne sterowanie zgięciem łokcia oraz dłonią lub hakowym chwytakiem (ETD), oferuje czułą i precyzyjną regulację ruchu, funkcję cichego „wolnego wymachu” oraz cichy hamulec cierny blokujący łokieć w praktycznie dowolnej pozycji. Może współpracować z wieloma różnymi rękami i chwytakami różnych producentów. '),
(5, 'DynamicArm Plus', 'Ottobock ', '5.png', 0, '2010-11-12', 'DynamicArm Plus to aktywny, elektryczny staw łokciowy stosowany w mioelektrycznych protezach kończyny górnej powyżej łokcia. Napędzany silnikiem elektrycznym, umożliwia płynne zginanie i prostowanie przedramienia oraz jednoczesne sterowanie dłonią/protezową ręką. Zawiera mikroprocesorowe sterowanie, funkcję „wolnego wymachu” (naturalne huśtanie ręki podczas chodu) i możliwość szybkiego przytrzymania i blokady w wybranej pozycji, co ułatwia wykonywanie codziennych czynności zbliżonych do ruchów naturalnego ramienia. '),
(6, 'Esper Hand', 'Esper Bionics', '6.png', 0, '2022-01-04', 'Esper Hand to lekka, bioniczna proteza dłoni sterowana sygnałami mięśni (EMG), która wykorzystuje uczenie maszynowe i przetwarzanie w chmurze. Ponad 30 czujników zbiera sygnały z mięśni, a algorytmy AI uczą się nawyków użytkownika, dzięki czemu proteza z czasem coraz lepiej przewiduje zamiar ruchu i automatycznie dobiera odpowiednie chwyty. Urządzenie wyróżnia się nowoczesnym wzornictwem i zostało nagrodzone m.in. przez TIME oraz CES za innowacyjność. '),
(7, 'COVVI Hand', 'Ortho-Reha', '7.png', 0, '2019-01-09', 'COVVI Hand to zaawansowana proteza dłoni typu mioelektrycznego, oferująca ponad 24 programowalne chwyt y oraz udźwig do ok. 30 kg przy sile chwytu sięgającej ok. 90 N. Zastosowano w niej elastyczną silikonową „rękawicę”, czujniki siły w opuszkach palców, szybkozłącze nadgarstkowe oraz możliwość konfiguracji ustawień za pomocą aplikacji COVVI Go, co pozwala dopasować pracę dłoni do indywidualnych potrzeb użytkownika. '),
(8, '3WR95 Aqua Knee', 'Ottobock', '8.png', 0, '2012-12-01', '3WR95 Aqua Knee to wodoodporny, mechaniczno-hydrauliczny staw kolanowy przeznaczony do tzw. „mokrych protez” (system Aqualine). Jest lekki, wykonany z aluminium, wyposażony w zintegrowaną mini-hydraulikę oraz blokadę kolana dla większego bezpieczeństwa w fazie podporu. Umożliwia regulację oporu zgięcia i wyprostu w fazie wymachu oraz posiada otwory zalewowe, które pozwalają na swobodne wypełnianie i czyszczenie stawu w wodzie, dzięki czemu nadaje się do chodzenia pod prysznicem, na basenie czy na plaży. '),
(9, '3R90 Comfort Brake Knee', 'Ottobock', '9.png', 0, '2007-07-10', '3R90 Comfort Brake Knee to mechaniczny, monocentryczny staw kolanowy z hamulcem ciernym zależnym od obciążenia. Hamulec aktywuje się przy obciążeniu pięty, stabilizując protezę w fazie podporu, a zwalnia się, gdy ciężar ciała przechodzi na przodostopie, co ułatwia wejście w fazę wymachu i zapewnia bardziej harmonijny chód. W dolnej części zintegrowano mechaniczne wspomaganie wyprostu o regulowanej sile (5 poziomów), poprawiające powrót kolana do wyprostu i komfort chodu u użytkowników o umiarkowanym poziomie aktywności. '),
(10, 'Myo Plus Control System', 'Ottobock', '10.png', 0, '2019-12-20', 'Myo Plus to system sterowania protezą dłoni oparty na rozpoznawaniu wzorców EMG. Do nawet 8 elektrod umieszczonych na kikutach przedramienia rejestruje charakterystyczne „wzory” aktywności mięśni przy wyobrażaniu sobie różnych ruchów dłoni. Oprogramowanie analizuje te wzorce i przypisuje je do konkretnych chwytów lub funkcji protezy (np. bebionic hand, chwytak elektryczny), dzięki czemu użytkownik może sterować ręką w sposób bardziej intuicyjny, bez konieczności „przełączania trybów” jak w klasycznych systemach dwukanałowych. '),
(11, 'OPC Steeper Espire Elbow', 'Hosmer Dorrance Corporation', '11.png', 0, '2019-11-30', 'Espire Elbow to rodzina nowoczesnych, anatomicznie ukształtowanych stawów łokciowych do protez kończyny górnej powyżej łokcia. W wersji Espire Pro jest to w pełni zasilany elektrycznie, myoelektryczny łokieć z elektroniczną blokadą, możliwością „wolnego wymachu” oraz dużą siłą unoszenia (utrzymanie ok. 11 kg, dynamiczne podnoszenie ok. 4 kg). Konstrukcja z przesuniętym środkiem masy poprawia wyważenie protezy, a programowanie przez aplikację Espire Hub (iPad) pozwala dopasować prędkość, czułość i funkcję swobodnego zwisu do indywidualnych potrzeb użytkownika. '),
(12, 'MC ETD2 myoelectric hand', 'Fillauer', '12.png', 0, '2012-01-31', 'MC ETD2 to myoelektryczny chwytak hakowy (terminal device) o zwartej, lekkiej i bardzo wytrzymałej konstrukcji. Zamiast kształtu anatomicznej dłoni ma haczykowy chwyt z szerokimi „palcami” i wymiennymi, antypoślizgowymi nakładkami, co zapewnia pewny uchwyt narzędzi, kierownicy, przedmiotów roboczych itp. Urządzenie wykorzystuje bezszczotkowy silnik DC, oferuje szybkie otwieranie i zamykanie, manualny przycisk bezpieczeństwa (safety release) oraz możliwość współpracy z różnymi nadgarstkami (m.in. Quick Disconnect, Flexion, Multi-Flex, Power Flexion) i systemami sterowania, takimi jak Utah Arm czy Motion Arm. '),
(13, 'EksoGT', 'Ekso Bionics', '13.png', 1, '2013-12-15', 'EksoGT to medyczny, napędzany egzoszkielet kończyn dolnych przeznaczony głównie do rehabilitacji chodu u pacjentów po udarach, urazach rdzenia kręgowego i innych zaburzeniach chodu. Umożliwia pionizację i chodzenie po równym podłożu oraz po schodach, a wbudowane czujniki i oprogramowanie automatycznie dobierają wzorzec kroków i poziom wspomagania, dzięki czemu terapeuta może stopniowo zwiększać udział aktywnej pracy pacjenta w czasie terapii.  '),
(14, 'EksoNR', 'Ekso Bionics', '14.png', 1, '2010-09-27', 'EksoNR to najnowsza generacja napędzanego egzoszkieletu kończyn dolnych do rehabilitacji neurologicznej. Powstał na bazie wcześniejszych modeli eLEGS / Ekso / EksoGT i jest przeznaczony głównie dla pacjentów po udarze, urazach rdzenia kręgowego, nabytych uszkodzeniach mózgu oraz w stwardnieniu rozsianym. Urządzenie umożliwia pionizację, naukę chodu po płaskim podłożu i schodach, a system SmartAssist i panel EksoView pozwalają terapeutom w czasie rzeczywistym dopasowywać poziom wspomagania każdej nogi, monitorować symetrię chodu i postępy terapii.'),
(15, 'Indego', 'Parker Hannifin', '15.png', 1, '2015-07-06', 'Indego to modularny, napędzany egzoszkielet kończyn dolnych (biodro–kolano) przeznaczony do rehabilitacji chodu oraz jako pomocniczy środek lokomocji dla osób z urazem rdzenia kręgowego. Waży ok. 12–13 kg, składa się z kilku łatwo rozłączanych segmentów, które można szybko założyć lub spakować do transportu. Umożliwia pionizację, chodzenie z kulami lub balkonikiem, a poziom wspomagania może być dopasowany do możliwości pacjenta. System współpracuje z aplikacją iOS, która pozwala terapeutom monitorować parametry chodu, ustawiać tryby pracy oraz dokumentować postępy rehabilitacji. '),
(16, 'ReWalk', 'ReWalk Robotics', '16.png', 1, '2011-10-15', 'ReWalk to napędzany egzoszkielet kończyn dolnych (biodro–kolano) przeznaczony dla osób z uszkodzeniem rdzenia kręgowego. Lekka, zewnętrzna „ortreza” z silnikami w stawach biodrowych i kolanowych umożliwia pionizację oraz chodzenie po równym podłożu, krawężnikach i schodach przy użyciu kul łokciowych. Czujniki wykrywają przesunięcie środka ciężkości użytkownika (pochylenie tułowia), a sterownik zamienia je na serię kroków, odwzorowując możliwie naturalny wzorzec chodu; system dostępny jest w wersji do rehabilitacji klinicznej oraz do codziennego użytku domowego. '),
(17, 'HAL 9000', 'Stanley Cubrick', '17.png', 1, '2012-04-17', 'HAL 9000 to zasilany egzoszkielet (Hybrid Assistive Limb) wspomagający ruch kończyn dolnych, a w niektórych wersjach także tułowia i kończyn górnych. Urządzenie wykorzystuje czujniki wykrywające bardzo słabe sygnały bioelektryczne z mięśni oraz czujniki ruchu; na tej podstawie sterowniki napędzają silniki w stawach biodrowych i kolanowych, pomagając użytkownikowi stać, chodzić, wchodzić po schodach lub wykonywać pracę z obciążeniem. HAL jest stosowany głównie w rehabilitacji pacjentów z uszkodzeniem rdzenia, udarem i chorobami nerwowo-mięśniowymi, a także w wersjach przemysłowych do odciążania pracowników. '),
(18, 'REX', 'Rex Bionics Ltd.', '18.png', 1, '2010-07-08', 'REX to samostabilizujący, napędzany egzoszkielet kończyn dolnych i miednicy, przeznaczony głównie dla osób z całkowitym uszkodzeniem rdzenia kręgowego. Urządzenie potrafi samo utrzymać ciężar użytkownika bez konieczności używania kul, umożliwia pionizację, chodzenie do przodu i do tyłu, obracanie się, a w wybranych konfiguracjach także wchodzenie po schodach. Wykorzystywany jest zarówno w rehabilitacji klinicznej, jak i w wersji osobistej jako alternatywa dla wózka inwalidzkiego. '),
(19, 'ReStore', 'ReWalk Robotics', '19.png', 1, '2017-02-03', 'ReStore to miękki egzosuit (soft exo-suit) do rehabilitacji chodu po udarze mózgu. Jest to lekki, zasilany system zakładany na miednicę i podudzie, który poprzez napęd przy stawie skokowym wspomaga zgięcie grzbietowe i podeszwowe stopy podczas chodu. Urządzenie adaptacyjnie synchronizuje się z krokiem pacjenta, poprawiając fazę wybicia i przenoszenia kończyny, a terapeuta może na bieżąco regulować poziom wspomagania i monitorować parametry chodu w warunkach klinicznych. '),
(20, 'Exowalk', 'HMH Corp', '20.png', 1, '2022-05-12', 'Exowalk to stacjonarno-mobilny, napędzany robot do reedukacji chodu, przeznaczony głównie dla pacjentów po udarach i z innymi zaburzeniami neurologicznymi. Urządzenie łączy zewnętrzny egzoszkielet kończyn dolnych z platformą jezdną i uchwytem/rękojeściami, umożliwiając pionizację i trening chodu po korytarzu szpitalnym przy pełnym zabezpieczeniu pacjenta. Wbudowane silniki w stawach biodrowych i kolanowych prowadzą nogi zgodnie z zaprogramowanym wzorcem kroków, a system czujników pozwala dopasować prędkość, długość kroku i poziom wspomagania do możliwości chorego. '),
(21, 'Phoenix', 'SuitX', '21.png', 1, '2016-12-16', 'Phoenix to lekki, modułowy egzoszkielet kończyn dolnych przeznaczony dla osób z poważnymi zaburzeniami chodu (np. po urazie rdzenia kręgowego). Waży ok. 12–15 kg, ma napęd głównie w stawach biodrowych, a specjalnie zaprojektowane kolana blokują się w fazie podporu i odblokowują w fazie wymachu, zapewniając stabilność i odpowiednią długość kroku. Urządzenie pozwala na pionizację, chodzenie po płaskiej powierzchni z pomocą kul, a na jednym ładowaniu może pracować kilka godzin, dzięki czemu może być używane zarówno w rehabilitacji klinicznej, jak i w warunkach domowych. '),
(22, 'Fourier X2', 'Fourier Intelligence', '22.png', 1, '2018-11-11', 'Fourier X2 to napędzany egzoszkielet kończyn dolnych przeznaczony głównie do rehabilitacji chodu. Wyposażony jest w 4 jednostki napędowe oraz układ wieloosiowych czujników siły w obrębie ud, podudzi i stóp, które pozwalają „odczytywać” zamiar ruchu pacjenta i w czasie rzeczywistym dopasowywać poziom wspomagania. Lekka konstrukcja z aluminium i włókna węglowego (ok. 18 kg, o ok. 1/3 lżejsza od poprzedniego modelu X1) umożliwia trening chodu, w tym w trybach od całkowicie prowadzonego przez robota po bardziej aktywny, z większym udziałem pracy mięśni pacjenta.'),
(23, 'Myomo Myosuit', 'Myomo, Inc.', '23.png', 1, '2017-11-17', 'MyoSuit (Myomo) to zasilana, noszona na ciele ortoza mioelektryczna dla kończyny górnej (ramię i dłoń). Wykorzystuje czujniki EMG do wykrywania resztkowej aktywności mięśni i na tej podstawie steruje silnikami wspomagającymi zginanie, prostowanie i chwyt. System przeznaczony jest dla osób po udarach, urazach mózgu lub rdzenia oraz w innych schorzeniach neurologicznych, aby umożliwić im ponowne wykonywanie codziennych czynności, takich jak chwytanie i trzymanie przedmiotów, jedzenie czy ubieranie się. '),
(24, 'Guardian XO', 'Sarcos Robotics', '24.png', 1, '2020-10-11', 'Guardian XO to w pełni zasilany, całkowicie zabudowany egzoszkielet całego ciała przeznaczony głównie do zastosowań przemysłowych i wojskowych. Umożliwia użytkownikowi podnoszenie ładunków rzędu ok. 90 kg (200 lb), przy odczuwalnym obciążeniu kilkukrotnie mniejszym dzięki wzmocnieniu siły do ok. 20×. System ma 24 stopnie swobody, jest zasilany z wymiennych baterii (możliwość pracy przez całą zmianę) i pozwala wykonywać typowe zadania magazynowe, montażowe czy budowlane przy znacznie mniejszym ryzyku przeciążenia mięśni i kręgosłupa.'),
(25, 'Sandevistan Apogee', 'Militech', '25.png', 1, '2077-09-07', 'Can be activated and deactivated on demand after a slight delay.\r\n\r\nWhile Sandevistan is active:\r\n\r\nTime is slowed down by 85% for everyone but the user.\r\nIncreases Headshot Damage Multiplier, Crit Chance, and Crit Damage by 15%. This is increased to 17% at Tier 5+, and to 20% at Tier 5++.\r\nNeutralizing an enemy when this Sandevistan is active gives:\r\n\r\n10% extended duration\r\n22% Stamina\r\nThis Sandevistan has a base duration of 6 seconds and a cooldown of 30 seconds. The cooldown is reduced to 25 seconds at Tier 5+.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
