#use strict;

my $file = 'AvaliaçãoSeqSaida.txt';
if(open(my $fh, '<:encoding(UTF-8)', $file)){


	print "FROM\tTO\tLENGTH\tEVALUE\tSCORE\tSENSE\t\n";
	while(my $row = <$fh>)
	{
	chomp $row;
		if($row =~ /FROM--(\d+)---TO--(\d+)---LENGTH--(\d+)---EVALUE--(.+)---SCORE--(.+)---SENSE--(.+)/)
		{
		my @uni = split '[\-]+', $row;
		if(@uni[12] ne "+")
		{
		@uni[12] = 'Reverse';
		}
		print "@uni[2]\t@uni[4]\t@uni[6]\t@uni[8]\t@uni[10]\t@uni[12]\n";
		}

	}
	
	
} else{ 
	warn "Não foi possível abrir o arquivo ";	
}
close $fh;
