package org.apache.xerces.impl.p117xs.opti;

import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.TypeInfo;

/* loaded from: classes13.dex */
public class AttrImpl extends NodeImpl implements Attr {

    /* renamed from: k */
    public Element f113008k;

    /* renamed from: l */
    public String f113009l;

    public AttrImpl() {
        this.f113029i = (short) 2;
    }

    @Override // org.w3c.dom.Attr
    public String getName() {
        return this.f113027g;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public String getNodeValue() {
        return getValue();
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public Document getOwnerDocument() {
        return this.f113008k.getOwnerDocument();
    }

    @Override // org.w3c.dom.Attr
    public Element getOwnerElement() {
        return this.f113008k;
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
        return this.f113009l;
    }

    @Override // org.w3c.dom.Attr
    public boolean isId() {
        return false;
    }

    @Override // org.w3c.dom.Attr
    public void setValue(String str) throws DOMException {
        this.f113009l = str;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.NodeImpl
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(getName());
        stringBuffer.append("=");
        stringBuffer.append("\"");
        stringBuffer.append(getValue());
        stringBuffer.append("\"");
        return stringBuffer.toString();
    }

    public AttrImpl(Element element, String str, String str2, String str3, String str4, String str5) {
        super(str, str2, str3, str4, (short) 2);
        this.f113008k = element;
        this.f113009l = str5;
    }
}
