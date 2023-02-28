entity tb_mux2x4 is
end entity;

architecture tb of tb_mux2x4 is
	component mux2x4 is
		port(
			c0 : in bit_vector(3 downto 0);
			c1 : in bit_vector(3 downto 0);
			sel : in bit;
			z : out bit_vector(3 downto 0)
		);
	end component;
	
	signal sc0, sc1 : bit_vector(3 downto 0);
	signal ssel : bit;
	signal sz : bit_vector(3 downto 0);
	
begin

	u_mux2x4 : mux2x4 port map(sc0,sc1,ssel,sz);

	u_tb : process
	begin
		sc0 <= "1010";
		sc1 <= "1110";
		ssel <= '0'; -- A
		wait for 10 ns;
		
		ssel <= '1'; -- B
		wait for 10 ns;
		
		ssel <= '0'; -- A
		wait for 10 ns;
		
	end process;

end architecture;