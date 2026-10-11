package com.sun.org.apache.xerces.internal.dom;

import java.util.Vector;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class DeepNodeListImpl implements NodeList {
    protected int changes;
    protected boolean enableNS;
    protected Vector nodes;
    protected String nsName;
    protected NodeImpl rootNode;
    protected String tagName;

    public DeepNodeListImpl(NodeImpl nodeImpl, String str) {
        this.changes = 0;
        this.enableNS = false;
        this.rootNode = nodeImpl;
        this.tagName = str;
        this.nodes = new Vector();
    }

    @Override // org.w3c.dom.NodeList
    public int getLength() {
        item(Integer.MAX_VALUE);
        return this.nodes.size();
    }

    @Override // org.w3c.dom.NodeList
    public Node item(int i) {
        if (this.rootNode.changes() != this.changes) {
            this.nodes = new Vector();
            this.changes = this.rootNode.changes();
        }
        if (i < this.nodes.size()) {
            return (Node) this.nodes.elementAt(i);
        }
        Node node = this.nodes.size() == 0 ? this.rootNode : (NodeImpl) this.nodes.lastElement();
        while (node != null && i >= this.nodes.size()) {
            node = nextMatchingElementAfter(node);
            if (node != null) {
                this.nodes.addElement(node);
            }
        }
        return node;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bd, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0055, code lost:
    
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
            if (r5 == 0) goto Lbe
            boolean r1 = r5.hasChildNodes()
            if (r1 == 0) goto Le
            org.w3c.dom.Node r5 = r5.getFirstChild()
            goto L2b
        Le:
            com.sun.org.apache.xerces.internal.dom.NodeImpl r1 = r4.rootNode
            if (r5 == r1) goto L1a
            org.w3c.dom.Node r1 = r5.getNextSibling()
            if (r1 == 0) goto L1a
            r5 = r1
            goto L2b
        L1a:
            com.sun.org.apache.xerces.internal.dom.NodeImpl r1 = r4.rootNode
            if (r5 == r1) goto L2a
            org.w3c.dom.Node r0 = r5.getNextSibling()
            if (r0 == 0) goto L25
            goto L2a
        L25:
            org.w3c.dom.Node r5 = r5.getParentNode()
            goto L1a
        L2a:
            r5 = r0
        L2b:
            com.sun.org.apache.xerces.internal.dom.NodeImpl r0 = r4.rootNode
            if (r5 == r0) goto L0
            if (r5 == 0) goto L0
            short r0 = r5.getNodeType()
            r1 = 1
            if (r0 != r1) goto L0
            boolean r0 = r4.enableNS
            java.lang.String r1 = "*"
            if (r0 != 0) goto L56
            java.lang.String r0 = r4.tagName
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L55
            r0 = r5
            com.sun.org.apache.xerces.internal.dom.ElementImpl r0 = (com.sun.org.apache.xerces.internal.dom.ElementImpl) r0
            java.lang.String r0 = r0.getTagName()
            java.lang.String r1 = r4.tagName
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L0
        L55:
            return r5
        L56:
            java.lang.String r0 = r4.tagName
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L85
            java.lang.String r0 = r4.nsName
            if (r0 == 0) goto L69
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L69
            return r5
        L69:
            r0 = r5
            com.sun.org.apache.xerces.internal.dom.ElementImpl r0 = (com.sun.org.apache.xerces.internal.dom.ElementImpl) r0
            java.lang.String r1 = r4.nsName
            if (r1 != 0) goto L76
            java.lang.String r1 = r0.getNamespaceURI()
            if (r1 == 0) goto L84
        L76:
            java.lang.String r1 = r4.nsName
            if (r1 == 0) goto L0
            java.lang.String r0 = r0.getNamespaceURI()
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L0
        L84:
            return r5
        L85:
            r0 = r5
            com.sun.org.apache.xerces.internal.dom.ElementImpl r0 = (com.sun.org.apache.xerces.internal.dom.ElementImpl) r0
            java.lang.String r2 = r0.getLocalName()
            if (r2 == 0) goto L0
            java.lang.String r2 = r0.getLocalName()
            java.lang.String r3 = r4.tagName
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L0
            java.lang.String r2 = r4.nsName
            if (r2 == 0) goto La5
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto La5
            return r5
        La5:
            java.lang.String r1 = r4.nsName
            if (r1 != 0) goto Laf
            java.lang.String r1 = r0.getNamespaceURI()
            if (r1 == 0) goto Lbd
        Laf:
            java.lang.String r1 = r4.nsName
            if (r1 == 0) goto L0
            java.lang.String r0 = r0.getNamespaceURI()
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L0
        Lbd:
            return r5
        Lbe:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.dom.DeepNodeListImpl.nextMatchingElementAfter(org.w3c.dom.Node):org.w3c.dom.Node");
    }

    public DeepNodeListImpl(NodeImpl nodeImpl, String str, String str2) {
        this(nodeImpl, str2);
        this.nsName = (str == null || str.equals("")) ? null : str;
        this.enableNS = true;
    }
}
