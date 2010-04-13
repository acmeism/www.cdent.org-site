^^ Examples

Here is a file called `world.cd.py`. It is written in the Python dialect of the C'Dent programming language.

.pre
"""\
This is World class :)
"""

class World():
    def greet(self):
        print "Hello, world"
.pre

You can compile it to Perl 6 like this:

.pre
> cdent --compile --in=world.cd.py --to=pm6
# *** DO NOT EDIT ***  This is a C'Dent generated Perl 6 module.
###
# This is World class :)
###

class World {
    method greet {
        say "Hello, world";
    }
}
.pre

You can compile it into JavaScript, Ruby, Python 3000 and many other languages, too. See [examples/hello-world].
