 #!/bin/sh
        # File: /home/john/work/bayer/training/del.sh
        # Date: Wed Feb 27 18:21:33 EST 2002
        # Last Revised: Time-stamp: <2002-02-27 18:47:49 john> maintained by emacs
        # Description: Delete the line specified by the user.
        # ======================================================================= 

        BOOK="address-book.txt"

        # Ask the user which line to delete
        echo -n "Which line should I delete: "
        read number

        # Rename the file before deleting
        mv $BOOK boo.txt

        # Add line numbers and delete against that number
        nl --number-separator=":" boo.txt | grep -v $number: | awk -F: '{print $2}' |  tee $BOOK
