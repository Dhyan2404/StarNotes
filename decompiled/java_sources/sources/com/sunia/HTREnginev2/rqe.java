package com.sunia.HTREnginev2;

import javax.xml.transform.dom.DOMResult;
import org.apache.xerces.dom.AttrImpl;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.dom.ElementImpl;
import org.apache.xerces.dom.ElementNSImpl;
import org.apache.xerces.dom.PSVIAttrNSImpl;
import org.apache.xerces.dom.PSVIDocumentImpl;
import org.apache.xerces.dom.PSVIElementNSImpl;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

/* loaded from: classes13.dex */
public final class rqe implements pqe {

    /* renamed from: e */
    public final tqe f83369e;

    /* renamed from: f */
    public Document f83370f;

    /* renamed from: g */
    public CoreDocumentImpl f83371g;

    /* renamed from: h */
    public boolean f83372h;

    /* renamed from: i */
    public boolean f83373i;

    /* renamed from: j */
    public final QName f83374j = new QName();

    public rqe(tqe tqeVar) {
        this.f83369e = tqeVar;
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void cdata(CDATASection cDATASection) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f83373i) {
            return;
        }
        ((Element) this.f83369e.m57429h()).appendChild(this.f83370f.createTextNode(xMLString.toString()));
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        ElementPSVI elementPSVI;
        Node m57429h = this.f83369e.m57429h();
        if (augmentations == null || this.f83371g == null || (elementPSVI = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) == null) {
            return;
        }
        if (this.f83372h) {
            ((PSVIElementNSImpl) m57429h).setPSVI(elementPSVI);
        }
        XSTypeDefinition memberTypeDefinition = elementPSVI.getMemberTypeDefinition();
        if (memberTypeDefinition == null) {
            memberTypeDefinition = elementPSVI.getTypeDefinition();
        }
        ((ElementNSImpl) m57429h).setType(memberTypeDefinition);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        characters(xMLString, augmentations);
    }

    /* renamed from: o */
    public final boolean m57001o(AttrImpl attrImpl, AttributePSVI attributePSVI) {
        if (this.f83372h) {
            ((PSVIAttrNSImpl) attrImpl).setPSVI(attributePSVI);
        }
        XSTypeDefinition memberTypeDefinition = attributePSVI.getMemberTypeDefinition();
        if (memberTypeDefinition == null && (memberTypeDefinition = attributePSVI.getTypeDefinition()) == null) {
            return false;
        }
        attrImpl.setType(memberTypeDefinition);
        return ((XSSimpleType) memberTypeDefinition).isIDType();
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void setDOMResult(DOMResult dOMResult) {
        this.f83373i = false;
        if (dOMResult == null) {
            this.f83370f = null;
            this.f83371g = null;
            this.f83372h = false;
        } else {
            Node node = dOMResult.getNode();
            Document ownerDocument = node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument();
            this.f83370f = ownerDocument;
            this.f83371g = ownerDocument instanceof CoreDocumentImpl ? (CoreDocumentImpl) ownerDocument : null;
            this.f83372h = ownerDocument instanceof PSVIDocumentImpl;
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void setIgnoringCharacters(boolean z) {
        this.f83373i = z;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Element element = (Element) this.f83369e.m57429h();
        NamedNodeMap attributes = element.getAttributes();
        int length = attributes.getLength();
        if (this.f83371g != null) {
            for (int i = 0; i < length; i++) {
                AttrImpl attrImpl = (AttrImpl) attributes.item(i);
                AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_PSVI");
                if (attributePSVI != null && m57001o(attrImpl, attributePSVI)) {
                    ((ElementImpl) element).setIdAttributeNode(attrImpl, true);
                }
            }
        }
        int length2 = xMLAttributes.getLength();
        if (length2 > length) {
            if (this.f83371g == null) {
                while (length < length2) {
                    xMLAttributes.getName(length, this.f83374j);
                    QName qName2 = this.f83374j;
                    element.setAttributeNS(qName2.uri, qName2.rawname, xMLAttributes.getValue(length));
                    length++;
                }
                return;
            }
            while (length < length2) {
                xMLAttributes.getName(length, this.f83374j);
                CoreDocumentImpl coreDocumentImpl = this.f83371g;
                QName qName3 = this.f83374j;
                AttrImpl attrImpl2 = (AttrImpl) coreDocumentImpl.createAttributeNS(qName3.uri, qName3.rawname, qName3.localpart);
                attrImpl2.setValue(xMLAttributes.getValue(length));
                element.setAttributeNodeNS(attrImpl2);
                AttributePSVI attributePSVI2 = (AttributePSVI) xMLAttributes.getAugmentations(length).getItem("ATTRIBUTE_PSVI");
                if (attributePSVI2 != null && m57001o(attrImpl2, attributePSVI2)) {
                    ((ElementImpl) element).setIdAttributeNode(attrImpl2, true);
                }
                attrImpl2.setSpecified(false);
                length++;
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void characters(Text text) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void comment(Comment comment) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void doctypeDecl(DocumentType documentType) throws XNIException {
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void processingInstruction(ProcessingInstruction processingInstruction) throws XNIException {
    }
}
