# Appunti

## Commenti

/\* C like comment \*/

// C++ like comment

\# Shell like comment

## Type and specifications

Eight different data types exist in PHP: Constants, integers, floating
points, Strings, boolean, NULL, Resources and array that in PHP is a
collection of key/value pairs. Type and value(s) can be checked by the
function var_dump(variable), that print on screen variable's type and
structure.

All variables, except Constants, have to be preceded by $, for example
$var = “Hi”

**isset**() determines whether some variables have already been
declareds by PHP.

It works also for array and object, and automatically check if the var
$arr / $obj are setted.

isset($arr\["offset"\])

isset($obj-\>property)

isset($var1, $var2, $var3, ...);

**unset**() “undeclares” a previously set variable, and frees any memory
that was used by it if no other variable references its value.

### Passage type

In functions and constructs, ALL variables will be passed for value, so
you can't modify them. If you want modify them, you have to **pass for
reference**, preceding the variable by &.

foreach ($people as **&$person**) {

$person\["age group"\] = "Old";

}

### Indirect references to variables

It's possible a **indirect references to variables**: a variable's name
can be specified by another variable.

$name = "John";

$$name = " logged";

print $John;

In this example, $$name is interpreted as $John, so a new variable $John
is created with the value “logged”.

### Constants

Constants, once defined, are globally accessible. You don’t have to (and
can’t) redeclare them in each new function and PHP file:

define("MY_ERROR", 1);

You can define also class' constant, which are public, and can be
accessible only in a static way:

class Prova {

const MIA_COSTANTE = 'valore';

}  
  
echo Prova::MIA_COSTANTE;

### String

Individual characters in a string can be accessed using the $str{offset}
notation. If you write a character in an index that don’t yet exist, php
automatically create this index and put in the character. The characters
between the index of the ending of original string and the new created
index will be filled with space characters.

$str = "A";

$str{2} = "d";

You should really use the {} notation because it differentiates string
offsets from array offsets ($arr\[\]) and thus, makes your code more
readable.

### Boolean

Boolean constants are true and false, and are defined like constants.

Are interpreted as false the following value: 0, 0.0 (zero as integer or
floating points), “” (the empty string), “0” the zero string, NULL and
the empty array.

### Arrays

An array in PHP is a collection of key/value pairs (Arrays are
implemented using hash tables, which means that accessing a value has an
average complexity of O(1)). This means that it maps keys (or indexes)
to values.

Arrays can be declared using the language construct: array(\[key =\>\]
value, \[key =\>\] value, …)

array("name" =\> "John", "age" =\> 28)

Array elements can be accessed by using the $arr\[key\] notation, where
key is either an integer or string expression.

$arr2\[0\] = 1;

PHP also supports a special notation, $arr\[\], where the key is not
specified. Using this notation, the key is automatically assigned as one
more than the largest previous integer key.

$arr2\[\] = 1;

$arr2\[\] = 2;

When accessing nested arrays, you can just add as many square brackets
as required to reach the relevant value.

$arr = array(1 =\> array("name" =\> "John", "age" =\> 28), array("name"
=\> "Barbara", "age" =\> 67))

$arr\[1\]\["name"\] = "John";

## By-Reference Assignment Operator

PHP enables you to create variables as aliases for other variables. You
can achieve this by using the by-reference assignment operator =&. After
a variable aliases another variable, changes to either one of them
affects the other. For example:

$name = "Judy";

$name_alias =& $name;

$name_alias = "Jonathan";

print $name;

The result of this example is Jonathan

When returning a variable by-reference from a function (covered later in
this book), you also need to use the assign by-reference operator to
assign the returned variable to a variable:

$retval =& func_that_returns_by_reference();

## Control Structures

<table>
<tbody>
<tr>
<td><p>if (expr) {</p>
<p> statement</p>
<p>} elseif (expr) {</p>
<p> statement</p>
<p>} else {</p>
<p> statement</p>
<p>}</p>
<p>while (expr) {</p>
<p>statement</p>
<p>}</p></td>
<td><p>do</p>
<p> statement</p>
<p>while (expr);</p>
<p>for (expr; expr; expr) {</p>
<p>statement</p>
<p>}</p></td>
</tr>
</tbody>
</table>

