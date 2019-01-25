-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- 77c4c1a3-8e88-4e16-b904-f67e69239cf6

-- Unique ID of firmware implementation:
-- 3b802383-09ac-4bcb-9a87-6df7db8aa175

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- Algorithms
constant NR_ALGOS : positive := 78; -- number of algorithmns (min. 32 for FDL registers width !!!) - written by TME

constant MODULE_ID : integer := 4;
-- -- HB 2014-02-28: changed to UUID generated by TME (128 bits = 4 x 32 bits)
constant L1TM_UID : std_logic_vector(127 downto 0) := X"77c4c1a38e884e16b904f67e69239cf6";
-- -- HB 2014-05-21: L1TM_NAME generated by TME (1024 bits = 32 x 32 bits)
-- -- has to be interpreted as 128 ASCII-characters (from right to left)
constant L1TM_NAME : std_logic_vector(128*8-1 downto 0) := X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034765f37313032736e6f6973696c6c6f435f756e654d314c";

-- -- Unique fireware instance ID generated by the compiler, provided to keep track of multiple menu implementations.
constant L1TM_FW_UID : std_logic_vector(127 downto 0) := X"3b80238309ac4bcb9a876df7db8aa175";
--
-- -- Trigger Menu Editor software version - written by TME
constant L1TM_COMPILER_MAJOR_VERSION      : integer range 0 to 255 := 2;
constant L1TM_COMPILER_MINOR_VERSION      : integer range 0 to 255 := 2;
constant L1TM_COMPILER_REV_VERSION        : integer range 0 to 255 := 1;
constant L1TM_COMPILER_VERSION : std_logic_vector(31 downto 0) := X"00" &
           std_logic_vector(to_unsigned(L1TM_COMPILER_MAJOR_VERSION, 8)) &
           std_logic_vector(to_unsigned(L1TM_COMPILER_MINOR_VERSION, 8)) &
           std_logic_vector(to_unsigned(L1TM_COMPILER_REV_VERSION, 8));

-- HB 2016-01-14: proposed by TM, conv_std_logic_vector used, because to_unsigned does not accept neg. values
constant SVN_REVISION_NUMBER : std_logic_vector(31 downto 0) := conv_std_logic_vector(49836, 32);

-- HB 2016-04-12: proposed by TM
constant L1TM_UID_HASH : std_logic_vector(31 downto 0) := conv_std_logic_vector(-715889343, 32);
constant FW_UID_HASH : std_logic_vector(31 downto 0) := conv_std_logic_vector(1075867842, 32);

-- ========================================================