# ome.pl, introductory example

# comments begin with the sharp sign

# open the file whose name is given in the first argument on the command
# line, assigning to a file handle INFILE (it is customary to choose
# all-caps names for file handles in Perl); file handles do not have any
# prefixing punctuation
open(INFILE, $ARGV[0]);

# names of scalar variables must begin with $
$line_count = 0;
$word_count = 0;

# <> construct means read one line; undefined response signals EOF
while ($line = <INFILE>) {
   $line_count++;
   # break $line into an array of tokens separated by " ", using split()
   # (array names nust begin with @)
   @words_on_this_line = split(" ", $line);
   # scalar() gives the length of any array
   $word_count += scalar(@words_on_this_line);
}

print "the file contains ", $line_count, " lines and ",
   $word_count, " words\n";
