PKGVER = 0.5.1
PKGURL = https://github.com/wfxr/code-minimap/releases/download/v$(PKGVER)/code-minimap-v$(PKGVER)-x86_64-apple-darwin.tar.gz

.PHONY: codegen
codegen:
	wget $(PKGURL) -qO '$(PKGVER).tar.gz'
	PKGSIG=$$(sha256sum '$(PKGVER).tar.gz' | cut -d' ' -f1) && sed \
		-e 's|{{PKGURL}}|$(PKGURL)|g' \
		-e 's|{{PKGVER}}|$(PKGVER)|g' \
		-e "s|{{PKGSIG}}|$${PKGSIG}|g" \
		Formula/code-minimap.rb.tmpl > Formula/code-minimap.rb
