package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.XSSimpleTypeDecl;
import com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import org.w3c.dom.DOMException;

/* loaded from: classes10.dex */
public class AttrNSImpl extends AttrImpl {
    static final long serialVersionUID = -781906615369795414L;
    static final String xmlURI = "http://www.w3.org/XML/1998/namespace";
    static final String xmlnsURI = "http://www.w3.org/2000/xmlns/";
    protected String localName;
    protected String namespaceURI;

    public AttrNSImpl() {
    }

    private void setName(String str, String str2) {
        CoreDocumentImpl ownerDocument = ownerDocument();
        this.namespaceURI = str;
        if (str != null) {
            this.namespaceURI = str.length() == 0 ? null : str;
        }
        int indexOf = str2.indexOf(58);
        int lastIndexOf = str2.lastIndexOf(58);
        ownerDocument.checkNamespaceWF(str2, indexOf, lastIndexOf);
        if (indexOf >= 0) {
            String substring = str2.substring(0, indexOf);
            String substring2 = str2.substring(lastIndexOf + 1);
            this.localName = substring2;
            ownerDocument.checkQName(substring, substring2);
            ownerDocument.checkDOMNSErr(substring, str);
            return;
        }
        this.localName = str2;
        if (ownerDocument.errorChecking) {
            ownerDocument.checkQName(null, str2);
            if ((str2.equals("xmlns") && (str == null || !str.equals(NamespaceContext.XMLNS_URI))) || (str != null && str.equals(NamespaceContext.XMLNS_URI) && !str2.equals("xmlns"))) {
                throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
            }
        }
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

    @Override // com.sun.org.apache.xerces.internal.dom.AttrImpl, org.w3c.dom.TypeInfo
    public String getTypeName() {
        Object obj = this.type;
        if (obj != null) {
            return obj instanceof XSSimpleTypeDecl ? ((XSSimpleTypeDecl) obj).getName() : (String) obj;
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.AttrImpl, org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        Object obj = this.type;
        if (obj != null) {
            return obj instanceof XSSimpleTypeDecl ? ((XSSimpleTypeDecl) obj).getNamespace() : "http://www.w3.org/TR/REC-xml";
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.AttrImpl, org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        Object obj = this.type;
        if (obj == null || !(obj instanceof XSSimpleTypeDefinition)) {
            return false;
        }
        return ((XSSimpleTypeDecl) obj).isDOMDerivedFrom(str, str2, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void rename(String str, String str2) {
        if (needsSyncData()) {
            synchronizeData();
        }
        this.name = str2;
        setName(str, str2);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public void setPrefix(String str) throws DOMException {
        if (needsSyncData()) {
            synchronizeData();
        }
        if (ownerDocument().errorChecking) {
            if (isReadOnly()) {
                throw new DOMException((short) 7, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", XSLTErrorResources.NO_MODIFICATION_ALLOWED_ERR, null));
            }
            if (str != null && str.length() != 0) {
                if (!CoreDocumentImpl.isXMLName(str, ownerDocument().isXML11Version())) {
                    throw new DOMException((short) 5, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "INVALID_CHARACTER_ERR", null));
                }
                if (this.namespaceURI == null || str.indexOf(58) >= 0) {
                    throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
                }
                if (str.equals("xmlns")) {
                    if (!this.namespaceURI.equals("http://www.w3.org/2000/xmlns/")) {
                        throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
                    }
                } else if (str.equals("xml")) {
                    if (!this.namespaceURI.equals("http://www.w3.org/XML/1998/namespace")) {
                        throw new DOMException((short) 14, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NAMESPACE_ERR", null));
                    }
                } else if (this.name.equals("xmlns")) {
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

    public void setValues(CoreDocumentImpl coreDocumentImpl, String str, String str2, String str3) {
        AttrImpl.textNode = null;
        this.flags = (short) 0;
        isSpecified(true);
        hasStringValue(true);
        super.setOwnerDocument(coreDocumentImpl);
        this.localName = str3;
        this.namespaceURI = str;
        this.name = str2;
        this.value = null;
    }

    public AttrNSImpl(CoreDocumentImpl coreDocumentImpl, String str, String str2) {
        super(coreDocumentImpl, str2);
        setName(str, str2);
    }

    public AttrNSImpl(CoreDocumentImpl coreDocumentImpl, String str, String str2, String str3) {
        super(coreDocumentImpl, str2);
        this.localName = str3;
        this.namespaceURI = str;
    }

    public AttrNSImpl(CoreDocumentImpl coreDocumentImpl, String str) {
        super(coreDocumentImpl, str);
    }
}
