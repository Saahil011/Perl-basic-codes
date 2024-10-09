if (@ARGV!=1)
{
    die "invalid format";
}

my $filename = @ARGV[0];
my $fh;

open($fh,'<',$filename) or die "unable to open the file";

seek($fh,0,2);
my $size = tell($fh);

seek($fh,0,0);
my $content ;

read ($fh,$content,$size);
close ($fh);

my $reversed = reverse $content;

print "$reversed";