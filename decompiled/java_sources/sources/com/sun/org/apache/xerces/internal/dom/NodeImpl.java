package com.sun.org.apache.xerces.internal.dom;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Hashtable;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.xerces.impl.dtd.DTDGrammar;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.UserDataHandler;
import org.w3c.dom.events.Event;
import org.w3c.dom.events.EventListener;
import org.w3c.dom.events.EventTarget;

/* loaded from: classes10.dex */
public abstract class NodeImpl implements Node, NodeList, EventTarget, Cloneable, Serializable {
    public static final short DOCUMENT_POSITION_CONTAINS = 8;
    public static final short DOCUMENT_POSITION_DISCONNECTED = 1;
    public static final short DOCUMENT_POSITION_FOLLOWING = 4;
    public static final short DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC = 32;
    public static final short DOCUMENT_POSITION_IS_CONTAINED = 16;
    public static final short DOCUMENT_POSITION_PRECEDING = 2;
    public static final short ELEMENT_DEFINITION_NODE = 21;
    protected static final short FIRSTCHILD = 16;
    protected static final short HASSTRING = 128;

    /* renamed from: ID */
    protected static final short f64112ID = 512;
    protected static final short IGNORABLEWS = 64;
    protected static final short NORMALIZED = 256;
    protected static final short OWNED = 8;
    protected static final short READONLY = 1;
    protected static final short SPECIFIED = 32;
    protected static final short SYNCCHILDREN = 4;
    protected static final short SYNCDATA = 2;
    public static final short TREE_POSITION_ANCESTOR = 4;
    public static final short TREE_POSITION_DESCENDANT = 8;
    public static final short TREE_POSITION_DISCONNECTED = 0;
    public static final short TREE_POSITION_EQUIVALENT = 16;
    public static final short TREE_POSITION_FOLLOWING = 2;
    public static final short TREE_POSITION_PRECEDING = 1;
    public static final short TREE_POSITION_SAME_NODE = 32;
    static final long serialVersionUID = -6316591992167219696L;
    protected short flags;
    protected NodeImpl ownerNode;

    public NodeImpl(CoreDocumentImpl coreDocumentImpl) {
        this.ownerNode = coreDocumentImpl;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        if (needsSyncData()) {
            synchronizeData();
        }
        objectOutputStream.defaultWriteObject();
    }

    @Override // org.w3c.dom.events.EventTarget
    public void addEventListener(String str, EventListener eventListener, boolean z) {
        ownerDocument().addEventListener(this, str, eventListener, z);
    }

    @Override // org.w3c.dom.Node
    public Node appendChild(Node node) throws DOMException {
        return insertBefore(node, null);
    }

    public void changed() {
        ownerDocument().changed();
    }

    public int changes() {
        return ownerDocument().changes();
    }

