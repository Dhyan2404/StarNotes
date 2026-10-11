package com.sun.org.apache.xerces.internal.parsers;

import com.sun.org.apache.xerces.internal.dom.AttrImpl;
import com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl;
import com.sun.org.apache.xerces.internal.dom.DOMErrorImpl;
import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.org.apache.xerces.internal.dom.DeferredDocumentImpl;
import com.sun.org.apache.xerces.internal.dom.DocumentImpl;
import com.sun.org.apache.xerces.internal.dom.DocumentTypeImpl;
import com.sun.org.apache.xerces.internal.dom.ElementDefinitionImpl;
import com.sun.org.apache.xerces.internal.dom.ElementImpl;
import com.sun.org.apache.xerces.internal.dom.ElementNSImpl;
import com.sun.org.apache.xerces.internal.dom.EntityImpl;
import com.sun.org.apache.xerces.internal.dom.EntityReferenceImpl;
import com.sun.org.apache.xerces.internal.dom.NotationImpl;
import com.sun.org.apache.xerces.internal.dom.PSVIAttrNSImpl;
import com.sun.org.apache.xerces.internal.dom.PSVIDocumentImpl;
import com.sun.org.apache.xerces.internal.dom.PSVIElementNSImpl;
import com.sun.org.apache.xerces.internal.dom.TextImpl;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.p056xs.AttributePSVI;
import com.sun.org.apache.xerces.internal.p056xs.ElementPSVI;
import com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.DOMErrorHandlerWrapper;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
import com.sunia.HTREnginev2.gon;
import java.util.Locale;
import java.util.Stack;
import org.apache.logging.log4j.util.Chars;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.EntityReference;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.w3c.dom.ls.LSParserFilter;

/* loaded from: classes10.dex */
public class AbstractDOMParser extends AbstractXMLDocumentParser {
    protected static final String CORE_DOCUMENT_CLASS_NAME = "com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl";
    protected static final String CREATE_CDATA_NODES_FEATURE = "http://apache.org/xml/features/create-cdata-nodes";
    protected static final String CREATE_ENTITY_REF_NODES = "http://apache.org/xml/features/dom/create-entity-ref-nodes";
    protected static final String CURRENT_ELEMENT_NODE = "http://apache.org/xml/properties/dom/current-element-node";
    private static final boolean DEBUG_BASEURI = false;
    private static final boolean DEBUG_EVENTS = false;
    protected static final String DEFAULT_DOCUMENT_CLASS_NAME = "com.sun.org.apache.xerces.internal.dom.DocumentImpl";
    protected static final String INCLUDE_COMMENTS_FEATURE = "http://apache.org/xml/features/include-comments";
    protected static final String INCLUDE_IGNORABLE_WHITESPACE = "http://apache.org/xml/features/dom/include-ignorable-whitespace";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String PSVI_DOCUMENT_CLASS_NAME = "com.sun.org.apache.xerces.internal.dom.PSVIDocumentImpl";
    private QName fAttrQName;
    protected Stack fBaseURIStack;
    protected boolean fCreateCDATANodes;
    protected boolean fCreateEntityRefNodes;
    protected CDATASection fCurrentCDATASection;
    protected int fCurrentCDATASectionIndex;
    protected EntityImpl fCurrentEntityDecl;
    protected Node fCurrentNode;
    protected int fCurrentNodeIndex;
    protected LSParserFilter fDOMFilter;
    protected boolean fDeferNodeExpansion;
    protected DeferredDocumentImpl fDeferredDocumentImpl;
    protected int fDeferredEntityDecl;
    protected Document fDocument;
    protected String fDocumentClassName;
    protected CoreDocumentImpl fDocumentImpl;
    protected int fDocumentIndex;
    protected DocumentType fDocumentType;
    protected int fDocumentTypeIndex;
    protected DOMErrorHandlerWrapper fErrorHandler;
    protected boolean fFilterReject;
    protected boolean fFirstChunk;
    protected boolean fInCDATASection;
    protected boolean fInDTD;
    protected boolean fInDTDExternalSubset;
    protected boolean fInEntityRef;
    protected boolean fIncludeComments;
    protected boolean fIncludeIgnorableWhitespace;
    protected StringBuffer fInternalSubset;
    protected boolean fNamespaceAware;
    protected final QName fRejectedElement;
    protected QName fRoot;
    protected Stack fSkippedElemStack;
    protected boolean fStorePSVI;
    protected final StringBuffer fStringBuffer;
    protected static final String DEFER_NODE_EXPANSION = "http://apache.org/xml/features/dom/defer-node-expansion";
    private static final String[] RECOGNIZED_FEATURES = {"http://xml.org/sax/features/namespaces", "http://apache.org/xml/features/dom/create-entity-ref-nodes", "http://apache.org/xml/features/include-comments", "http://apache.org/xml/features/create-cdata-nodes", "http://apache.org/xml/features/dom/include-ignorable-whitespace", DEFER_NODE_EXPANSION};
    protected static final String DOCUMENT_CLASS_NAME = "http://apache.org/xml/properties/dom/document-class-name";
    private static final String[] RECOGNIZED_PROPERTIES = {DOCUMENT_CLASS_NAME, "http://apache.org/xml/properties/dom/current-element-node"};
    public static final RuntimeException abort = new RuntimeException();

    public AbstractDOMParser(XMLParserConfiguration xMLParserConfiguration) {
        super(xMLParserConfiguration);
        this.fErrorHandler = null;
        this.fStringBuffer = new StringBuffer(50);
        this.fRoot = new QName();
        this.fFirstChunk = false;
        this.fFilterReject = false;
        this.fBaseURIStack = new Stack();
        this.fRejectedElement = new QName();
        this.fSkippedElemStack = null;
        this.fInEntityRef = false;
        this.fAttrQName = new QName();
        this.fDOMFilter = null;
        this.fConfiguration.addRecognizedFeatures(RECOGNIZED_FEATURES);
        this.fConfiguration.setFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes", true);
        this.fConfiguration.setFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace", true);
        this.fConfiguration.setFeature(DEFER_NODE_EXPANSION, true);
        this.fConfiguration.setFeature("http://apache.org/xml/features/include-comments", true);
        this.fConfiguration.setFeature("http://apache.org/xml/features/create-cdata-nodes", true);
        this.fConfiguration.addRecognizedProperties(RECOGNIZED_PROPERTIES);
        this.fConfiguration.setProperty(DOCUMENT_CLASS_NAME, DEFAULT_DOCUMENT_CLASS_NAME);
    }

