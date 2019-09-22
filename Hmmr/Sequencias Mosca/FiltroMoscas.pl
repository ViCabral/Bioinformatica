#use strict;

my $file = 'Modelo_MoscasOut.tbl';
if(open(my $fh, '<:encoding(UTF-8)', $file)){

	my $Saida = 'MoscasOut.cvs';
	open(my $sh, '>', $Saida) or die "Não foi possível abrir o arquivo '$Saida' $!";

	my $AltaL = 'AltaLigação.cvs';
	open(my $ah, '>', $AltaL) or die "Não foi possível abrir o arquivo '$AltaL' $!";

	my $MediaL = 'MediaLigação.cvs';
	open(my $mh, '>', $MediaL) or die "Não foi possível abrir o arquivo '$MediaL' $!";

	my $BaixaL = 'BaixaLigação.cvs';
	open(my $bh, '>', $BaixaL) or die "Não foi possível abrir o arquivo '$BaixaL' $!";

	print $sh "FROM\tEVALUE\tSENSE\t\n";
	while(my $row = <$fh>)
	{
	
	chomp $row;
		if($row =~ /^[^#].+$/){
		@uni = split '\s+', $row;
		print $sh "@uni[0]\t@uni[12]\t@uni[11]\n";
		}
			$num = @uni[12];
			if($num <= 1.0e-50){
			print $ah "@uni[0]\t@uni[12]\t@uni[11]\n";
			}
			if($num > 1.0e-50 && $num <= 1.0e-05){
			print $mh "@uni[0]\t@uni[12]\t@uni[11]\n";
			}
			if($num > 1.0e-05){
			print $bh "@uni[0]\t@uni[12]\t@uni[11]\n";
			}

	}
	
} else{ 
	warn "Não foi possível abrir o arquivo ";	
}

close $fh;
