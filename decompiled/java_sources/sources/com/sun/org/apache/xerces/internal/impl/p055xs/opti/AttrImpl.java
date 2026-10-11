package com.sun.org.apache.xerces.internal.impl.p055xs.opti;

import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.TypeInfo;

/* loaded from: classes10.dex */
public class AttrImpl extends NodeImpl implements Attr {
    Element element;
    String value;

    public AttrImpl() {
        this.nodeType = (short) 2;
    }

    @Override // org.w3c.dom.Attr
    public String getName() {
        return this.rawname;
    }

    @Override // org.w3c.dom.Attr
    public Element getOwnerElement() {
        return this.element;
    }

    @Override // org.w3c.dom.Attr
    public TypeInfo getSchemaTypeInfo() {
        return null;
    }

    @Override // org.w3c.dom.Attr
    public boolean getSpecified() {
        return true;
    }

    @Override // org.w3c.dom.Attr
    public String getValue() {
        return this.value;
    }

    @Override // org.w3c.dom.Attr
    public boolean isId() {
        return false;
    }

    @Override // org.w3c.dom.Attr
    public void setValue(String str) throws DOMException {
        this.value = str;
    }

    public AttrImpl(Element element, String str, String str2, String str3, String str4, String str5) {
        super(str, str2, str3, str4, (short) 2);
        this.element = element;
        this.value = str5;
    }
}