## Equals and identity operators

**L'uguaglianza avviene secondo questi principi:**

- l'**operatore di uguaglianza = =** restituisce *true* se i due oggetti
  hanno le stesse coppie proprietà/valore e sono istanze della stessa
  classe
- l'**operatore di identità = = =** restituisce *true* se e solo se i
  due oggetti si riferiscono alla stessa istanza della classe

## Code Inclusion Control Structures

Code inclusion control structures are crucial for organizing a program’s
source code. Not only will they allow you to structure your program into
building blocks, but you will probably find that some of these building
blocks can later be reused in other programs.

### Include

When an include statement is executed, PHP reads the file, compiles it
into intermediate code, and then executes the included code.

The include statement behaves somewhat like a function (although it
isn’t a function but a built-in language construct) and can return a
value using the return statement.

When the included file or URL doesn’t exist, include emits a PHP warning
but does not halt execution.

include 'row.html';

### Require

If you want PHP to error out when the included file or URL doesn’t exist
(usually, this is a fatal condition, so that’s what you’d probably
want), you can use the **require** statement, which is otherwise
identical to include.

There are two additional variants of include/require, which are probably
the most useful. include_once/require_once which behave exactly like
their include/require counterparts, except that they “remember” what
files have been included, and if you try and include_once/require_once
the same file again, it is just ignored.

include 'row.htm';

### eval()

eval() is similar to include, but instead of compiling and executing
code that comes from a file, it accepts the code as a string. This can
be useful for running dynamically created code or retrieving code from
an external data source manually (for example, a database) and then
executing it.

## Function

### Return by value

function f_name ($arg1, $arg2, $arg3, …) {

statement list;

return $var;

}

$var = f_name ($var1, $var2, $var3, …);

The **return** statement returns values **by value**, which means that a
copy of the value is created and is returned to the caller of the
function.

### Return by reference

PHP also allows you to return variables **by reference**. This means
that you’re not returning a copy to the variable, but you’re returning
the address of your variable instead, which enables you to change it
from the calling scope.

function **&**f_name ($arg1, $arg2, $arg3, …) {

statement list;

return $var;

}

$var =**&** f_name ($var1, $var2, $var3, …);

### Passing argument by value

By default, argument are passed by value, so at the end of function,
this aren't modified.

function f_name ($arg1,$arg2) { … }

### Passing arguments by references

You can pass arguments by references, so at the end of function, the
variable mantains the last value assigned.

function square(**&**$n1, $n2, …) { … }

### Default parameters

Default parameters enable you to specify a default value for function
parameters that aren’t passed to the function during the function call.
The default values you specify must be a constant value, such as a
scalar, array with scalar values, or constant.

function increment(&$num, $increment = 1) { … }

### Static Variables

PHP supports declaring local function variables as static. These kind of
variables remain in tact in between function calls, but are still only
accessible from within the function they are declared. Static variables
can be initialized, and this initialization only takes place the first
time the static declaration is reached.

function do_something() {

static first_time = true;

if (first_time) {

// Execute this code only the first time the function is called

...

}

// Execute the function's main logic every time the function is called

...

}

## PHP 5 OO - Basic class

### Class and $this

A class can be defined and used as:

class Person {

private $name;

function \_\_construct($name) {

$this-\>name = $name;

}

function getName() {

return $this-\>name;

}

};

$joe = new Person("Joe");

print $joe-\>getName();

During the execution of an object’s method, a special variable called
**$this** is automatically defined, which denotes a reference to the
object itself. By using this variable and the -\> notation, the object’s
methods and properties can be further referenced. For example, you can
access the $name property by using $this-\>name (note that you don’t use
a $ before the name of the property). An object’s methods can be
accessed in the same way.

### Static and self::

Static properties are defined by using the static keyword. To access
static properties, you have to qualify the property name with the class
it sits in:

Person::$myStaticVariable++;

If you’re accessing the member from inside one of the class methods, you
may also refer to the property by prefixing it with the special class
name **self**, which is short for the class to which the method belongs:

function myMethod() {

print self::$myInitializedStaticVariable;

}

### Class constant

Class constants are case sensitive. They are static field, so you can
access this in a static way.

