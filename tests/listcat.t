use Test;

use Operator::Listcat;

cmp-ok <1 2 3> ⊕ <a b c>, '~~', <1 2 3 a b c>, "Simple join with ⊕";
cmp-ok [1, [2, [3]]] ⊕ <a b c>, '~~', [1,[2,[3]], 'a', 'b', 'c'], "Join list of lists with ⊕";
cmp-ok ([⊕] <1 2 3>, <a b c>, <x y z>), '~~', <1 2 3 a b c x y z>, "[⊕] reduction";
cmp-ok <1 2 3> listcat <a b c>, '~~', <1 2 3 a b c>, "Simple join with listcat";
cmp-ok [1, [2, [3]]].sling(<a b c>), '~~', [1,[2,[3]], 'a', 'b', 'c'], "Join list of lists with sling function";
cmp-ok [1, [2, [3]]].sling(<a b c>), '~~', [1,[2,[3]], 'a', 'b', 'c'], "Join list of lists with sling method";
cmp-ok [1, [2, [3]]].sling(<a b c>, [:y, [:z]]), '~~', [1,[2,[3]], 'a', 'b', 'c', :y, [:z]], "Join list of lists with sling method";
