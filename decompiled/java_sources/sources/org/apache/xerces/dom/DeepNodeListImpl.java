package org.apache.xerces.dom;

import java.util.ArrayList;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes13.dex */
public class DeepNodeListImpl implements NodeList {
    protected int changes;
    protected boolean enableNS;
    protected ArrayList nodes;
    protected String nsName;
    protected NodeImpl rootNode;
    protected String tagName;

    public DeepNodeListImpl(NodeImpl nodeImpl, String str) {
        this.changes = 0;
        this.enableNS = false;
        this.rootNode = nodeImpl;
        this.tagName = str;
        this.nodes = new ArrayList();
    }

    @Override // org.w3c.dom.NodeList
    public int getLength() {
        item(Integer.MAX_VALUE);
        return this.nodes.size();
    }

    @Override // org.w3c.dom.NodeList
    public Node item(int i) {
        if (this.rootNode.changes() != this.changes) {
            this.nodes = new ArrayList();
            this.changes = this.rootNode.changes();
        }
        int size = this.nodes.size();
        if (i < size) {
            return (Node) this.nodes.get(i);
        }
        Node node = size == 0 ? this.rootNode : (NodeImpl) this.nodes.get(size - 1);
        while (node != null && i >= this.nodes.size()) {
            node = nextMatchingElementAfter(node);
            if (node != null) {
                this.nodes.add(node);
            }
        }
        return node;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b9, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0051, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.w3c.dom.Node nextMatchingElementAfter(org.w3c.dom.Node r5) {
        /*
            r4 = this;
        L0:
            r0 = 0
            if (r5 != 0) goto L4
            return r0
        L4:
            boolean r1 = r5.hasChildNodes()
            if (r1 == 0) goto Lf
            org.w3c.dom.Node r5 = r5.getFirstChild()
            goto L27
        Lf:
            org.apache.xerces.dom.NodeImpl r1 = r4.rootNode
            if (r5 == r1) goto L1b
            org.w3c.dom.Node r1 = r5.getNextSibling()
            if (r1 == 0) goto L1b
            r5 = r1
            goto L27
        L1b:
            org.apache.xerces.dom.NodeImpl r1 = r4.rootNode
            if (r5 != r1) goto L20
            goto L26
        L20:
            org.w3c.dom.Node r0 = r5.getNextSibling()
            if (r0 == 0) goto Lba
        L26:
            r5 = r0
        L27:
            org.apache.xerces.dom.NodeImpl r0 = r4.rootNode
            if (r5 == r0) goto L0
            if (r5 == 0) goto L0
            short r0 = r5.getNodeType()
            r1 = 1
            if (r0 != r1) goto L0
            boolean r0 = r4.enableNS
            java.lang.String r1 = "*"
            if (r0 != 0) goto L52
            java.lang.String r0 = r4.tagName
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L51
            r0 = r5
            org.apache.xerces.dom.ElementImpl r0 = (org.apache.xerces.dom.ElementImpl) r0
            java.lang.String r0 = r0.getTagName()
            java.lang.String r1 = r4.tagName
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L0
        L51:
            return r5
        L52:
            java.lang.String r0 = r4.tagName
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L81
            java.lang.String r0 = r4.nsName
            if (r0 == 0) goto L65
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L65
            return r5
        L65:
            r0 = r5
            org.apache.xerces.dom.ElementImpl r0 = (org.apache.xerces.dom.ElementImpl) r0
            java.lang.String r1 = r4.nsName
            if (r1 != 0) goto L72
            java.lang.String r1 = r0.getNamespaceURI()
            if (r1 == 0) goto L80
        L72:
            java.lang.String r1 = r4.nsName
            if (r1 == 0) goto L0
            java.lang.String r0 = r0.getNamespaceURI()
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L0
        L80:
            return r5
        L81:
            r0 = r5
            org.apache.xerces.dom.ElementImpl r0 = (org.apache.xerces.dom.ElementImpl) r0
            java.lang.String r2 = r0.getLocalName()
            if (r2 == 0) goto L0
            java.lang.String r2 = r0.getLocalName()
            java.lang.String r3 = r4.tagName
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L0
            java.lang.String r2 = r4.nsName
            if (r2 == 0) goto La1
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto La1
            return r5
        La1:
            java.lang.String r1 = r4.nsName
            if (r1 != 0) goto Lab
            java.lang.String r1 = r0.getNamespaceURI()
            if (r1 == 0) goto Lb9
        Lab:
            java.lang.String r1 = r4.nsName
            if (r1 == 0) goto L0
            java.lang.String r0 = r0.getNamespaceURI()
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L0
        Lb9:
            return r5
        Lba:
            org.w3c.dom.Node r5 = r5.getParentNode()
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.dom.DeepNodeListImpl.nextMatchingElementAfter(org.w3c.dom.Node):org.w3c.dom.Node");
    }

    public DeepNodeListImpl(NodeImpl nodeImpl, String str, String str2) {
        this(nodeImpl, str2);
        this.nsName = (str == null || str.length() == 0) ? null : str;
        this.enableNS = true;
    }
}
