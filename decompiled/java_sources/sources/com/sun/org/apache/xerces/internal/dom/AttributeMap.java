package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import java.util.Vector;
import org.w3c.dom.DOMException;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class AttributeMap extends NamedNodeMapImpl {
    static final long serialVersionUID = 8872606282138665383L;

    public AttributeMap(ElementImpl elementImpl, NamedNodeMapImpl namedNodeMapImpl) {
        super(elementImpl);
        if (namedNodeMapImpl != null) {
            cloneContent(namedNodeMapImpl);
            if (this.nodes != null) {
                hasDefaults(true);
            }
        }
    }

    private final Node remove(AttrImpl attrImpl, int i, boolean z) {
        Node namedItem;
        CoreDocumentImpl ownerDocument = this.ownerNode.ownerDocument();
        String nodeName = attrImpl.getNodeName();
        if (attrImpl.isIdAttribute()) {
            ownerDocument.removeIdentifier(attrImpl.getValue());
        }
        if (hasDefaults() && z) {
            NamedNodeMapImpl defaultAttributes = ((ElementImpl) this.ownerNode).getDefaultAttributes();
            if (defaultAttributes == null || (namedItem = defaultAttributes.getNamedItem(nodeName)) == null || findNamePoint(nodeName, i + 1) >= 0) {
                this.nodes.removeElementAt(i);
            } else {
                NodeImpl nodeImpl = (NodeImpl) namedItem.cloneNode(true);
                if (namedItem.getLocalName() != null) {
                    ((AttrNSImpl) nodeImpl).namespaceURI = attrImpl.getNamespaceURI();
                }
                nodeImpl.ownerNode = this.ownerNode;
                nodeImpl.isOwned(true);
                nodeImpl.isSpecified(false);
                this.nodes.setElementAt(nodeImpl, i);
                if (attrImpl.isIdAttribute()) {
                    ownerDocument.putIdentifier(nodeImpl.getNodeValue(), (ElementImpl) this.ownerNode);
                }
            }
        } else {
            this.nodes.removeElementAt(i);
        }
        attrImpl.ownerNode = ownerDocument;
        attrImpl.isOwned(false);
        attrImpl.isSpecified(true);
        attrImpl.isIdAttribute(false);
        ownerDocument.removedAttrNode(attrImpl, this.ownerNode, nodeName);
        return attrImpl;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl
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
            NodeImpl nodeImpl = (NodeImpl) vector.elementAt(i);
            NodeImpl nodeImpl2 = (NodeImpl) nodeImpl.cloneNode(true);
            nodeImpl2.isSpecified(nodeImpl.isSpecified());
            this.nodes.setElementAt(nodeImpl2, i);
            nodeImpl2.ownerNode = this.ownerNode;
            nodeImpl2.isOwned(true);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl
    public NamedNodeMapImpl cloneMap(NodeImpl nodeImpl) {
        AttributeMap attributeMap = new AttributeMap((ElementImpl) nodeImpl, null);
        attributeMap.hasDefaults(hasDefaults());
        attributeMap.cloneContent(this);
        return attributeMap;
    }

    public final Node internalRemoveNamedItem(String str, boolean z) {
        if (isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        int findNamePoint = findNamePoint(str, 0);
        if (findNamePoint >= 0) {
            return remove((AttrImpl) this.nodes.elementAt(findNamePoint), findNamePoint, true);
        }
        if (z) {
            throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
        }
        return null;
    }

    public final Node internalRemoveNamedItemNS(String str, String str2, boolean z) {
        Node namedItem;
        CoreDocumentImpl ownerDocument = this.ownerNode.ownerDocument();
        if (ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        int findNamePoint = findNamePoint(str, str2);
        if (findNamePoint < 0) {
            if (z) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
            }
            return null;
        }
        AttrImpl attrImpl = (AttrImpl) this.nodes.elementAt(findNamePoint);
        if (attrImpl.isIdAttribute()) {
            ownerDocument.removeIdentifier(attrImpl.getValue());
        }
        String nodeName = attrImpl.getNodeName();
        if (hasDefaults()) {
            NamedNodeMapImpl defaultAttributes = ((ElementImpl) this.ownerNode).getDefaultAttributes();
            if (defaultAttributes == null || (namedItem = defaultAttributes.getNamedItem(nodeName)) == null) {
                this.nodes.removeElementAt(findNamePoint);
            } else {
                int findNamePoint2 = findNamePoint(nodeName, 0);
                if (findNamePoint2 < 0 || findNamePoint(nodeName, findNamePoint2 + 1) >= 0) {
                    this.nodes.removeElementAt(findNamePoint);
                } else {
                    NodeImpl nodeImpl = (NodeImpl) namedItem.cloneNode(true);
                    nodeImpl.ownerNode = this.ownerNode;
                    if (namedItem.getLocalName() != null) {
                        ((AttrNSImpl) nodeImpl).namespaceURI = str;
                    }
                    nodeImpl.isOwned(true);
                    nodeImpl.isSpecified(false);
                    this.nodes.setElementAt(nodeImpl, findNamePoint);
                    if (nodeImpl.isIdAttribute()) {
                        ownerDocument.putIdentifier(nodeImpl.getNodeValue(), (ElementImpl) this.ownerNode);
                    }
                }
            }
        } else {
            this.nodes.removeElementAt(findNamePoint);
        }
        attrImpl.ownerNode = ownerDocument;
        attrImpl.isOwned(false);
        attrImpl.isSpecified(true);
        attrImpl.isIdAttribute(false);
        ownerDocument.removedAttrNode(attrImpl, this.ownerNode, str2);
        return attrImpl;
    }

    public void moveSpecifiedAttributes(AttributeMap attributeMap) {
        Vector vector = attributeMap.nodes;
        for (int size = (vector != null ? vector.size() : 0) - 1; size >= 0; size--) {
            AttrImpl attrImpl = (AttrImpl) attributeMap.nodes.elementAt(size);
            if (attrImpl.isSpecified()) {
                attributeMap.remove(attrImpl, size, false);
                if (attrImpl.getLocalName() != null) {
                    setNamedItem(attrImpl);
                } else {
                    setNamedItemNS(attrImpl);
                }
            }
        }
    }

    public void reconcileDefaults(NamedNodeMapImpl namedNodeMapImpl) {
        Vector vector = this.nodes;
        for (int size = (vector != null ? vector.size() : 0) - 1; size >= 0; size--) {
            AttrImpl attrImpl = (AttrImpl) this.nodes.elementAt(size);
            if (!attrImpl.isSpecified()) {
                remove(attrImpl, size, false);
            }
        }
        if (namedNodeMapImpl == null) {
            return;
        }
        Vector vector2 = this.nodes;
        if (vector2 == null || vector2.size() == 0) {
            cloneContent(namedNodeMapImpl);
            return;
        }
        int size2 = namedNodeMapImpl.nodes.size();
        for (int i = 0; i < size2; i++) {
            AttrImpl attrImpl2 = (AttrImpl) namedNodeMapImpl.nodes.elementAt(i);
            int findNamePoint = findNamePoint(attrImpl2.getNodeName(), 0);
            if (findNamePoint < 0) {
                NodeImpl nodeImpl = (NodeImpl) attrImpl2.cloneNode(true);
                nodeImpl.ownerNode = this.ownerNode;
                nodeImpl.isOwned(true);
                nodeImpl.isSpecified(false);
                this.nodes.insertElementAt(nodeImpl, (-1) - findNamePoint);
            }
        }
    }

    public Node removeItem(Node node, boolean z) throws DOMException {
        int i;
        if (this.nodes != null) {
            i = 0;
            while (i < this.nodes.size()) {
                if (this.nodes.elementAt(i) == node) {
                    break;
                }
                i++;
            }
        }
        i = -1;
        if (i >= 0) {
            return remove((AttrImpl) node, i, z);
        }
        throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl, org.w3c.dom.NamedNodeMap
    public Node removeNamedItem(String str) throws DOMException {
        return internalRemoveNamedItem(str, true);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl, org.w3c.dom.NamedNodeMap
    public Node removeNamedItemNS(String str, String str2) throws DOMException {
        return internalRemoveNamedItemNS(str, str2, true);
    }

    public Node safeRemoveNamedItem(String str) {
        return internalRemoveNamedItem(str, false);
    }

    public Node safeRemoveNamedItemNS(String str, String str2) {
        return internalRemoveNamedItemNS(str, str2, false);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl, org.w3c.dom.NamedNodeMap
    public Node setNamedItem(Node node) throws DOMException {
        boolean z = this.ownerNode.ownerDocument().errorChecking;
        AttrImpl attrImpl = null;
        if (z) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (node.getOwnerDocument() != this.ownerNode.ownerDocument()) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
            if (node.getNodeType() != 2) {
                throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
            }
        }
        AttrImpl attrImpl2 = (AttrImpl) node;
        if (attrImpl2.isOwned()) {
            if (!z || attrImpl2.getOwnerElement() == this.ownerNode) {
                return node;
            }
            throw new DOMException((short) 10, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INUSE_ATTRIBUTE_ERR", null));
        }
        attrImpl2.ownerNode = this.ownerNode;
        attrImpl2.isOwned(true);
        int findNamePoint = findNamePoint(node.getNodeName(), 0);
        if (findNamePoint >= 0) {
            attrImpl = (AttrImpl) this.nodes.elementAt(findNamePoint);
            this.nodes.setElementAt(node, findNamePoint);
            attrImpl.ownerNode = this.ownerNode.ownerDocument();
            attrImpl.isOwned(false);
            attrImpl.isSpecified(true);
        } else {
            int i = (-1) - findNamePoint;
            if (this.nodes == null) {
                this.nodes = new Vector(5, 10);
            }
            this.nodes.insertElementAt(node, i);
        }
        this.ownerNode.ownerDocument().setAttrNode(attrImpl2, attrImpl);
        if (!attrImpl2.isNormalized()) {
            this.ownerNode.isNormalized(false);
        }
        return attrImpl;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl, org.w3c.dom.NamedNodeMap
    public Node setNamedItemNS(Node node) throws DOMException {
        boolean z = this.ownerNode.ownerDocument().errorChecking;
        AttrImpl attrImpl = null;
        if (z) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (node.getOwnerDocument() != this.ownerNode.ownerDocument()) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
            if (node.getNodeType() != 2) {
                throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
            }
        }
        AttrImpl attrImpl2 = (AttrImpl) node;
        if (attrImpl2.isOwned()) {
            if (!z || attrImpl2.getOwnerElement() == this.ownerNode) {
                return node;
            }
            throw new DOMException((short) 10, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INUSE_ATTRIBUTE_ERR", null));
        }
        attrImpl2.ownerNode = this.ownerNode;
        attrImpl2.isOwned(true);
        int findNamePoint = findNamePoint(attrImpl2.getNamespaceURI(), attrImpl2.getLocalName());
        if (findNamePoint >= 0) {
            attrImpl = (AttrImpl) this.nodes.elementAt(findNamePoint);
            this.nodes.setElementAt(node, findNamePoint);
            attrImpl.ownerNode = this.ownerNode.ownerDocument();
            attrImpl.isOwned(false);
            attrImpl.isSpecified(true);
        } else {
            int findNamePoint2 = findNamePoint(node.getNodeName(), 0);
            if (findNamePoint2 >= 0) {
                attrImpl = (AttrImpl) this.nodes.elementAt(findNamePoint2);
                this.nodes.insertElementAt(node, findNamePoint2);
            } else {
                int i = (-1) - findNamePoint2;
                if (this.nodes == null) {
                    this.nodes = new Vector(5, 10);
                }
                this.nodes.insertElementAt(node, i);
            }
        }
        this.ownerNode.ownerDocument().setAttrNode(attrImpl2, attrImpl);
        if (!attrImpl2.isNormalized()) {
            this.ownerNode.isNormalized(false);
        }
        return attrImpl;
    }
}
