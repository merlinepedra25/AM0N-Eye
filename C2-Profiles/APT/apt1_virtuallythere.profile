
set sample_name "APT1 Virtually There Malware";

# this is the certificate
https-certificate {
	set C	"US";
	set ST	"Some-State";
	set O	"www.virtuallythere.com";
	set OU	"new";
	set CN	"new";
}

# since *cough* presumably you're using an HTTPS Beacon...
http-get {
	set uri "/zOMGAPT";

	client {
		metadata {
			netbiosu;
			parameter "tmp";
		}
	}

	server {
		header "Content-Type" "application/octet-stream";

		output {
			print;
		}
	}
}

http-post {
	set uri "/BUYTHEAPTDETECTORNOW";

	client {
		header "Content-Type" "application/octet-stream";

		id {
			uri-append;
		}

		output {
			print;
		}
	}

	server {
		header "Content-Type" "text/html";

		output {
			print;
		}
	}
}
