sub get_array_input
{  
 my ($recvd) = @_; 
 print "$recvd (separate values by spaces): "; 
 my $input = <STDIN>; 
 chomp $input; 
 return split(' ', $input); 
} 

my $a = "Enter elements for array1"; 
my $b = "Enter elements for array2"; 
my @array1 = get_array_input("$a"); # 1 2 a b *
my @array2 = get_array_input("$b"); # * a b 1 2

print "Enter a hyphen-separated string: "; # 2-1-S-S-1-A-0-4-2-4-*
my $string = <STDIN>; 
chomp $string; 


my $length = @array1; 
print "\nThe length of the array1 is: $length\n\n"; #5


print "Before push: @array1\n"; 
push(@array1, 4, 5); 
print "After push: @array1\n\n"; # 1 2 a b * 4 5
 

print "Before pop: @array1\n"; 
pop(@array1); 
print "After pop: @array1\n\n"; # 1 2 a b * 4


print "Before shift: @array1\n"; 
shift(@array1); 
print "After shift: @array1\n\n"; # 2 a b * 4
 

print "Before unshift: @array1\n"; 
unshift(@array1, "ece"); 
print "After unshift: @array1\n\n"; # ece 2 a b * 4


print "Before splice: @array1\n"; 
splice(@array1, 1, 2, 'x', 'y', 'z'); 
print "After splice: @array1\n\n"; # ece x y z b * 4


print "Before split: $string\n"; 
@string = split('-', $string); 
print "After split: @string\n\n"; # 2 1 S S 1 A 0 4 2 4 *

print "Before join: @string\n"; 
join("-", @string); 
print "After join: $string\n\n"; # 2-1-S-S-1-A-0-4-2-4-*


print "Before sort: @array1\n"; 
@array1 = sort(@array1); 
print "After sort: @array1\n\n"; # * 4 b ece x y z
 
print "Before merging:\n"; 
print "Array1: @array1\n"; 
print "Array2: @array2\n"; 
@array1 = (@array1, @array2); 
print "After merging arrays: @array1\n"; # * 4 b ece x y z * a b 1 2