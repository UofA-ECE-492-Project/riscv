library ieee;
use ieee.std_logic_1164.all;

entity control_fsm is
  port (
    clk_i             : in std_ulogic;
    eq_i, lt_i, ltu_i : in std_ulogic;  -- A == B, A < B, A < B (unsigned)
    opcode_i          : in std_ulogic_vector (6 downto 0);
    funct3_i          : in std_ulogic_vector (2 downto 0);
    sub_sra_i      : in std_ulogic;

    sub_sra_o                               : out std_ulogic;
    func_o, sx_size_o                       : out std_ulogic_vector (2 downto 0);
    addr_sel_o, alu_a_sel_o, alu_a_se_ol    : out std_ulogic;
    rd_se_ol                                : out std_ulogic_vector (1 downto 0);
    mem_cl_ok, rd_clk_o, pc_clk_o, ir_clk_o : out std_ulogic;
    pc_alu_sel_o, pc_next_sel_o             : out std_ulogic;
    reset_o                                 : out std_logic);
end control_fsm;

architecture Behavioral of control_fsm is
begin
end Behavioral;
