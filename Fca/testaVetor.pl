@nomes = ("UM", "DOIS", "TRES");

foreach $nome (@nomes) {
	$nomeUsado = "ARRAY-".$nome;
	push (@$nomeUsado, $nome);
}

#foreach $nome (@nomeVetor) {
#	$FILE = "ARQ".$nome;
#   	$nomeFile = "pastaTal/resultados_$nome.txt"; # arquivo com resultados
#   	open ($FILE, $nomeFile) or die "Nao pode abrir $nomeFile";
#	$valorLido = readline($FILE);
#}

foreach $nome (@nomes) {
	$nomeUsado2 = "ARRAY-".$nome;
	print "No vetor $nomeUsado2 esta escrito: $$nomeUsado2[0]\n\n";
}

