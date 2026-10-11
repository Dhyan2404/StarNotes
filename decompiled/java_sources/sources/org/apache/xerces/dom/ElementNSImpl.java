package org.apache.xerces.dom;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sunia.HTREnginev2.gon;
import org.apache.xerces.impl.p115dv.p116xs.XSSimpleTypeDecl;
import org.apache.xerces.impl.p117xs.XSComplexTypeDecl;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.xni.NamespaceContext;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;

/* loaded from: classes13.dex */
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

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public String getLocalName() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.localName;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public String getNamespaceURI() {
        if (needsSyncData()) {
            synchronizeData();
        }
        return this.namespaceURI;
    }

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
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

    @Override // org.apache.xerces.dom.ElementImpl, org.w3c.dom.TypeInfo
    public String getTypeName() {
        XSTypeDefinition xSTypeDefinition = this.type;
        if (xSTypeDefinition == null) {
            return null;
        }
        if (xSTypeDefinition instanceof XSSimpleTypeDecl) {
            return ((XSSimpleTypeDecl) xSTypeDefinition).getTypeName();
        }
        if (xSTypeDefinition instanceof XSComplexTypeDecl) {
            return ((XSComplexTypeDecl) xSTypeDefinition).getTypeName();
        }
        return null;
    }

    @Override // org.apache.xerces.dom.ElementImpl, org.w3c.dom.TypeInfo
    public String getTypeNamespace() {
        XSTypeDefinition xSTypeDefinition = this.type;
        if (xSTypeDefinition != null) {
            return xSTypeDefinition.getNamespace();
        }
        return null;
    }

    @Override // org.apache.xerces.dom.ElementImpl
    public Attr getXMLBaseAttribute() {
        return (Attr) this.attributes.getNamedItemNS("http://www.w3.org/XML/1998/namespace", gon.f71271X);
    }

    @Override // org.apache.xerces.dom.ElementImpl, org.w3c.dom.TypeInfo
    public boolean isDerivedFrom(String str, String str2, int i) {
        if (needsSyncData()) {
            synchronizeData();
        }
        XSTypeDefinition xSTypeDefinition = this.type;
        if (xSTypeDefinition == null) {
            return false;
        }
        if (xSTypeDefinition instanceof XSSimpleTypeDecl) {
            return ((XSSimpleTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i);
        }
        if (xSTypeDefinition instanceof XSComplexTypeDecl) {
            return ((XSComplexTypeDecl) xSTypeDefinition).isDOMDerivedFrom(str, str2, i);
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

    @Override // org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public void setPrefix(String str) throws DOMException {
        String str2;
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
            str2 = this.localName;
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append(":");
            stringBuffer.append(this.localName);
            str2 = stringBuffer.toString();
        }
        this.name = str2;
    }

    public void setType(XSTypeDefinition xSTypeDefinition) {
        this.type = xSTypeDefinition;
    }

    public ElementNSImpl(CoreDocumentImpl coreDocumentImpl, String str) {
        super(coreDocumentImpl, str);
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
}
