package com.sun.org.apache.xml.internal.utils;

import com.sun.org.apache.xml.internal.res.XMLErrorResources;
import com.sun.org.apache.xml.internal.res.XMLMessages;
import java.io.Serializable;
import java.util.Stack;
import java.util.StringTokenizer;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
public class QName implements Serializable {
    public static final String S_XMLNAMESPACEURI = "http://www.w3.org/XML/1998/namespace";
    static final long serialVersionUID = 467434581652829920L;
    protected String _localName;
    protected String _namespaceURI;
    protected String _prefix;
    private int m_hashCode;

    public QName() {
    }

    public static String getPrefixFromXMLNSDecl(String str) {
        int indexOf = str.indexOf(58);
        return indexOf >= 0 ? str.substring(indexOf + 1) : "";
    }

    public static String getPrefixPart(String str) {
        int indexOf = str.indexOf(58);
        return indexOf >= 0 ? str.substring(0, indexOf) : "";
    }

    public static QName getQNameFromString(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "{}", false);
        String nextToken = stringTokenizer.nextToken();
        String nextToken2 = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
        return nextToken2 == null ? new QName((String) null, nextToken) : new QName(nextToken, nextToken2);
    }

    public static boolean isXMLNSDecl(String str) {
        return str.startsWith("xmlns") && (str.equals("xmlns") || str.startsWith("xmlns:"));
    }

    public boolean equals(String str, String str2) {
        String namespaceURI = getNamespaceURI();
        return getLocalName().equals(str2) && (namespaceURI == null || str == null ? namespaceURI == null && str == null : namespaceURI.equals(str));
    }

    public String getLocalName() {
        return this._localName;
    }

    public String getLocalPart() {
        return getLocalName();
    }

    public String getNamespace() {
        return getNamespaceURI();
    }

    public String getNamespaceURI() {
        return this._namespaceURI;
    }

    public String getPrefix() {
        return this._prefix;
    }

    public int hashCode() {
        return this.m_hashCode;
    }

    public String toNamespacedString() {
        if (this._namespaceURI == null) {
            return this._localName;
        }
        return "{" + this._namespaceURI + "}" + this._localName;
    }

    public String toString() {
        StringBuilder sb;
        String str;
        if (this._prefix != null) {
            sb = new StringBuilder();
            sb.append(this._prefix);
            str = ":";
        } else {
            if (this._namespaceURI == null) {
                return this._localName;
            }
            sb = new StringBuilder();
            sb.append("{");
            sb.append(this._namespaceURI);
            str = "}";
        }
        sb.append(str);
        sb.append(this._localName);
        return sb.toString();
    }

    public QName(String str, String str2) {
        this(str, str2, false);
    }

    public static String getLocalPart(String str) {
        int indexOf = str.indexOf(58);
        return indexOf < 0 ? str : str.substring(indexOf + 1);
    }

    public QName(String str, String str2, boolean z) {
        if (str2 != null) {
            if (z && !XML11Char.isXML11ValidNCName(str2)) {
                throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_INVALID", null));
            }
            this._namespaceURI = str;
            this._localName = str2;
            this.m_hashCode = toString().hashCode();
            return;
        }
        throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_NULL", null));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QName)) {
            return false;
        }
        QName qName = (QName) obj;
        String namespaceURI = getNamespaceURI();
        String namespaceURI2 = qName.getNamespaceURI();
        if (getLocalName().equals(qName.getLocalName())) {
            if (namespaceURI == null || namespaceURI2 == null) {
                if (namespaceURI == null && namespaceURI2 == null) {
                    return true;
                }
            } else if (namespaceURI.equals(namespaceURI2)) {
                return true;
            }
        }
        return false;
    }

    public QName(String str, String str2, String str3) {
        this(str, str2, str3, false);
    }

    public QName(String str, String str2, String str3, boolean z) {
        if (str3 != null) {
            if (z) {
                if (XML11Char.isXML11ValidNCName(str3)) {
                    if (str2 != null && !XML11Char.isXML11ValidNCName(str2)) {
                        throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_PREFIX_INVALID", null));
                    }
                } else {
                    throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_INVALID", null));
                }
            }
            this._namespaceURI = str;
            this._prefix = str2;
            this._localName = str3;
            this.m_hashCode = toString().hashCode();
            return;
        }
        throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_NULL", null));
    }

    public QName(String str) {
        this(str, false);
    }

    public QName(String str, boolean z) {
        if (str != null) {
            if (z && !XML11Char.isXML11ValidNCName(str)) {
                throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_INVALID", null));
            }
            this._namespaceURI = null;
            this._localName = str;
            this.m_hashCode = toString().hashCode();
            return;
        }
        throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_NULL", null));
    }

    public QName(String str, Stack stack) {
        this(str, stack, false);
    }

    public QName(String str, Stack stack, boolean z) {
        String str2;
        String str3;
        int indexOf = str.indexOf(58);
        if (indexOf > 0) {
            str3 = str.substring(0, indexOf);
            if (str3.equals("xml")) {
                str2 = "http://www.w3.org/XML/1998/namespace";
            } else {
                if (str3.equals("xmlns")) {
                    return;
                }
                int size = stack.size() - 1;
                String str4 = null;
                while (size >= 0) {
                    NameSpace nameSpace = (NameSpace) stack.elementAt(size);
                    while (true) {
                        if (nameSpace != null) {
                            String str5 = nameSpace.m_prefix;
                            if (str5 != null && str3.equals(str5)) {
                                str4 = nameSpace.m_uri;
                                size = -1;
                                break;
                            }
                            nameSpace = nameSpace.m_next;
                        } else {
                            break;
                        }
                    }
                    size--;
                }
                str2 = str4;
            }
            if (str2 == null) {
                throw new RuntimeException(XMLMessages.createXMLMessage("ER_PREFIX_MUST_RESOLVE", new Object[]{str3}));
            }
        } else {
            str2 = null;
            str3 = null;
        }
        str = indexOf >= 0 ? str.substring(indexOf + 1) : str;
        this._localName = str;
        if (z && (str == null || !XML11Char.isXML11ValidNCName(str))) {
            throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_INVALID", null));
        }
        this._namespaceURI = str2;
        this._prefix = str3;
        this.m_hashCode = toString().hashCode();
    }

    public QName(String str, Element element, PrefixResolver prefixResolver) {
        this(str, element, prefixResolver, false);
    }

    public QName(String str, Element element, PrefixResolver prefixResolver, boolean z) {
        this._namespaceURI = null;
        int indexOf = str.indexOf(58);
        if (indexOf > 0 && element != null) {
            String substring = str.substring(0, indexOf);
            this._prefix = substring;
            if (substring.equals("xml")) {
                this._namespaceURI = "http://www.w3.org/XML/1998/namespace";
            } else if (substring.equals("xmlns")) {
                return;
            } else {
                this._namespaceURI = prefixResolver.getNamespaceForPrefix(substring, element);
            }
            if (this._namespaceURI == null) {
                throw new RuntimeException(XMLMessages.createXMLMessage("ER_PREFIX_MUST_RESOLVE", new Object[]{substring}));
            }
        }
        str = indexOf >= 0 ? str.substring(indexOf + 1) : str;
        this._localName = str;
        if (z && (str == null || !XML11Char.isXML11ValidNCName(str))) {
            throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_INVALID", null));
        }
        this.m_hashCode = toString().hashCode();
    }

    public QName(String str, PrefixResolver prefixResolver) {
        this(str, prefixResolver, false);
    }

    public QName(String str, PrefixResolver prefixResolver, boolean z) {
        String str2;
        String str3;
        this._namespaceURI = null;
        int indexOf = str.indexOf(58);
        if (indexOf > 0) {
            str2 = str.substring(0, indexOf);
            if (str2.equals("xml")) {
                this._namespaceURI = "http://www.w3.org/XML/1998/namespace";
            } else {
                this._namespaceURI = prefixResolver.getNamespaceForPrefix(str2);
            }
            if (this._namespaceURI != null) {
                this._localName = str.substring(indexOf + 1);
            } else {
                throw new RuntimeException(XMLMessages.createXMLMessage("ER_PREFIX_MUST_RESOLVE", new Object[]{str2}));
            }
        } else if (indexOf != 0) {
            this._localName = str;
            str2 = null;
        } else {
            throw new RuntimeException(XMLMessages.createXMLMessage(XMLErrorResources.ER_NAME_CANT_START_WITH_COLON, null));
        }
        if (z && ((str3 = this._localName) == null || !XML11Char.isXML11ValidNCName(str3))) {
            throw new IllegalArgumentException(XMLMessages.createXMLMessage("ER_ARG_LOCALNAME_INVALID", null));
        }
        this.m_hashCode = toString().hashCode();
        this._prefix = str2;
    }
}
