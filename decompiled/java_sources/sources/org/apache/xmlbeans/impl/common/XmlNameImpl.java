package org.apache.xmlbeans.impl.common;

import org.apache.xmlbeans.xml.stream.XMLName;

/* loaded from: classes13.dex */
public class XmlNameImpl implements XMLName {
    private int hash;
    private String localName;
    private String namespaceUri;
    private String prefix;

    public XmlNameImpl() {
        this.namespaceUri = null;
        this.localName = null;
        this.prefix = null;
        this.hash = 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof XMLName)) {
            return false;
        }
        XMLName xMLName = (XMLName) obj;
        String str = this.localName;
        if (str != null ? !str.equals(xMLName.getLocalName()) : xMLName.getLocalName() != null) {
            return false;
        }
        String str2 = this.namespaceUri;
        return str2 == null ? xMLName.getNamespaceUri() == null : str2.equals(xMLName.getNamespaceUri());
    }

    @Override // org.apache.xmlbeans.xml.stream.XMLName
    public String getLocalName() {
        return this.localName;
    }

    @Override // org.apache.xmlbeans.xml.stream.XMLName
    public String getNamespaceUri() {
        return this.namespaceUri;
    }

    @Override // org.apache.xmlbeans.xml.stream.XMLName
    public String getPrefix() {
        return this.prefix;
    }

    @Override // org.apache.xmlbeans.xml.stream.XMLName
    public String getQualifiedName() {
        String str = this.prefix;
        if (str == null || str.length() <= 0) {
            return this.localName;
        }
        return this.prefix + ":" + this.localName;
    }

    public final int hashCode() {
        int i = this.hash;
        if (i != 0) {
            return i;
        }
        String str = this.namespaceUri;
        int hashCode = str != null ? 629 + str.hashCode() : 17;
        String str2 = this.localName;
        if (str2 != null) {
            hashCode = (hashCode * 37) + str2.hashCode();
        }
        int i2 = hashCode;
        this.hash = i2;
        return i2;
    }

    public void setLocalName(String str) {
        this.localName = str;
        this.hash = 0;
    }

    public void setNamespaceUri(String str) {
        this.hash = 0;
        if (str == null || !str.equals("")) {
            this.namespaceUri = str;
        }
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public String toString() {
        if (getNamespaceUri() == null) {
            return getQualifiedName();
        }
        return "['" + getNamespaceUri() + "']:" + getQualifiedName();
    }

    public XmlNameImpl(String str) {
        this.namespaceUri = null;
        this.prefix = null;
        this.hash = 0;
        this.localName = str;
    }

    public XmlNameImpl(String str, String str2) {
        this.namespaceUri = null;
        this.localName = null;
        this.prefix = null;
        this.hash = 0;
        setNamespaceUri(str);
        this.localName = str2;
    }

    public XmlNameImpl(String str, String str2, String str3) {
        this.namespaceUri = null;
        this.localName = null;
        this.prefix = null;
        this.hash = 0;
        setNamespaceUri(str);
        this.localName = str2;
        this.prefix = str3;
    }
}
