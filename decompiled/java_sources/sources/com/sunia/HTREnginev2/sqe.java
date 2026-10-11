package com.sunia.HTREnginev2;

import java.util.ArrayList;
import javax.xml.transform.dom.DOMResult;
import org.apache.xerces.dom.AttrImpl;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DocumentTypeImpl;
import org.apache.xerces.dom.ElementImpl;
import org.apache.xerces.dom.ElementNSImpl;
import org.apache.xerces.dom.EntityImpl;
import org.apache.xerces.dom.NotationImpl;
import org.apache.xerces.dom.PSVIAttrNSImpl;
import org.apache.xerces.dom.PSVIDocumentImpl;
import org.apache.xerces.dom.PSVIElementNSImpl;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.XSSimpleTypeDefinition;
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
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.Notation;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

/* loaded from: classes13.dex */
public final class sqe implements pqe {

    /* renamed from: o */
    public static final int[] f84449o;

    /* renamed from: e */
    public Document f84450e;

    /* renamed from: f */
    public CoreDocumentImpl f84451f;

    /* renamed from: g */
    public boolean f84452g;

    /* renamed from: h */
    public Node f84453h;

    /* renamed from: i */
    public Node f84454i;

    /* renamed from: j */
    public Node f84455j;

    /* renamed from: k */
    public Node f84456k;

    /* renamed from: m */
    public boolean f84458m;

    /* renamed from: l */
    public final ArrayList f84457l = new ArrayList();

    /* renamed from: n */
    public final QName f84459n = new QName();

