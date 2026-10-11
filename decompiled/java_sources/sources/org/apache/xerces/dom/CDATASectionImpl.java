package org.apache.xerces.dom;

import org.w3c.dom.CDATASection;

/* loaded from: classes13.dex */
public class CDATASectionImpl extends TextImpl implements CDATASection {
    static final long serialVersionUID = 2372071297878177780L;

    public CDATASectionImpl(CoreDocumentImpl coreDocumentImpl, String str) {
        super(coreDocumentImpl, str);
    }

    @Override // org.apache.xerces.dom.TextImpl, org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public String getNodeName() {
        return "#cdata-section";
    }

    @Override // org.apache.xerces.dom.TextImpl, org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 4;
    }
}
