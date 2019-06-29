
# Install instructions for module **Operator::Listcat**

## Installation requirements

With a normal rakudo installation, you should have available one or
both of the installer tools:

- `zef`
- `panda`

`zef` is becoming the preferred tool because of more features
(including an uninstall function) and more active development, but
either tool should work fine for a first installation of a desired
module.  We'll use `zef` for the rest of the examples.

## Installation

```shell
zef install Operator::Listcat
```

If the attempt shows that the module isn't found or available, ensure
your installer is current:

```shell
zef update
```

If you want to use the latest version in the git repository (or it's
not available in the Perl 6 ecosystem), clone it and then install it
from its local directory. If you have forked the module, you should
update the URL to reflect the new location.


```shell
git clone https://github.com/ajs/perl6-Operator-Listcat.git
zef install $(pwd)/perl6-Operator-Listcat
```