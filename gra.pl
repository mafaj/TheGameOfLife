#!/usr/bin/perl
use strict;

my @a;
my @a1;
foreach(0..399)
{
	$a[$_]=' ';
	$a1[$_]=' ';
}


print"\tGRA W ZYCIE :D\n GRASZ NA PLANSZY 20x20\n Podaj liczbe poczatkowych organizmow: ";
my $l_pocz;
my @y;
$l_pocz=<STDIN>;
print"Pola sa ponumerowane od 1 do 400\n Podaj numery pol z organizmami poczatkowymi:\n";
for(my $i=1;$i<=$l_pocz;$i++)
{ 
	my $j=$i-1;
	print"#$i :";
	$y[$j]=<STDIN>;
	
}
print @y;

for(my $z=0;$z<@y;$z++)
{
	for(my $x=0;$x<@a;$x++)
	{ my $p=$x+1;
		
		if($p == $y[$z])
		{
			$a[$x]='@';
		}
	}
}

print"Twoje poczatkowe ustawienie\nwcisnij 'enter' by zobaczyc losy Twojej koloni :P";

plansza(@a);
print "->ENTER<- aby kontynuowac...\n";
getc();
my $zmiany;
my $runda=0;
while(1==1)
{
	#if ($runda > 100 ){print "KONIEC\n TWOJA KOLONIA NIE ZMIENIA SIE LUB PRZESZLO 100 RUND\n";last;}
	#else 
	{
		$runda++;
		$zmiany=0;
		for(my $i=0;$i<@a;$i++)
		{
			my $sasiad;
			my $p=$i+1;
			my $l=$i-1;
			my $d=$i+20;
			my $g=$i-20;
			my $gl=$i-21;
			my $gp=$i-19;
			my $dp=$i+21;
			my $dl=$i+19;
	
			$sasiad=0;
			my @s;
		
		
			if($a[$l] eq '@' && $a[$l] > -1  && $l != 19 && $l != 39 && $l != 59 && $l != 79 && $l != 99 && $l != 119 && $l != 139 && $l != 159 && $l != 179 && $l != 199 &&  $l != 219 && $l != 239 && $l != 259 && $l != 279 && $l != 299 && $l != 319 && $l != 339 && $l != 359 && $l != 379 && $l != 399 ) {$sasiad++; push @s, 'l';}
			if($a[$p] eq '@' && $a[$p] < 400 && $p%20 != 0 ) {$sasiad++; push @s, 'p';}
		
			if($a[$g] eq '@' && $a[$g] > -1 ) {$sasiad++;push @s, 'g';}
			if($a[$d] eq '@' && $a[$d] < 400 ) {$sasiad++;push @s, 'd';}
		
			if($a[$gl] eq '@' && $a[$gl] > -1  && $l != 19 && $l != 39 && $l != 59 && $l != 79 && $l != 99 && $l != 119 && $l != 139 && $l != 159 && $l != 179 && $l != 199 &&  $l != 219 && $l != 239 && $l != 259 && $l != 279 && $l != 299 && $l != 319 && $l != 339 && $l != 359 && $l != 379 && $l != 399) {$sasiad++;push @s, 'gl';}
			if($a[$dl] eq '@' && $a[$dl] < 400 && $l != 19 && $l != 39 && $l != 59 && $l != 79 && $l != 99 && $l != 119 && $l != 139 && $l != 159 && $l != 179 && $l != 199 &&  $l != 219 && $l != 239 && $l != 259 && $l != 279 && $l != 299 && $l != 319 && $l != 339 && $l != 359 && $l != 379 && $l != 399 ) {$sasiad++;push @s, 'dl';}
		
			if($a[$gp] eq '@' && $a[$gp] > -1 && $p%20 != 0 ) {$sasiad++;push @s, 'gp';}
			if($a[$dp] eq '@' && $a[$dp] < 400 && $p%20 != 0) {$sasiad++;push @s, 'dp';}
			
			#if($a[$i] eq '@'){print "\n$i ma $sasiad sasiadow\t@s\n";}
			
			if($sasiad <= 1 || $sasiad > 3) {$a1[$i]=' ';}
			if($sasiad==3) {$a1[$i]='@';$zmiany++;}
			if($sasiad==2) {$a1[$i] = $a[$i];}
	
		}
		
		print"\n---------------------\n";
		my $i=0;
		foreach(@a1)
		{
			print $_;
			$i++;
			if($i%20==0) 
			{
				print "|\n";
			}
		}
		print"---------------------\n";
	
		@a=@a1;
		print "->ENTER<- aby kontynuowac...\n";
		getc();
	}
}

sub plansza
{
	print"\n---------------------\n";
	my $i=0;
	foreach(@a)
	{
		print $_;
		$i++;
		if($i%20==0) 
		{
			print "|\n";
		}
	}
	print"---------------------\n";
}