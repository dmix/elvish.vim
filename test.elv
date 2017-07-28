+ 233100 233
- 233333 233100
- 233
* 353 661
/ 233333 353
/ 1 0
^ 16 2
% 23 7
== 1 1.0
== 10 0xa
== a a
> 0x10 1

put x; put y; put z
put a; e:false; put b
echo 
put 233 42 19 | each [x]{+ $x 10}
range 100 | put x
di=[&k=v]; di[k]=lorem; di[k2]=ipsum; put $di[k] $di[k2]
d=[&a=[&b=v]]; put $d[a][b]; d[a][b]=u; put $d[a][b]
{a,b}=
@a=
{a,@b}=
a=alice b=bob; {a,@b}=(put amy ben) put $a $@b; put $a $b
a @b = 2 3 foo; put $a $b[1]
x = 1; x=2 y = (+ 1 $x); put $x $y
if true { put then }
if $false { put then } else { put else }
if $false { put 1 } elif $false { put 2 } else { put 3 }
if $false { put 2 } elif true { put 2 } else { put 3 }
try { nop } except { put bad } else { put good }
try { e:false } except - { put bad } else { put good }
x=0; while (< $x 4) { put $x; x=(+ $x 1) }
for x [tempora mores] { put 'O '$x }
for x [a] { break } else { put $x }
for x [a] { put $x } else { put $x }
for x [a b] { put $x; continue; put $x; }
f=
fname=(mktemp elvXXXXXX); echo haha > $fname;
p=(pipe); echo haha > $p; pwclose $p; cat < $p; prclose $p
put {fi,elvi}sh{1.0,1.1}
echo [a b c] [&key=value] | each put
put [a b c][2]
put [;a;b c][2][0]
put [&key=value][key]
put 
put (put lorem ipsum)
put (print \
bool ?(nop); bool ?(e:false)
x='SHELL'\nput 'WOW, SUCH '$x', MUCH COOL'\n
x=[elvish rules]; put $@x
put /*
put /a/b/nonexistent*
put /a/b/nonexistent*[nomatch-ok]
h=$E:HOME; E:HOME=/foo; put ~ ~/src; E:HOME=$h
[]{ }
[x]{put $x} foo
x=lorem; []{x=ipsum}; put $x
x=lorem; []{ put $x; x=ipsum }; put $x
x=ipsum; []{ local:x=lorem; put $x }; put $x
x=ipsum; [x]{ put $x; x=BAD } lorem; put $x
fn f []{ x=0; put []{x=(+ $x 1)} []{put $x} }
{ put $1 } lorem ipsum
{ { put $up:0 } in } out
fn f [x]{ put x=$x'.' }; f lorem; f ipsum
fn f []{ put a; return; put b }; f
[x @xs]{ put $x $xs $args } a b c
{ put $args } lorem ipsum
x=lorem; []{local:x=ipsum; put $up:x $local:x}
x=lorem; []{up:x=ipsum; put $x}; put $x
E:FOO=lorem; put $E:FOO
del E:FOO; put $E:FOO
kind-of bare 'str' [] [&] []{ }
put foo bar
explode [foo bar]
print [foo bar]
echo [foo bar]
pprint [foo bar]
print 
print 
print 
echo 'invalid' | from-json
put 
put [&k=v &a=[1 2]] foo | to-json
joins : [/usr /bin /tmp]
splits &sep=: /usr:/bin:/tmp
has-prefix golang go
has-prefix golang x
has-suffix golang x
keys [&]
keys [&a=foo &b=bar] | each echo | sort | each put
==s haha haha
==s 10 10.0
<s a b
<s 2 10
fail haha
return
f=(constantly foo); $f; $f
(constantly foo) bad
put 1 233 | each put
echo 
each put [1 233]
range 10 | each { if (== $0 4) { break }; put $0 }
range 10 | each { if (== $0 4) { fail haha }; put $0 }
repeat 4 foo
range 3
range 1 3
range 0 10 &step=3
range 100 | take 2
range 100 | count
count [(range 100)]
echo 
path-base a/b/c.png
is 1 1
is [] []
is [1] [1]
eq 1 1
eq [] []
ord a
base 16 42 233
wcswidth 你好
has-key [foo bar] 0
has-key [foo bar] 0:1
has-key [foo bar] 0:20
has-key [&lorem=ipsum &foo=bar] lorem
has-key [&lorem=ipsum &foo=bar] loremwsq
has-value [&lorem=ipsum &foo=bar] lorem
has-value [&lorem=ipsum &foo=bar] bar
has-value [foo bar] bar
has-value [foo bar] badehose
