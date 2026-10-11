package com.sun.org.apache.xerces.internal.util;

import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;

/* loaded from: classes10.dex */
public class NamespaceContextWrapper implements NamespaceContext {
    private com.sun.org.apache.xerces.internal.xni.NamespaceContext fNamespaceContext;

    public NamespaceContextWrapper(NamespaceSupport namespaceSupport) {
        this.fNamespaceContext = namespaceSupport;
    }

    public com.sun.org.apache.xerces.internal.xni.NamespaceContext getNamespaceContext() {
        return this.fNamespaceContext;
    }

    @Override // javax.xml.namespace.NamespaceContext
    public String getNamespaceURI(String str) {
        if (str != null) {
            return this.fNamespaceContext.getURI(str.intern());
        }
        throw new IllegalArgumentException("Prefix can't be null");
    }

    @Override // javax.xml.namespace.NamespaceContext
    public String getPrefix(String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("URI can't be null or empty String");
        }
        return this.fNamespaceContext.getPrefix(str.intern());
    }

    @Override // javax.xml.namespace.NamespaceContext
    public Iterator getPrefixes(String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException("URI can't be null or empty String");
        }
        return ((NamespaceSupport) this.fNamespaceContext).getPrefixes(str.intern()).iterator();
    }
}
