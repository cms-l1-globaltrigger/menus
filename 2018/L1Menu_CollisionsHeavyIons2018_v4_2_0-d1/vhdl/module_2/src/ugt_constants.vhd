-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_2_0

-- Unique ID of L1 Trigger Menu:
-- 18def6b5-725e-4ccd-bd48-aa6c63158cc8

-- Unique ID of firmware implementation:
-- d9e210d6-5dc9-44d5-a572-f85783174c8f

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- Algorithms
constant NR_ALGOS : positive := 58; -- number of algorithmns (min. 32 for FDL registers width !!!) - written by TME

constant MODULE_ID : integer := 2;
-- -- HB 2014-02-28: changed to UUID generated by TME (128 bits = 4 x 32 bits)
constant L1TM_UID : std_logic_vector(127 downto 0) := X"18def6b5725e4ccdbd48aa6c63158cc8";
-- -- HB 2014-05-21: L1TM_NAME generated by TME (1024 bits = 32 x 32 bits)
-- -- has to be interpreted as 128 ASCII-characters (from right to left)
constant L1TM_NAME : std_logic_vector(128*8-1 downto 0) := X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000305f325f34765f38313032736e6f497976616548736e6f6973696c6c6f435f756e654d314c";

-- -- Unique fireware instance ID generated by the compiler, provided to keep track of multiple menu implementations.
constant L1TM_FW_UID : std_logic_vector(127 downto 0) := X"d9e210d65dc944d5a572f85783174c8f";
--
-- -- Trigger Menu Editor software version - written by TME
constant L1TM_COMPILER_MAJOR_VERSION      : integer range 0 to 255 := 2;
constant L1TM_COMPILER_MINOR_VERSION      : integer range 0 to 255 := 5;
constant L1TM_COMPILER_REV_VERSION        : integer range 0 to 255 := 0;
constant L1TM_COMPILER_VERSION : std_logic_vector(31 downto 0) := X"00" &
           std_logic_vector(to_unsigned(L1TM_COMPILER_MAJOR_VERSION, 8)) &
           std_logic_vector(to_unsigned(L1TM_COMPILER_MINOR_VERSION, 8)) &
           std_logic_vector(to_unsigned(L1TM_COMPILER_REV_VERSION, 8));

constant SVN_REVISION_NUMBER : std_logic_vector(31 downto 0) := X"9816ECFA"; -- git rev 9816ecfa
constant L1TM_UID_HASH : std_logic_vector(31 downto 0) := X"13D23CD7";
constant FW_UID_HASH : std_logic_vector(31 downto 0) := X"BE9046F6";

-- ========================================================