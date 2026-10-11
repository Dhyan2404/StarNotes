package org.apache.xerces.dom;

import net.p110sf.saxon.query.XQueryParser;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.traversal.NodeFilter;
import org.w3c.dom.traversal.TreeWalker;

/* loaded from: classes13.dex */
public class TreeWalkerImpl implements TreeWalker {

    /* renamed from: a */
    public boolean f111916a;

    /* renamed from: b */
    public int f111917b;

    /* renamed from: c */
    public NodeFilter f111918c;

    /* renamed from: d */
    public Node f111919d;

    /* renamed from: e */
    public Node f111920e;

    /* renamed from: f */
    public boolean f111921f;

    public TreeWalkerImpl(Node node, int i, NodeFilter nodeFilter, boolean z) {
        this.f111916a = false;
        this.f111917b = -1;
        this.f111919d = node;
        this.f111920e = node;
        this.f111921f = m69803j(node);
        this.f111917b = i;
        this.f111918c = nodeFilter;
        this.f111916a = z;
    }

    /* renamed from: a */
    public short m69794a(Node node) {
        if (this.f111918c == null) {
            return (this.f111917b & (1 << (node.getNodeType() - 1))) != 0 ? (short) 1 : (short) 3;
        }
        if ((this.f111917b & (1 << (node.getNodeType() - 1))) != 0) {
            return this.f111918c.acceptNode(node);
        }
        return (short) 3;
    }

    /* renamed from: b */
    public Node m69795b(Node node) {
        Node firstChild;
        if (node == null) {
            return null;
        }
        if ((!this.f111916a && node.getNodeType() == 5) || (firstChild = node.getFirstChild()) == null) {
            return null;
        }
        short m69794a = m69794a(firstChild);
        if (m69794a == 1) {
            return firstChild;
        }
        if (m69794a != 3 || !firstChild.hasChildNodes()) {
            return m69798e(firstChild, node);
        }
        Node m69795b = m69795b(firstChild);
        return m69795b == null ? m69798e(firstChild, node) : m69795b;
    }

    /* renamed from: c */
    public Node m69796c(Node node) {
        Node lastChild;
        if (node == null) {
            return null;
        }
        if ((!this.f111916a && node.getNodeType() == 5) || (lastChild = node.getLastChild()) == null) {
            return null;
        }
        short m69794a = m69794a(lastChild);
        if (m69794a == 1) {
            return lastChild;
        }
        if (m69794a != 3 || !lastChild.hasChildNodes()) {
            return m69801h(lastChild, node);
        }
        Node m69796c = m69796c(lastChild);
        return m69796c == null ? m69801h(lastChild, node) : m69796c;
    }

    /* renamed from: d */
    public Node m69797d(Node node) {
        return m69798e(node, this.f111920e);
    }

    /* renamed from: e */
    public Node m69798e(Node node, Node node2) {
        Node m69795b;
        if (node == null || m69802i(node, node2)) {
            return null;
        }
        Node nextSibling = node.getNextSibling();
        if (nextSibling != null) {
            short m69794a = m69794a(nextSibling);
            return m69794a == 1 ? nextSibling : (m69794a != 3 || (m69795b = m69795b(nextSibling)) == null) ? m69798e(nextSibling, node2) : m69795b;
        }
        Node parentNode = node.getParentNode();
        if (parentNode == null || m69802i(parentNode, node2) || m69794a(parentNode) != 3) {
            return null;
        }
        return m69798e(parentNode, node2);
    }

