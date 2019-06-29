MODULE = $$(perl6 -M JSON::Tiny -e 'say from-json("META6.json".IO.slurp)<name>.subst(/"::"/, "-", :g)')
VERSION = $$(perl6 -M JSON::Tiny -e 'say from-json("META6.json".IO.slurp)<version>')
RELEASE = $(MODULE)-$(VERSION)

test::
	for test in tests/*.t; do echo "$$test"; perl6 -I lib "$$test" || break; done
release::
	git archive --prefix=$(RELEASE)/ -o $(RELEASE).tar.gz HEAD
