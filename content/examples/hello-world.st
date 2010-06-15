This page shows all the different incantations, inputs and outputs of the current version of C'Dent compiling the hello-world example.

^ C'Dent Version

> `> cdent --version`

.pre
  The C'Dent portable module programming language.

  Copyright (c) 2010, Ingy dot Net
  
  Version 0.5
.pre


^ Inputs

C'Dent can currently parse the C'Dent subsets of Python, JavaScript and Perl 6.

These examples deal with equivalent versions of a _World_ module. The module has a `World` class, which has a `greet` method, which has a `println()` command statement.

----

^^ `world.cd.py`

This is the module written in C'Dent Python.

.pre
"""\
This is World class :)
"""

class World():
    def greet(self):
            print "Hello, world"
.pre

----

^^ `World.cd.js`

This is the module written in C'Dent JavaScript.

.pre
/**
 * This is World class :)
 */

(this.World = function() {}).prototype = {
    greet: function() {
        print("Hello, world");
    }
};
.pre

----

^^ `World.cd.pm6`

This is the module written in C'Dent Perl 6.

.pre
###
# This is World class :)
###

class World {
    method greet {
        say "Hello, world";
    }
}
.pre

----

^^ `World.cd.yaml`

This is the module in pure C'Dent "abstract tree" form, serialized as YAML.

.pre
%TAG ! tag:cdent.org,2010:
--- !AST
has:
- !Module
  name: World
  has:
  - !Comment
    type: doc
    val: "This is World class :)\n"
  - !Comment
    type: blank
    val: "\n"
  - !Class
    name: World
    has:
    - !Method
      name: greet
      has:
      - !Println
        args:
        - !String
          val: Hello, world
.pre

----

^ Outputs

C'Dent can take any of the above inputs, and generate the following outputs: Perl, Python, PHP, Ruby, JavaScript, Scala, Java, ActionScript, Perl 6, Python 3000, Go, PIR or C'Dent.

----

^^ Perl

> `> cdent --compile --in=world.cd.py --to=pm`

.pre
# *** DO NOT EDIT ***  This is a C'Dent generated Perl module.
###
# This is World class :)
###

package World;
use CDent::Class;

sub greet {
    my $self = shift;
    print "Hello, world", "\n";
}

1;
.pre

----

^^ Python

> `> cdent --compile --in=world.cd.py --to=py`

.pre
# *** DO NOT EDIT ***  This is a C'Dent generated Python module.
"""\
This is World class :)
"""

class World():
    def greet(self):
        print "Hello, world"        
.pre

----

^^ PHP

> `> cdent --compile --in=world.cd.py --to=php`

.pre
// *** DO NOT EDIT ***  This is a C'Dent generated PHP module.
&lt;?php
/**
 * This is World class :)
 */

class World {
    public function greet() {
        print("Hello, world", "\n");
    }
}
?>
.pre

----

^^ Ruby

> `> cdent --compile --in=world.cd.py --to=rb`

.pre
# *** DO NOT EDIT ***  This is a C'Dent generated Ruby module.
###
# This is World class :)
###

class World
    def greet
        puts("Hello, world")
    end
end
.pre

----

^^ JavaScript

> `> cdent --compile --in=world.cd.py --to=js`

.pre
// *** DO NOT EDIT ***  This is a C'Dent generated JavaScript module.
/*
 * This is World class :)
 */

(this.World = function() {}).prototype = {
    greet: function() {
        print("Hello, world");
    }
}
.pre

----

^^ Scala

> `> cdent --compile --in=world.cd.py --to=scala`

.pre
// *** DO NOT EDIT ***  This is a C'Dent generated Scala module.
/**
 * This is World class :)
 */

class World {
    def greet() {
        println("Hello, world")
    }
}
.pre

----

^^ Java

> `> cdent --compile --in=world.cd.py --to=java`

.pre
// *** DO NOT EDIT ***  This is a C'Dent generated Java module.
/**
 * This is World class :)
 */

public class World {
    public void greet() {
        System.out.println("Hello, world");
    }
}
.pre

----

^^ ActionScript

> `> cdent --compile --in=world.cd.py --to=as`

.pre
// *** DO NOT EDIT ***  This is a C'Dent generated ActionScript module.
package {
    /**
     * This is World class :)
     */

    public class World {
        public function greet():void {
            trace("Hello, world" + "\n");
        }
    }
}
.pre

----

^^ Perl 6

> `> cdent --compile --in=world.cd.py --to=pm6`

.pre
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

----

^^ Python 3000

> `> cdent --compile --in=world.cd.py --to=py3`

.pre
# *** DO NOT EDIT ***  This is a C'Dent generated Python 3 module.
"""\
This is World class :)
"""

class World():
    def greet(self):
        print("Hello, world")        
.pre

----

^^ Go

> `> cdent --compile --in=world.cd.py --to=go`

.pre
// *** DO NOT EDIT ***  This is a C'Dent generated Go module.
/*
 * This is World class :)
 */

package World
import fmt "fmt"

func greet() {
    fmt.Println("Hello, world")
}
.pre

----

^^ PIR

> `> cdent --compile --in=world.cd.py --to=pir`

.pre
# *** DO NOT EDIT ***  This is a C'Dent generated PIR module.
###
# This is World class :)
###

.namespace ["World"]

.method greet
    say "Hello, world"
.end
.pre

----

^^ C'Dent

> `> cdent --compile --in=world.cd.py --to=cd.yaml`

.pre
%TAG ! tag:cdent.org,2010:
--- !AST
has:
- !Module
  has:
  - !Comment
    line: 1
    type: doc
    val: 'This is World class :)

      '
  - !Comment
    line: 4
    type: blank
    val: '

      '
  - !Class
    has:
    - !Method
      has:
      - !Println
        args:
        - !String
          val: Hello, world
        line: 7
      line: 6
      name: greet
    line: 5
    name: World
  line: 1
  name: Module
.pre
