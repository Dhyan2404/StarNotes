package org.apache.xerces.impl.p117xs.opti;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes13.dex */
public class NodeImpl extends DefaultNode {

    /* renamed from: e */
    public String f113025e;

    /* renamed from: f */
    public String f113026f;

    /* renamed from: g */
    public String f113027g;

    /* renamed from: h */
    public String f113028h;

    /* renamed from: i */
    public short f113029i;

    /* renamed from: j */
    public boolean f113030j;

    public NodeImpl() {
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public String getLocalName() {
        return this.f113026f;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public String getNamespaceURI() {
        return this.f113028h;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public String getNodeName() {
        return this.f113027g;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public short getNodeType() {
        return this.f113029i;
    }

    @Override // org.apache.xerces.impl.p117xs.opti.DefaultNode, org.w3c.dom.Node
    public String getPrefix() {
        return this.f113025e;
    }

    public boolean getReadOnly() {
        return this.f113030j;
    }

    public void setReadOnly(boolean z, boolean z2) {
        this.f113030j = z;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(IteratorUtils.f104923a);
        stringBuffer.append(getNodeName());
        stringBuffer.append(": ");
        stringBuffer.append(getNodeValue());
        stringBuffer.append(IteratorUtils.f104924b);
        return stringBuffer.toString();
    }

    public NodeImpl(String str, String str2, String str3, String str4, short s) {
        this.f113025e = str;
        this.f113026f = str2;
        this.f113027g = str3;
        this.f113028h = str4;
        this.f113029i = s;
    }
}
