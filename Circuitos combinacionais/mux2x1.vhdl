entity mux2x1 is
	port(
		c0 : in bit;
		c1 : in bit;
		sel : in bit;
		z : out bit
	);
end entity;

architecture comuta of mux2x1 is
	signal sa, sb : bit;
begin
	--atribuição condicional
	z <= c0 when sel='0' else c1;

	--z <= (c0 and not(sel) or (c1 and sel);	
	--sa <= (c0 and not(sel));
	--sb <= (c1 and sel);
	--z <= sa or sb;

end architecture;
