package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.XSSimpleTypeDecl;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSComplexTypeDecl;
import com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.URI;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sunia.HTREnginev2.gon;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;

/* loaded from: classes10.dex */
public class ElementNSImpl extends ElementImpl {
    static final long serialVersionUID = -9142310625494392642L;
    static final String xmlURI = "http://www.w3.org/XML/1998/namespace";
    protected String localName;
    protected String namespaceURI;
    transient XSTypeDefinition type;

    public ElementNSImpl() {
    }

    private void setName(String str, String str2) {
        this.namespaceURI = str;
        if (str != null) {
            this.namespaceURI = str.length() == 0 ? null : str;
        }
        if (str2 == null) {
            throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
        }
        int indexOf = str2.indexOf(58);
        int lastIndexOf = str2.lastIndexOf(58);
        this.ownerDocument.checkNamespaceWF(str2, indexOf, lastIndexOf);
        if (indexOf >= 0) {
            String substring = str2.substring(0, indexOf);
            this.localName = str2.substring(lastIndexOf + 1);
            if (this.ownerDocument.errorChecking) {
                if (str == null || (substring.equals("xml") && !str.equals(NamespaceContext.XML_URI))) {
                    throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
                }
                this.ownerDocument.checkQName(substring, this.localName);
                this.ownerDocument.checkDOMNSErr(substring, str);
                return;
            }
            return;
        }
        this.localName = str2;
        CoreDocumentImpl coreDocumentImpl = this.ownerDocument;
        if (coreDocumentImpl.errorChecking) {
            coreDocumentImpl.checkQName(null, str2);
            if ((str2.equals("xmlns") && (str == null || !str.equals(NamespaceContext.XMLNS_URI))) || (str != null && str.equals(NamespaceContext.XMLNS_URI) && !str2.equals("xmlns"))) {
                throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getBaseURI() {
        Attr attr;
        if (needsSyncData()) {
            synchronizeData();
        }
        AttributeMap attributeMap = this.attributes;
        if (attributeMap != null && (attr = (Attr) attributeMap.getNamedItemNS("http://www.w3.org/XML/1998/namespace", gon.f71271X)) != null) {
            String nodeValue = attr.getNodeValue();
            if (nodeValue.length() != 0) {
                try {
                    return new URI(nodeValue).toString();
                } catch (URI.MalformedURIException unused) {
                    NodeImpl parentNode = this.parentNode() != null ? this.parentNode() : this.ownerNode;
                    String baseURI = parentNode != null ? parentNode.getBaseURI() : null;
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
        String baseURI2 = parentNode() != null ? parentNode().getBaseURI() : null;
        if (baseURI2 != null) {
            try {
                return new URI(baseURI2).toString();
            } catch (URI.MalformedURIException unused3) {
                return null;
            }
        }
        NodeImpl nodeImpl = this.ownerNode;
        String baseURI3 = nodeImpl != null ? nodeImpl.getBaseURI() : null;
        if (baseURI3 != null) {
            try {
                return new URI(baseURI3).toString();
            } catch (URI.MalformedURIException unused4) {
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getLocalName() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.localName;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getNamespaceURI() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.namespaceURI;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public String getPrefix() {
        if (needsSyncData()) {
            synchronizeData();
        }
        int indexOf = this.name.indexOf(58);
        if (indexOf < 0) {
            return null;
        }
        return this.name.substring(0, indexOf);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.TypeInfo
    public String getTypeName() {
        XSTypeDefinition xSTypeDefinition = this.type;
        if (xSTypeDefinition != null) {
            return xSTypeDefinition instanceof XSSimpleTypeDefinition ? ((XSSimpleTypeDecl) xSTypeDefinition).getTypeName() : ((XSComplexTypeDecl) xSTypeDefinition).getTypeName();
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        XSTypeDefinition xSTypeDefinition = this.type;
        if (xSTypeDefinition != null) {
            return xSTypeDefinition.getNamespace();
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        if (needsSyncData()) {
            synchronizeData();
        }
        XSTypeDefinition xSTypeDefinition = this.type;
        if (xSTypeDefinition != null) {
            return xSTypeDefinition instanceof XSSimpleTypeDefinition ? ((XSSimpleTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i) : ((XSComplexTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void rename(String str, String str2) {
        if (needsSyncData()) {
            synchronizeData();
        }
        this.name = str2;
        setName(str, str2);
        reconcileDefaultAttributes();
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public void setPrefix(String str) throws DOMException {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (this.ownerDocument.errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (str != null && str.length() != 0) {
                if (!CoreDocumentImpl.isXMLName(str, this.ownerDocument.isXML11Version())) {
                    throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
                }
                if (this.namespaceURI == null || str.indexOf(58) >= 0) {
                    throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
                }
                if (str.equals("xml") && !this.namespaceURI.equals("http://www.w3.org/XML/1998/namespace")) {
                    throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
                }
            }
        }
        if (str == null || str.length() == 0) {
            this.name = this.localName;
            return;
        }
        this.name = str + ":" + this.localName;
    }

    public void setType(XSTypeDefinition xSTypeDefinition) {
        this.type = xSTypeDefinition;
    }

    public void setValues(CoreDocumentImpl coreDocumentImpl, String str, String str2, String str3) {
        this.firstChild = null;
        this.previousSibling = null;
        this.nextSibling = null;
        this.fNodeListCache = null;
        this.attributes = null;
        this.flags = (short) 0;
        setOwnerDocument(coreDocumentImpl);
        needsSyncData(true);
        this.name = str2;
        this.localName = str3;
        this.namespaceURI = str;
    }

    public ElementNSImpl(CoreDocumentImpl coreDocumentImpl, String str, String str2) throws DOMException {
        super(coreDocumentImpl, str2);
        setName(str, str2);
    }

    public ElementNSImpl(CoreDocumentImpl coreDocumentImpl, String str, String str2, String str3) throws DOMException {
        super(coreDocumentImpl, str2);
        this.localName = str3;
        this.namespaceURI = str;
    }

    public ElementNSImpl(CoreDocumentImpl coreDocumentImpl, String str) {
        super(coreDocumentImpl, str);
    }
}
