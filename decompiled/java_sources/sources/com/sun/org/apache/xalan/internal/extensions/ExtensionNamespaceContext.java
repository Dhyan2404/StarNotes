package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;

/* loaded from: classes10.dex */
public class ExtensionNamespaceContext implements NamespaceContext {
    public static final String EXSLT_DATETIME_PREFIX = "datetime";
    public static final String EXSLT_DATETIME_URI = "http://exslt.org/dates-and-times";
    public static final String EXSLT_DYNAMIC_PREFIX = "dyn";
    public static final String EXSLT_DYNAMIC_URI = "http://exslt.org/dynamic";
    public static final String EXSLT_MATH_PREFIX = "math";
    public static final String EXSLT_MATH_URI = "http://exslt.org/math";
    public static final String EXSLT_PREFIX = "exslt";
    public static final String EXSLT_SET_PREFIX = "set";
    public static final String EXSLT_SET_URI = "http://exslt.org/sets";
    public static final String EXSLT_STRING_PREFIX = "str";
    public static final String EXSLT_STRING_URI = "http://exslt.org/strings";
    public static final String EXSLT_URI = "http://exslt.org/common";
    public static final String JAVA_EXT_PREFIX = "java";
    public static final String JAVA_EXT_URI = "http://xml.apache.org/xalan/java";

    @Override // javax.xml.namespace.NamespaceContext
    public String getNamespaceURI(String str) {
        if (str != null) {
            return str.equals("") ? "" : str.equals("xml") ? "http://www.w3.org/XML/1998/namespace" : str.equals("xmlns") ? "http://www.w3.org/2000/xmlns/" : str.equals(EXSLT_PREFIX) ? "http://exslt.org/common" : str.equals("math") ? "http://exslt.org/math" : str.equals(EXSLT_SET_PREFIX) ? "http://exslt.org/sets" : str.equals(EXSLT_STRING_PREFIX) ? "http://exslt.org/strings" : str.equals(EXSLT_DATETIME_PREFIX) ? "http://exslt.org/dates-and-times" : str.equals(EXSLT_DYNAMIC_PREFIX) ? "http://exslt.org/dynamic" : str.equals("java") ? "http://xml.apache.org/xalan/java" : "";
        }
        throw new IllegalArgumentException(XSLMessages.createMessage(XSLTErrorResources.ER_NAMESPACE_CONTEXT_NULL_PREFIX, null));
    }

    @Override // javax.xml.namespace.NamespaceContext
    public String getPrefix(String str) {
        if (str == null) {
            throw new IllegalArgumentException(XSLMessages.createMessage(XSLTErrorResources.ER_NAMESPACE_CONTEXT_NULL_NAMESPACE, null));
        }
        if (str.equals("http://www.w3.org/XML/1998/namespace")) {
            return "xml";
        }
        if (str.equals("http://www.w3.org/2000/xmlns/")) {
            return "xmlns";
        }
        if (str.equals("http://exslt.org/common")) {
            return EXSLT_PREFIX;
        }
        if (str.equals("http://exslt.org/math")) {
            return "math";
        }
        if (str.equals("http://exslt.org/sets")) {
            return EXSLT_SET_PREFIX;
        }
        if (str.equals("http://exslt.org/strings")) {
            return EXSLT_STRING_PREFIX;
        }
        if (str.equals("http://exslt.org/dates-and-times")) {
            return EXSLT_DATETIME_PREFIX;
        }
        if (str.equals("http://exslt.org/dynamic")) {
            return EXSLT_DYNAMIC_PREFIX;
        }
        if (str.equals("http://xml.apache.org/xalan/java")) {
            return "java";
        }
        return null;
    }

    @Override // javax.xml.namespace.NamespaceContext
    public Iterator getPrefixes(String str) {
        return new Iterator(getPrefix(str)) { // from class: com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext.1
            private boolean isFirstIteration;
            final /* synthetic */ String val$result;

            {
                this.val$result = r2;
                this.isFirstIteration = r2 != null;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.isFirstIteration;
            }

            @Override // java.util.Iterator
            public Object next() {
                if (!this.isFirstIteration) {
                    return null;
                }
                this.isFirstIteration = false;
                return this.val$result;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }
}
