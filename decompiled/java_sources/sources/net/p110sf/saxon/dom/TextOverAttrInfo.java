package net.p110sf.saxon.dom;

import org.w3c.dom.Node;

/* loaded from: classes11.dex */
public class TextOverAttrInfo extends TextOverNodeInfo {

    /* renamed from: e */
    public final AttrOverNodeInfo f98919e;

    public TextOverAttrInfo(AttrOverNodeInfo attrOverNodeInfo) {
        this.f98919e = attrOverNodeInfo;
        this.node = attrOverNodeInfo.getUnderlyingNodeInfo();
    }

    @Override // net.p110sf.saxon.dom.NodeOverNodeInfo, org.w3c.dom.Node
    public short compareDocumentPosition(Node node) {
        if (node instanceof TextOverAttrInfo) {
            TextOverAttrInfo textOverAttrInfo = (TextOverAttrInfo) node;
            if (this.node.equals(textOverAttrInfo.node)) {
                return (short) 0;
            }
            return this.f98919e.compareDocumentPosition(textOverAttrInfo.f98919e);
        }
        if ((node instanceof AttrOverNodeInfo) && this.node.equals(((AttrOverNodeInfo) node).getUnderlyingNodeInfo())) {
            return (short) 4;
        }
        return this.f98919e.compareDocumentPosition(node);
    }

    @Override // net.p110sf.saxon.dom.NodeOverNodeInfo, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 3;
    }

    @Override // net.p110sf.saxon.dom.NodeOverNodeInfo, org.w3c.dom.Node
    public Node getParentNode() {
        return this.f98919e;
    }

    @Override // net.p110sf.saxon.dom.TextOverNodeInfo, org.w3c.dom.Text
    public boolean isElementContentWhitespace() {
        return false;
    }
}
