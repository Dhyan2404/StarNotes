package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xerces.internal.util.URI;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.w3c.dom.TypeInfo;

/* loaded from: classes10.dex */
public class ElementImpl extends ParentNode implements Element, TypeInfo {
    static final long serialVersionUID = 3717253516652722278L;
    protected AttributeMap attributes;
    protected String name;

    public ElementImpl(CoreDocumentImpl coreDocumentImpl, String str) {
        super(coreDocumentImpl);
        this.name = str;
        needsSyncData(true);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.ChildNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        ElementImpl elementImpl = (ElementImpl) super.cloneNode(z);
        AttributeMap attributeMap = this.attributes;
        if (attributeMap != null) {
            elementImpl.attributes = (AttributeMap) attributeMap.cloneMap(elementImpl);
        }
        return elementImpl;
    }

    public String getAttribute(String str) {
        Attr attr;
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        return (attributeMap == null || (attr = (Attr) attributeMap.getNamedItem(str)) == null) ? "" : attr.getValue();
    }

    public String getAttributeNS(String str, String str2) {
        Attr attr;
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        return (attributeMap == null || (attr = (Attr) attributeMap.getNamedItemNS(str, str2)) == null) ? "" : attr.getValue();
    }

    public Attr getAttributeNode(String str) {
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        if (attributeMap == null) {
            return null;
        }
        return (Attr) attributeMap.getNamedItem(str);
    }

    public Attr getAttributeNodeNS(String str, String str2) {
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        if (attributeMap == null) {
            return null;
        }
        return (Attr) attributeMap.getNamedItemNS(str, str2);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (this.attributes == null) {
            this.attributes = new AttributeMap(this, null);
        }
        return this.attributes;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getBaseURI() {
        Attr attr;
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        if (attributeMap != null && (attr = (Attr) attributeMap.getNamedItem("xml:base")) != null) {
            String nodeValue = attr.getNodeValue();
            if (nodeValue.length() != 0) {
                try {
                    return new URI(nodeValue).toString();
                } catch (URI.MalformedURIException unused) {
                    NodeImpl nodeImpl = this.ownerNode;
                    String baseURI = nodeImpl != null ? nodeImpl.getBaseURI() : null;
                    if (baseURI != null) {
                        try {
                            return new URI(new URI(baseURI), nodeValue).toString();
                        } catch (URI.MalformedURIException unused2) {
                            return null;
                        }
                    }
                    return null;
                }
            }
        }
        NodeImpl nodeImpl2 = this.ownerNode;
        String baseURI2 = nodeImpl2 != null ? nodeImpl2.getBaseURI() : null;
        if (baseURI2 != null) {
            try {
                return new URI(baseURI2).toString();
            } catch (URI.MalformedURIException unused3) {
            }
        }
        return null;
    }

    public NamedNodeMapImpl getDefaultAttributes() {
        ElementDefinitionImpl elementDefinitionImpl;
        DocumentTypeImpl documentTypeImpl = (DocumentTypeImpl) this.ownerDocument.getDoctype();
        if (documentTypeImpl == null || (elementDefinitionImpl = (ElementDefinitionImpl) documentTypeImpl.getElements().getNamedItem(getNodeName())) == null) {
            return null;
        }
        return (NamedNodeMapImpl) elementDefinitionImpl.getAttributes();
    }

    public NodeList getElementsByTagName(String str) {
        return new DeepNodeListImpl(this, str);
    }

    public NodeList getElementsByTagNameNS(String str, String str2) {
        return new DeepNodeListImpl(this, str, str2);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getNodeName() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.name;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 1;
    }

    @Override // org.w3c.dom.Element
    public TypeInfo getSchemaTypeInfo() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this;
    }

    @Override // org.w3c.dom.Element
    public String getTagName() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.name;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeName() {
        return null;
    }

