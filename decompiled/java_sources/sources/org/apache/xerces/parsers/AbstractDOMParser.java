package org.apache.xerces.parsers;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.gon;
import java.util.Locale;
import java.util.Stack;
import org.apache.logging.log4j.util.Chars;
import org.apache.xerces.dom.AttrImpl;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.dom.DOMErrorImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.dom.DeferredDocumentImpl;
import org.apache.xerces.dom.DocumentImpl;
import org.apache.xerces.dom.DocumentTypeImpl;
import org.apache.xerces.dom.ElementDefinitionImpl;
import org.apache.xerces.dom.ElementNSImpl;
import org.apache.xerces.dom.EntityImpl;
import org.apache.xerces.dom.EntityReferenceImpl;
import org.apache.xerces.dom.NotationImpl;
import org.apache.xerces.dom.PSVIDocumentImpl;
import org.apache.xerces.dom.PSVIElementNSImpl;
import org.apache.xerces.dom.TextImpl;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.DOMErrorHandlerWrapper;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLParserConfiguration;
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

/* loaded from: classes13.dex */
public class AbstractDOMParser extends AbstractXMLDocumentParser {
    protected static final String CORE_DOCUMENT_CLASS_NAME = "org.apache.xerces.dom.CoreDocumentImpl";
    protected static final String CREATE_CDATA_NODES_FEATURE = "http://apache.org/xml/features/create-cdata-nodes";
    protected static final String CREATE_ENTITY_REF_NODES = "http://apache.org/xml/features/dom/create-entity-ref-nodes";
    protected static final String CURRENT_ELEMENT_NODE = "http://apache.org/xml/properties/dom/current-element-node";
    protected static final String DEFAULT_DOCUMENT_CLASS_NAME = "org.apache.xerces.dom.DocumentImpl";
    protected static final String INCLUDE_COMMENTS_FEATURE = "http://apache.org/xml/features/include-comments";
    protected static final String INCLUDE_IGNORABLE_WHITESPACE = "http://apache.org/xml/features/dom/include-ignorable-whitespace";
    protected static final String NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String PSVI_DOCUMENT_CLASS_NAME = "org.apache.xerces.dom.PSVIDocumentImpl";

    /* renamed from: j */
    public static final boolean f113347j = false;

    /* renamed from: k */
    public static final boolean f113348k = false;

    /* renamed from: l */
    public static /* synthetic */ Class f113349l;

    /* renamed from: f */
    public final QName f113350f;
    protected final Stack fBaseURIStack;
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
    protected int fRejectedElementDepth;
    protected Node fRoot;
    protected Stack fSkippedElemStack;
    protected boolean fStorePSVI;
    protected final StringBuffer fStringBuffer;

    /* renamed from: g */
    public XMLLocator f113351g;
    protected static final String DEFER_NODE_EXPANSION = "http://apache.org/xml/features/dom/defer-node-expansion";

    /* renamed from: h */
    public static final String[] f113345h = {"http://xml.org/sax/features/namespaces", "http://apache.org/xml/features/dom/create-entity-ref-nodes", "http://apache.org/xml/features/include-comments", "http://apache.org/xml/features/create-cdata-nodes", "http://apache.org/xml/features/dom/include-ignorable-whitespace", DEFER_NODE_EXPANSION};
    protected static final String DOCUMENT_CLASS_NAME = "http://apache.org/xml/properties/dom/document-class-name";

    /* renamed from: i */
    public static final String[] f113346i = {DOCUMENT_CLASS_NAME, "http://apache.org/xml/properties/dom/current-element-node"};

    /* loaded from: classes13.dex */
    public static final class Abort extends RuntimeException {
        static final Abort INSTANCE = new Abort();
        private static final long serialVersionUID = 1687848994976808490L;

        private Abort() {
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    }

