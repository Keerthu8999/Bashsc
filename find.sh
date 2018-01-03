#!/bin/sh
        # File: /home/john/work/bayer/training/find.sh
        # Date: Wed Feb 27 18:50:13 EST 2002
        # Last Revised: Time-stamp: <2002-02-27 18:53:00 john> maintained by emacs
        # Description: Find a specific line in the file.
        # ======================================================================= 

        BOOK="address-book.txt"

        # Ask the user what to look for.
        echo -n "What person or number are you seeking: "
        read find

        # Print the header before the answer
        echo "Name ; Phone number"
        grep -i $find $BOOK

