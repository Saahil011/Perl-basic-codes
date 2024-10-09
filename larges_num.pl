print"Enter the first number ";
my $a = <STDIN>;

print "Enter the second number ";
my $b = <STDIN>;

print "Enter the third number ";
my $c = <STDIN>;

if($a>$b&&$a>$c){
    print"$a is the greatest";
}
elsif($b>$a&&$b>$c){
    print"$b is the greatest";
}
else {
    print"$c is the greatest";
}
    