class MyColorEnumClass {

const RED = "Red";

}

print MyColorEnumClass::RED;

### Constructor and destructor

The constructor is a method named **\_\_construct(),** which is
automatically called by the **new** keyword after creating the object. n
PHP 4, instead of using \_\_construct() as the constructor’s name.

You had to define a method with the classes’ names, like java. This
still works with PHP 5, but you should use the new unified constructor
naming convention for new applications.

Tip: When creating an object (using the new keyword), the returned value
is a handle to an object or, in other words, the id number of the
object. This is unlike PHP 4, where the value was the object itself.

Defining a destructor is as simple as adding a **\_\_destruct()** method
to your class. Destructor functions are called when the object is being
destroyed (for example, when there are no more references to the
object). There are two situations where your destructor might be called:
during your script’s execution when all references to an object are
destroyed, or when the end of the script is reached and PHP ends the
request. The latter situation is delicate because you are relying on
some objects that might already have had their destructors called and
are not accessible anymore.

Tip: The exact point in time of the destructor being called is not
guaranteed by PHP, and it might be a few statements after the last
reference to the object has been released. Thus, be aware not to write
your application in a way where this could hurt you.

### Access protection 

PHP has three main access restriction keywords: public, protected, and
private.

When no access modifier is given for a method, public is used as the
default.

In case you are familiar with PHP 3 or 4’s object model, all class
members were defined with the var keyword, which is equivalent to public
in PHP 5. var has been kept for backward compatibility, but it is
deprecated,

**protected** members can be accessed only from within an object’s
method — for example, $this-\>protectedMember. If another class inherits
a protected member, the same rules apply, and it can be accessed from
within the derived object’s methods via the special $this variable.

Usually, you would use public for members you want to be accessible from
outside the object’s scope (i.e., its methods), and private for members
who are internal to the object’s logic. Use protected for members who
are internal to the object’s logic, but where it might make sense for
inheriting classes to override them:

class MyDbConnectionClass {

public $queryResult;

**protected** $dbHostname = "localhost";

private $connectionHandle;

// ...

}

class MyFooDotComDbConnectionClass extends MyDbConnectionClass {

protected $dbHostname = "foo.com";

}

This incomplete example shows typical use of each of the three access
modifiers. This class manages a database connection including queries
made to the database:

The connection handle to the database is held in a private member,
because it is used by the class’s internal logic and shouldn’t be
accessible to the user of this class.

In this example, the **database hostname isn’t exposed to the user of
the class** MyDbConnectionClass. To override it, the developer may
inherit from the initial class and change the value.

The query result itself should be accessible to the developer and has,
therefore, been declared as public.

## PHP 5 OO – Gerarchie

### Extends and parent::

class Square extends Shape { … }

**parent::** refers to the parent class and it is most often used when
wanting to call the parent constructor or methods. It may also be used
to access members and constants. You should use parent:: as opposed to
the parent’s class name because it makes it easier to change your class
hierarchy because you are not hard-coding the parent’s class name.

### Abstract

**abstract** class Shape {

abstract function draw();

}

### Interfaces

interface Loggable {

function logString();

}

class Product implements Loggable {

private $name, $price, $expiryDate;

function logString() {

return "class Product: name = $this-\>name, price = $this-\>price\n";

}

}

Interfaces may inherit from other interfaces. The syntax is similar to
that of classes, but allows multiple inheritance:

interface I1 extends I2, I3, ... {

...

}

### final

PHP supports the Java-like final access modifier for methods and classes
that declares the method or the class as the final version, which can’t
be overridden.

final class MyBaseClass {

...

}

function idGenerator() {

...

}

### Class type HINTS in function parameters

PHP does allow you (if you wish) to specify the class you are expecting
in your function’s or method’s parameters. When you use **type hints**,
PHP first checks if it belongs to the class it requires (using the
**instanceof** operator).

function onlyWantMyClassObjects(**MyClass** $obj) {

// ...

}

## Exception handling

The syntax of try/catch is as follows:

try {

... // Code which might throw an exception

} catch (FirstExceptionClass $exception) {

... // Code which handles this exception

} catch (SecondExceptionClass $exception) {

}

The throw statement:

throw \<object\>;
