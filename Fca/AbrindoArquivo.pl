#use strict;

$file = 'Exemplo.tbl';
if(open($fh, '<:encoding(UTF-8)', $file)){

	while($row = <$fh>)
	{
	chomp $row;
		if($row != '#')
		{
		@uni = split '\s+', $row;
		print "\n";
		print "Target Name = @uni[0]\n";
		print "E-Value = @uni[6]\n";
		print "Score = @uni[7]\n";
		$range = @uni[17]-@uni[18];
		print "Range = $range\n"; 
		}	
	}
	
} else{ 
	warn "Não foi possível abrir o arquivo ";	
}

########
# $evalue = @uni[6];

# print PREDFILE "PREDIC---FROM--$aliFrom---TO--$aliTo---LENGTH--$aliLength---EVALUE--$evalue---SCORE--$score---SENSE--$sense---HMMSUPERFAM--$superfam\n";

PREDIC---FROM--1788---TO--2188---LENGTH--401---EVALUE--0.00014---SCORE--6.0---SENSE--Direct---HMMSUPERFAM--Copia
PREDIC---FROM--1788---TO--2188---LENGTH--401---EVALUE--0.00014---SCORE--6.0---SENSE--Direct---HMMSUPERFAM--Copia
PREDIC---FROM--1788---TO--2188---LENGTH--401---EVALUE--0.00014---SCORE--6.0---SENSE--Direct---HMMSUPERFAM--Copia

# if ($linha =~ /FROM--(\d+)---TO--(\d+)---LENGTH/) {

# print ARQ "FROM\tTO\tLENGTH\t etc \n";
# while...
# 	print ARQ "1788\t2188\t401 etc \n";
#fim

########



#Teste pensando na ideia de linguagem regular

#@dados = (open(Exemplo.tbl))
#or die "Não foi Possivel abrir o arquivo '$file' $!";
#while(@uni = true)
#		{
#			if(@uni =~ /^\d\w-\d\w-\w+-\d+$/)
#			{
#				
#			}	
#			if(@uni =~ /^$/)
#			{
#				
#			}
#			if(@uni =~ /^$/)
#			{
#				
#			}
#	
#		@uni++;	
#		}
#