    public void abort() {
        throw abort;
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        StringBuffer stringBuffer = this.fInternalSubset;
        if (stringBuffer != null && !this.fInDTDExternalSubset) {
            stringBuffer.append("<!ATTLIST ");
            this.fInternalSubset.append(str);
            this.fInternalSubset.append(' ');
            this.fInternalSubset.append(str2);
            this.fInternalSubset.append(' ');
            if (str3.equals("ENUMERATION")) {
                this.fInternalSubset.append('(');
                for (int i = 0; i < strArr.length; i++) {
                    if (i > 0) {
                        this.fInternalSubset.append('|');
                    }
                    this.fInternalSubset.append(strArr[i]);
                }
                this.fInternalSubset.append(')');
            } else {
                this.fInternalSubset.append(str3);
            }
            if (str4 != null) {
                this.fInternalSubset.append(' ');
                this.fInternalSubset.append(str4);
            }
            if (xMLString != null) {
                this.fInternalSubset.append(" '");
                for (int i2 = 0; i2 < xMLString.length; i2++) {
                    char c = xMLString.f64120ch[xMLString.offset + i2];
                    if (c == '\'') {
                        this.fInternalSubset.append("&apos;");
                    } else {
                        this.fInternalSubset.append(c);
                    }
                }
                this.fInternalSubset.append(Chars.QUOTE);
            }
            this.fInternalSubset.append(">\n");
        }
        DeferredDocumentImpl deferredDocumentImpl = this.fDeferredDocumentImpl;
        if (deferredDocumentImpl != null) {
            if (xMLString != null) {
                int lookupElementDefinition = deferredDocumentImpl.lookupElementDefinition(str);
                if (lookupElementDefinition == -1) {
                    lookupElementDefinition = this.fDeferredDocumentImpl.createDeferredElementDefinition(str);
                    this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, lookupElementDefinition);
                }
                int createDeferredAttribute = this.fDeferredDocumentImpl.createDeferredAttribute(str2, xMLString.toString(), false);
                if ("ID".equals(str3)) {
                    this.fDeferredDocumentImpl.setIdAttribute(createDeferredAttribute);
                }
                this.fDeferredDocumentImpl.appendChild(lookupElementDefinition, createDeferredAttribute);
                return;
            }
            return;
        }
        if (this.fDocumentImpl == null || xMLString == null) {
            return;
        }
        ElementDefinitionImpl elementDefinitionImpl = (ElementDefinitionImpl) ((DocumentTypeImpl) this.fDocumentType).getElements().getNamedItem(str);
        if (elementDefinitionImpl == null) {
            elementDefinitionImpl = this.fDocumentImpl.createElementDefinition(str);
            ((DocumentTypeImpl) this.fDocumentType).getElements().setNamedItem(elementDefinitionImpl);
        }
        boolean z = this.fNamespaceAware;
        AttrImpl attrImpl = z ? (AttrImpl) this.fDocumentImpl.createAttributeNS((str2.startsWith("xmlns:") || str2.equals("xmlns")) ? NamespaceContext.XMLNS_URI : null, str2) : (AttrImpl) this.fDocumentImpl.createAttribute(str2);
        attrImpl.setValue(xMLString.toString());
        attrImpl.setSpecified(false);
        attrImpl.setIdAttribute("ID".equals(str3));
        if (z) {
            elementDefinitionImpl.getAttributes().setNamedItemNS(attrImpl);
        } else {
            elementDefinitionImpl.getAttributes().setNamedItem(attrImpl);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fDeferNodeExpansion) {
            if (!this.fInCDATASection || !this.fCreateCDATANodes) {
                if (this.fInDTD || xMLString.length == 0) {
                    return;
                }
                this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, this.fDeferredDocumentImpl.createDeferredTextNode(xMLString.toString(), false));
                return;
            }
            if (this.fCurrentCDATASectionIndex != -1) {
                this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, this.fDeferredDocumentImpl.createDeferredTextNode(xMLString.toString(), false));
                return;
            } else {
                int createDeferredCDATASection = this.fDeferredDocumentImpl.createDeferredCDATASection(xMLString.toString());
                this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, createDeferredCDATASection);
                this.fCurrentCDATASectionIndex = createDeferredCDATASection;
                this.fCurrentNodeIndex = createDeferredCDATASection;
                return;
            }
        }
        if (this.fFilterReject) {
            return;
        }
        if (this.fInCDATASection && this.fCreateCDATANodes) {
            CDATASection cDATASection = this.fCurrentCDATASection;
            if (cDATASection != null) {
                cDATASection.appendData(xMLString.toString());
                return;
            }
            CDATASection createCDATASection = this.fDocument.createCDATASection(xMLString.toString());
            this.fCurrentCDATASection = createCDATASection;
            this.fCurrentNode.appendChild(createCDATASection);
            this.fCurrentNode = this.fCurrentCDATASection;
            return;
        }
        if (this.fInDTD || xMLString.length == 0) {
            return;
        }
        String xMLString2 = xMLString.toString();
        Node lastChild = this.fCurrentNode.getLastChild();
        if (lastChild == null || lastChild.getNodeType() != 3) {
            this.fFirstChunk = true;
            this.fCurrentNode.appendChild(this.fDocument.createTextNode(xMLString2));
            return;
        }
        if (this.fFirstChunk) {
            if (this.fDocumentImpl != null) {
                this.fStringBuffer.append(((TextImpl) lastChild).removeData());
            } else {
                Text text = (Text) lastChild;
                this.fStringBuffer.append(text.getData());
                text.setNodeValue(null);
            }
            this.fFirstChunk = false;
        }
        this.fStringBuffer.append(xMLString2);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fInDTD) {
            StringBuffer stringBuffer = this.fInternalSubset;
            if (stringBuffer == null || this.fInDTDExternalSubset) {
                return;
            }
            stringBuffer.append("<!-- ");
            this.fInternalSubset.append(xMLString.toString());
            this.fInternalSubset.append(" -->");
            return;
        }
        if (!this.fIncludeComments || this.fFilterReject) {
            return;
        }
        if (this.fDeferNodeExpansion) {
            this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, this.fDeferredDocumentImpl.createDeferredComment(xMLString.toString()));
            return;
        }
        Comment createComment = this.fDocument.createComment(xMLString.toString());
        setCharacterData(false);
        this.fCurrentNode.appendChild(createComment);
        LSParserFilter lSParserFilter = this.fDOMFilter;
        if (lSParserFilter == null || this.fInEntityRef || (lSParserFilter.getWhatToShow() & 128) == 0) {
            return;
        }
        short acceptNode = this.fDOMFilter.acceptNode(createComment);
        if (acceptNode == 2 || acceptNode == 3) {
            this.fCurrentNode.removeChild(createComment);
            this.fFirstChunk = true;
        } else if (acceptNode == 4) {
            throw abort;
        }
    }

    public Attr createAttrNode(QName qName) {
        if (!this.fNamespaceAware) {
            return this.fDocument.createAttribute(qName.rawname);
        }
        CoreDocumentImpl coreDocumentImpl = this.fDocumentImpl;
        return coreDocumentImpl != null ? coreDocumentImpl.createAttributeNS(qName.uri, qName.rawname, qName.localpart) : this.fDocument.createAttributeNS(qName.uri, qName.rawname);
    }

    public Element createElementNode(QName qName) {
        if (!this.fNamespaceAware) {
            return this.fDocument.createElement(qName.rawname);
        }
        CoreDocumentImpl coreDocumentImpl = this.fDocumentImpl;
        return coreDocumentImpl != null ? coreDocumentImpl.createElementNS(qName.uri, qName.rawname, qName.localpart) : this.fDocument.createElementNS(qName.uri, qName.rawname);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        if (this.fDeferNodeExpansion) {
            int createDeferredDocumentType = this.fDeferredDocumentImpl.createDeferredDocumentType(str, str2, str3);
            this.fDocumentTypeIndex = createDeferredDocumentType;
            this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, createDeferredDocumentType);
        } else {
            CoreDocumentImpl coreDocumentImpl = this.fDocumentImpl;
            if (coreDocumentImpl != null) {
                DocumentType createDocumentType = coreDocumentImpl.createDocumentType(str, str2, str3);
                this.fDocumentType = createDocumentType;
                this.fCurrentNode.appendChild(createDocumentType);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void elementDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        StringBuffer stringBuffer = this.fInternalSubset;
        if (stringBuffer == null || this.fInDTDExternalSubset) {
            return;
        }
        stringBuffer.append("<!ELEMENT ");
        this.fInternalSubset.append(str);
        this.fInternalSubset.append(' ');
        this.fInternalSubset.append(str2);
        this.fInternalSubset.append(">\n");
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endAttlist(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATASection = false;
        if (this.fDeferNodeExpansion) {
            if (this.fCurrentCDATASectionIndex != -1) {
                this.fCurrentNodeIndex = this.fDeferredDocumentImpl.getParentNode(this.fCurrentNodeIndex, false);
                this.fCurrentCDATASectionIndex = -1;
                return;
            }
            return;
        }
        if (this.fFilterReject || this.fCurrentCDATASection == null) {
            return;
        }
        LSParserFilter lSParserFilter = this.fDOMFilter;
        if (lSParserFilter != null && !this.fInEntityRef && (lSParserFilter.getWhatToShow() & 8) != 0) {
            short acceptNode = this.fDOMFilter.acceptNode(this.fCurrentCDATASection);
            if (acceptNode == 2 || acceptNode == 3) {
                Node parentNode = this.fCurrentNode.getParentNode();
                parentNode.removeChild(this.fCurrentCDATASection);
                this.fCurrentNode = parentNode;
                return;
            } else if (acceptNode == 4) {
                throw abort;
            }
        }
        this.fCurrentNode = this.fCurrentNode.getParentNode();
        this.fCurrentCDATASection = null;
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endConditional(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endDTD(Augmentations augmentations) throws XNIException {
        this.fInDTD = false;
        if (!this.fBaseURIStack.isEmpty()) {
            this.fBaseURIStack.pop();
        }
        StringBuffer stringBuffer = this.fInternalSubset;
        String stringBuffer2 = (stringBuffer == null || stringBuffer.length() <= 0) ? null : this.fInternalSubset.toString();
        if (this.fDeferNodeExpansion) {
            if (stringBuffer2 != null) {
                this.fDeferredDocumentImpl.setInternalSubset(this.fDocumentTypeIndex, stringBuffer2);
            }
        } else {
            if (this.fDocumentImpl == null || stringBuffer2 == null) {
                return;
            }
            ((DocumentTypeImpl) this.fDocumentType).setInternalSubset(stringBuffer2);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        if (this.fDeferNodeExpansion) {
            this.fCurrentNodeIndex = -1;
            return;
        }
        CoreDocumentImpl coreDocumentImpl = this.fDocumentImpl;
        if (coreDocumentImpl != null) {
            coreDocumentImpl.setStrictErrorChecking(true);
        }
        this.fCurrentNode = null;
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        ElementPSVI elementPSVI;
        if (this.fDeferNodeExpansion) {
            this.fCurrentNodeIndex = this.fDeferredDocumentImpl.getParentNode(this.fCurrentNodeIndex, false);
            return;
        }
        if (augmentations != null && this.fDocumentImpl != null && ((this.fNamespaceAware || this.fStorePSVI) && (elementPSVI = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) != null)) {
            if (this.fNamespaceAware) {
                XSTypeDefinition memberTypeDefinition = elementPSVI.getMemberTypeDefinition();
                if (memberTypeDefinition == null) {
                    memberTypeDefinition = elementPSVI.getTypeDefinition();
                }
                ((ElementNSImpl) this.fCurrentNode).setType(memberTypeDefinition);
            }
            if (this.fStorePSVI) {
                ((PSVIElementNSImpl) this.fCurrentNode).setPSVI(elementPSVI);
            }
        }
        if (this.fDOMFilter == null) {
            setCharacterData(false);
            this.fCurrentNode = this.fCurrentNode.getParentNode();
            return;
        }
        if (this.fFilterReject) {
            if (qName.equals(this.fRejectedElement)) {
                this.fFilterReject = false;
                return;
            }
            return;
        }
        if (!this.fSkippedElemStack.isEmpty() && this.fSkippedElemStack.peek().equals(qName)) {
            this.fSkippedElemStack.pop();
            return;
        }
        setCharacterData(false);
        if (!this.fRoot.equals(qName) && !this.fInEntityRef && (this.fDOMFilter.getWhatToShow() & 1) != 0) {
            short acceptNode = this.fDOMFilter.acceptNode(this.fCurrentNode);
            if (acceptNode == 2) {
                Node parentNode = this.fCurrentNode.getParentNode();
                parentNode.removeChild(this.fCurrentNode);
                this.fCurrentNode = parentNode;
                return;
            } else {
                if (acceptNode == 3) {
                    this.fFirstChunk = true;
                    Node parentNode2 = this.fCurrentNode.getParentNode();
                    NodeList childNodes = this.fCurrentNode.getChildNodes();
                    int length = childNodes.getLength();
                    for (int i = 0; i < length; i++) {
                        parentNode2.appendChild(childNodes.item(0));
                    }
                    parentNode2.removeChild(this.fCurrentNode);
                    this.fCurrentNode = parentNode2;
                    return;
                }
                if (acceptNode == 4) {
                    throw abort;
                }
            }
        }
        this.fCurrentNode = this.fCurrentNode.getParentNode();
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endExternalSubset(Augmentations augmentations) throws XNIException {
        this.fInDTDExternalSubset = false;
        this.fBaseURIStack.pop();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00b8  */
    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void endGeneralEntity(java.lang.String r8, com.sun.org.apache.xerces.internal.xni.Augmentations r9) throws com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.parsers.AbstractDOMParser.endGeneralEntity(java.lang.String, com.sun.org.apache.xerces.internal.xni.Augmentations):void");
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
        this.fBaseURIStack.pop();
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        StringBuffer stringBuffer = this.fInternalSubset;
        boolean z = true;
        if (stringBuffer != null && !this.fInDTDExternalSubset) {
            stringBuffer.append("<!ENTITY ");
            if (str.startsWith("%")) {
                this.fInternalSubset.append("% ");
                this.fInternalSubset.append(str.substring(1));
            } else {
                this.fInternalSubset.append(str);
            }
            this.fInternalSubset.append(' ');
            if (publicId != null) {
                this.fInternalSubset.append("PUBLIC '");
                this.fInternalSubset.append(publicId);
                this.fInternalSubset.append("' '");
            } else {
                this.fInternalSubset.append("SYSTEM '");
            }
            this.fInternalSubset.append(literalSystemId);
            this.fInternalSubset.append("'>\n");
        }
        if (str.startsWith("%")) {
            return;
        }
        DocumentType documentType = this.fDocumentType;
        if (documentType != null) {
            NamedNodeMap entities = documentType.getEntities();
            if (((EntityImpl) entities.getNamedItem(str)) == null) {
                EntityImpl entityImpl = (EntityImpl) this.fDocumentImpl.createEntity(str);
                entityImpl.setPublicId(publicId);
                entityImpl.setSystemId(literalSystemId);
                entityImpl.setBaseURI(xMLResourceIdentifier.getBaseSystemId());
                entities.setNamedItem(entityImpl);
            }
        }
        int i = this.fDocumentTypeIndex;
        if (i != -1) {
            int lastChild = this.fDeferredDocumentImpl.getLastChild(i, false);
            while (true) {
                if (lastChild == -1) {
                    z = false;
                    break;
                } else if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 6 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                    break;
                } else {
                    lastChild = this.fDeferredDocumentImpl.getRealPrevSibling(lastChild, false);
                }
            }
            if (z) {
                return;
            }
            this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, this.fDeferredDocumentImpl.createDeferredEntity(str, publicId, literalSystemId, null, xMLResourceIdentifier.getBaseSystemId()));
        }
    }

    public Document getDocument() {
        return this.fDocument;
    }

    public String getDocumentClassName() {
        return this.fDocumentClassName;
    }

    public final void handleBaseURI(Node node) {
        String baseURI;
        if (this.fDocumentImpl != null) {
            short nodeType = node.getNodeType();
            if (nodeType == 1) {
                if (this.fNamespaceAware) {
                    if (((Element) node).getAttributeNodeNS("http://www.w3.org/XML/1998/namespace", gon.f71271X) != null) {
                        return;
                    }
                } else if (((Element) node).getAttributeNode("xml:base") != null) {
                    return;
                }
                String baseURI2 = ((EntityReferenceImpl) this.fCurrentNode).getBaseURI();
                if (baseURI2 == null || baseURI2.equals(this.fDocumentImpl.getDocumentURI())) {
                    return;
                }
                if (this.fNamespaceAware) {
                    ((Element) node).setAttributeNS("http://www.w3.org/XML/1998/namespace", gon.f71271X, baseURI2);
                    return;
                } else {
                    ((Element) node).setAttribute("xml:base", baseURI2);
                    return;
                }
            }
            if (nodeType != 7 || (baseURI = ((EntityReferenceImpl) this.fCurrentNode).getBaseURI()) == null || this.fErrorHandler == null) {
                return;
            }
            DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
            dOMErrorImpl.fType = "pi-base-uri-not-preserved";
            dOMErrorImpl.fRelatedData = baseURI;
            dOMErrorImpl.fSeverity = (short) 1;
            this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (!this.fIncludeIgnorableWhitespace || this.fFilterReject) {
            return;
        }
        if (this.fDeferNodeExpansion) {
            this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, this.fDeferredDocumentImpl.createDeferredTextNode(xMLString.toString(), true));
            return;
        }
        Node lastChild = this.fCurrentNode.getLastChild();
        if (lastChild != null && lastChild.getNodeType() == 3) {
            ((Text) lastChild).appendData(xMLString.toString());
            return;
        }
        Text createTextNode = this.fDocument.createTextNode(xMLString.toString());
        if (this.fDocumentImpl != null) {
            ((TextImpl) createTextNode).setIgnorableWhitespace(true);
        }
        this.fCurrentNode.appendChild(createTextNode);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void internalEntityDecl(String str, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        StringBuffer stringBuffer = this.fInternalSubset;
        boolean z = true;
        if (stringBuffer != null && !this.fInDTDExternalSubset) {
            stringBuffer.append("<!ENTITY ");
            if (str.startsWith("%")) {
                this.fInternalSubset.append("% ");
                this.fInternalSubset.append(str.substring(1));
            } else {
                this.fInternalSubset.append(str);
            }
            this.fInternalSubset.append(' ');
            String xMLString3 = xMLString2.toString();
            char c = Chars.QUOTE;
            boolean z2 = xMLString3.indexOf(39) == -1;
            this.fInternalSubset.append(z2 ? '\'' : '\"');
            this.fInternalSubset.append(xMLString3);
            StringBuffer stringBuffer2 = this.fInternalSubset;
            if (!z2) {
                c = '\"';
            }
            stringBuffer2.append(c);
            this.fInternalSubset.append(">\n");
        }
        if (str.startsWith("%")) {
            return;
        }
        DocumentType documentType = this.fDocumentType;
        if (documentType != null) {
            NamedNodeMap entities = documentType.getEntities();
            if (((EntityImpl) entities.getNamedItem(str)) == null) {
                EntityImpl entityImpl = (EntityImpl) this.fDocumentImpl.createEntity(str);
                entityImpl.setBaseURI((String) this.fBaseURIStack.peek());
                entities.setNamedItem(entityImpl);
            }
        }
        int i = this.fDocumentTypeIndex;
        if (i != -1) {
            int lastChild = this.fDeferredDocumentImpl.getLastChild(i, false);
            while (true) {
                if (lastChild == -1) {
                    z = false;
                    break;
                } else if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 6 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                    break;
                } else {
                    lastChild = this.fDeferredDocumentImpl.getRealPrevSibling(lastChild, false);
                }
            }
            if (z) {
                return;
            }
            this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, this.fDeferredDocumentImpl.createDeferredEntity(str, null, null, null, (String) this.fBaseURIStack.peek()));
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        DocumentType documentType;
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        StringBuffer stringBuffer = this.fInternalSubset;
        if (stringBuffer != null && !this.fInDTDExternalSubset) {
            stringBuffer.append("<!NOTATION ");
            this.fInternalSubset.append(str);
            if (publicId != null) {
                this.fInternalSubset.append(" PUBLIC '");
                this.fInternalSubset.append(publicId);
                if (literalSystemId != null) {
                    this.fInternalSubset.append("' '");
                    this.fInternalSubset.append(literalSystemId);
                }
            } else {
                this.fInternalSubset.append(" SYSTEM '");
                this.fInternalSubset.append(literalSystemId);
            }
            this.fInternalSubset.append("'>\n");
        }
        if (this.fDocumentImpl != null && (documentType = this.fDocumentType) != null) {
            NamedNodeMap notations = documentType.getNotations();
            if (notations.getNamedItem(str) == null) {
                NotationImpl notationImpl = (NotationImpl) this.fDocumentImpl.createNotation(str);
                notationImpl.setPublicId(publicId);
                notationImpl.setSystemId(literalSystemId);
                notationImpl.setBaseURI(xMLResourceIdentifier.getBaseSystemId());
                notations.setNamedItem(notationImpl);
            }
        }
        int i = this.fDocumentTypeIndex;
        if (i != -1) {
            boolean z = false;
            int lastChild = this.fDeferredDocumentImpl.getLastChild(i, false);
            while (true) {
                if (lastChild != -1) {
                    if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 12 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                        z = true;
                        break;
                    }
                    lastChild = this.fDeferredDocumentImpl.getPrevSibling(lastChild, false);
                } else {
                    break;
                }
            }
            if (z) {
                return;
            }
            this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, this.fDeferredDocumentImpl.createDeferredNotation(str, publicId, literalSystemId, xMLResourceIdentifier.getBaseSystemId()));
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fInDTD) {
            StringBuffer stringBuffer = this.fInternalSubset;
            if (stringBuffer == null || this.fInDTDExternalSubset) {
                return;
            }
            stringBuffer.append("<?");
            this.fInternalSubset.append(str);
            this.fInternalSubset.append(' ');
            this.fInternalSubset.append(xMLString.toString());
            this.fInternalSubset.append("?>");
            return;
        }
        if (this.fDeferNodeExpansion) {
            this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, this.fDeferredDocumentImpl.createDeferredProcessingInstruction(str, xMLString.toString()));
            return;
        }
        if (this.fFilterReject) {
            return;
        }
        ProcessingInstruction createProcessingInstruction = this.fDocument.createProcessingInstruction(str, xMLString.toString());
        setCharacterData(false);
        this.fCurrentNode.appendChild(createProcessingInstruction);
        LSParserFilter lSParserFilter = this.fDOMFilter;
        if (lSParserFilter == null || this.fInEntityRef || (lSParserFilter.getWhatToShow() & 64) == 0) {
            return;
        }
        short acceptNode = this.fDOMFilter.acceptNode(createProcessingInstruction);
        if (acceptNode == 2 || acceptNode == 3) {
            this.fCurrentNode.removeChild(createProcessingInstruction);
            this.fFirstChunk = true;
        } else if (acceptNode == 4) {
            throw abort;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.parsers.XMLParser
    public void reset() throws XNIException {
        super.reset();
        this.fCreateEntityRefNodes = this.fConfiguration.getFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes");
        this.fIncludeIgnorableWhitespace = this.fConfiguration.getFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace");
        this.fDeferNodeExpansion = this.fConfiguration.getFeature(DEFER_NODE_EXPANSION);
        this.fNamespaceAware = this.fConfiguration.getFeature("http://xml.org/sax/features/namespaces");
        this.fIncludeComments = this.fConfiguration.getFeature("http://apache.org/xml/features/include-comments");
        this.fCreateCDATANodes = this.fConfiguration.getFeature("http://apache.org/xml/features/create-cdata-nodes");
        setDocumentClassName((String) this.fConfiguration.getProperty(DOCUMENT_CLASS_NAME));
        this.fDocument = null;
        this.fDocumentImpl = null;
        this.fStorePSVI = false;
        this.fDocumentType = null;
        this.fDocumentTypeIndex = -1;
        this.fDeferredDocumentImpl = null;
        this.fCurrentNode = null;
        this.fStringBuffer.setLength(0);
        this.fRoot.clear();
        this.fInDTD = false;
        this.fInDTDExternalSubset = false;
        this.fInCDATASection = false;
        this.fFirstChunk = false;
        this.fCurrentCDATASection = null;
        this.fCurrentCDATASectionIndex = -1;
        this.fBaseURIStack.removeAllElements();
    }

    public void setCharacterData(boolean z) {
        this.fFirstChunk = z;
        Node lastChild = this.fCurrentNode.getLastChild();
        if (lastChild != null) {
            if (this.fStringBuffer.length() > 0) {
                if (lastChild.getNodeType() == 3) {
                    if (this.fDocumentImpl != null) {
                        ((TextImpl) lastChild).replaceData(this.fStringBuffer.toString());
                    } else {
                        ((Text) lastChild).setData(this.fStringBuffer.toString());
                    }
                }
                this.fStringBuffer.setLength(0);
            }
            if (this.fDOMFilter == null || this.fInEntityRef || lastChild.getNodeType() != 3 || (this.fDOMFilter.getWhatToShow() & 4) == 0) {
                return;
            }
            short acceptNode = this.fDOMFilter.acceptNode(lastChild);
            if (acceptNode == 2 || acceptNode == 3) {
                this.fCurrentNode.removeChild(lastChild);
            } else if (acceptNode == 4) {
                throw abort;
            }
        }
    }

    public void setDocumentClassName(String str) {
        if (str == null) {
            str = DEFAULT_DOCUMENT_CLASS_NAME;
        }
        if (!str.equals(DEFAULT_DOCUMENT_CLASS_NAME) && !str.equals(PSVI_DOCUMENT_CLASS_NAME)) {
            try {
                if (!Document.class.isAssignableFrom(ObjectFactory.findProviderClass(str, ObjectFactory.findClassLoader(), true))) {
                    throw new IllegalArgumentException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "InvalidDocumentClassName", new Object[]{str}));
                }
            } catch (ClassNotFoundException unused) {
                throw new IllegalArgumentException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "MissingDocumentClassName", new Object[]{str}));
            }
        }
        this.fDocumentClassName = str;
        if (str.equals(DEFAULT_DOCUMENT_CLASS_NAME)) {
            return;
        }
        this.fDeferNodeExpansion = false;
    }

    public void setLocale(Locale locale) {
        this.fConfiguration.setLocale(locale);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startAttlist(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATASection = true;
        if (this.fDeferNodeExpansion || this.fFilterReject || !this.fCreateCDATANodes) {
            return;
        }
        setCharacterData(false);
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startConditional(short s, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
        this.fInDTD = true;
        if (xMLLocator != null) {
            this.fBaseURIStack.push(xMLLocator.getBaseSystemId());
        }
        if (this.fDeferNodeExpansion || this.fDocumentImpl != null) {
            this.fInternalSubset = new StringBuffer(1024);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        if (this.fDeferNodeExpansion) {
            DeferredDocumentImpl deferredDocumentImpl = new DeferredDocumentImpl(this.fNamespaceAware);
            this.fDeferredDocumentImpl = deferredDocumentImpl;
            this.fDocument = deferredDocumentImpl;
            this.fDocumentIndex = deferredDocumentImpl.createDeferredDocument();
            this.fDeferredDocumentImpl.setInputEncoding(str);
            this.fDeferredDocumentImpl.setDocumentURI(xMLLocator.getExpandedSystemId());
            this.fCurrentNodeIndex = this.fDocumentIndex;
            return;
        }
        if (this.fDocumentClassName.equals(DEFAULT_DOCUMENT_CLASS_NAME)) {
            DocumentImpl documentImpl = new DocumentImpl();
            this.fDocument = documentImpl;
            DocumentImpl documentImpl2 = documentImpl;
            this.fDocumentImpl = documentImpl2;
            documentImpl2.setStrictErrorChecking(false);
            this.fDocumentImpl.setInputEncoding(str);
            this.fDocumentImpl.setDocumentURI(xMLLocator.getExpandedSystemId());
        } else if (this.fDocumentClassName.equals(PSVI_DOCUMENT_CLASS_NAME)) {
            PSVIDocumentImpl pSVIDocumentImpl = new PSVIDocumentImpl();
            this.fDocument = pSVIDocumentImpl;
            PSVIDocumentImpl pSVIDocumentImpl2 = pSVIDocumentImpl;
            this.fDocumentImpl = pSVIDocumentImpl2;
            this.fStorePSVI = true;
            pSVIDocumentImpl2.setStrictErrorChecking(false);
            this.fDocumentImpl.setInputEncoding(str);
            this.fDocumentImpl.setDocumentURI(xMLLocator.getExpandedSystemId());
        } else {
            try {
                ClassLoader findClassLoader = ObjectFactory.findClassLoader();
                Class<?> findProviderClass = ObjectFactory.findProviderClass(this.fDocumentClassName, findClassLoader, true);
                this.fDocument = (Document) findProviderClass.newInstance();
                if (ObjectFactory.findProviderClass(CORE_DOCUMENT_CLASS_NAME, findClassLoader, true).isAssignableFrom(findProviderClass)) {
                    this.fDocumentImpl = (CoreDocumentImpl) this.fDocument;
                    if (ObjectFactory.findProviderClass(PSVI_DOCUMENT_CLASS_NAME, findClassLoader, true).isAssignableFrom(findProviderClass)) {
                        this.fStorePSVI = true;
                    }
                    this.fDocumentImpl.setStrictErrorChecking(false);
                    this.fDocumentImpl.setInputEncoding(str);
                    if (xMLLocator != null) {
                        this.fDocumentImpl.setDocumentURI(xMLLocator.getExpandedSystemId());
                    }
                }
            } catch (ClassNotFoundException unused) {
            } catch (Exception unused2) {
                throw new RuntimeException(DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "CannotCreateDocumentClass", new Object[]{this.fDocumentClassName}));
            }
        }
        this.fCurrentNode = this.fDocument;
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        Object obj;
        boolean equals;
        boolean z;
        ElementPSVI elementPSVI;
        ElementPSVI elementPSVI2;
        String str;
        boolean z2;
        if (this.fDeferNodeExpansion) {
            if (augmentations == null || (elementPSVI = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) == null) {
                obj = null;
            } else {
                obj = elementPSVI.getMemberTypeDefinition();
                if (obj == null) {
                    obj = elementPSVI.getTypeDefinition();
                }
            }
            int createDeferredElement = this.fDeferredDocumentImpl.createDeferredElement(this.fNamespaceAware ? qName.uri : null, qName.rawname, obj);
            int length = xMLAttributes.getLength();
            for (int i = 0; i < length; i++) {
                AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_PSVI");
                if (attributePSVI == null || !this.fNamespaceAware) {
                    if (Boolean.TRUE.equals(xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_DECLARED"))) {
                        obj = xMLAttributes.getType(i);
                        equals = "ID".equals(obj);
                        z = equals;
                    }
                    z = false;
                } else {
                    obj = attributePSVI.getMemberTypeDefinition();
                    if (obj == null) {
                        obj = attributePSVI.getTypeDefinition();
                        if (obj != null) {
                            equals = ((XSSimpleType) obj).isIDType();
                        }
                        z = false;
                    } else {
                        equals = ((XSSimpleType) obj).isIDType();
                    }
                    z = equals;
                }
                this.fDeferredDocumentImpl.setDeferredAttribute(createDeferredElement, xMLAttributes.getQName(i), xMLAttributes.getURI(i), xMLAttributes.getValue(i), xMLAttributes.isSpecified(i), z, obj);
            }
            this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, createDeferredElement);
            this.fCurrentNodeIndex = createDeferredElement;
            return;
        }
        if (this.fFilterReject) {
            return;
        }
        Element createElementNode = createElementNode(qName);
        int length2 = xMLAttributes.getLength();
        for (int i2 = 0; i2 < length2; i2++) {
            xMLAttributes.getName(i2, this.fAttrQName);
            Attr createAttrNode = createAttrNode(this.fAttrQName);
            String value = xMLAttributes.getValue(i2);
            AttributePSVI attributePSVI2 = (AttributePSVI) xMLAttributes.getAugmentations(i2).getItem("ATTRIBUTE_PSVI");
            if (this.fStorePSVI && attributePSVI2 != null) {
                ((PSVIAttrNSImpl) createAttrNode).setPSVI(attributePSVI2);
            }
            createAttrNode.setValue(value);
            createElementNode.setAttributeNode(createAttrNode);
            if (this.fDocumentImpl != null) {
                AttrImpl attrImpl = (AttrImpl) createAttrNode;
                if (attributePSVI2 == null || !this.fNamespaceAware) {
                    if (Boolean.TRUE.equals(xMLAttributes.getAugmentations(i2).getItem("ATTRIBUTE_DECLARED"))) {
                        str = xMLAttributes.getType(i2);
                        z2 = "ID".equals(str);
                    } else {
                        str = null;
                        z2 = false;
                    }
                    attrImpl.setType(str);
                } else {
                    XSSimpleTypeDefinition memberTypeDefinition = attributePSVI2.getMemberTypeDefinition();
                    if (memberTypeDefinition == null) {
                        XSTypeDefinition typeDefinition = attributePSVI2.getTypeDefinition();
                        if (typeDefinition != null) {
                            z2 = ((XSSimpleType) typeDefinition).isIDType();
                            attrImpl.setType(typeDefinition);
                        } else {
                            z2 = false;
                        }
                    } else {
                        boolean isIDType = ((XSSimpleType) memberTypeDefinition).isIDType();
                        attrImpl.setType(memberTypeDefinition);
                        z2 = isIDType;
                    }
                }
                if (z2) {
                    ((ElementImpl) createElementNode).setIdAttributeNode(createAttrNode, true);
                }
                attrImpl.setSpecified(xMLAttributes.isSpecified(i2));
            }
        }
        setCharacterData(false);
        if (augmentations != null && (elementPSVI2 = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) != null && this.fNamespaceAware) {
            XSTypeDefinition memberTypeDefinition2 = elementPSVI2.getMemberTypeDefinition();
            if (memberTypeDefinition2 == null) {
                memberTypeDefinition2 = elementPSVI2.getTypeDefinition();
            }
            ((ElementNSImpl) createElementNode).setType(memberTypeDefinition2);
        }
        LSParserFilter lSParserFilter = this.fDOMFilter;
        if (lSParserFilter != null && !this.fInEntityRef) {
            QName qName2 = this.fRoot;
            if (qName2.rawname == null) {
                qName2.setValues(qName);
            } else {
                short startElement = lSParserFilter.startElement(createElementNode);
                if (startElement == 2) {
                    this.fFilterReject = true;
                    this.fRejectedElement.setValues(qName);
                    return;
                } else if (startElement == 3) {
                    this.fSkippedElemStack.push(qName.clone());
                    return;
                } else if (startElement == 4) {
                    throw abort;
                }
            }
        }
        this.fCurrentNode.appendChild(createElementNode);
        this.fCurrentNode = createElementNode;
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        this.fBaseURIStack.push(xMLResourceIdentifier.getBaseSystemId());
        this.fInDTDExternalSubset = true;
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (this.fDeferNodeExpansion) {
            int createDeferredEntityReference = this.fDeferredDocumentImpl.createDeferredEntityReference(str, xMLResourceIdentifier.getExpandedSystemId());
            int i = this.fDocumentTypeIndex;
            if (i != -1) {
                int lastChild = this.fDeferredDocumentImpl.getLastChild(i, false);
                while (true) {
                    if (lastChild != -1) {
                        if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 6 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                            this.fDeferredEntityDecl = lastChild;
                            this.fDeferredDocumentImpl.setInputEncoding(lastChild, str2);
                            break;
                        }
                        lastChild = this.fDeferredDocumentImpl.getRealPrevSibling(lastChild, false);
                    } else {
                        break;
                    }
                }
            }
            this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, createDeferredEntityReference);
            this.fCurrentNodeIndex = createDeferredEntityReference;
            return;
        }
        if (this.fFilterReject) {
            return;
        }
        setCharacterData(true);
        EntityReference createEntityReference = this.fDocument.createEntityReference(str);
        if (this.fDocumentImpl != null) {
            EntityReferenceImpl entityReferenceImpl = (EntityReferenceImpl) createEntityReference;
            entityReferenceImpl.setBaseURI(xMLResourceIdentifier.getExpandedSystemId());
            DocumentType documentType = this.fDocumentType;
            if (documentType != null) {
                EntityImpl entityImpl = (EntityImpl) documentType.getEntities().getNamedItem(str);
                this.fCurrentEntityDecl = entityImpl;
                if (entityImpl != null) {
                    entityImpl.setInputEncoding(str2);
                }
            }
            entityReferenceImpl.needsSyncChildren(false);
        }
        this.fInEntityRef = true;
        this.fCurrentNode.appendChild(createEntityReference);
        this.fCurrentNode = createEntityReference;
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        this.fBaseURIStack.push(xMLResourceIdentifier.getExpandedSystemId());
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
        if (this.fInDTD) {
            return;
        }
        if (this.fDeferNodeExpansion) {
            int i = this.fDeferredEntityDecl;
            if (i != -1) {
                this.fDeferredDocumentImpl.setEntityInfo(i, str, str2);
                return;
            }
            return;
        }
        EntityImpl entityImpl = this.fCurrentEntityDecl;
        if (entityImpl == null || this.fFilterReject) {
            return;
        }
        entityImpl.setXmlEncoding(str2);
        if (str != null) {
            this.fCurrentEntityDecl.setXmlVersion(str);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDTDHandler
    public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        StringBuffer stringBuffer = this.fInternalSubset;
        if (stringBuffer != null && !this.fInDTDExternalSubset) {
            stringBuffer.append("<!ENTITY ");
            this.fInternalSubset.append(str);
            this.fInternalSubset.append(' ');
            if (publicId != null) {
                this.fInternalSubset.append("PUBLIC '");
                this.fInternalSubset.append(publicId);
                if (literalSystemId != null) {
                    this.fInternalSubset.append("' '");
                    this.fInternalSubset.append(literalSystemId);
                }
            } else {
                this.fInternalSubset.append("SYSTEM '");
                this.fInternalSubset.append(literalSystemId);
            }
            this.fInternalSubset.append("' NDATA ");
            this.fInternalSubset.append(str2);
            this.fInternalSubset.append(">\n");
        }
        DocumentType documentType = this.fDocumentType;
        if (documentType != null) {
            NamedNodeMap entities = documentType.getEntities();
            if (((EntityImpl) entities.getNamedItem(str)) == null) {
                EntityImpl entityImpl = (EntityImpl) this.fDocumentImpl.createEntity(str);
                entityImpl.setPublicId(publicId);
                entityImpl.setSystemId(literalSystemId);
                entityImpl.setNotationName(str2);
                entityImpl.setBaseURI(xMLResourceIdentifier.getBaseSystemId());
                entities.setNamedItem(entityImpl);
            }
        }
        int i = this.fDocumentTypeIndex;
        if (i != -1) {
            boolean z = false;
            int lastChild = this.fDeferredDocumentImpl.getLastChild(i, false);
            while (true) {
                if (lastChild != -1) {
                    if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 6 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                        z = true;
                        break;
                    }
                    lastChild = this.fDeferredDocumentImpl.getRealPrevSibling(lastChild, false);
                } else {
                    break;
                }
            }
            if (z) {
                return;
            }
            this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, this.fDeferredDocumentImpl.createDeferredEntity(str, publicId, literalSystemId, str2, xMLResourceIdentifier.getBaseSystemId()));
        }
    }

    @Override // com.sun.org.apache.xerces.internal.parsers.AbstractXMLDocumentParser, com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        if (this.fDeferNodeExpansion) {
            if (str != null) {
                this.fDeferredDocumentImpl.setXmlVersion(str);
            }
            this.fDeferredDocumentImpl.setXmlEncoding(str2);
            this.fDeferredDocumentImpl.setXmlStandalone("yes".equals(str3));
            return;
        }
        CoreDocumentImpl coreDocumentImpl = this.fDocumentImpl;
        if (coreDocumentImpl != null) {
            if (str != null) {
                coreDocumentImpl.setXmlVersion(str);
            }
            this.fDocumentImpl.setXmlEncoding(str2);
            this.fDocumentImpl.setXmlStandalone("yes".equals(str3));
        }
    }

    public final void handleBaseURI(int i) {
        short nodeType = this.fDeferredDocumentImpl.getNodeType(i, false);
        if (nodeType == 1) {
            String nodeValueString = this.fDeferredDocumentImpl.getNodeValueString(this.fCurrentNodeIndex, false);
            if (nodeValueString == null) {
                nodeValueString = this.fDeferredDocumentImpl.getDeferredEntityBaseURI(this.fDeferredEntityDecl);
            }
            String str = nodeValueString;
            if (str == null || str.equals(this.fDeferredDocumentImpl.getDocumentURI())) {
                return;
            }
            this.fDeferredDocumentImpl.setDeferredAttribute(i, "xml:base", "http://www.w3.org/XML/1998/namespace", str, true);
            return;
        }
        if (nodeType == 7) {
            String nodeValueString2 = this.fDeferredDocumentImpl.getNodeValueString(this.fCurrentNodeIndex, false);
            if (nodeValueString2 == null) {
                nodeValueString2 = this.fDeferredDocumentImpl.getDeferredEntityBaseURI(this.fDeferredEntityDecl);
            }
            if (nodeValueString2 == null || this.fErrorHandler == null) {
                return;
            }
            DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
            dOMErrorImpl.fType = "pi-base-uri-not-preserved";
            dOMErrorImpl.fRelatedData = nodeValueString2;
            dOMErrorImpl.fSeverity = (short) 1;
            this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
        }
    }
}
