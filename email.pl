use Email::Valid ;

print "Enter the email address : ";
my $email = <STDIN>;

my $add = Email::Valid->address($email);

if($add){
    print "$email is valid";
}else {
    print "$email is invalid";
}