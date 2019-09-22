# CNF - 03.09.2019

# nos arqs do Repbase sao encontradas seqs de TEs tanto das regioes INTERNAS qto das regioes LTRs (externas).
# este script exclui as seqs LTRs desses arqs

# Usage: perl extrairLTRsRepbase.pl <arq_original>

use strict;
use Bio::SeqIO;

my $superfam = $ARGV[0];

my $semLTRsFile = "Copia\_SEM_LTRs.fasta";

my $in = Bio::SeqIO->new(-file => "$superfam" ,
		         -format => 'Fasta');

my $out = Bio::SeqIO->new(-file => ">$semLTRsFile" ,
		         -format => 'Fasta');

while ( my $seq = $in->next_seq() ) {
#	>AACOPIA1_I	Copia	Aedes aegypti
#	>AACOPIA1_LTR	Copia	Aedes aegypti
#	>ATCOPIA11LTR	Copia	Arabidopsis thaliana
#	>copia-1-LTR_AF	Copia	Aspergillus fumigatus
	my $idSeq = $seq->id; # pega apenas o trecho referente a IDENTIFICACAO da seq.
	if ($idSeq !~ /LTR/) { $out->write_seq($seq); }
}


