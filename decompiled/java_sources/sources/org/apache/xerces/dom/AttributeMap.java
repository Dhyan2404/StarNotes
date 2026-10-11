package org.apache.xerces.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.DOMException;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
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
        NamedNodeMapImpl defaultAttributes;
        Node namedItem;
        CoreDocumentImpl ownerDocument = this.ownerNode.ownerDocument();
        String nodeName = attrImpl.getNodeName();
        if (attrImpl.isIdAttribute()) {
            ownerDocument.removeIdentifier(attrImpl.getValue());
        }
        if (!hasDefaults() || !z || (defaultAttributes = ((ElementImpl) this.ownerNode).getDefaultAttributes()) == null || (namedItem = defaultAttributes.getNamedItem(nodeName)) == null || findNamePoint(nodeName, i + 1) >= 0) {
            this.nodes.remove(i);
        } else {
            NodeImpl nodeImpl = (NodeImpl) namedItem.cloneNode(true);
            if (namedItem.getLocalName() != null) {
                ((AttrNSImpl) nodeImpl).namespaceURI = attrImpl.getNamespaceURI();
            }
            nodeImpl.ownerNode = this.ownerNode;
            nodeImpl.isOwned(true);
            nodeImpl.isSpecified(false);
            this.nodes.set(i, nodeImpl);
            if (attrImpl.isIdAttribute()) {
                ownerDocument.putIdentifier(nodeImpl.getNodeValue(), (ElementImpl) this.ownerNode);
            }
        }
        attrImpl.ownerNode = ownerDocument;
        attrImpl.isOwned(false);
        attrImpl.isSpecified(true);
        attrImpl.isIdAttribute(false);
        ownerDocument.removedAttrNode(attrImpl, this.ownerNode, nodeName);
        return attrImpl;
    }

    @Override // org.apache.xerces.dom.NamedNodeMapImpl
    public final int addItem(Node node) {
        AttrImpl attrImpl = (AttrImpl) node;
        attrImpl.ownerNode = this.ownerNode;
        attrImpl.isOwned(true);
        int findNamePoint = findNamePoint(attrImpl.getNamespaceURI(), attrImpl.getLocalName());
        if (findNamePoint >= 0) {
            this.nodes.set(findNamePoint, node);
        } else {
            findNamePoint = findNamePoint(attrImpl.getNodeName(), 0);
            if (findNamePoint < 0) {
                findNamePoint = (-1) - findNamePoint;
                if (this.nodes == null) {
                    this.nodes = new ArrayList(5);
                }
            }
            this.nodes.add(findNamePoint, node);
        }
        this.ownerNode.ownerDocument().setAttrNode(attrImpl, null);
        return findNamePoint;
    }

    @Override // org.apache.xerces.dom.NamedNodeMapImpl
    public void cloneContent(NamedNodeMapImpl namedNodeMapImpl) {
        int size;
        List list = namedNodeMapImpl.nodes;
        if (list == null || (size = list.size()) == 0) {
            return;
        }
        List list2 = this.nodes;
        if (list2 == null) {
            this.nodes = new ArrayList(size);
        } else {
            list2.clear();
        }
        for (int i = 0; i < size; i++) {
            NodeImpl nodeImpl = (NodeImpl) list.get(i);
            NodeImpl nodeImpl2 = (NodeImpl) nodeImpl.cloneNode(true);
            nodeImpl2.isSpecified(nodeImpl.isSpecified());
            this.nodes.add(nodeImpl2);
            nodeImpl2.ownerNode = this.ownerNode;
            nodeImpl2.isOwned(true);
        }
    }

    @Override // org.apache.xerces.dom.NamedNodeMapImpl
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
            return remove((AttrImpl) this.nodes.get(findNamePoint), findNamePoint, true);
        }
        if (z) {
            throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
        }
        return null;
    }

    public final Node internalRemoveNamedItemNS(String str, String str2, boolean z) {
        NamedNodeMapImpl defaultAttributes;
        Node namedItem;
        int findNamePoint;
        CoreDocumentImpl ownerDocument = this.ownerNode.ownerDocument();
        if (ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        int findNamePoint2 = findNamePoint(str, str2);
        if (findNamePoint2 < 0) {
            if (z) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
            }
            return null;
        }
        AttrImpl attrImpl = (AttrImpl) this.nodes.get(findNamePoint2);
        if (attrImpl.isIdAttribute()) {
            ownerDocument.removeIdentifier(attrImpl.getValue());
        }
        String nodeName = attrImpl.getNodeName();
        if (!hasDefaults() || (defaultAttributes = ((ElementImpl) this.ownerNode).getDefaultAttributes()) == null || (namedItem = defaultAttributes.getNamedItem(nodeName)) == null || (findNamePoint = findNamePoint(nodeName, 0)) < 0 || findNamePoint(nodeName, findNamePoint + 1) >= 0) {
            this.nodes.remove(findNamePoint2);
        } else {
            NodeImpl nodeImpl = (NodeImpl) namedItem.cloneNode(true);
            nodeImpl.ownerNode = this.ownerNode;
            if (namedItem.getLocalName() != null) {
                ((AttrNSImpl) nodeImpl).namespaceURI = str;
            }
            nodeImpl.isOwned(true);
            nodeImpl.isSpecified(false);
            this.nodes.set(findNamePoint2, nodeImpl);
            if (nodeImpl.isIdAttribute()) {
                ownerDocument.putIdentifier(nodeImpl.getNodeValue(), (ElementImpl) this.ownerNode);
            }
        }
        attrImpl.ownerNode = ownerDocument;
        attrImpl.isOwned(false);
        attrImpl.isSpecified(true);
        attrImpl.isIdAttribute(false);
        ownerDocument.removedAttrNode(attrImpl, this.ownerNode, str2);
        return attrImpl;
    }

    public void moveSpecifiedAttributes(AttributeMap attributeMap) {
        List list = attributeMap.nodes;
        for (int size = (list != null ? list.size() : 0) - 1; size >= 0; size--) {
            AttrImpl attrImpl = (AttrImpl) attributeMap.nodes.get(size);
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
        List list = this.nodes;
        for (int size = (list != null ? list.size() : 0) - 1; size >= 0; size--) {
            AttrImpl attrImpl = (AttrImpl) this.nodes.get(size);
            if (!attrImpl.isSpecified()) {
                remove(attrImpl, size, false);
            }
        }
        if (namedNodeMapImpl == null) {
            return;
        }
        List list2 = this.nodes;
        if (list2 == null || list2.size() == 0) {
            cloneContent(namedNodeMapImpl);
            return;
        }
        int size2 = namedNodeMapImpl.nodes.size();
        for (int i = 0; i < size2; i++) {
            AttrImpl attrImpl2 = (AttrImpl) namedNodeMapImpl.nodes.get(i);
            int findNamePoint = findNamePoint(attrImpl2.getNodeName(), 0);
            if (findNamePoint < 0) {
                NodeImpl nodeImpl = (NodeImpl) attrImpl2.cloneNode(true);
                nodeImpl.ownerNode = this.ownerNode;
                nodeImpl.isOwned(true);
                nodeImpl.isSpecified(false);
                this.nodes.add((-1) - findNamePoint, nodeImpl);
            }
        }
    }

    public Node removeItem(Node node, boolean z) throws DOMException {
        int i;
        List list = this.nodes;
        if (list != null) {
            int size = list.size();
            i = 0;
            while (i < size) {
                if (this.nodes.get(i) == node) {
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

    @Override // org.apache.xerces.dom.NamedNodeMapImpl, org.w3c.dom.NamedNodeMap
    public Node removeNamedItem(String str) throws DOMException {
        return internalRemoveNamedItem(str, true);
    }

    @Override // org.apache.xerces.dom.NamedNodeMapImpl, org.w3c.dom.NamedNodeMap
    public Node removeNamedItemNS(String str, String str2) throws DOMException {
        return internalRemoveNamedItemNS(str, str2, true);
    }

    public Node safeRemoveNamedItem(String str) {
        return internalRemoveNamedItem(str, false);
    }

    public Node safeRemoveNamedItemNS(String str, String str2) {
        return internalRemoveNamedItemNS(str, str2, false);
    }

    @Override // org.apache.xerces.dom.NamedNodeMapImpl, org.w3c.dom.NamedNodeMap
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
        int findNamePoint = findNamePoint(attrImpl2.getNodeName(), 0);
        if (findNamePoint >= 0) {
            attrImpl = (AttrImpl) this.nodes.get(findNamePoint);
            this.nodes.set(findNamePoint, node);
            attrImpl.ownerNode = this.ownerNode.ownerDocument();
            attrImpl.isOwned(false);
            attrImpl.isSpecified(true);
        } else {
            int i = (-1) - findNamePoint;
            if (this.nodes == null) {
                this.nodes = new ArrayList(5);
            }
            this.nodes.add(i, node);
        }
        this.ownerNode.ownerDocument().setAttrNode(attrImpl2, attrImpl);
        if (!attrImpl2.isNormalized()) {
            this.ownerNode.isNormalized(false);
        }
        return attrImpl;
    }

    @Override // org.apache.xerces.dom.NamedNodeMapImpl, org.w3c.dom.NamedNodeMap
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
            attrImpl = (AttrImpl) this.nodes.get(findNamePoint);
            this.nodes.set(findNamePoint, node);
            attrImpl.ownerNode = this.ownerNode.ownerDocument();
            attrImpl.isOwned(false);
            attrImpl.isSpecified(true);
        } else {
            int findNamePoint2 = findNamePoint(node.getNodeName(), 0);
            if (findNamePoint2 >= 0) {
                attrImpl = (AttrImpl) this.nodes.get(findNamePoint2);
            } else {
                findNamePoint2 = (-1) - findNamePoint2;
                if (this.nodes == null) {
                    this.nodes = new ArrayList(5);
                }
            }
            this.nodes.add(findNamePoint2, node);
        }
        this.ownerNode.ownerDocument().setAttrNode(attrImpl2, attrImpl);
        if (!attrImpl2.isNormalized()) {
            this.ownerNode.isNormalized(false);
        }
        return attrImpl;
    }
}
