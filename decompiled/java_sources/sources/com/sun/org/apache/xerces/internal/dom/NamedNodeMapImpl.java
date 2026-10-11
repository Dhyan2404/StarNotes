package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import java.io.Serializable;
import java.util.Vector;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class NamedNodeMapImpl implements NamedNodeMap, Serializable {
    protected static final short CHANGED = 2;
    protected static final short HASDEFAULTS = 4;
    protected static final short READONLY = 1;
    static final long serialVersionUID = -7039242451046758020L;
    protected short flags;
    protected Vector nodes;
    protected NodeImpl ownerNode;

    public NamedNodeMapImpl(NodeImpl nodeImpl) {
        this.ownerNode = nodeImpl;
    }

    public int addItem(Node node) {
        int findNamePoint = findNamePoint(node.getNamespaceURI(), node.getLocalName());
        if (findNamePoint >= 0) {
            this.nodes.setElementAt(node, findNamePoint);
        } else {
            findNamePoint = findNamePoint(node.getNodeName(), 0);
            if (findNamePoint >= 0) {
                this.nodes.insertElementAt(node, findNamePoint);
            } else {
                findNamePoint = (-1) - findNamePoint;
                if (this.nodes == null) {
                    this.nodes = new Vector(5, 10);
                }
                this.nodes.insertElementAt(node, findNamePoint);
            }
        }
        return findNamePoint;
    }

    public final boolean changed() {
        return (this.flags & 2) != 0;
    }

    public void cloneContent(NamedNodeMapImpl namedNodeMapImpl) {
        int size;
        Vector vector = namedNodeMapImpl.nodes;
        if (vector == null || (size = vector.size()) == 0) {
            return;
        }
        if (this.nodes == null) {
            this.nodes = new Vector(size);
        }
        this.nodes.setSize(size);
        for (int i = 0; i < size; i++) {
            NodeImpl nodeImpl = (NodeImpl) namedNodeMapImpl.nodes.elementAt(i);
            NodeImpl nodeImpl2 = (NodeImpl) nodeImpl.cloneNode(true);
            nodeImpl2.isSpecified(nodeImpl.isSpecified());
            this.nodes.setElementAt(nodeImpl2, i);
        }
    }

    public NamedNodeMapImpl cloneMap(NodeImpl nodeImpl) {
        NamedNodeMapImpl namedNodeMapImpl = new NamedNodeMapImpl(nodeImpl);
        namedNodeMapImpl.cloneContent(this);
        return namedNodeMapImpl;
    }

    public int findNamePoint(String str, int i) {
        Vector vector = this.nodes;
        int i2 = 0;
        if (vector != null) {
            int size = vector.size() - 1;
            while (i <= size) {
                i2 = (i + size) / 2;
                int compareTo = str.compareTo(((Node) this.nodes.elementAt(i2)).getNodeName());
                if (compareTo == 0) {
                    return i2;
                }
                if (compareTo < 0) {
                    size = i2 - 1;
                } else {
                    i = i2 + 1;
                }
            }
            if (i > i2) {
                i2 = i;
            }
        }
        return (-1) - i2;
    }

    public Object getItem(int i) {
        Vector vector = this.nodes;
        if (vector != null) {
            return vector.elementAt(i);
        }
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public int getLength() {
        Vector vector = this.nodes;
        if (vector != null) {
            return vector.size();
        }
        return 0;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItem(String str) {
        int findNamePoint = findNamePoint(str, 0);
        if (findNamePoint < 0) {
            return null;
        }
        return (Node) this.nodes.elementAt(findNamePoint);
    }

    public int getNamedItemIndex(String str, String str2) {
        return findNamePoint(str, str2);
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItemNS(String str, String str2) {
        int findNamePoint = findNamePoint(str, str2);
        if (findNamePoint < 0) {
            return null;
        }
        return (Node) this.nodes.elementAt(findNamePoint);
    }

    public boolean getReadOnly() {
        return isReadOnly();
    }

    public final boolean hasDefaults() {
        return (this.flags & 4) != 0;
    }

    public final boolean isReadOnly() {
        return (this.flags & 1) != 0;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node item(int i) {
        Vector vector = this.nodes;
        if (vector == null || i >= vector.size()) {
            return null;
        }
        return (Node) this.nodes.elementAt(i);
    }

    public boolean precedes(Node node, Node node2) {
        if (this.nodes != null) {
            for (int i = 0; i < this.nodes.size(); i++) {
                Node node3 = (Node) this.nodes.elementAt(i);
                if (node3 == node) {
                    return true;
                }
                if (node3 == node2) {
                    return false;
                }
            }
        }
        return false;
    }

    public void removeAll() {
        Vector vector = this.nodes;
        if (vector != null) {
            vector.removeAllElements();
        }
    }

    public void removeItem(int i) {
        Vector vector = this.nodes;
        if (vector == null || i >= vector.size()) {
            return;
        }
        this.nodes.removeElementAt(i);
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItem(String str) throws DOMException {
        if (isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        int findNamePoint = findNamePoint(str, 0);
        if (findNamePoint < 0) {
            throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
        }
        NodeImpl nodeImpl = (NodeImpl) this.nodes.elementAt(findNamePoint);
        this.nodes.removeElementAt(findNamePoint);
        return nodeImpl;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItemNS(String str, String str2) throws DOMException {
        if (isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        int findNamePoint = findNamePoint(str, str2);
        if (findNamePoint < 0) {
            throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
        }
        NodeImpl nodeImpl = (NodeImpl) this.nodes.elementAt(findNamePoint);
        this.nodes.removeElementAt(findNamePoint);
        return nodeImpl;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItem(Node node) throws DOMException {
        CoreDocumentImpl ownerDocument = this.ownerNode.ownerDocument();
        if (ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (node.getOwnerDocument() != ownerDocument) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        int findNamePoint = findNamePoint(node.getNodeName(), 0);
        if (findNamePoint >= 0) {
            NodeImpl nodeImpl = (NodeImpl) this.nodes.elementAt(findNamePoint);
            this.nodes.setElementAt(node, findNamePoint);
            return nodeImpl;
        }
        int i = (-1) - findNamePoint;
        if (this.nodes == null) {
            this.nodes = new Vector(5, 10);
        }
        this.nodes.insertElementAt(node, i);
        return null;
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItemNS(Node node) throws DOMException {
        CoreDocumentImpl ownerDocument = this.ownerNode.ownerDocument();
        if (ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (node.getOwnerDocument() != ownerDocument) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        int findNamePoint = findNamePoint(node.getNamespaceURI(), node.getLocalName());
        if (findNamePoint >= 0) {
            NodeImpl nodeImpl = (NodeImpl) this.nodes.elementAt(findNamePoint);
            this.nodes.setElementAt(node, findNamePoint);
            return nodeImpl;
        }
        int findNamePoint2 = findNamePoint(node.getNodeName(), 0);
        if (findNamePoint2 >= 0) {
            NodeImpl nodeImpl2 = (NodeImpl) this.nodes.elementAt(findNamePoint2);
            this.nodes.insertElementAt(node, findNamePoint2);
            return nodeImpl2;
        }
        int i = (-1) - findNamePoint2;
        if (this.nodes == null) {
            this.nodes = new Vector(5, 10);
        }
        this.nodes.insertElementAt(node, i);
        return null;
    }

    public void setOwnerDocument(CoreDocumentImpl coreDocumentImpl) {
        if (this.nodes != null) {
            for (int i = 0; i < this.nodes.size(); i++) {
                ((NodeImpl) item(i)).setOwnerDocument(coreDocumentImpl);
            }
        }
    }

    public void setReadOnly(boolean z, boolean z2) {
        Vector vector;
        isReadOnly(z);
        if (!z2 || (vector = this.nodes) == null) {
            return;
        }
        for (int size = vector.size() - 1; size >= 0; size--) {
            ((NodeImpl) this.nodes.elementAt(size)).setReadOnly(z, z2);
        }
    }

    public final void changed(boolean z) {
        this.flags = (short) (z ? this.flags | 2 : this.flags & (-3));
    }

    public final void hasDefaults(boolean z) {
        this.flags = (short) (z ? this.flags | 4 : this.flags & (-5));
    }

    public final void isReadOnly(boolean z) {
        this.flags = (short) (z ? this.flags | 1 : this.flags & (-2));
    }

    public Vector cloneMap(Vector vector) {
        if (vector == null) {
            vector = new Vector(5, 10);
        }
        vector.setSize(0);
        if (this.nodes != null) {
            for (int i = 0; i < this.nodes.size(); i++) {
                vector.insertElementAt(this.nodes.elementAt(i), i);
            }
        }
        return vector;
    }

    public int findNamePoint(String str, String str2) {
        if (this.nodes == null || str2 == null) {
            return -1;
        }
        if (str != null && str.length() == 0) {
            str = null;
        }
        for (int i = 0; i < this.nodes.size(); i++) {
            NodeImpl nodeImpl = (NodeImpl) this.nodes.elementAt(i);
            String namespaceURI = nodeImpl.getNamespaceURI();
            String localName = nodeImpl.getLocalName();
            if (str == null) {
                if (namespaceURI == null && (str2.equals(localName) || (localName == null && str2.equals(nodeImpl.getNodeName())))) {
                    return i;
                }
            } else if (str.equals(namespaceURI) && str2.equals(localName)) {
                return i;
            }
        }
        return -1;
    }
}