    @Override // org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        return null;
    }

    public int getXercesAttribute(String str, String str2) {
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        if (attributeMap == null) {
            return -1;
        }
        return attributeMap.getNamedItemIndex(str, str2);
    }

    @Override // org.w3c.dom.Element
    public boolean hasAttribute(String str) {
        return getAttributeNode(str) != null;
    }

    @Override // org.w3c.dom.Element
    public boolean hasAttributeNS(String str, String str2) {
        return getAttributeNodeNS(str, str2) != null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public boolean hasAttributes() {
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        return (attributeMap == null || attributeMap.getLength() == 0) ? false : true;
    }

    @Override // org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public boolean isEqualNode(Node node) {
        if (!super.isEqualNode(node)) {
            return false;
        }
        boolean hasAttributes = hasAttributes();
        Element element = (Element) node;
        if (hasAttributes != element.hasAttributes()) {
            return false;
        }
        if (!hasAttributes) {
            return true;
        }
        NamedNodeMap attributes = getAttributes();
        NamedNodeMap attributes2 = element.getAttributes();
        int length = attributes.getLength();
        if (length != attributes2.getLength()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            Node item = attributes.item(i);
            if (item.getLocalName() == null) {
                Node namedItem = attributes2.getNamedItem(item.getNodeName());
                if (namedItem == null || !((NodeImpl) item).isEqualNode(namedItem)) {
                    return false;
                }
            } else {
                Node namedItemNS = attributes2.getNamedItemNS(item.getNamespaceURI(), item.getLocalName());
                if (namedItemNS == null || !((NodeImpl) item).isEqualNode(namedItemNS)) {
                    return false;
                }
            }
        }
        return true;
    }

    public void moveSpecifiedAttributes(ElementImpl elementImpl) {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (elementImpl.hasAttributes()) {
            if (this.attributes == null) {
                this.attributes = new AttributeMap(this, null);
            }
            this.attributes.moveSpecifiedAttributes(elementImpl.attributes);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public void normalize() {
        if (isNormalized()) {
            return;
        }
        if (needsSyncChildren()) {
            synchronizeChildren();
        }
        ChildNode childNode = this.firstChild;
        while (childNode != null) {
            ChildNode childNode2 = childNode.nextSibling;
            if (childNode.getNodeType() == 3) {
                if (childNode2 != null && childNode2.getNodeType() == 3) {
                    ((Text) childNode).appendData(childNode2.getNodeValue());
                    removeChild(childNode2);
                } else if (childNode.getNodeValue() == null || childNode.getNodeValue().length() == 0) {
                    removeChild(childNode);
                }
            } else if (childNode.getNodeType() == 1) {
                childNode.normalize();
            }
            childNode = childNode2;
        }
        if (this.attributes != null) {
            for (int i = 0; i < this.attributes.getLength(); i++) {
                this.attributes.item(i).normalize();
            }
        }
        isNormalized(true);
    }

    public void reconcileDefaultAttributes() {
        if (this.attributes != null) {
            this.attributes.reconcileDefaults(getDefaultAttributes());
        }
    }

    @Override // org.w3c.dom.Element
    public void removeAttribute(String str) {
        if (this.ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        if (attributeMap == null) {
            return;
        }
        attributeMap.safeRemoveNamedItem(str);
    }

    @Override // org.w3c.dom.Element
    public void removeAttributeNS(String str, String str2) {
        if (this.ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        if (attributeMap == null) {
            return;
        }
        attributeMap.safeRemoveNamedItemNS(str, str2);
    }

    @Override // org.w3c.dom.Element
    public Attr removeAttributeNode(Attr attr) throws DOMException {
        if (this.ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        if (attributeMap != null) {
            return (Attr) attributeMap.removeItem(attr, true);
        }
        throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void rename(String str) {
        if (needsSyncData()) {
            synchronizeData();
        }
        this.name = str;
        reconcileDefaultAttributes();
    }

    @Override // org.w3c.dom.Element
    public void setAttribute(String str, String str2) {
        if (this.ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        Attr attributeNode = getAttributeNode(str);
        if (attributeNode != null) {
            attributeNode.setNodeValue(str2);
            return;
        }
        Attr createAttribute = getOwnerDocument().createAttribute(str);
        if (this.attributes == null) {
            this.attributes = new AttributeMap(this, null);
        }
        createAttribute.setNodeValue(str2);
        this.attributes.setNamedItem(createAttribute);
    }

    @Override // org.w3c.dom.Element
    public void setAttributeNS(String str, String str2, String str3) {
        String substring;
        String substring2;
        if (this.ownerDocument.errorChecking && isReadOnly()) {
            throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
        }
        if (needsSyncData()) {
            synchronizeData();
        }
        int indexOf = str2.indexOf(58);
        if (indexOf < 0) {
            substring2 = str2;
            substring = null;
        } else {
            substring = str2.substring(0, indexOf);
            substring2 = str2.substring(indexOf + 1);
        }
        Attr attributeNodeNS = getAttributeNodeNS(str, substring2);
        if (attributeNodeNS == null) {
            Attr createAttributeNS = getOwnerDocument().createAttributeNS(str, str2);
            if (this.attributes == null) {
                this.attributes = new AttributeMap(this, null);
            }
            createAttributeNS.setNodeValue(str3);
            this.attributes.setNamedItemNS(createAttributeNS);
            return;
        }
        if (attributeNodeNS instanceof AttrNSImpl) {
            AttrNSImpl attrNSImpl = (AttrNSImpl) attributeNodeNS;
            if (substring != null) {
                substring2 = substring + ":" + substring2;
            }
            attrNSImpl.name = substring2;
        } else {
            attributeNodeNS = new AttrNSImpl((CoreDocumentImpl) getOwnerDocument(), str, str2, substring2);
            this.attributes.setNamedItemNS(attributeNodeNS);
        }
        attributeNodeNS.setNodeValue(str3);
    }

    @Override // org.w3c.dom.Element
    public Attr setAttributeNode(Attr attr) throws DOMException {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (this.ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (attr.getOwnerDocument() != this.ownerDocument) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        if (this.attributes == null) {
            this.attributes = new AttributeMap(this, null);
        }
        return (Attr) this.attributes.setNamedItem(attr);
    }

    @Override // org.w3c.dom.Element
    public Attr setAttributeNodeNS(Attr attr) throws DOMException {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (this.ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (attr.getOwnerDocument() != this.ownerDocument) {
                throw new DOMException((short) 4, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "WRONG_DOCUMENT_ERR", null));
            }
        }
        if (this.attributes == null) {
            this.attributes = new AttributeMap(this, null);
        }
        return (Attr) this.attributes.setNamedItemNS(attr);
    }

    @Override // org.w3c.dom.Element
    public void setIdAttribute(String str, boolean z) {
        if (needsSyncData()) {
            synchronizeData();
        }
        Attr attributeNode = getAttributeNode(str);
        if (attributeNode == null) {
            throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
        }
        if (this.ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (attributeNode.getOwnerElement() != this) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
            }
        }
        ((AttrImpl) attributeNode).isIdAttribute(z);
        if (z) {
            this.ownerDocument.putIdentifier(attributeNode.getValue(), this);
        } else {
            this.ownerDocument.removeIdentifier(attributeNode.getValue());
        }
    }

    @Override // org.w3c.dom.Element
    public void setIdAttributeNS(String str, String str2, boolean z) {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (str != null && str.length() == 0) {
            str = null;
        }
        Attr attributeNodeNS = getAttributeNodeNS(str, str2);
        if (attributeNodeNS == null) {
            throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
        }
        if (this.ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (attributeNodeNS.getOwnerElement() != this) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
            }
        }
        ((AttrImpl) attributeNodeNS).isIdAttribute(z);
        if (z) {
            this.ownerDocument.putIdentifier(attributeNodeNS.getValue(), this);
        } else {
            this.ownerDocument.removeIdentifier(attributeNodeNS.getValue());
        }
    }

    @Override // org.w3c.dom.Element
    public void setIdAttributeNode(Attr attr, boolean z) {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (this.ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (attr.getOwnerElement() != this) {
                throw new DOMException((short) 8, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_FOUND_ERR", null));
            }
        }
        ((AttrImpl) attr).isIdAttribute(z);
        if (z) {
            this.ownerDocument.putIdentifier(attr.getValue(), this);
        } else {
            this.ownerDocument.removeIdentifier(attr.getValue());
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl
    public void setOwnerDocument(CoreDocumentImpl coreDocumentImpl) {
        super.setOwnerDocument(coreDocumentImpl);
        AttributeMap attributeMap = this.attributes;
        if (attributeMap != null) {
            attributeMap.setOwnerDocument(coreDocumentImpl);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.NodeImpl
    public void setReadOnly(boolean z, boolean z2) {
        super.setReadOnly(z, z2);
        AttributeMap attributeMap = this.attributes;
        if (attributeMap != null) {
            attributeMap.setReadOnly(z, true);
        }
    }

    public int setXercesAttributeNode(Attr attr) {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (this.attributes == null) {
            this.attributes = new AttributeMap(this, null);
        }
        return this.attributes.addItem(attr);
    }

    public void setupDefaultAttributes() {
        NamedNodeMapImpl defaultAttributes = getDefaultAttributes();
        if (defaultAttributes != null) {
            this.attributes = new AttributeMap(this, defaultAttributes);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl
    public void synchronizeData() {
        needsSyncData(false);
        boolean mutationEvents = this.ownerDocument.getMutationEvents();
        this.ownerDocument.setMutationEvents(false);
        setupDefaultAttributes();
        this.ownerDocument.setMutationEvents(mutationEvents);
    }

    public ElementImpl() {
    }
}
