package org.apache.xerces.stax;

import java.util.Collections;
import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;

/* loaded from: classes13.dex */
public final class DefaultNamespaceContext implements NamespaceContext {

    /* renamed from: e */
    public static final DefaultNamespaceContext f113434e = new DefaultNamespaceContext();

    public static DefaultNamespaceContext getInstance() {
        return f113434e;
    }

    @Override // javax.xml.namespace.NamespaceContext
    public String getNamespaceURI(String str) {
        if (str != null) {
            return "xml".equals(str) ? "http://www.w3.org/XML/1998/namespace" : "xmlns".equals(str) ? "http://www.w3.org/2000/xmlns/" : "";
        }
        throw new IllegalArgumentException("Prefix cannot be null.");
    }

    @Override // javax.xml.namespace.NamespaceContext
    public String getPrefix(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Namespace URI cannot be null.");
        }
        if ("http://www.w3.org/XML/1998/namespace".equals(str)) {
            return "xml";
        }
        if ("http://www.w3.org/2000/xmlns/".equals(str)) {
            return "xmlns";
        }
        return null;
    }

    @Override // javax.xml.namespace.NamespaceContext
    public Iterator getPrefixes(String str) {
        if (str != null) {
            return "http://www.w3.org/XML/1998/namespace".equals(str) ? new C20079a(this) : "http://www.w3.org/2000/xmlns/".equals(str) ? new C20080b(this) : Collections.EMPTY_LIST.iterator();
        }
        throw new IllegalArgumentException("Namespace URI cannot be null.");
    }
}
