-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r3

-- Unique ID of L1 Trigger Menu:
-- 091bc7c1-adf4-41be-8dc2-8bc3797597d2

-- Unique ID of firmware implementation:
-- debf71c9-b13a-43c4-9e1b-df86e2425514

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- Algorithms
constant NR_ALGOS : positive := 16; -- number of algorithmns (min. 32 for FDL registers width !!!) - written by TME

constant MODULE_ID : integer := 5;
-- -- HB 2014-02-28: changed to UUID generated by TME (128 bits = 4 x 32 bits)
constant L1TM_UID : std_logic_vector(127 downto 0) := X"091bc7c1adf441be8dc28bc3797597d2";
-- -- HB 2014-05-21: L1TM_NAME generated by TME (1024 bits = 32 x 32 bits)
-- -- has to be interpreted as 128 ASCII-characters (from right to left)
constant L1TM_NAME : std_logic_vector(128*8-1 downto 0) := X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000033725f34765f37313032736e6f6973696c6c6f435f756e654d314c";

-- -- Unique fireware instance ID generated by the compiler, provided to keep track of multiple menu implementations.
constant L1TM_FW_UID : std_logic_vector(127 downto 0) := X"debf71c9b13a43c49e1bdf86e2425514";
--
-- -- Trigger Menu Editor software version - written by TME
constant L1TM_COMPILER_MAJOR_VERSION      : integer range 0 to 255 := 2;
constant L1TM_COMPILER_MINOR_VERSION      : integer range 0 to 255 := 3;
constant L1TM_COMPILER_REV_VERSION        : integer range 0 to 255 := 0;
constant L1TM_COMPILER_VERSION : std_logic_vector(31 downto 0) := X"00" &
           std_logic_vector(to_unsigned(L1TM_COMPILER_MAJOR_VERSION, 8)) &
           std_logic_vector(to_unsigned(L1TM_COMPILER_MINOR_VERSION, 8)) &
           std_logic_vector(to_unsigned(L1TM_COMPILER_REV_VERSION, 8));

-- HB 2016-01-14: proposed by TM, conv_std_logic_vector used, because to_unsigned does not accept neg. values
constant SVN_REVISION_NUMBER : std_logic_vector(31 downto 0) := conv_std_logic_vector(50340, 32);

-- HB 2016-04-12: proposed by TM
constant L1TM_UID_HASH : std_logic_vector(31 downto 0) := conv_std_logic_vector(-1255571312, 32);
constant FW_UID_HASH : std_logic_vector(31 downto 0) := conv_std_logic_vector(-374174558, 32);

-- ========================================================