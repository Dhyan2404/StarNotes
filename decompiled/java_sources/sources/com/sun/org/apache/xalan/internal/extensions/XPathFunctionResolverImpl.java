package com.sun.org.apache.xalan.internal.extensions;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import javax.xml.namespace.QName;
import javax.xml.xpath.XPathFunction;
import javax.xml.xpath.XPathFunctionResolver;

/* loaded from: classes10.dex */
public class XPathFunctionResolverImpl implements XPathFunctionResolver {
    private String getEXSLTClassName(String str) {
        if (str.equals("http://exslt.org/math")) {
            return "com.sun.org.apache.xalan.internal.lib.ExsltMath";
        }
        if (str.equals("http://exslt.org/sets")) {
            return "com.sun.org.apache.xalan.internal.lib.ExsltSets";
        }
        if (str.equals("http://exslt.org/strings")) {
            return "com.sun.org.apache.xalan.internal.lib.ExsltStrings";
        }
        if (str.equals("http://exslt.org/dates-and-times")) {
            return "com.sun.org.apache.xalan.internal.lib.ExsltDatetime";
        }
        if (str.equals("http://exslt.org/dynamic")) {
            return "com.sun.org.apache.xalan.internal.lib.ExsltDynamic";
        }
        if (str.equals("http://exslt.org/common")) {
            return "com.sun.org.apache.xalan.internal.lib.ExsltCommon";
        }
        return null;
    }

    @Override // javax.xml.xpath.XPathFunctionResolver
    public XPathFunction resolveFunction(QName qName, int i) {
        String str;
        if (qName == null) {
            throw new NullPointerException(XSLMessages.createMessage(XSLTErrorResources.ER_XPATH_RESOLVER_NULL_QNAME, null));
        }
        if (i < 0) {
            throw new IllegalArgumentException(XSLMessages.createMessage(XSLTErrorResources.ER_XPATH_RESOLVER_NEGATIVE_ARITY, null));
        }
        String namespaceURI = qName.getNamespaceURI();
        if (namespaceURI == null || namespaceURI.length() == 0) {
            return null;
        }
        if (namespaceURI.startsWith("http://exslt.org")) {
            str = getEXSLTClassName(namespaceURI);
            qName.getLocalPart();
        } else {
            if (!namespaceURI.equals("http://xml.apache.org/xalan/java")) {
                throw null;
            }
            str = null;
        }
        String localPart = qName.getLocalPart();
        int lastIndexOf = localPart.lastIndexOf(46);
        if (lastIndexOf > 0) {
            if (str != null) {
                str = str + "." + localPart.substring(0, lastIndexOf);
            } else {
                str = localPart.substring(0, lastIndexOf);
            }
            localPart = localPart.substring(lastIndexOf + 1);
        }
        if (str != null && str.trim().length() != 0 && localPart != null && localPart.trim().length() != 0) {
            try {
                ExtensionHandler.getClassForName(str);
                return new XPathFunctionImpl(new ExtensionHandlerJavaClass(namespaceURI, "javaclass", str), localPart);
            } catch (ClassNotFoundException unused) {
            }
        }
        return null;
    }
}
