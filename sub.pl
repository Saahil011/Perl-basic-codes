print "Enter the string: ";
my $string = <STDIN>;
chomp $string;

print "Enter the old word: ";
my $oldword = <STDIN>;
chomp $oldword;

print "Enter the new word: ";
my $newword = <STDIN>;
chomp $newword;

$string =~ s/$oldword/$newword/g;

print "$string";