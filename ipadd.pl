	print("Enter ip adress:");
	my $ip=<stdin>;
	chomp($ip);
	if($ip =~ m/^(\d\d?\d?)\.(\d\d?\d?)\.(\d\d?\d?)\.(\d\d?\d?)$/)
	{
        print("ip address-$ip \n");
        if($1 <= 255 && $2 <= 255 && $3 <= 255 && $4 <=255){
            print("each octet of ip address is:","whinin the range -$1.$2.$3.$4\n");
            print("\n->$ip ip address accepted ! \n");
        }
        else{
            print("octet(s) out of range.",
            "valid num range between 0-225\n");
        }
	}
	else{
        print("ip address $ip is not valid format\n");
	}