    public AbstractDOMParser(XMLParserConfiguration xMLParserConfiguration) {
        super(xMLParserConfiguration);
        this.fErrorHandler = null;
        this.fStringBuffer = new StringBuffer(50);
        this.fFirstChunk = false;
        this.fFilterReject = false;
        this.fBaseURIStack = new Stack();
        this.fRejectedElementDepth = 0;
        this.fSkippedElemStack = null;
        this.fInEntityRef = false;
        this.f113350f = new QName();
        this.fDOMFilter = null;
        this.fConfiguration.addRecognizedFeatures(f113345h);
        this.fConfiguration.setFeature("http://apache.org/xml/features/dom/create-entity-ref-nodes", true);
        this.fConfiguration.setFeature("http://apache.org/xml/features/dom/include-ignorable-whitespace", true);
        this.fConfiguration.setFeature(DEFER_NODE_EXPANSION, true);
        this.fConfiguration.setFeature("http://apache.org/xml/features/include-comments", true);
        this.fConfiguration.setFeature("http://apache.org/xml/features/create-cdata-nodes", true);
        this.fConfiguration.addRecognizedProperties(f113346i);
        this.fConfiguration.setProperty(DOCUMENT_CLASS_NAME, DEFAULT_DOCUMENT_CLASS_NAME);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public void abort() {
        throw Abort.INSTANCE;
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void attributeDecl(String str, String str2, String str3, String[] strArr, String str4, XMLString xMLString, XMLString xMLString2, Augmentations augmentations) throws XNIException {
        Attr createAttribute;
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
                    char c = xMLString.f113585ch[xMLString.offset + i2];
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
        String str5 = null;
        if (deferredDocumentImpl != null) {
            if (xMLString != null) {
                int lookupElementDefinition = deferredDocumentImpl.lookupElementDefinition(str);
                if (lookupElementDefinition == -1) {
                    lookupElementDefinition = this.fDeferredDocumentImpl.createDeferredElementDefinition(str);
                    this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, lookupElementDefinition);
                }
                if (this.fNamespaceAware) {
                    if (str2.startsWith("xmlns:") || str2.equals("xmlns")) {
                        str5 = NamespaceContext.XMLNS_URI;
                    } else if (str2.startsWith("xml:")) {
                        str5 = NamespaceContext.XML_URI;
                    }
                }
                int createDeferredAttribute = this.fDeferredDocumentImpl.createDeferredAttribute(str2, str5, xMLString.toString(), false);
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
        if (z) {
            if (str2.startsWith("xmlns:") || str2.equals("xmlns")) {
                str5 = NamespaceContext.XMLNS_URI;
            } else if (str2.startsWith("xml:")) {
                str5 = NamespaceContext.XML_URI;
            }
            createAttribute = this.fDocumentImpl.createAttributeNS(str5, str2);
        } else {
            createAttribute = this.fDocumentImpl.createAttribute(str2);
        }
        AttrImpl attrImpl = (AttrImpl) createAttribute;
        attrImpl.setValue(xMLString.toString());
        attrImpl.setSpecified(false);
        attrImpl.setIdAttribute("ID".equals(str3));
        if (z) {
            elementDefinitionImpl.getAttributes().setNamedItemNS(attrImpl);
        } else {
            elementDefinitionImpl.getAttributes().setNamedItem(attrImpl);
        }
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
        String xMLString2;
        DeferredDocumentImpl deferredDocumentImpl;
        if (this.fDeferNodeExpansion) {
            if (this.fInCDATASection && this.fCreateCDATANodes) {
                if (this.fCurrentCDATASectionIndex == -1) {
                    int createDeferredCDATASection = this.fDeferredDocumentImpl.createDeferredCDATASection(xMLString.toString());
                    this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, createDeferredCDATASection);
                    this.fCurrentCDATASectionIndex = createDeferredCDATASection;
                    this.fCurrentNodeIndex = createDeferredCDATASection;
                    return;
                }
                deferredDocumentImpl = this.fDeferredDocumentImpl;
                xMLString2 = xMLString.toString();
            } else {
                if (this.fInDTD || xMLString.length == 0) {
                    return;
                }
                xMLString2 = xMLString.toString();
                deferredDocumentImpl = this.fDeferredDocumentImpl;
            }
            this.fDeferredDocumentImpl.appendChild(this.fCurrentNodeIndex, deferredDocumentImpl.createDeferredTextNode(xMLString2, false));
            return;
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
        Node lastChild = this.fCurrentNode.getLastChild();
        if (lastChild == null || lastChild.getNodeType() != 3) {
            this.fFirstChunk = true;
            this.fCurrentNode.appendChild(this.fDocument.createTextNode(xMLString.toString()));
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
        int i = xMLString.length;
        if (i > 0) {
            this.fStringBuffer.append(xMLString.f113585ch, xMLString.offset, i);
        }
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fInDTD) {
            StringBuffer stringBuffer = this.fInternalSubset;
            if (stringBuffer == null || this.fInDTDExternalSubset) {
                return;
            }
            stringBuffer.append(XMLStreamWriterImpl.START_COMMENT);
            int i = xMLString.length;
            if (i > 0) {
                this.fInternalSubset.append(xMLString.f113585ch, xMLString.offset, i);
            }
            this.fInternalSubset.append(XMLStreamWriterImpl.END_COMMENT);
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
            throw Abort.INSTANCE;
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

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
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

    public final void dropDocumentReferences() {
        this.fDocument = null;
        this.fDocumentImpl = null;
        this.fDeferredDocumentImpl = null;
        this.fDocumentType = null;
        this.fCurrentNode = null;
        this.fCurrentCDATASection = null;
        this.fCurrentEntityDecl = null;
        this.fRoot = null;
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
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

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void endAttlist(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
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
                throw Abort.INSTANCE;
            }
        }
        this.fCurrentNode = this.fCurrentNode.getParentNode();
        this.fCurrentCDATASection = null;
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void endConditional(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
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

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
        if (this.fDeferNodeExpansion) {
            XMLLocator xMLLocator = this.f113351g;
            if (xMLLocator != null) {
                this.fDeferredDocumentImpl.setInputEncoding(xMLLocator.getEncoding());
            }
            this.fCurrentNodeIndex = -1;
            return;
        }
        CoreDocumentImpl coreDocumentImpl = this.fDocumentImpl;
        if (coreDocumentImpl != null) {
            XMLLocator xMLLocator2 = this.f113351g;
            if (xMLLocator2 != null) {
                coreDocumentImpl.setInputEncoding(xMLLocator2.getEncoding());
            }
            this.fDocumentImpl.setStrictErrorChecking(true);
        }
        this.fCurrentNode = null;
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        ElementPSVI elementPSVI;
        Node parentNode;
        ElementPSVI elementPSVI2;
        if (this.fDeferNodeExpansion) {
            if (augmentations != null && (elementPSVI = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) != null) {
                XSTypeDefinition memberTypeDefinition = elementPSVI.getMemberTypeDefinition();
                if (memberTypeDefinition == null) {
                    memberTypeDefinition = elementPSVI.getTypeDefinition();
                }
                this.fDeferredDocumentImpl.setTypeInfo(this.fCurrentNodeIndex, memberTypeDefinition);
            }
            this.fCurrentNodeIndex = this.fDeferredDocumentImpl.getParentNode(this.fCurrentNodeIndex, false);
            return;
        }
        if (augmentations != null && this.fDocumentImpl != null && ((this.fNamespaceAware || this.fStorePSVI) && (elementPSVI2 = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) != null)) {
            if (this.fNamespaceAware) {
                XSTypeDefinition memberTypeDefinition2 = elementPSVI2.getMemberTypeDefinition();
                if (memberTypeDefinition2 == null) {
                    memberTypeDefinition2 = elementPSVI2.getTypeDefinition();
                }
                ((ElementNSImpl) this.fCurrentNode).setType(memberTypeDefinition2);
            }
            if (this.fStorePSVI) {
                ((PSVIElementNSImpl) this.fCurrentNode).setPSVI(elementPSVI2);
            }
        }
        if (this.fDOMFilter == null) {
            setCharacterData(false);
        } else {
            if (this.fFilterReject) {
                int i = this.fRejectedElementDepth;
                this.fRejectedElementDepth = i - 1;
                if (i == 0) {
                    this.fFilterReject = false;
                    return;
                }
                return;
            }
            if (!this.fSkippedElemStack.isEmpty() && this.fSkippedElemStack.pop() == Boolean.TRUE) {
                return;
            }
            setCharacterData(false);
            if (this.fCurrentNode != this.fRoot && !this.fInEntityRef && (this.fDOMFilter.getWhatToShow() & 1) != 0) {
                short acceptNode = this.fDOMFilter.acceptNode(this.fCurrentNode);
                if (acceptNode == 2) {
                    parentNode = this.fCurrentNode.getParentNode();
                } else if (acceptNode == 3) {
                    this.fFirstChunk = true;
                    parentNode = this.fCurrentNode.getParentNode();
                    NodeList childNodes = this.fCurrentNode.getChildNodes();
                    int length = childNodes.getLength();
                    for (int i2 = 0; i2 < length; i2++) {
                        parentNode.appendChild(childNodes.item(0));
                    }
                } else if (acceptNode == 4) {
                    throw Abort.INSTANCE;
                }
                parentNode.removeChild(this.fCurrentNode);
                this.fCurrentNode = parentNode;
                return;
            }
        }
        this.fCurrentNode = this.fCurrentNode.getParentNode();
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void endExternalSubset(Augmentations augmentations) throws XNIException {
        this.fInDTDExternalSubset = false;
        this.fBaseURIStack.pop();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00b1  */
    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void endGeneralEntity(java.lang.String r8, org.apache.xerces.xni.Augmentations r9) throws org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.parsers.AbstractDOMParser.endGeneralEntity(java.lang.String, org.apache.xerces.xni.Augmentations):void");
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void endParameterEntity(String str, Augmentations augmentations) throws XNIException {
        this.fBaseURIStack.pop();
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void externalEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        String str2;
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
            StringBuffer stringBuffer2 = this.fInternalSubset;
            if (publicId != null) {
                stringBuffer2.append("PUBLIC '");
                this.fInternalSubset.append(publicId);
                stringBuffer2 = this.fInternalSubset;
                str2 = "' '";
            } else {
                str2 = "SYSTEM '";
            }
            stringBuffer2.append(str2);
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
                if (lastChild != -1) {
                    if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 6 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                        break;
                    } else {
                        lastChild = this.fDeferredDocumentImpl.getRealPrevSibling(lastChild, false);
                    }
                } else {
                    z = false;
                    break;
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

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
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

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void ignoredCharacters(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
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
                if (lastChild != -1) {
                    if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 6 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                        break;
                    } else {
                        lastChild = this.fDeferredDocumentImpl.getRealPrevSibling(lastChild, false);
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (z) {
                return;
            }
            this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, this.fDeferredDocumentImpl.createDeferredEntity(str, null, null, null, (String) this.fBaseURIStack.peek()));
        }
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void notationDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        DocumentType documentType;
        String str2;
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        StringBuffer stringBuffer = this.fInternalSubset;
        if (stringBuffer != null && !this.fInDTDExternalSubset) {
            stringBuffer.append("<!NOTATION ");
            this.fInternalSubset.append(str);
            StringBuffer stringBuffer2 = this.fInternalSubset;
            if (publicId != null) {
                stringBuffer2.append(" PUBLIC '");
                this.fInternalSubset.append(publicId);
                if (literalSystemId != null) {
                    stringBuffer2 = this.fInternalSubset;
                    str2 = "' '";
                }
                this.fInternalSubset.append("'>\n");
            } else {
                str2 = " SYSTEM '";
            }
            stringBuffer2.append(str2);
            this.fInternalSubset.append(literalSystemId);
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
                if (lastChild == -1) {
                    break;
                }
                if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 12 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                    z = true;
                    break;
                }
                lastChild = this.fDeferredDocumentImpl.getPrevSibling(lastChild, false);
            }
            if (z) {
                return;
            }
            this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, this.fDeferredDocumentImpl.createDeferredNotation(str, publicId, literalSystemId, xMLResourceIdentifier.getBaseSystemId()));
        }
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
        if (this.fInDTD) {
            StringBuffer stringBuffer = this.fInternalSubset;
            if (stringBuffer == null || this.fInDTDExternalSubset) {
                return;
            }
            stringBuffer.append("<?");
            this.fInternalSubset.append(str);
            if (xMLString.length > 0) {
                StringBuffer stringBuffer2 = this.fInternalSubset;
                stringBuffer2.append(' ');
                stringBuffer2.append(xMLString.f113585ch, xMLString.offset, xMLString.length);
            }
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
            throw Abort.INSTANCE;
        }
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.parsers.XMLParser
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
        this.fRoot = null;
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
                throw Abort.INSTANCE;
            }
        }
    }

    public void setDocumentClassName(String str) {
        if (str == null) {
            str = DEFAULT_DOCUMENT_CLASS_NAME;
        }
        if (!str.equals(DEFAULT_DOCUMENT_CLASS_NAME) && !str.equals(PSVI_DOCUMENT_CLASS_NAME)) {
            try {
                Class<?> m70538f = ObjectFactory.m70538f(str, ObjectFactory.m70536d(), true);
                Class cls = f113349l;
                if (cls == null) {
                    cls = class$("org.w3c.dom.Document");
                    f113349l = cls;
                }
                if (!cls.isAssignableFrom(m70538f)) {
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

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void startAttlist(String str, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
        this.fInCDATASection = true;
        if (this.fDeferNodeExpansion || this.fFilterReject || !this.fCreateCDATANodes) {
            return;
        }
        setCharacterData(false);
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void startConditional(short s, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void startDTD(XMLLocator xMLLocator, Augmentations augmentations) throws XNIException {
        this.fInDTD = true;
        if (xMLLocator != null) {
            this.fBaseURIStack.push(xMLLocator.getBaseSystemId());
        }
        if (this.fDeferNodeExpansion || this.fDocumentImpl != null) {
            this.fInternalSubset = new StringBuffer(1024);
        }
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
        CoreDocumentImpl coreDocumentImpl;
        this.f113351g = xMLLocator;
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
            CoreDocumentImpl documentImpl = new DocumentImpl();
            this.fDocument = documentImpl;
            coreDocumentImpl = documentImpl;
            this.fDocumentImpl = coreDocumentImpl;
        } else {
            if (!this.fDocumentClassName.equals(PSVI_DOCUMENT_CLASS_NAME)) {
                try {
                    ClassLoader m70536d = ObjectFactory.m70536d();
                    Class<?> m70538f = ObjectFactory.m70538f(this.fDocumentClassName, m70536d, true);
                    this.fDocument = (Document) m70538f.newInstance();
                    if (ObjectFactory.m70538f(CORE_DOCUMENT_CLASS_NAME, m70536d, true).isAssignableFrom(m70538f)) {
                        this.fDocumentImpl = (CoreDocumentImpl) this.fDocument;
                        if (ObjectFactory.m70538f(PSVI_DOCUMENT_CLASS_NAME, m70536d, true).isAssignableFrom(m70538f)) {
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
                this.fCurrentNode = this.fDocument;
            }
            CoreDocumentImpl pSVIDocumentImpl = new PSVIDocumentImpl();
            this.fDocument = pSVIDocumentImpl;
            coreDocumentImpl = pSVIDocumentImpl;
            this.fDocumentImpl = coreDocumentImpl;
            this.fStorePSVI = true;
        }
        coreDocumentImpl.setStrictErrorChecking(false);
        this.fDocumentImpl.setInputEncoding(str);
        this.fDocumentImpl.setDocumentURI(xMLLocator.getExpandedSystemId());
        this.fCurrentNode = this.fDocument;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011e  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(org.apache.xerces.xni.QName r17, org.apache.xerces.xni.XMLAttributes r18, org.apache.xerces.xni.Augmentations r19) throws org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.parsers.AbstractDOMParser.startElement(org.apache.xerces.xni.QName, org.apache.xerces.xni.XMLAttributes, org.apache.xerces.xni.Augmentations):void");
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void startExternalSubset(XMLResourceIdentifier xMLResourceIdentifier, Augmentations augmentations) throws XNIException {
        this.fBaseURIStack.push(xMLResourceIdentifier.getBaseSystemId());
        this.fInDTDExternalSubset = true;
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (this.fDeferNodeExpansion) {
            int createDeferredEntityReference = this.fDeferredDocumentImpl.createDeferredEntityReference(str, xMLResourceIdentifier.getExpandedSystemId());
            int i = this.fDocumentTypeIndex;
            if (i != -1) {
                int lastChild = this.fDeferredDocumentImpl.getLastChild(i, false);
                while (true) {
                    if (lastChild == -1) {
                        break;
                    }
                    if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 6 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                        this.fDeferredEntityDecl = lastChild;
                        this.fDeferredDocumentImpl.setInputEncoding(lastChild, str2);
                        break;
                    }
                    lastChild = this.fDeferredDocumentImpl.getRealPrevSibling(lastChild, false);
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

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void startParameterEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        if (augmentations != null && this.fInternalSubset != null && !this.fInDTDExternalSubset && Boolean.TRUE.equals(augmentations.getItem("ENTITY_SKIPPED"))) {
            StringBuffer stringBuffer = this.fInternalSubset;
            stringBuffer.append(str);
            stringBuffer.append(";\n");
        }
        this.fBaseURIStack.push(xMLResourceIdentifier.getExpandedSystemId());
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
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

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDTDHandler
    public void unparsedEntityDecl(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
        String str3;
        String publicId = xMLResourceIdentifier.getPublicId();
        String literalSystemId = xMLResourceIdentifier.getLiteralSystemId();
        StringBuffer stringBuffer = this.fInternalSubset;
        if (stringBuffer != null && !this.fInDTDExternalSubset) {
            stringBuffer.append("<!ENTITY ");
            this.fInternalSubset.append(str);
            this.fInternalSubset.append(' ');
            StringBuffer stringBuffer2 = this.fInternalSubset;
            if (publicId != null) {
                stringBuffer2.append("PUBLIC '");
                this.fInternalSubset.append(publicId);
                if (literalSystemId != null) {
                    stringBuffer2 = this.fInternalSubset;
                    str3 = "' '";
                }
                this.fInternalSubset.append("' NDATA ");
                this.fInternalSubset.append(str2);
                this.fInternalSubset.append(">\n");
            } else {
                str3 = "SYSTEM '";
            }
            stringBuffer2.append(str3);
            this.fInternalSubset.append(literalSystemId);
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
                if (lastChild == -1) {
                    break;
                }
                if (this.fDeferredDocumentImpl.getNodeType(lastChild, false) == 6 && this.fDeferredDocumentImpl.getNodeName(lastChild, false).equals(str)) {
                    z = true;
                    break;
                }
                lastChild = this.fDeferredDocumentImpl.getRealPrevSibling(lastChild, false);
            }
            if (z) {
                return;
            }
            this.fDeferredDocumentImpl.appendChild(this.fDocumentTypeIndex, this.fDeferredDocumentImpl.createDeferredEntity(str, publicId, literalSystemId, str2, xMLResourceIdentifier.getBaseSystemId()));
        }
    }

    @Override // org.apache.xerces.parsers.AbstractXMLDocumentParser, org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
        Document document;
        if (this.fDeferNodeExpansion) {
            if (str != null) {
                this.fDeferredDocumentImpl.setXmlVersion(str);
            }
            this.fDeferredDocumentImpl.setXmlEncoding(str2);
            document = this.fDeferredDocumentImpl;
        } else {
            CoreDocumentImpl coreDocumentImpl = this.fDocumentImpl;
            if (coreDocumentImpl == null) {
                return;
            }
            if (str != null) {
                coreDocumentImpl.setXmlVersion(str);
            }
            this.fDocumentImpl.setXmlEncoding(str2);
            document = this.fDocumentImpl;
        }
        document.setXmlStandalone("yes".equals(str3));
    }

    public final void handleBaseURI(Node node) {
        String baseURI;
        if (this.fDocumentImpl != null) {
            short nodeType = node.getNodeType();
            if (nodeType != 1) {
                if (nodeType != 7 || (baseURI = ((EntityReferenceImpl) this.fCurrentNode).getBaseURI()) == null || this.fErrorHandler == null) {
                    return;
                }
                DOMErrorImpl dOMErrorImpl = new DOMErrorImpl();
                dOMErrorImpl.fType = "pi-base-uri-not-preserved";
                dOMErrorImpl.fRelatedData = baseURI;
                dOMErrorImpl.fSeverity = (short) 1;
                this.fErrorHandler.getErrorHandler().handleError(dOMErrorImpl);
                return;
            }
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
            Element element = (Element) node;
            if (this.fNamespaceAware) {
                element.setAttributeNS("http://www.w3.org/XML/1998/namespace", "xml:base", baseURI2);
            } else {
                element.setAttribute("xml:base", baseURI2);
            }
        }
    }
}
