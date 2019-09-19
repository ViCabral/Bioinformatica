#use strict;

my $file = 'Cromo_2_COM_TEs.tbl';
if(open(my $fh, '<:encoding(UTF-8)', $file)){

	while(my $row = <$fh>)
	{
	chomp $row;
		if($row != '#')
		{
		my @uni = split '\s+', $row;
		print "\n";
		print "PREDIC---FROM--@uni[6]---TO--@uni[7]---LENGTH--@uni[10]---EVALUE--@uni[12]---SCORE--@uni[13]---SENSE--@uni[11]\n";
		}
	}
	
} else{ 
	warn "Não foi possível abrir o arquivo ";	
}

close $fh;
