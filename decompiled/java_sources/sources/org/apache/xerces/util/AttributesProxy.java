package org.apache.xerces.util;

import org.apache.xerces.xni.XMLAttributes;
import org.xml.sax.AttributeList;
import org.xml.sax.ext.Attributes2;

/* loaded from: classes13.dex */
public final class AttributesProxy implements AttributeList, Attributes2 {

    /* renamed from: e */
    public XMLAttributes f113474e;

    public AttributesProxy(XMLAttributes xMLAttributes) {
        this.f113474e = xMLAttributes;
    }

    public XMLAttributes getAttributes() {
        return this.f113474e;
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str) {
        return this.f113474e.getIndex(str);
    }

    @Override // org.xml.sax.AttributeList
    public int getLength() {
        return this.f113474e.getLength();
    }

    @Override // org.xml.sax.Attributes
    public String getLocalName(int i) {
        return this.f113474e.getLocalName(i);
    }

    @Override // org.xml.sax.AttributeList
    public String getName(int i) {
        return this.f113474e.getQName(i);
    }

    @Override // org.xml.sax.Attributes
    public String getQName(int i) {
        return this.f113474e.getQName(i);
    }

    @Override // org.xml.sax.AttributeList
    public String getType(int i) {
        return this.f113474e.getType(i);
    }

    @Override // org.xml.sax.Attributes
    public String getURI(int i) {
        String uri = this.f113474e.getURI(i);
        return uri != null ? uri : XMLSymbols.EMPTY_STRING;
    }

    @Override // org.xml.sax.AttributeList
    public String getValue(int i) {
        return this.f113474e.getValue(i);
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isDeclared(int i) {
        if (i < 0 || i >= this.f113474e.getLength()) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        return Boolean.TRUE.equals(this.f113474e.getAugmentations(i).getItem("ATTRIBUTE_DECLARED"));
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isSpecified(int i) {
        if (i < 0 || i >= this.f113474e.getLength()) {
            throw new ArrayIndexOutOfBoundsException(i);
        }
        return this.f113474e.isSpecified(i);
    }

    public void setAttributes(XMLAttributes xMLAttributes) {
        this.f113474e = xMLAttributes;
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str, String str2) {
        boolean equals = str.equals(XMLSymbols.EMPTY_STRING);
        XMLAttributes xMLAttributes = this.f113474e;
        if (equals) {
            str = null;
        }
        return xMLAttributes.getIndex(str, str2);
    }

    @Override // org.xml.sax.AttributeList
    public String getType(String str) {
        return this.f113474e.getType(str);
    }

    @Override // org.xml.sax.AttributeList
    public String getValue(String str) {
        return this.f113474e.getValue(str);
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isDeclared(String str) {
        int index = getIndex(str);
        if (index != -1) {
            return Boolean.TRUE.equals(this.f113474e.getAugmentations(index).getItem("ATTRIBUTE_DECLARED"));
        }
        throw new IllegalArgumentException(str);
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isSpecified(String str) {
        int index = getIndex(str);
        if (index != -1) {
            return this.f113474e.isSpecified(index);
        }
        throw new IllegalArgumentException(str);
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str, String str2) {
        boolean equals = str.equals(XMLSymbols.EMPTY_STRING);
        XMLAttributes xMLAttributes = this.f113474e;
        if (equals) {
            str = null;
        }
        return xMLAttributes.getType(str, str2);
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str, String str2) {
        boolean equals = str.equals(XMLSymbols.EMPTY_STRING);
        XMLAttributes xMLAttributes = this.f113474e;
        if (equals) {
            str = null;
        }
        return xMLAttributes.getValue(str, str2);
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isDeclared(String str, String str2) {
        int index = getIndex(str, str2);
        if (index != -1) {
            return Boolean.TRUE.equals(this.f113474e.getAugmentations(index).getItem("ATTRIBUTE_DECLARED"));
        }
        throw new IllegalArgumentException(str2);
    }

    @Override // org.xml.sax.ext.Attributes2
    public boolean isSpecified(String str, String str2) {
        int index = getIndex(str, str2);
        if (index != -1) {
            return this.f113474e.isSpecified(index);
        }
        throw new IllegalArgumentException(str2);
    }
}
