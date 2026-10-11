package com.sun.org.apache.xml.internal.utils;

import java.util.Enumeration;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
class PrefixForUriEnumerator implements Enumeration {
    private Enumeration allPrefixes;
    private String lookahead = null;
    private NamespaceSupport2 nsup;
    private String uri;

    public PrefixForUriEnumerator(NamespaceSupport2 namespaceSupport2, String str, Enumeration enumeration) {
        this.nsup = namespaceSupport2;
        this.uri = str;
        this.allPrefixes = enumeration;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        if (this.lookahead != null) {
            return true;
        }
        while (this.allPrefixes.hasMoreElements()) {
            String str = (String) this.allPrefixes.nextElement();
            if (this.uri.equals(this.nsup.getURI(str))) {
                this.lookahead = str;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        if (!hasMoreElements()) {
            throw new NoSuchElementException();
        }
        String str = this.lookahead;
        this.lookahead = null;
        return str;
    }
}
