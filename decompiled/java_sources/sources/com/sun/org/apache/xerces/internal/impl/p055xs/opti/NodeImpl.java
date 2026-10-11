package com.sun.org.apache.xerces.internal.impl.p055xs.opti;

/* loaded from: classes10.dex */
public class NodeImpl extends DefaultNode {
    boolean hidden;
    String localpart;
    short nodeType;
    String prefix;
    String rawname;
    String uri;

    public NodeImpl() {
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultNode, org.w3c.dom.Node
    public String getLocalName() {
        return this.localpart;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultNode, org.w3c.dom.Node
    public String getNamespaceURI() {
        return this.uri;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultNode, org.w3c.dom.Node
    public String getNodeName() {
        return this.rawname;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultNode, org.w3c.dom.Node
    public short getNodeType() {
        return this.nodeType;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p055xs.opti.DefaultNode, org.w3c.dom.Node
    public String getPrefix() {
        return this.prefix;
    }

    public boolean getReadOnly() {
        return this.hidden;
    }

    public void setReadOnly(boolean z, boolean z2) {
        this.hidden = z;
    }

    public NodeImpl(String str, String str2, String str3, String str4, short s) {
        this.prefix = str;
        this.localpart = str2;
        this.rawname = str3;
        this.uri = str4;
        this.nodeType = s;
    }
}
