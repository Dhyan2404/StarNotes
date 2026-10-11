package com.sun.org.apache.xerces.internal.dom;

import org.w3c.dom.DOMException;
import org.w3c.dom.Node;
import org.w3c.dom.traversal.NodeFilter;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes10.dex */
public class NodeIteratorImpl implements NodeIterator {
    private DocumentImpl fDocument;
    private boolean fEntityReferenceExpansion;
    private NodeFilter fNodeFilter;
    private Node fRoot;
    private int fWhatToShow;
    private boolean fDetach = false;
    private boolean fForward = true;
    private Node fCurrentNode = null;

    public NodeIteratorImpl(DocumentImpl documentImpl, Node node, int i, NodeFilter nodeFilter, boolean z) {
        this.fDocument = documentImpl;
        this.fRoot = node;
        this.fWhatToShow = i;
        this.fNodeFilter = nodeFilter;
        this.fEntityReferenceExpansion = z;
    }

    public boolean acceptNode(Node node) {
        return this.fNodeFilter == null ? (this.fWhatToShow & (1 << (node.getNodeType() - 1))) != 0 : (this.fWhatToShow & (1 << (node.getNodeType() - 1))) != 0 && this.fNodeFilter.acceptNode(node) == 1;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public void detach() {
        this.fDetach = true;
        this.fDocument.removeNodeIterator(this);
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public boolean getExpandEntityReferences() {
        return this.fEntityReferenceExpansion;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public NodeFilter getFilter() {
        return this.fNodeFilter;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node getRoot() {
        return this.fRoot;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public int getWhatToShow() {
        return this.fWhatToShow;
    }

    public Node matchNodeOrParent(Node node) {
        Node node2 = this.fCurrentNode;
        if (node2 == null) {
            return null;
        }
        while (node2 != this.fRoot) {
            if (node == node2) {
                return node2;
            }
            node2 = node2.getParentNode();
        }
        return null;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node nextNode() {
        if (!this.fDetach) {
            if (this.fRoot == null) {
                return null;
            }
            Node node = this.fCurrentNode;
            boolean z = false;
            while (!z) {
                if (!this.fForward && node != null) {
                    node = this.fCurrentNode;
                } else if (!this.fEntityReferenceExpansion && node != null && node.getNodeType() == 5) {
                    node = nextNode(node, false);
                } else {
                    node = nextNode(node, true);
                }
                this.fForward = true;
                if (node == null) {
                    return null;
                }
                z = acceptNode(node);
                if (z) {
                    this.fCurrentNode = node;
                    return node;
                }
            }
            return null;
        }
        throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node previousNode() {
        Node node;
        if (!this.fDetach) {
            if (this.fRoot != null && (node = this.fCurrentNode) != null) {
                boolean z = false;
                while (!z) {
                    if (this.fForward && node != null) {
                        node = this.fCurrentNode;
                    } else {
                        node = previousNode(node);
                    }
                    this.fForward = false;
                    if (node == null) {
                        return null;
                    }
                    z = acceptNode(node);
                    if (z) {
                        this.fCurrentNode = node;
                        return node;
                    }
                }
            }
            return null;
        }
        throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
    }

    public void removeNode(Node node) {
        Node matchNodeOrParent;
        if (node == null || (matchNodeOrParent = matchNodeOrParent(node)) == null) {
            return;
        }
        if (this.fForward) {
            this.fCurrentNode = previousNode(matchNodeOrParent);
            return;
        }
        Node nextNode = nextNode(matchNodeOrParent, false);
        if (nextNode != null) {
            this.fCurrentNode = nextNode;
        } else {
            this.fCurrentNode = previousNode(matchNodeOrParent);
            this.fForward = true;
        }
    }

    public Node previousNode(Node node) {
        if (node == this.fRoot) {
            return null;
        }
        Node previousSibling = node.getPreviousSibling();
        if (previousSibling == null) {
            return node.getParentNode();
        }
        if (previousSibling.hasChildNodes() && (this.fEntityReferenceExpansion || previousSibling.getNodeType() != 5)) {
            while (previousSibling.hasChildNodes()) {
                previousSibling = previousSibling.getLastChild();
            }
        }
        return previousSibling;
    }

    public Node nextNode(Node node, boolean z) {
        if (node == null) {
            return this.fRoot;
        }
        if (z && node.hasChildNodes()) {
            return node.getFirstChild();
        }
        if (node == this.fRoot) {
            return null;
        }
        Node nextSibling = node.getNextSibling();
        if (nextSibling != null) {
            return nextSibling;
        }
        for (Node parentNode = node.getParentNode(); parentNode != null && parentNode != this.fRoot; parentNode = parentNode.getParentNode()) {
            Node nextSibling2 = parentNode.getNextSibling();
            if (nextSibling2 != null) {
                return nextSibling2;
            }
        }
        return null;
    }
}
