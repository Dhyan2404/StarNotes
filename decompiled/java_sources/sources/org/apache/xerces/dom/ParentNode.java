package org.apache.xerces.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.UserDataHandler;

/* loaded from: classes13.dex */
public abstract class ParentNode extends ChildNode {
    static final long serialVersionUID = 2815829867152120872L;
    protected transient NodeListCache fNodeListCache;
    protected ChildNode firstChild;
    protected CoreDocumentImpl ownerDocument;

    /* loaded from: classes13.dex */
    public class UserDataRecord implements Serializable {
        private static final long serialVersionUID = 3258126977134310455L;
        Object fData;
        UserDataHandler fHandler;

        public UserDataRecord(Object obj, UserDataHandler userDataHandler) {
            this.fData = obj;
            this.fHandler = userDataHandler;
        }
    }

    public ParentNode() {
        this.firstChild = null;
        this.fNodeListCache = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int nodeListGetLength() {
        ChildNode childNode;
        int i = 0;
        if (this.fNodeListCache == null) {
            if (needsSyncChildren()) {
                synchronizeChildren();
            }
            ChildNode childNode2 = this.firstChild;
            if (childNode2 == null) {
                return 0;
            }
            if (childNode2 == lastChild()) {
                return 1;
            }
            this.fNodeListCache = this.ownerDocument.getNodeListCache(this);
        }
        NodeListCache nodeListCache = this.fNodeListCache;
        if (nodeListCache.fLength == -1) {
            int i2 = nodeListCache.fChildIndex;
            if (i2 == -1 || (childNode = nodeListCache.fChild) == null) {
                childNode = this.firstChild;
            } else {
                i = i2;
            }
            while (childNode != null) {
                i++;
                childNode = childNode.nextSibling;
            }
            this.fNodeListCache.fLength = i;
        }
        return this.fNodeListCache.fLength;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Node nodeListItem(int i) {
        if (this.fNodeListCache == null) {
            if (needsSyncChildren()) {
                synchronizeChildren();
            }
            if (this.firstChild == lastChild()) {
                if (i == 0) {
                    return this.firstChild;
                }
                return null;
            }
            this.fNodeListCache = this.ownerDocument.getNodeListCache(this);
        }
        NodeListCache nodeListCache = this.fNodeListCache;
        int i2 = nodeListCache.fChildIndex;
        ChildNode childNode = nodeListCache.fChild;
        boolean z = false;
        if (i2 == -1 || childNode == null) {
            if (i < 0) {
                return null;
            }
            childNode = this.firstChild;
            i2 = 0;
            while (i2 < i && childNode != null) {
                childNode = childNode.nextSibling;
                i2++;
            }
            z = true;
        } else if (i2 < i) {
            while (i2 < i && childNode != null) {
                i2++;
                childNode = childNode.nextSibling;
            }
        } else if (i2 > i) {
            while (i2 > i && childNode != null) {
                i2--;
                childNode = childNode.previousSibling();
            }
        }
        if (z || !(childNode == this.firstChild || childNode == lastChild())) {
            NodeListCache nodeListCache2 = this.fNodeListCache;
            nodeListCache2.fChildIndex = i2;
            nodeListCache2.fChild = childNode;
        } else {
            NodeListCache nodeListCache3 = this.fNodeListCache;
            nodeListCache3.fChildIndex = -1;
            nodeListCache3.fChild = null;
            this.ownerDocument.freeNodeListCache(nodeListCache3);
        }
        return childNode;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        needsSyncChildren(false);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        objectOutputStream.defaultWriteObject();
    }

    public void checkNormalizationAfterInsert(ChildNode childNode) {
        if (childNode.getNodeType() == 3) {
            ChildNode previousSibling = childNode.previousSibling();
            ChildNode childNode2 = childNode.nextSibling;
            if ((previousSibling == null || previousSibling.getNodeType() != 3) && (childNode2 == null || childNode2.getNodeType() != 3)) {
                return;
            }
        } else if (childNode.isNormalized()) {
            return;
        }
        isNormalized(false);
    }

    public void checkNormalizationAfterRemove(ChildNode childNode) {
        ChildNode childNode2;
        if (childNode == null || childNode.getNodeType() != 3 || (childNode2 = childNode.nextSibling) == null || childNode2.getNodeType() != 3) {
            return;
        }
        isNormalized(false);
    }

    @Override // org.apache.xerces.dom.ChildNode, org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        ParentNode parentNode = (ParentNode) super.cloneNode(z);
        parentNode.ownerDocument = this.ownerDocument;
        parentNode.firstChild = null;
        parentNode.fNodeListCache = null;
        if (z) {
            for (ChildNode childNode = this.firstChild; childNode != null; childNode = childNode.nextSibling) {
                parentNode.appendChild(childNode.cloneNode(true));
            }
        }
        return parentNode;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public NodeList getChildNodes() {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        return this;
    }

    public final NodeList getChildNodesUnoptimized() {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        return new C20000b(this);
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node getFirstChild() {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        return this.firstChild;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node getLastChild() {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        return lastChild();
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.NodeList
    public int getLength() {
        return nodeListGetLength();
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Document getOwnerDocument() {
        return this.ownerDocument;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public String getTextContent() throws DOMException {
        Node firstChild = getFirstChild();
        if (firstChild == null) {
            return "";
        }
        if (firstChild.getNextSibling() == null) {
            return hasTextContent(firstChild) ? ((NodeImpl) firstChild).getTextContent() : "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        getTextContent(stringBuffer);
        return stringBuffer.toString();
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public boolean hasChildNodes() {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        return this.firstChild != null;
    }

    final boolean hasTextContent(Node node) {
        return (node.getNodeType() == 8 || node.getNodeType() == 7 || (node.getNodeType() == 3 && ((TextImpl) node).isIgnorableWhitespace())) ? false : true;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node insertBefore(Node node, Node node2) throws DOMException {
        return internalInsertBefore(node, node2, false);
    }

    Node internalInsertBefore(Node node, Node node2, boolean z) throws DOMException {
        boolean z2 = this.ownerDocument.errorChecking;
        if (node.getNodeType() == 11) {
            if (z2) {
                for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                    if (!this.ownerDocument.isKidOK(this, firstChild)) {
                        throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
                    }
                }
            }
            while (node.hasChildNodes()) {
                insertBefore(node.getFirstChild(), node2);
            }
            return node;
        }
        if (node == node2) {
            Node nextSibling = node2.getNextSibling();
            removeChild(node);
            insertBefore(node, nextSibling);
            return node;
        }
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        if (z2) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            Document ownerDocument = node.getOwnerDocument();
            CoreDocumentImpl coreDocumentImpl = this.ownerDocument;
            if (ownerDocument != coreDocumentImpl && node != coreDocumentImpl) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
            if (!coreDocumentImpl.isKidOK(this, node)) {
                throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
            }
            if (node2 != null && node2.getParentNode() != this) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
            }
            NodeImpl nodeImpl = this;
            boolean z3 = true;
            while (z3 && nodeImpl != null) {
                z3 = node != nodeImpl;
                nodeImpl = nodeImpl.parentNode();
            }
            if (!z3) {
                throw new DOMException((short) 3, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
            }
        }
        this.ownerDocument.insertingNode(this, z);
        ChildNode childNode = (ChildNode) node;
        NodeImpl parentNode = childNode.parentNode();
        if (parentNode != null) {
            parentNode.removeChild(childNode);
        }
        ChildNode childNode2 = (ChildNode) node2;
        childNode.ownerNode = this;
        childNode.isOwned(true);
        ChildNode childNode3 = this.firstChild;
        if (childNode3 == null) {
            this.firstChild = childNode;
            childNode.isFirstChild(true);
            childNode.previousSibling = childNode;
        } else if (childNode2 == null) {
            ChildNode childNode4 = childNode3.previousSibling;
            childNode4.nextSibling = childNode;
            childNode.previousSibling = childNode4;
            childNode3.previousSibling = childNode;
        } else if (node2 == childNode3) {
            childNode3.isFirstChild(false);
            ChildNode childNode5 = this.firstChild;
            childNode.nextSibling = childNode5;
            childNode.previousSibling = childNode5.previousSibling;
            childNode5.previousSibling = childNode;
            this.firstChild = childNode;
            childNode.isFirstChild(true);
        } else {
            ChildNode childNode6 = childNode2.previousSibling;
            childNode.nextSibling = childNode2;
            childNode6.nextSibling = childNode;
            childNode2.previousSibling = childNode;
            childNode.previousSibling = childNode6;
        }
        changed();
        NodeListCache nodeListCache = this.fNodeListCache;
        if (nodeListCache != null) {
            int i = nodeListCache.fLength;
            if (i != -1) {
                nodeListCache.fLength = i + 1;
            }
            if (nodeListCache.fChildIndex != -1) {
                if (nodeListCache.fChild == childNode2) {
                    nodeListCache.fChild = childNode;
                } else {
                    nodeListCache.fChildIndex = -1;
                }
            }
        }
        this.ownerDocument.insertedNode(this, childNode, z);
        checkNormalizationAfterInsert(childNode);
        return node;
    }

    Node internalRemoveChild(Node node, boolean z) throws DOMException {
        ChildNode childNode;
        CoreDocumentImpl ownerDocument = ownerDocument();
        if (ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (node != null && node.getParentNode() != this) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
            }
        }
        ChildNode childNode2 = (ChildNode) node;
        ownerDocument.removingNode(this, childNode2, z);
        ChildNode previousSibling = childNode2.previousSibling();
        NodeListCache nodeListCache = this.fNodeListCache;
        if (nodeListCache != null) {
            int i = nodeListCache.fLength;
            if (i != -1) {
                nodeListCache.fLength = i - 1;
            }
            int i2 = nodeListCache.fChildIndex;
            if (i2 != -1) {
                if (nodeListCache.fChild == childNode2) {
                    nodeListCache.fChildIndex = i2 - 1;
                    nodeListCache.fChild = previousSibling;
                } else {
                    nodeListCache.fChildIndex = -1;
                }
            }
        }
        ChildNode childNode3 = this.firstChild;
        if (childNode2 == childNode3) {
            childNode2.isFirstChild(false);
            ChildNode childNode4 = childNode2.nextSibling;
            this.firstChild = childNode4;
            if (childNode4 != null) {
                childNode4.isFirstChild(true);
                childNode3 = this.firstChild;
                childNode = childNode2.previousSibling;
                childNode3.previousSibling = childNode;
            }
            childNode2.ownerNode = ownerDocument;
            childNode2.isOwned(false);
            childNode2.nextSibling = null;
            childNode2.previousSibling = null;
            changed();
            ownerDocument.removedNode(this, z);
            checkNormalizationAfterRemove(previousSibling);
            return childNode2;
        }
        childNode = childNode2.previousSibling;
        ChildNode childNode5 = childNode2.nextSibling;
        childNode.nextSibling = childNode5;
        if (childNode5 != null) {
            childNode5.previousSibling = childNode;
            childNode2.ownerNode = ownerDocument;
            childNode2.isOwned(false);
            childNode2.nextSibling = null;
            childNode2.previousSibling = null;
            changed();
            ownerDocument.removedNode(this, z);
            checkNormalizationAfterRemove(previousSibling);
            return childNode2;
        }
        childNode3.previousSibling = childNode;
        childNode2.ownerNode = ownerDocument;
        childNode2.isOwned(false);
        childNode2.nextSibling = null;
        childNode2.previousSibling = null;
        changed();
        ownerDocument.removedNode(this, z);
        checkNormalizationAfterRemove(previousSibling);
        return childNode2;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public boolean isEqualNode(Node node) {
        if (!super.isEqualNode(node)) {
            return false;
        }
        Node firstChild = getFirstChild();
        Node firstChild2 = node.getFirstChild();
        while (firstChild != null && firstChild2 != null) {
            if (!firstChild.isEqualNode(firstChild2)) {
                return false;
            }
            firstChild = firstChild.getNextSibling();
            firstChild2 = firstChild2.getNextSibling();
        }
        return firstChild == firstChild2;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.NodeList
    public Node item(int i) {
        return nodeListItem(i);
    }

    public final ChildNode lastChild() {
        ChildNode childNode = this.firstChild;
        if (childNode != null) {
            return childNode.previousSibling;
        }
        return null;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public void normalize() {
        if (isNormalized()) {
            return;
        }
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        for (ChildNode childNode = this.firstChild; childNode != null; childNode = childNode.nextSibling) {
            childNode.normalize();
        }
        isNormalized(true);
    }

    @Override // org.apache.xerces.dom.NodeImpl
    public CoreDocumentImpl ownerDocument() {
        return this.ownerDocument;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node removeChild(Node node) throws DOMException {
        return internalRemoveChild(node, false);
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node replaceChild(Node node, Node node2) throws DOMException {
        this.ownerDocument.replacingNode(this);
        internalInsertBefore(node, node2, true);
        if (node != node2) {
            internalRemoveChild(node2, true);
        }
        this.ownerDocument.replacedNode(this);
        return node2;
    }

    @Override // org.apache.xerces.dom.NodeImpl
    public void setOwnerDocument(CoreDocumentImpl coreDocumentImpl) {
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        super.setOwnerDocument(coreDocumentImpl);
        this.ownerDocument = coreDocumentImpl;
        for (ChildNode childNode = this.firstChild; childNode != null; childNode = childNode.nextSibling) {
            childNode.setOwnerDocument(coreDocumentImpl);
        }
    }

    @Override // org.apache.xerces.dom.NodeImpl
    public void setReadOnly(boolean z, boolean z2) {
        super.setReadOnly(z, z2);
        if (z2) {
            if (needsSyncChildren()) {
                synchronizeChildren();
            }
            for (ChildNode childNode = this.firstChild; childNode != null; childNode = childNode.nextSibling) {
                if (childNode.getNodeType() != 5) {
                    childNode.setReadOnly(z, true);
                }
            }
        }
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public void setTextContent(String str) throws DOMException {
        while (true) {
            Node firstChild = getFirstChild();
            if (firstChild == null) {
                break;
            } else {
                removeChild(firstChild);
            }
        }
        if (str == null || str.length() == 0) {
            return;
        }
        appendChild(ownerDocument().createTextNode(str));
    }

    public void synchronizeChildren() {
        needsSyncChildren(false);
    }

    public ParentNode(CoreDocumentImpl coreDocumentImpl) {
        super(coreDocumentImpl);
        this.firstChild = null;
        this.fNodeListCache = null;
        this.ownerDocument = coreDocumentImpl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.apache.xerces.dom.NodeImpl
    public void getTextContent(StringBuffer stringBuffer) throws DOMException {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (hasTextContent(firstChild)) {
                ((NodeImpl) firstChild).getTextContent(stringBuffer);
            }
        }
    }

    public final void lastChild(ChildNode childNode) {
        ChildNode childNode2 = this.firstChild;
        if (childNode2 != null) {
            childNode2.previousSibling = childNode;
        }
    }
}
