package org.apache.xerces.dom;

import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public abstract class ChildNode extends NodeImpl {
    static final long serialVersionUID = -6112455738802414002L;
    protected ChildNode nextSibling;
    protected ChildNode previousSibling;

    public ChildNode() {
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        ChildNode childNode = (ChildNode) super.cloneNode(z);
        childNode.previousSibling = null;
        childNode.nextSibling = null;
        childNode.isFirstChild(false);
        return childNode;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node getNextSibling() {
        return this.nextSibling;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node getParentNode() {
        if (isOwned()) {
            return this.ownerNode;
        }
        return null;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node getPreviousSibling() {
        if (isFirstChild()) {
            return null;
        }
        return this.previousSibling;
    }

    @Override // org.apache.xerces.dom.NodeImpl
    public final NodeImpl parentNode() {
        if (isOwned()) {
            return this.ownerNode;
        }
        return null;
    }

    @Override // org.apache.xerces.dom.NodeImpl
    public final ChildNode previousSibling() {
        if (isFirstChild()) {
            return null;
        }
        return this.previousSibling;
    }

    public ChildNode(CoreDocumentImpl coreDocumentImpl) {
        super(coreDocumentImpl);
    }
}
