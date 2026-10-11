package org.apache.xerces.dom;

import org.w3c.dom.DOMException;
import org.w3c.dom.Node;
import org.w3c.dom.traversal.NodeFilter;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes13.dex */
public class NodeIteratorImpl implements NodeIterator {

    /* renamed from: e */
    public DocumentImpl f111887e;

    /* renamed from: f */
    public Node f111888f;

    /* renamed from: g */
    public int f111889g;

    /* renamed from: h */
    public NodeFilter f111890h;

    /* renamed from: l */
    public boolean f111894l;

    /* renamed from: i */
    public boolean f111891i = false;

    /* renamed from: k */
    public boolean f111893k = true;

    /* renamed from: j */
    public Node f111892j = null;

    public NodeIteratorImpl(DocumentImpl documentImpl, Node node, int i, NodeFilter nodeFilter, boolean z) {
        this.f111887e = documentImpl;
        this.f111888f = node;
        this.f111889g = i;
        this.f111890h = nodeFilter;
        this.f111894l = z;
    }

    /* renamed from: a */
    public boolean m69753a(Node node) {
        return this.f111890h == null ? (this.f111889g & (1 << (node.getNodeType() - 1))) != 0 : (this.f111889g & (1 << (node.getNodeType() - 1))) != 0 && this.f111890h.acceptNode(node) == 1;
    }

    /* renamed from: b */
    public Node m69754b(Node node) {
        Node node2 = this.f111892j;
        if (node2 == null) {
            return null;
        }
        while (node2 != this.f111888f) {
            if (node == node2) {
                return node2;
            }
            node2 = node2.getParentNode();
        }
        return null;
    }

    /* renamed from: c */
    public Node m69755c(Node node, boolean z) {
        Node nextSibling;
        if (node == null) {
            return this.f111888f;
        }
        if (z && node.hasChildNodes()) {
            return node.getFirstChild();
        }
        if (node == this.f111888f) {
            return null;
        }
        Node nextSibling2 = node.getNextSibling();
        if (nextSibling2 != null) {
            return nextSibling2;
        }
        do {
            node = node.getParentNode();
            if (node == null || node == this.f111888f) {
                return null;
            }
            nextSibling = node.getNextSibling();
        } while (nextSibling == null);
        return nextSibling;
    }

    /* renamed from: d */
    public Node m69756d(Node node) {
        if (node == this.f111888f) {
            return null;
        }
        Node previousSibling = node.getPreviousSibling();
        if (previousSibling == null) {
            return node.getParentNode();
        }
        if (previousSibling.hasChildNodes() && (this.f111894l || previousSibling.getNodeType() != 5)) {
            while (previousSibling.hasChildNodes()) {
                previousSibling = previousSibling.getLastChild();
            }
        }
        return previousSibling;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public void detach() {
        this.f111891i = true;
        this.f111887e.removeNodeIterator(this);
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public boolean getExpandEntityReferences() {
        return this.f111894l;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public NodeFilter getFilter() {
        return this.f111890h;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node getRoot() {
        return this.f111888f;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public int getWhatToShow() {
        return this.f111889g;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node nextNode() {
        if (this.f111891i) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        if (this.f111888f == null) {
            return null;
        }
        Node node = this.f111892j;
        boolean z = false;
        while (!z) {
            node = (this.f111893k || node == null) ? (this.f111894l || node == null || node.getNodeType() != 5) ? m69755c(node, true) : m69755c(node, false) : this.f111892j;
            this.f111893k = true;
            if (node == null) {
                return null;
            }
            z = m69753a(node);
            if (z) {
                this.f111892j = node;
                return node;
            }
        }
        return null;
    }

    @Override // org.w3c.dom.traversal.NodeIterator
    public Node previousNode() {
        if (this.f111891i) {
            throw new DOMException((short) 11, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_STATE_ERR", null));
        }
        if (this.f111888f == null || (r0 = this.f111892j) == null) {
            return null;
        }
        boolean z = false;
        while (!z) {
            Node node = (!this.f111893k || node == null) ? m69756d(node) : this.f111892j;
            this.f111893k = false;
            if (node == null) {
                return null;
            }
            z = m69753a(node);
            if (z) {
                this.f111892j = node;
                return node;
            }
        }
        return null;
    }

    public void removeNode(Node node) {
        Node m69754b;
        if (node == null || (m69754b = m69754b(node)) == null) {
            return;
        }
        if (this.f111893k) {
            this.f111892j = m69756d(m69754b);
            return;
        }
        Node m69755c = m69755c(m69754b, false);
        if (m69755c != null) {
            this.f111892j = m69755c;
        } else {
            this.f111892j = m69756d(m69754b);
            this.f111893k = true;
        }
    }
}
