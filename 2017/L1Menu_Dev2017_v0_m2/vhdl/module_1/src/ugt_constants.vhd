-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v0

-- Unique ID of L1 Trigger Menu:
-- 0e16ab0b-2d83-4ca2-9b19-ab1d40251338

-- Unique ID of firmware implementation:
-- 8ac77806-3251-4571-beab-b81a1147df41

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- Algorithms
constant NR_ALGOS : positive := 146; -- number of algorithmns (min. 32 for FDL registers width !!!) - written by TME

constant MODULE_ID : integer := 1;
-- -- HB 2014-02-28: changed to UUID generated by TME (128 bits = 4 x 32 bits)
constant L1TM_UID : std_logic_vector(127 downto 0) := X"0e16ab0b2d834ca29b19ab1d40251338";
-- -- HB 2014-05-21: L1TM_NAME generated by TME (1024 bits = 32 x 32 bits)
-- -- has to be interpreted as 128 ASCII-characters (from right to left)
constant L1TM_NAME : std_logic_vector(128*8-1 downto 0) := X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030765f373130327665445f756e654d314c";

-- -- Unique fireware instance ID generated by the compiler, provided to keep track of multiple menu implementations.
constant L1TM_FW_UID : std_logic_vector(127 downto 0) := X"8ac7780632514571beabb81a1147df41";
--
-- -- Trigger Menu Editor software version - written by TME
constant L1TM_COMPILER_MAJOR_VERSION      : integer range 0 to 255 := 1;
constant L1TM_COMPILER_MINOR_VERSION      : integer range 0 to 255 := 0;
constant L1TM_COMPILER_REV_VERSION        : integer range 0 to 255 := 0;
constant L1TM_COMPILER_VERSION : std_logic_vector(31 downto 0) := X"00" &
           std_logic_vector(to_unsigned(L1TM_COMPILER_MAJOR_VERSION, 8)) &
           std_logic_vector(to_unsigned(L1TM_COMPILER_MINOR_VERSION, 8)) &
           std_logic_vector(to_unsigned(L1TM_COMPILER_REV_VERSION, 8));

-- HB 2016-01-14: proposed by TM, conv_std_logic_vector used, because to_unsigned does not accept neg. values
constant SVN_REVISION_NUMBER : std_logic_vector(31 downto 0) := conv_std_logic_vector(47872, 32);

-- HB 2016-04-12: proposed by TM
constant L1TM_UID_HASH : std_logic_vector(31 downto 0) := conv_std_logic_vector(-1250521962, 32);
constant FW_UID_HASH : std_logic_vector(31 downto 0) := conv_std_logic_vector(180191810, 32);

-- ========================================================