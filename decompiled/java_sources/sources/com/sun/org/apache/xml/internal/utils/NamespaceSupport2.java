package com.sun.org.apache.xml.internal.utils;

import java.util.EmptyStackException;
import java.util.Enumeration;
import org.xml.sax.helpers.NamespaceSupport;

/* loaded from: classes10.dex */
public class NamespaceSupport2 extends NamespaceSupport {
    public static final String XMLNS = "http://www.w3.org/XML/1998/namespace";
    private Context2 currentContext;

    public NamespaceSupport2() {
        reset();
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public boolean declarePrefix(String str, String str2) {
        if (str.equals("xml") || str.equals("xmlns")) {
            return false;
        }
        this.currentContext.declarePrefix(str, str2);
        return true;
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public Enumeration getDeclaredPrefixes() {
        return this.currentContext.getDeclaredPrefixes();
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public String getPrefix(String str) {
        return this.currentContext.getPrefix(str);
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public Enumeration getPrefixes() {
        return this.currentContext.getPrefixes();
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public String getURI(String str) {
        return this.currentContext.getURI(str);
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public void popContext() {
        Context2 parent = this.currentContext.getParent();
        if (parent == null) {
            throw new EmptyStackException();
        }
        this.currentContext = parent;
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public String[] processName(String str, String[] strArr, boolean z) {
        String[] processName = this.currentContext.processName(str, z);
        if (processName == null) {
            return null;
        }
        System.arraycopy(processName, 0, strArr, 0, 3);
        return strArr;
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public void pushContext() {
        Context2 context2 = this.currentContext;
        Context2 child = context2.getChild();
        this.currentContext = child;
        if (child == null) {
            this.currentContext = new Context2(context2);
        } else {
            child.setParent(context2);
        }
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public void reset() {
        Context2 context2 = new Context2(null);
        this.currentContext = context2;
        context2.declarePrefix("xml", "http://www.w3.org/XML/1998/namespace");
    }

    @Override // org.xml.sax.helpers.NamespaceSupport
    public Enumeration getPrefixes(String str) {
        return new PrefixForUriEnumerator(this, str, getPrefixes());
    }
}
