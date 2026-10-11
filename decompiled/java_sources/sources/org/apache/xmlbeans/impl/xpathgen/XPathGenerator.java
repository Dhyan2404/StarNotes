package org.apache.xmlbeans.impl.xpathgen;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;

/* loaded from: classes13.dex */
public class XPathGenerator {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private static int countTextTokens(XmlCursor xmlCursor) {
        XmlCursor newCursor = xmlCursor.newCursor();
        try {
            xmlCursor.push();
            xmlCursor.toParent();
            XmlCursor.TokenType firstContentToken = xmlCursor.toFirstContentToken();
            int i = 0;
            int i2 = 0;
            while (!firstContentToken.isEnd()) {
                if (firstContentToken.isText()) {
                    if (xmlCursor.comparePosition(newCursor) > 0) {
                        i2++;
                    } else {
                        i++;
                    }
                } else if (firstContentToken.isStart()) {
                    xmlCursor.toEndToken();
                }
                firstContentToken = xmlCursor.toNextToken();
            }
            if (newCursor != null) {
                newCursor.close();
            }
            xmlCursor.pop();
            if (i2 == 0) {
                return 0;
            }
            return i;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private static String generateInternal(XmlCursor xmlCursor, XmlCursor xmlCursor2, NamespaceContext namespaceContext) throws XPathGenerationException {
        if (xmlCursor.isStartdoc()) {
            return "";
        }
        if (xmlCursor2 != null && xmlCursor.isAtSamePositionAs(xmlCursor2)) {
            return ".";
        }
        QName name = xmlCursor.getName();
        XmlCursor newCursor = xmlCursor.newCursor();
        try {
            if (!xmlCursor.toParent()) {
                String str = "/" + name;
                if (newCursor != null) {
                    newCursor.close();
                }
                return str;
            }
            xmlCursor.push();
            if (!xmlCursor.toChild(name)) {
                throw new IllegalStateException("Must have at least one child with name: " + name);
            }
            int i = 0;
            int i2 = 1;
            do {
                if (xmlCursor.isAtSamePositionAs(newCursor)) {
                    i = i2;
                } else {
                    i2++;
                }
            } while (xmlCursor.toNextSibling(name));
            xmlCursor.pop();
            if (newCursor != null) {
                newCursor.close();
            }
            String generateInternal = generateInternal(xmlCursor, xmlCursor2, namespaceContext);
            if (i2 == 1) {
                return generateInternal + '/' + qnameToString(name, namespaceContext);
            }
            return generateInternal + '/' + qnameToString(name, namespaceContext) + '[' + i + ']';
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static String generateXPath(XmlCursor xmlCursor, XmlCursor xmlCursor2, NamespaceContext namespaceContext) throws XPathGenerationException {
        if (xmlCursor == null) {
            throw new IllegalArgumentException("Null node");
        }
        if (namespaceContext == null) {
            throw new IllegalArgumentException("Null namespace context");
        }
        XmlCursor.TokenType currentTokenType = xmlCursor.currentTokenType();
        if (xmlCursor2 != null && xmlCursor.isAtSamePositionAs(xmlCursor2)) {
            return ".";
        }
        int intValue = currentTokenType.intValue();
        if (intValue == 1 || intValue == 3) {
            return generateInternal(xmlCursor, xmlCursor2, namespaceContext);
        }
        if (intValue == 5) {
            int countTextTokens = countTextTokens(xmlCursor);
            xmlCursor.toParent();
            String generateInternal = generateInternal(xmlCursor, xmlCursor2, namespaceContext);
            if (countTextTokens == 0) {
                return generateInternal + "/text()";
            }
            return generateInternal + "/text()[position()=" + countTextTokens + ']';
        }
        if (intValue == 6) {
            QName name = xmlCursor.getName();
            xmlCursor.toParent();
            return generateInternal(xmlCursor, xmlCursor2, namespaceContext) + "/@" + qnameToString(name, namespaceContext);
        }
        if (intValue != 7) {
            throw new XPathGenerationException("Cannot generate XPath for cursor position: " + currentTokenType.toString());
        }
        QName name2 = xmlCursor.getName();
        xmlCursor.toParent();
        String generateInternal2 = generateInternal(xmlCursor, xmlCursor2, namespaceContext);
        String localPart = name2.getLocalPart();
        if (localPart.length() == 0) {
            return generateInternal2 + "/@xmlns";
        }
        return generateInternal2 + "/@xmlns:" + localPart;
    }

    public static void main(String[] strArr) throws XmlException {
        NamespaceContext namespaceContext = new NamespaceContext() { // from class: org.apache.xmlbeans.impl.xpathgen.XPathGenerator.1
            @Override // javax.xml.namespace.NamespaceContext
            public String getNamespaceURI(String str) {
                if (Constants.ATTRNAME_NS.equals(str)) {
                    return "http://a.com";
                }
                return null;
            }

            @Override // javax.xml.namespace.NamespaceContext
            public String getPrefix(String str) {
                return null;
            }

            @Override // javax.xml.namespace.NamespaceContext
            public Iterator getPrefixes(String str) {
                return null;
            }
        };
        XmlCursor newCursor = XmlObject.Factory.parse("<root>\n<ns:a xmlns:ns=\"http://a.com\"><b foo=\"value\">text1<c/>text2<c/>text3<c>text</c>text4</b></ns:a>\n</root>").newCursor();
        try {
            newCursor.toFirstContentToken();
            newCursor.toFirstContentToken();
            newCursor.toFirstChild();
            newCursor.toFirstChild();
            newCursor.push();
            System.out.println(generateXPath(newCursor, null, namespaceContext));
            newCursor.pop();
            newCursor.toNextSibling();
            newCursor.toNextSibling();
            newCursor.push();
            System.out.println(generateXPath(newCursor, null, namespaceContext));
            newCursor.pop();
            XmlCursor newCursor2 = newCursor.newCursor();
            try {
                newCursor2.toParent();
                newCursor.push();
                System.out.println(generateXPath(newCursor, newCursor2, namespaceContext));
                newCursor.pop();
                newCursor2.toParent();
                newCursor.push();
                System.out.println(generateXPath(newCursor, newCursor2, namespaceContext));
                newCursor.pop();
                newCursor.toFirstContentToken();
                newCursor.push();
                System.out.println(generateXPath(newCursor, newCursor2, namespaceContext));
                newCursor.pop();
                newCursor.toParent();
                newCursor.toPrevToken();
                newCursor.push();
                System.out.println(generateXPath(newCursor, newCursor2, namespaceContext));
                newCursor.pop();
                newCursor.toParent();
                newCursor.push();
                System.out.println(generateXPath(newCursor, newCursor2, namespaceContext));
                newCursor.pop();
                newCursor.toFirstAttribute();
                newCursor.push();
                System.out.println(generateXPath(newCursor, newCursor2, namespaceContext));
                newCursor.pop();
                newCursor.toParent();
                newCursor.toParent();
                newCursor.toNextToken();
                newCursor.push();
                System.out.println(generateXPath(newCursor, newCursor2, namespaceContext));
                newCursor.pop();
                newCursor2.close();
                newCursor.push();
                System.out.println(generateXPath(newCursor, null, namespaceContext));
                newCursor.pop();
                newCursor.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private static String qnameToString(QName qName, NamespaceContext namespaceContext) throws XPathGenerationException {
        String localPart = qName.getLocalPart();
        String namespaceURI = qName.getNamespaceURI();
        if (namespaceURI.length() == 0) {
            return localPart;
        }
        String prefix = qName.getPrefix();
        if (prefix != null && prefix.length() > 0 && namespaceURI.equals(namespaceContext.getNamespaceURI(prefix))) {
            return prefix + ':' + localPart;
        }
        String prefix2 = namespaceContext.getPrefix(namespaceURI);
        if (prefix2 == null) {
            throw new XPathGenerationException("Could not obtain a prefix for URI: " + namespaceURI);
        }
        if (prefix2.length() == 0) {
            throw new XPathGenerationException("Can not use default prefix in XPath for URI: " + namespaceURI);
        }
        return prefix2 + ':' + localPart;
    }
}
