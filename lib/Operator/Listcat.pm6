# the listcat operator and friends

use v6.d;
use MONKEY-TYPING;

sub infix:<listcat>(@a, @b) is equiv(&infix:<~>) is export { |@a, |@b }
my constant &infix:<⊕> is export = &infix:<listcat>;

augment class List {
    method sling(List:D: *@lists) { [listcat] self, @lists }
}
# NOTE: Due to a limitation in augment
# (see https://github.com/rakudo/rakudo/issues/1923)
# we also declare this in Array, but this will go away
# as soon as the changes to support augmented classes
# being picked up by children are done.
augment class Array {
    method sling(Array:D: *@lists) { [listcat] self, @lists }
}