    @Override // org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        if (needsSyncData()) {
            synchronizeData();
        }
        try {
            NodeImpl nodeImpl = (NodeImpl) clone();
            nodeImpl.ownerNode = ownerDocument();
            nodeImpl.isOwned(false);
            nodeImpl.isReadOnly(false);
            ownerDocument().callUserDataHandlers(this, nodeImpl, (short) 1);
            return nodeImpl;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("**Internal Error**" + e);
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // org.w3c.dom.Node
    public short compareDocumentPosition(org.w3c.dom.Node r20) throws org.w3c.dom.DOMException {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.dom.NodeImpl.compareDocumentPosition(org.w3c.dom.Node):short");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v2, types: [org.w3c.dom.Node] */
    /* JADX WARN: Type inference failed for: r11v9, types: [org.w3c.dom.Node] */
    public short compareTreePosition(Node node) {
        if (this == node) {
            return (short) 48;
        }
        short nodeType = getNodeType();
        short nodeType2 = node.getNodeType();
        if (nodeType != 6 && nodeType != 12 && nodeType2 != 6 && nodeType2 != 12) {
            Node node2 = this;
            Node node3 = node2;
            int i = 0;
            while (node2 != null) {
                i++;
                if (node2 == node) {
                    return (short) 5;
                }
                node3 = node2;
                node2 = node2.getParentNode();
            }
            Node node4 = node;
            Node node5 = node4;
            int i2 = 0;
            while (node4 != null) {
                i2++;
                if (node4 == this) {
                    return (short) 10;
                }
                node5 = node4;
                node4 = node4.getParentNode();
            }
            short nodeType3 = node3.getNodeType();
            short nodeType4 = node5.getNodeType();
            ?? r11 = this;
            if (nodeType3 == 2) {
                r11 = ((AttrImpl) node3).getOwnerElement();
            }
            if (nodeType4 == 2) {
                node = ((AttrImpl) node5).getOwnerElement();
            }
            if (nodeType3 == 2 && nodeType4 == 2 && r11 == node) {
                return (short) 16;
            }
            if (nodeType3 == 2) {
                i = 0;
                for (Node node6 = r11; node6 != null; node6 = node6.getParentNode()) {
                    i++;
                    if (node6 == node) {
                        return (short) 1;
                    }
                    node3 = node6;
                }
            }
            if (nodeType4 == 2) {
                i2 = 0;
                for (Node node7 = node; node7 != null; node7 = node7.getParentNode()) {
                    i2++;
                    if (node7 == r11) {
                        return (short) 2;
                    }
                    node5 = node7;
                }
            }
            if (node3 != node5) {
                return (short) 0;
            }
            if (i > i2) {
                int i3 = 0;
                r11 = r11;
                while (i3 < i - i2) {
                    i3++;
                    r11 = r11.getParentNode();
                }
                if (r11 == node) {
                    return (short) 1;
                }
            } else {
                for (int i4 = 0; i4 < i2 - i; i4++) {
                    node = node.getParentNode();
                }
                if (node == r11) {
                    return (short) 2;
                }
            }
            Node parentNode = r11.getParentNode();
            Node parentNode2 = node.getParentNode();
            Node node8 = node;
            Node node9 = r11;
            Node node10 = parentNode;
            Node node11 = node8;
            while (node10 != parentNode2) {
                node9 = node10;
                node10 = node10.getParentNode();
                Node node12 = parentNode2;
                parentNode2 = parentNode2.getParentNode();
                node11 = node12;
            }
            for (Node firstChild = node10.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                if (firstChild == node11) {
                    return (short) 1;
                }
                if (firstChild == node9) {
                    return (short) 2;
                }
            }
        }
        return (short) 0;
    }

    @Override // org.w3c.dom.events.EventTarget
    public boolean dispatchEvent(Event event) {
        return ownerDocument().dispatchEvent(this, event);
    }

    @Override // org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public String getBaseURI() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public NodeList getChildNodes() {
        return this;
    }

    public Node getContainer() {
        return null;
    }

    Node getElementAncestor(Node node) {
        Node parentNode = node.getParentNode();
        if (parentNode != null) {
            return parentNode.getNodeType() == 1 ? parentNode : getElementAncestor(parentNode);
        }
        return null;
    }

    @Override // org.w3c.dom.Node
    public Object getFeature(String str, String str2) {
        if (isSupported(str, str2)) {
            return this;
        }
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node getFirstChild() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node getLastChild() {
        return null;
    }

    public int getLength() {
        return 0;
    }

    @Override // org.w3c.dom.Node
    public String getLocalName() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public String getNamespaceURI() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node getNextSibling() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public abstract String getNodeName();

    public int getNodeNumber() {
        return ((CoreDocumentImpl) getOwnerDocument()).getNodeNumber(this);
    }

    @Override // org.w3c.dom.Node
    public abstract short getNodeType();

    @Override // org.w3c.dom.Node
    public String getNodeValue() throws DOMException {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Document getOwnerDocument() {
        return isOwned() ? this.ownerNode.ownerDocument() : (Document) this.ownerNode;
    }

    @Override // org.w3c.dom.Node
    public Node getParentNode() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public String getPrefix() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node getPreviousSibling() {
        return null;
    }

    public boolean getReadOnly() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return isReadOnly();
    }

    @Override // org.w3c.dom.Node
    public String getTextContent() throws DOMException {
        return getNodeValue();
    }

    @Override // org.w3c.dom.Node
    public Object getUserData(String str) {
        return ownerDocument().getUserData(this, str);
    }

    public Hashtable getUserDataRecord() {
        return ownerDocument().getUserDataRecord(this);
    }

    @Override // org.w3c.dom.Node
    public boolean hasAttributes() {
        return false;
    }

    @Override // org.w3c.dom.Node
    public boolean hasChildNodes() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean hasStringValue() {
        return (this.flags & 128) != 0;
    }

    @Override // org.w3c.dom.Node
    public Node insertBefore(Node node, Node node2) throws DOMException {
        throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean internalIsIgnorableWhitespace() {
        return (this.flags & 64) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.w3c.dom.Node
    public boolean isDefaultNamespace(String str) {
        NodeImpl nodeImpl;
        short nodeType = getNodeType();
        if (nodeType != 1) {
            if (nodeType == 2) {
                if (this.ownerNode.getNodeType() == 1) {
                    return this.ownerNode.isDefaultNamespace(str);
                }
                return false;
            }
            if (nodeType != 6) {
                switch (nodeType) {
                    case 9:
                        return ((NodeImpl) ((Document) this).getDocumentElement()).isDefaultNamespace(str);
                    case 10:
                    case 11:
                    case 12:
                        break;
                    default:
                        NodeImpl nodeImpl2 = (NodeImpl) getElementAncestor(this);
                        if (nodeImpl2 != null) {
                            return nodeImpl2.isDefaultNamespace(str);
                        }
                        return false;
                }
            }
            return false;
        }
        String namespaceURI = getNamespaceURI();
        String prefix = getPrefix();
        if (prefix == null || prefix.length() == 0) {
            return str == null ? namespaceURI == str : str.equals(namespaceURI);
        }
        if (hasAttributes() && (nodeImpl = (NodeImpl) ((ElementImpl) this).getAttributeNodeNS("http://www.w3.org/2000/xmlns/", "xmlns")) != null) {
            String nodeValue = nodeImpl.getNodeValue();
            return str == null ? namespaceURI == nodeValue : str.equals(nodeValue);
        }
        NodeImpl nodeImpl3 = (NodeImpl) getElementAncestor(this);
        if (nodeImpl3 != null) {
            return nodeImpl3.isDefaultNamespace(str);
        }
        return false;
    }

    @Override // org.w3c.dom.Node
    public boolean isEqualNode(Node node) {
        if (node == this) {
            return true;
        }
        if (node.getNodeType() != getNodeType()) {
            return false;
        }
        if (getNodeName() == null) {
            if (node.getNodeName() != null) {
                return false;
            }
        } else if (!getNodeName().equals(node.getNodeName())) {
            return false;
        }
        if (getLocalName() == null) {
            if (node.getLocalName() != null) {
                return false;
            }
        } else if (!getLocalName().equals(node.getLocalName())) {
            return false;
        }
        if (getNamespaceURI() == null) {
            if (node.getNamespaceURI() != null) {
                return false;
            }
        } else if (!getNamespaceURI().equals(node.getNamespaceURI())) {
            return false;
        }
        if (getPrefix() == null) {
            if (node.getPrefix() != null) {
                return false;
            }
        } else if (!getPrefix().equals(node.getPrefix())) {
            return false;
        }
        if (getNodeValue() == null) {
            if (node.getNodeValue() != null) {
                return false;
            }
        } else if (!getNodeValue().equals(node.getNodeValue())) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isFirstChild() {
        return (this.flags & 16) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isIdAttribute() {
        return (this.flags & 512) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void isIgnorableWhitespace(boolean z) {
        this.flags = (short) (z ? this.flags | 64 : this.flags & (-65));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isNormalized() {
        return (this.flags & 256) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isOwned() {
        return (this.flags & 8) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isReadOnly() {
        return (this.flags & 1) != 0;
    }

    @Override // org.w3c.dom.Node
    public boolean isSameNode(Node node) {
        return this == node;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isSpecified() {
        return (this.flags & 32) != 0;
    }

    @Override // org.w3c.dom.Node
    public boolean isSupported(String str, String str2) {
        return ownerDocument().getImplementation().hasFeature(str, str2);
    }

    public Node item(int i) {
        return null;
    }

    public String lookupNamespacePrefix(String str, ElementImpl elementImpl) {
        String localName;
        String lookupNamespaceURI;
        String lookupNamespaceURI2;
        String namespaceURI = getNamespaceURI();
        String prefix = getPrefix();
        if (namespaceURI != null && namespaceURI.equals(str) && prefix != null && (lookupNamespaceURI2 = elementImpl.lookupNamespaceURI(prefix)) != null && lookupNamespaceURI2.equals(str)) {
            return prefix;
        }
        if (hasAttributes()) {
            NamedNodeMap attributes = getAttributes();
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                Node item = attributes.item(i);
                String prefix2 = item.getPrefix();
                String nodeValue = item.getNodeValue();
                String namespaceURI2 = item.getNamespaceURI();
                if (namespaceURI2 != null && namespaceURI2.equals("http://www.w3.org/2000/xmlns/") && ((item.getNodeName().equals("xmlns") || (prefix2 != null && prefix2.equals("xmlns") && nodeValue.equals(str))) && (lookupNamespaceURI = elementImpl.lookupNamespaceURI((localName = item.getLocalName()))) != null && lookupNamespaceURI.equals(str))) {
                    return localName;
                }
            }
        }
        NodeImpl nodeImpl = (NodeImpl) getElementAncestor(this);
        if (nodeImpl != null) {
            return nodeImpl.lookupNamespacePrefix(str, elementImpl);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.w3c.dom.Node
    public String lookupNamespaceURI(String str) {
        short nodeType = getNodeType();
        if (nodeType != 1) {
            if (nodeType == 2) {
                if (this.ownerNode.getNodeType() == 1) {
                    return this.ownerNode.lookupNamespaceURI(str);
                }
                return null;
            }
            if (nodeType != 6) {
                switch (nodeType) {
                    case 9:
                        return ((NodeImpl) ((Document) this).getDocumentElement()).lookupNamespaceURI(str);
                    case 10:
                    case 11:
                    case 12:
                        break;
                    default:
                        NodeImpl nodeImpl = (NodeImpl) getElementAncestor(this);
                        if (nodeImpl != null) {
                            return nodeImpl.lookupNamespaceURI(str);
                        }
                        return null;
                }
            }
            return null;
        }
        String namespaceURI = getNamespaceURI();
        String prefix = getPrefix();
        if (namespaceURI != null) {
            if (str == null && prefix == str) {
                return namespaceURI;
            }
            if (prefix != null && prefix.equals(str)) {
                return namespaceURI;
            }
        }
        if (hasAttributes()) {
            NamedNodeMap attributes = getAttributes();
            int length = attributes.getLength();
            for (int i = 0; i < length; i++) {
                Node item = attributes.item(i);
                String prefix2 = item.getPrefix();
                String nodeValue = item.getNodeValue();
                String namespaceURI2 = item.getNamespaceURI();
                if (namespaceURI2 != null && namespaceURI2.equals("http://www.w3.org/2000/xmlns/")) {
                    if (str == null && item.getNodeName().equals("xmlns")) {
                        return nodeValue;
                    }
                    if (prefix2 != null && prefix2.equals("xmlns") && item.getLocalName().equals(str)) {
                        return nodeValue;
                    }
                }
            }
        }
        NodeImpl nodeImpl2 = (NodeImpl) getElementAncestor(this);
        if (nodeImpl2 != null) {
            return nodeImpl2.lookupNamespaceURI(str);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.w3c.dom.Node
    public String lookupPrefix(String str) {
        if (str == null) {
            return null;
        }
        short nodeType = getNodeType();
        if (nodeType == 1) {
            getNamespaceURI();
            return lookupNamespacePrefix(str, (ElementImpl) this);
        }
        if (nodeType == 2) {
            if (this.ownerNode.getNodeType() == 1) {
                return this.ownerNode.lookupPrefix(str);
            }
            return null;
        }
        if (nodeType != 6) {
            switch (nodeType) {
                case 9:
                    return ((NodeImpl) ((Document) this).getDocumentElement()).lookupPrefix(str);
                case 10:
                case 11:
                case 12:
                    break;
                default:
                    NodeImpl nodeImpl = (NodeImpl) getElementAncestor(this);
                    if (nodeImpl != null) {
                        return nodeImpl.lookupPrefix(str);
                    }
                    return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean needsSyncChildren() {
        return (this.flags & 4) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean needsSyncData() {
        return (this.flags & 2) != 0;
    }

    @Override // org.w3c.dom.Node
    public void normalize() {
    }

    public CoreDocumentImpl ownerDocument() {
        return isOwned() ? this.ownerNode.ownerDocument() : (CoreDocumentImpl) this.ownerNode;
    }

    public NodeImpl parentNode() {
        return null;
    }

    public ChildNode previousSibling() {
        return null;
    }

    @Override // org.w3c.dom.Node
    public Node removeChild(Node node) throws DOMException {
        throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
    }

    @Override // org.w3c.dom.events.EventTarget
    public void removeEventListener(String str, EventListener eventListener, boolean z) {
        ownerDocument().removeEventListener(this, str, eventListener, z);
    }

    @Override // org.w3c.dom.Node
    public Node replaceChild(Node node, Node node2) throws DOMException {
        throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
    }

    @Override // org.w3c.dom.Node
    public void setNodeValue(String str) throws DOMException {
    }

    public void setOwnerDocument(CoreDocumentImpl coreDocumentImpl) {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (isOwned()) {
            return;
        }
        this.ownerNode = coreDocumentImpl;
    }

    @Override // org.w3c.dom.Node
    public void setPrefix(String str) throws DOMException {
        throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
    }

    public void setReadOnly(boolean z, boolean z2) {
        if (needsSyncData()) {
            synchronizeData();
        }
        isReadOnly(z);
    }

    @Override // org.w3c.dom.Node
    public void setTextContent(String str) throws DOMException {
        setNodeValue(str);
    }

    @Override // org.w3c.dom.Node
    public Object setUserData(String str, Object obj, UserDataHandler userDataHandler) {
        return ownerDocument().setUserData(this, str, obj, userDataHandler);
    }

    public void synchronizeData() {
        needsSyncData(false);
    }

    public String toString() {
        return IteratorUtils.f104923a + getNodeName() + ": " + getNodeValue() + IteratorUtils.f104924b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getTextContent(StringBuffer stringBuffer) throws DOMException {
        String nodeValue = getNodeValue();
        if (nodeValue != null) {
            stringBuffer.append(nodeValue);
        }
    }

    public Object getUserData() {
        return ownerDocument().getUserData(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void hasStringValue(boolean z) {
        this.flags = (short) (z ? this.flags | 128 : this.flags & DTDGrammar.f112101e1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void isFirstChild(boolean z) {
        this.flags = (short) (z ? this.flags | 16 : this.flags & (-17));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void isIdAttribute(boolean z) {
        this.flags = (short) (z ? this.flags | 512 : this.flags & (-513));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void isNormalized(boolean z) {
        NodeImpl nodeImpl;
        if (!z && isNormalized() && (nodeImpl = this.ownerNode) != null) {
            nodeImpl.isNormalized(false);
        }
        this.flags = (short) (z ? this.flags | 256 : this.flags & (-257));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void isOwned(boolean z) {
        this.flags = (short) (z ? this.flags | 8 : this.flags & (-9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void isReadOnly(boolean z) {
        this.flags = (short) (z ? this.flags | 1 : this.flags & (-2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void isSpecified(boolean z) {
        this.flags = (short) (z ? this.flags | 32 : this.flags & (-33));
    }

    public final void needsSyncChildren(boolean z) {
        this.flags = (short) (z ? this.flags | 4 : this.flags & (-5));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void needsSyncData(boolean z) {
        this.flags = (short) (z ? this.flags | 2 : this.flags & (-3));
    }

    public void setUserData(Object obj) {
        ownerDocument().setUserData(this, obj);
    }

    public NodeImpl() {
    }
}
