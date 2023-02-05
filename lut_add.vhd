library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_1164.ALL;

entity lut_add is
    port(
        input_lut : in std_logic_vector(7 downto 0);
        output_lut : in std_logic_vector(3 downto 0)
    );
end lut_add;
architecture behavior of lut_add is
        
        type lut is array (integer range 0 to 255) of std_logic_vector(3 downto 0); 
        signal add_lut : lut;
        signal output_4bits : in std_logic_vector(7 downto 0);
        
        begin
        output_4bits <= add_lut(conv_integer(input_lut));
        add_lut (0)	<= "00000000";
		add_lut (1)	<= "00000001";
		add_lut (2)	<= "00000010";
		add_lut (3)	<= "00000011";
		add_lut (4)	<= "00000100";
		add_lut (5)	<= "00000101";
		add_lut (6)	<= "00000110";
		add_lut (7)	<= "00000111";
   	    add_lut (8)	<= "00001000";
		add_lut (9)	<= "00001001";
		add_lut (10) <= "00001010";
		add_lut (11) <= "00001011";
		add_lut (12) <= "00001100";
		add_lut (13) <= "00001101";
		add_lut (14) <= "00001110";
		add_lut (15) <= "00001111";
        add_lut (16)	<= "00000001";
		add_lut (17)	<= "00000010";
		add_lut (18)	<= "00000011";
		add_lut (19)	<= "00000100";
		add_lut (20)	<= "00000101";
		add_lut (21)	<= "00000110";
		add_lut (22)	<= "00000111";
		add_lut (23)	<= "00001000";
   	    add_lut (24)	<= "00001001";
		add_lut (25)	<= "00001010";
		add_lut (26) <= "00001011";
		add_lut (27) <= "00001100";
		add_lut (28) <= "00001101";
		add_lut (29) <= "00001110";
		add_lut (30) <= "00001111";
		add_lut (31) <= "00010000";
        add_lut (32)	<= "00000010";
		add_lut (33)	<= "00000011";
		add_lut (34)	<= "00000100";
		add_lut (35)	<= "00000101";
		add_lut (36)	<= "00000110";
		add_lut (37)	<= "00000111";
		add_lut (38)	<= "00001000";
		add_lut (39)	<= "00001001";
   	    add_lut (40)	<= "00001010";
		add_lut (41)	<= "00001011";
		add_lut (42) <= "00001100";
		add_lut (43) <= "00001101";
		add_lut (44) <= "00001110";
		add_lut (45) <= "00001111";
		add_lut (46) <= "00010000";
		add_lut (47) <= "00010001";
        add_lut (48)	<= "00000011";
		add_lut (49)	<= "00000100";
		add_lut (50)	<= "00000101";
		add_lut (51)	<= "00000110";
		add_lut (52)	<= "00000111";
		add_lut (53)	<= "00001000";
		add_lut (54)	<= "00001001";
		add_lut (55)	<= "00001010";
   	    add_lut (56)	<= "00001011";
		add_lut (57)	<= "00001100";
		add_lut (58) <= "00001101";
		add_lut (59) <= "00001110";
		add_lut (60) <= "00001111";
		add_lut (61) <= "00010000";
		add_lut (62) <= "00010001";
		add_lut (63) <= "00010010";
        add_lut (64)	<= "00000100";
		add_lut (65)	<= "00000101";
		add_lut (66)	<= "00000110";
		add_lut (67)	<= "00000111";
		add_lut (68)	<= "00001000";
		add_lut (69)	<= "00001001";
		add_lut (70)	<= "00001010";
		add_lut (71)	<= "00001011";
   	    add_lut (72)	<= "00001100";
		add_lut (73)	<= "00001101";
		add_lut (74) <= "00001110";
		add_lut (75) <= "00001111";
		add_lut (76) <= "00010000";
		add_lut (77) <= "00010001";
		add_lut (78) <= "00010010";
		add_lut (79) <= "00010011";
        add_lut (80)	<= "00000101";
		add_lut (81)	<= "00000110";
		add_lut (82)	<= "00000111";
		add_lut (83)	<= "00001000";
		add_lut (84)	<= "00001001";
		add_lut (85)	<= "00001010";
		add_lut (86)	<= "00001011";
		add_lut (87)	<= "00001100";
   	    add_lut (88)	<= "00001101";
		add_lut (89)	<= "00001110";
		add_lut (90) <= "00001111";
		add_lut (91) <= "00010000";
		add_lut (92) <= "00010001";
		add_lut (93) <= "00010010";
		add_lut (94) <= "00010011";
		add_lut (95) <= "00010100";
        add_lut (96)	<= "00000110";
		add_lut (97)	<= "00000111";
		add_lut (98)	<= "00001000";
		add_lut (99)	<= "00001001";
		add_lut (100)	<= "00001010";
		add_lut (101)	<= "00001011";
		add_lut (102)	<= "00001100";
		add_lut (103)	<= "00001101";
   	    add_lut (104)	<= "00001110";
		add_lut (105)	<= "00001111";
		add_lut (106) <= "00010000";
		add_lut (107) <= "00010001";
		add_lut (108) <= "00010010";
		add_lut (109) <= "00010011";
		add_lut (110) <= "00010100";
		add_lut (111) <= "00010101";
        add_lut (112)	<= "00000111";
		add_lut (113)	<= "00001000";
		add_lut (114)	<= "00001001";
		add_lut (115)	<= "00001010";
		add_lut (116)	<= "00001011";
		add_lut (117)	<= "00001100";
		add_lut (118)	<= "00001101";
		add_lut (119)	<= "00001110";
   	    add_lut (120)	<= "00001111";
		add_lut (121)	<= "00010000";
		add_lut (122) <= "00010001";
		add_lut (123) <= "00010010";
		add_lut (124) <= "00010011";
		add_lut (125) <= "00010100";
		add_lut (126) <= "00010101";
		add_lut (127) <= "00010110";
        add_lut (128)	<= "00001000";
		add_lut (129)	<= "00001001";
		add_lut (130)	<= "00001010";
		add_lut (131)	<= "00001011";
		add_lut (132)	<= "00001100";
		add_lut (133)	<= "00001101";
		add_lut (134)	<= "00001110";
		add_lut (135)	<= "00001111";
   	    add_lut (136)	<= "00010000";
		add_lut (137)	<= "00010001";
		add_lut (138) <= "00010010";
		add_lut (139) <= "00010011";
		add_lut (140) <= "00010100";
		add_lut (141) <= "00010101";
		add_lut (142) <= "00010110";
		add_lut (143) <= "00010111";
        add_lut (144)	<= "00001001";
		add_lut (145)	<= "00001010";
		add_lut (146)	<= "00001011";
		add_lut (147)	<= "00001100";
		add_lut (148)	<= "00001101";
		add_lut (149)	<= "00001110";
		add_lut (150)	<= "00001111";
		add_lut (151)	<= "00010000";
   	    add_lut (152)	<= "00010001";
		add_lut (153)	<= "00010010";
		add_lut (154) <= "00010011";
		add_lut (155) <= "00010100";
		add_lut (156) <= "00010101";
		add_lut (157) <= "00010110";
		add_lut (158) <= "00010111";
		add_lut (159) <= "00011000";
        add_lut (160)	<= "00001010";
		add_lut (161)	<= "00001011";
		add_lut (162)	<= "00001100";
		add_lut (163)	<= "00001101";
		add_lut (164)	<= "00001110";
		add_lut (165)	<= "00001111";
		add_lut (166)	<= "00010000";
		add_lut (167)	<= "00010001";
   	    add_lut (168)	<= "00010010";
		add_lut (169)	<= "00010011";
		add_lut (170) <= "00010100";
		add_lut (171) <= "00010101";
		add_lut (172) <= "00010110";
		add_lut (173) <= "00010111";
		add_lut (174) <= "00011000";
		add_lut (175) <= "00011001";
        add_lut (176)	<= "00001011";
		add_lut (177)	<= "00001100";
		add_lut (178)	<= "00001101";
		add_lut (179)	<= "00001110";
		add_lut (180)	<= "00001111";
		add_lut (181)	<= "00010000";
		add_lut (182)	<= "00010001";
		add_lut (183)	<= "00010010";
   	    add_lut (184)	<= "00010011";
		add_lut (185)	<= "00010100";
		add_lut (186) <= "00010101";
		add_lut (187) <= "00010110";
		add_lut (188) <= "00010111";
		add_lut (189) <= "00011000";
		add_lut (190) <= "00011001";
		add_lut (191) <= "00011010";
        add_lut (192)	<= "00001100";
		add_lut (193)	<= "00001101";
		add_lut (194)	<= "00001110";
		add_lut (195)	<= "00001111";
		add_lut (196)	<= "00010000";
		add_lut (197)	<= "00010001";
		add_lut (198)	<= "00010010";
		add_lut (199)	<= "00010011";
   	    add_lut (200)	<= "00010100";
		add_lut (201)	<= "00010101";
		add_lut (202) <= "00010110";
		add_lut (203) <= "00010111";
		add_lut (204) <= "00011000";
		add_lut (205) <= "00011001";
		add_lut (206) <= "00011010";
		add_lut (207) <= "00011011";
        add_lut (208) <= "00001101";
		add_lut (209) <= "00001110";
		add_lut (210) <= "00001111";
		add_lut (211) <= "00010000";
		add_lut (212) <= "00010001";
		add_lut (213) <= "00010010";
		add_lut (214) <= "00010011";
		add_lut (215) <= "00010100";
   	    add_lut (216) <= "00010101";
		add_lut (217) <= "00010110";
		add_lut (218) <= "00010111";
		add_lut (219) <= "00011000";
		add_lut (220) <= "00011001";
		add_lut (221) <= "00011010";
		add_lut (222) <= "00011011";
		add_lut (223) <= "00011100";
        add_lut (224) <= "00001110";
		add_lut (225) <= "00001111";
		add_lut (226) <= "00010000";
		add_lut (227) <= "00010001";
		add_lut (228) <= "00010010";
		add_lut (229) <= "00010011";
		add_lut (230) <= "00010100";
		add_lut (231) <= "00010101";
   	    add_lut (232) <= "00010110";
		add_lut (233) <= "00010111";
		add_lut (234) <= "00011000";
		add_lut (235) <= "00011001";
		add_lut (236) <= "00011010";
		add_lut (237) <= "00011011";
		add_lut (238) <= "00011100";
		add_lut (239) <= "00011101";
        add_lut (240) <= "00001111";
		add_lut (241) <= "00010000";
		add_lut (242) <= "00010001";
		add_lut (243) <= "00010010";
		add_lut (244) <= "00010011";
		add_lut (245) <= "00010100";
		add_lut (246) <= "00010101";
		add_lut (247) <= "00010110";
   	    add_lut (248) <= "00010111";
		add_lut (249) <= "00011000";
		add_lut (250) <= "00011001";
		add_lut (251) <= "00011010";
		add_lut (252) <= "00011011";
		add_lut (253) <= "00011100";
		add_lut (254) <= "00011101";
		add_lut (255) <= "00011110";

    output_lut <= output_4bits(3 downto 0);
end behavior;