    /* renamed from: f */
    public Node m69799f(Node node) {
        Node parentNode;
        if (node == null || m69802i(node, this.f111920e) || (parentNode = node.getParentNode()) == null) {
            return null;
        }
        return m69794a(parentNode) == 1 ? parentNode : m69799f(parentNode);
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node firstChild() {
        Node node = this.f111919d;
        if (node == null) {
            return null;
        }
        Node m69795b = m69795b(node);
        if (m69795b != null) {
            this.f111919d = m69795b;
        }
        return m69795b;
    }

    /* renamed from: g */
    public Node m69800g(Node node) {
        return m69801h(node, this.f111920e);
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node getCurrentNode() {
        return this.f111919d;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public boolean getExpandEntityReferences() {
        return this.f111916a;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public NodeFilter getFilter() {
        return this.f111918c;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node getRoot() {
        return this.f111920e;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public int getWhatToShow() {
        return this.f111917b;
    }

    /* renamed from: h */
    public Node m69801h(Node node, Node node2) {
        Node m69796c;
        if (node == null || m69802i(node, node2)) {
            return null;
        }
        Node previousSibling = node.getPreviousSibling();
        if (previousSibling != null) {
            short m69794a = m69794a(previousSibling);
            return m69794a == 1 ? previousSibling : (m69794a != 3 || (m69796c = m69796c(previousSibling)) == null) ? m69801h(previousSibling, node2) : m69796c;
        }
        Node parentNode = node.getParentNode();
        if (parentNode == null || m69802i(parentNode, node2) || m69794a(parentNode) != 3) {
            return null;
        }
        return m69801h(parentNode, node2);
    }

    /* renamed from: i */
    public final boolean m69802i(Node node, Node node2) {
        return this.f111921f ? node.isSameNode(node2) : node == node2;
    }

    /* renamed from: j */
    public final boolean m69803j(Node node) {
        if (node instanceof NodeImpl) {
            return false;
        }
        Document ownerDocument = node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument();
        return ownerDocument != null && ownerDocument.getImplementation().hasFeature("Core", XQueryParser.XQUERY30);
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node lastChild() {
        Node node = this.f111919d;
        if (node == null) {
            return null;
        }
        Node m69796c = m69796c(node);
        if (m69796c != null) {
            this.f111919d = m69796c;
        }
        return m69796c;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node nextNode() {
        Node m69797d;
        Node node = this.f111919d;
        if (node == null) {
            return null;
        }
        Node m69795b = m69795b(node);
        if (m69795b != null) {
            this.f111919d = m69795b;
            return m69795b;
        }
        Node m69797d2 = m69797d(this.f111919d);
        if (m69797d2 != null) {
            this.f111919d = m69797d2;
            return m69797d2;
        }
        Node node2 = this.f111919d;
        do {
            node2 = m69799f(node2);
            if (node2 == null) {
                return null;
            }
            m69797d = m69797d(node2);
        } while (m69797d == null);
        this.f111919d = m69797d;
        return m69797d;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node nextSibling() {
        Node node = this.f111919d;
        if (node == null) {
            return null;
        }
        Node m69797d = m69797d(node);
        if (m69797d != null) {
            this.f111919d = m69797d;
        }
        return m69797d;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node parentNode() {
        Node node = this.f111919d;
        if (node == null) {
            return null;
        }
        Node m69799f = m69799f(node);
        if (m69799f != null) {
            this.f111919d = m69799f;
        }
        return m69799f;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node previousNode() {
        Node node = this.f111919d;
        if (node == null) {
            return null;
        }
        Node m69800g = m69800g(node);
        if (m69800g == null) {
            Node m69799f = m69799f(this.f111919d);
            if (m69799f == null) {
                return null;
            }
            this.f111919d = m69799f;
            return m69799f;
        }
        Node m69796c = m69796c(m69800g);
        Node node2 = m69796c;
        while (m69796c != null) {
            node2 = m69796c;
            m69796c = m69796c(m69796c);
        }
        if (node2 != null) {
            this.f111919d = node2;
            return node2;
        }
        this.f111919d = m69800g;
        return m69800g;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public Node previousSibling() {
        Node node = this.f111919d;
        if (node == null) {
            return null;
        }
        Node m69800g = m69800g(node);
        if (m69800g != null) {
            this.f111919d = m69800g;
        }
        return m69800g;
    }

    @Override // org.w3c.dom.traversal.TreeWalker
    public void setCurrentNode(Node node) {
        if (node == null) {
            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
        }
        this.f111919d = node;
    }

    public void setWhatShow(int i) {
        this.f111917b = i;
    }
}
