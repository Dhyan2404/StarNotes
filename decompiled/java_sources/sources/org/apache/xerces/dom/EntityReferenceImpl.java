package org.apache.xerces.dom;

import org.apache.xerces.util.URI;
import org.w3c.dom.DocumentType;
import org.w3c.dom.EntityReference;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class EntityReferenceImpl extends ParentNode implements EntityReference {
    static final long serialVersionUID = -7381452955687102062L;
    protected String baseURI;
    protected String name;

    public EntityReferenceImpl(CoreDocumentImpl coreDocumentImpl, String str) {
        super(coreDocumentImpl);
        this.name = str;
        isReadOnly(true);
        needsSyncChildren(true);
    }

    @Override // org.apache.xerces.dom.ParentNode, org.apache.xerces.dom.ChildNode, org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        EntityReferenceImpl entityReferenceImpl = (EntityReferenceImpl) super.cloneNode(z);
        entityReferenceImpl.setReadOnly(true, z);
        return entityReferenceImpl;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public String getBaseURI() {
        NamedNodeMap entities;
        EntityImpl entityImpl;
        if (needsSyncData()) {
            synchronizeData();
        }
        String str = this.baseURI;
        if (str == null) {
            DocumentType doctype = getOwnerDocument().getDoctype();
            if (doctype != null && (entities = doctype.getEntities()) != null && (entityImpl = (EntityImpl) entities.getNamedItem(getNodeName())) != null) {
                return entityImpl.getBaseURI();
            }
        } else if (str != null && str.length() != 0) {
            try {
                return new URI(this.baseURI).toString();
            } catch (URI.MalformedURIException unused) {
                return null;
            }
        }
        return this.baseURI;
    }

    public String getEntityRefValue() {
        String nodeValue;
        String nodeValue2;
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        ChildNode childNode = this.firstChild;
        if (childNode == null) {
            return "";
        }
        if (childNode.getNodeType() != 5) {
            if (this.firstChild.getNodeType() == 3) {
                nodeValue = this.firstChild.getNodeValue();
            }
            return null;
        }
        nodeValue = ((EntityReferenceImpl) this.firstChild).getEntityRefValue();
        if (this.firstChild.nextSibling == null) {
            return nodeValue;
        }
        StringBuffer stringBuffer = new StringBuffer(nodeValue);
        ChildNode childNode2 = this.firstChild;
        while (true) {
            childNode2 = childNode2.nextSibling;
            if (childNode2 == null) {
                return stringBuffer.toString();
            }
            if (childNode2.getNodeType() != 5) {
                if (childNode2.getNodeType() != 3) {
                    break;
                }
                nodeValue2 = childNode2.getNodeValue();
            } else {
                nodeValue2 = ((EntityReferenceImpl) childNode2).getEntityRefValue();
            }
            stringBuffer.append(nodeValue2);
        }
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public String getNodeName() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.name;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 5;
    }

    public void setBaseURI(String str) {
        if (needsSyncData()) {
            synchronizeData();
        }
        this.baseURI = str;
    }

    @Override // org.apache.xerces.dom.ParentNode, org.apache.xerces.dom.NodeImpl
    public void setReadOnly(boolean z, boolean z2) {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (z2) {
            if (needsSyncChildren()) {
                synchronizeChildren();
            }
            for (ChildNode childNode = this.firstChild; childNode != null; childNode = childNode.nextSibling) {
                childNode.setReadOnly(z, true);
            }
        }
        isReadOnly(z);
    }

    @Override // org.apache.xerces.dom.ParentNode
    public void synchronizeChildren() {
        NamedNodeMap entities;
        EntityImpl entityImpl;
        needsSyncChildren(false);
        DocumentType doctype = getOwnerDocument().getDoctype();
        if (doctype == null || (entities = doctype.getEntities()) == null || (entityImpl = (EntityImpl) entities.getNamedItem(getNodeName())) == null) {
            return;
        }
        isReadOnly(false);
        for (Node firstChild = entityImpl.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            insertBefore(firstChild.cloneNode(true), null);
        }
        setReadOnly(true, true);
    }
}