    static {
        f84449o = r0;
        int[] iArr = {0, 442, 40, 0, 0, 442, 442, 0, 0, 1410, 0, 442, 0};
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void cdata(CDATASection cDATASection) throws XNIException {
        m57227o(this.f84450e.createCDATASection(cDATASection.getNodeValue()));
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.f84458m) {
            return;
        }
        m57227o(this.f84450e.createTextNode(xMLString.toString()));
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
        int size = this.f84457l.size();
        int i = 0;
        if (this.f84454i == null) {
            while (i < size) {
                this.f84453h.appendChild((Node) this.f84457l.get(i));
                i++;
            }
        } else {
            while (i < size) {
                this.f84453h.insertBefore((Node) this.f84457l.get(i), this.f84454i);
                i++;
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        ElementPSVI elementPSVI;
        if (augmentations != null && this.f84451f != null && (elementPSVI = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) != null) {
            if (this.f84452g) {
                ((PSVIElementNSImpl) this.f84455j).setPSVI(elementPSVI);
            }
            XSTypeDefinition memberTypeDefinition = elementPSVI.getMemberTypeDefinition();
            if (memberTypeDefinition == null) {
                memberTypeDefinition = elementPSVI.getTypeDefinition();
            }
            ((ElementNSImpl) this.f84455j).setType(memberTypeDefinition);
        }
        Node node = this.f84455j;
        if (node != this.f84456k) {
            this.f84455j = node.getParentNode();
        } else {
            this.f84455j = null;
            this.f84456k = null;
        }
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
    public final void m57227o(Node node) throws XNIException {
        Node node2 = this.f84455j;
        if (node2 != null) {
            node2.appendChild(node);
        } else {
            if ((f84449o[this.f84453h.getNodeType()] & (1 << node.getNodeType())) == 0) {
                throw new XNIException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "HIERARCHY_REQUEST_ERR", null));
            }
            this.f84457l.add(node);
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [org.w3c.dom.Document] */
    /* JADX WARN: Type inference failed for: r4v9, types: [org.w3c.dom.Document] */
    @Override // com.sunia.HTREnginev2.pqe
    public void setDOMResult(DOMResult dOMResult) {
        this.f84455j = null;
        this.f84456k = null;
        this.f84458m = false;
        this.f84457l.clear();
        if (dOMResult == null) {
            this.f84453h = null;
            this.f84454i = null;
            this.f84450e = null;
            this.f84451f = null;
            this.f84452g = false;
            return;
        }
        this.f84453h = dOMResult.getNode();
        this.f84454i = dOMResult.getNextSibling();
        CoreDocumentImpl ownerDocument = this.f84453h.getNodeType() == 9 ? (Document) this.f84453h : this.f84453h.getOwnerDocument();
        this.f84450e = ownerDocument;
        this.f84451f = ownerDocument instanceof CoreDocumentImpl ? ownerDocument : null;
        this.f84452g = ownerDocument instanceof PSVIDocumentImpl;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void setIgnoringCharacters(boolean z) {
        this.f84458m = z;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Element createElementNS;
        int length = xMLAttributes.getLength();
        CoreDocumentImpl coreDocumentImpl = this.f84451f;
        int i = 0;
        if (coreDocumentImpl == null) {
            createElementNS = this.f84450e.createElementNS(qName.uri, qName.rawname);
            while (i < length) {
                xMLAttributes.getName(i, this.f84459n);
                QName qName2 = this.f84459n;
                createElementNS.setAttributeNS(qName2.uri, qName2.rawname, xMLAttributes.getValue(i));
                i++;
            }
        } else {
            createElementNS = coreDocumentImpl.createElementNS(qName.uri, qName.rawname, qName.localpart);
            while (i < length) {
                xMLAttributes.getName(i, this.f84459n);
                CoreDocumentImpl coreDocumentImpl2 = this.f84451f;
                QName qName3 = this.f84459n;
                AttrImpl attrImpl = (AttrImpl) coreDocumentImpl2.createAttributeNS(qName3.uri, qName3.rawname, qName3.localpart);
                attrImpl.setValue(xMLAttributes.getValue(i));
                createElementNS.setAttributeNodeNS(attrImpl);
                AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_PSVI");
                if (attributePSVI != null) {
                    if (this.f84452g) {
                        ((PSVIAttrNSImpl) attrImpl).setPSVI(attributePSVI);
                    }
                    XSSimpleTypeDefinition memberTypeDefinition = attributePSVI.getMemberTypeDefinition();
                    if (memberTypeDefinition == null) {
                        XSTypeDefinition typeDefinition = attributePSVI.getTypeDefinition();
                        if (typeDefinition != null) {
                            attrImpl.setType(typeDefinition);
                            if (!((XSSimpleType) typeDefinition).isIDType()) {
                            }
                            ((ElementImpl) createElementNS).setIdAttributeNode(attrImpl, true);
                        }
                    } else {
                        attrImpl.setType(memberTypeDefinition);
                        if (!((XSSimpleType) memberTypeDefinition).isIDType()) {
                        }
                        ((ElementImpl) createElementNS).setIdAttributeNode(attrImpl, true);
                    }
                }
                attrImpl.setSpecified(xMLAttributes.isSpecified(i));
                i++;
            }
        }
        m57227o(createElementNS);
        this.f84455j = createElementNS;
        if (this.f84456k == null) {
            this.f84456k = createElementNS;
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
        m57227o(this.f84450e.createTextNode(text.getNodeValue()));
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void comment(Comment comment) throws XNIException {
        m57227o(this.f84450e.createComment(comment.getNodeValue()));
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void doctypeDecl(DocumentType documentType) throws XNIException {
        CoreDocumentImpl coreDocumentImpl = this.f84451f;
        if (coreDocumentImpl != null) {
            DocumentType createDocumentType = coreDocumentImpl.createDocumentType(documentType.getName(), documentType.getPublicId(), documentType.getSystemId());
            String internalSubset = documentType.getInternalSubset();
            if (internalSubset != null) {
                ((DocumentTypeImpl) createDocumentType).setInternalSubset(internalSubset);
            }
            NamedNodeMap entities = documentType.getEntities();
            NamedNodeMap entities2 = createDocumentType.getEntities();
            int length = entities.getLength();
            for (int i = 0; i < length; i++) {
                Entity entity = (Entity) entities.item(i);
                EntityImpl entityImpl = (EntityImpl) this.f84451f.createEntity(entity.getNodeName());
                entityImpl.setPublicId(entity.getPublicId());
                entityImpl.setSystemId(entity.getSystemId());
                entityImpl.setNotationName(entity.getNotationName());
                entities2.setNamedItem(entityImpl);
            }
            NamedNodeMap notations = documentType.getNotations();
            NamedNodeMap notations2 = createDocumentType.getNotations();
            int length2 = notations.getLength();
            for (int i2 = 0; i2 < length2; i2++) {
                Notation notation = (Notation) notations.item(i2);
                NotationImpl notationImpl = (NotationImpl) this.f84451f.createNotation(notation.getNodeName());
                notationImpl.setPublicId(notation.getPublicId());
                notationImpl.setSystemId(notation.getSystemId());
                notations2.setNamedItem(notationImpl);
            }
            m57227o(createDocumentType);
        }
    }

    @Override // com.sunia.HTREnginev2.pqe
    public void processingInstruction(ProcessingInstruction processingInstruction) throws XNIException {
        m57227o(this.f84450e.createProcessingInstruction(processingInstruction.getTarget(), processingInstruction.getData()));
    }
}
