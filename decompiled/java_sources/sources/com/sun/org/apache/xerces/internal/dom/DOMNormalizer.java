package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xerces.internal.impl.Constants;
import com.sun.org.apache.xerces.internal.impl.RevalidationHandler;
import com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar;
import com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDDescription;
import com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.SimpleLocator;
import com.sun.org.apache.xerces.internal.p056xs.AttributePSVI;
import com.sun.org.apache.xerces.internal.p056xs.ElementPSVI;
import com.sun.org.apache.xerces.internal.p056xs.XSSimpleTypeDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.parsers.XMLGrammarPreparser;
import com.sun.org.apache.xerces.internal.util.AugmentationsImpl;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XML11Char;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLGrammarPoolImpl;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xerces.internal.xni.Augmentations;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLAttributes;
import com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xerces.internal.xni.XNIException;
import com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponent;
import com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
import com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
import java.io.IOException;
import java.io.StringReader;
import java.util.Vector;
import org.apache.xerces.jaxp.validation.XMLSchemaFactory;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class DOMNormalizer implements XMLDocumentHandler {
    protected static final boolean DEBUG = false;
    protected static final boolean DEBUG_EVENTS = false;
    protected static final boolean DEBUG_ND = false;
    protected static final String PREFIX = "NS";
    public static final RuntimeException abort = new RuntimeException();
    private XMLDTDValidator fDTDValidator;
    protected DOMErrorHandler fErrorHandler;
    protected SymbolTable fSymbolTable;
    protected RevalidationHandler fValidationHandler;
    protected DOMConfigurationImpl fConfiguration = null;
    protected CoreDocumentImpl fDocument = null;
    protected final XMLAttributesProxy fAttrProxy = new XMLAttributesProxy();
    protected final QName fQName = new QName();
    private final DOMErrorImpl fError = new DOMErrorImpl();
    protected boolean fNamespaceValidation = false;
    protected boolean fPSVI = false;
    protected final NamespaceContext fNamespaceContext = new NamespaceSupport();
    protected final NamespaceContext fLocalNSBinder = new NamespaceSupport();
    protected final Vector fAttributeList = new Vector(5, 10);
    protected final DOMLocatorImpl fLocator = new DOMLocatorImpl();
    protected Node fCurrentNode = null;
    private QName fAttrQName = new QName();
    final XMLString fNormalizedValue = new XMLString(new char[16], 0, 0);
    private boolean allWhitespace = false;

    /* loaded from: classes10.dex */
    public final class XMLAttributesProxy implements XMLAttributes {
        protected AttributeMap fAttributes;
        protected final Vector fAugmentations = new Vector(5);
        protected CoreDocumentImpl fDocument;
        protected ElementImpl fElement;

        public XMLAttributesProxy() {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public int addAttribute(QName qName, String str, String str2) {
            int xercesAttribute = this.fElement.getXercesAttribute(qName.uri, qName.localpart);
            if (xercesAttribute >= 0) {
                return xercesAttribute;
            }
            AttrImpl attrImpl = (AttrImpl) ((CoreDocumentImpl) this.fElement.getOwnerDocument()).createAttributeNS(qName.uri, qName.rawname, qName.localpart);
            int xercesAttributeNode = this.fElement.setXercesAttributeNode(attrImpl);
            attrImpl.setNodeValue(str2);
            this.fAugmentations.insertElementAt(new AugmentationsImpl(), xercesAttributeNode);
            attrImpl.setSpecified(false);
            return xercesAttributeNode;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public Augmentations getAugmentations(String str) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public int getIndex(String str) {
            return -1;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public int getLength() {
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap != null) {
                return attributeMap.getLength();
            }
            return 0;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getLocalName(int i) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void getName(int i, QName qName) {
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap != null) {
                DOMNormalizer.this.updateQName((Node) attributeMap.getItem(i), qName);
            }
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getNonNormalizedValue(int i) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getPrefix(int i) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getQName(int i) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public QName getQualifiedName(int i) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getType(int i) {
            return "CDATA";
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getURI(int i) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getValue(String str) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public boolean isSpecified(int i) {
            return ((Attr) this.fAttributes.getItem(i)).getSpecified();
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void removeAllAttributes() {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void removeAttributeAt(int i) {
        }

        public void setAttributes(AttributeMap attributeMap, CoreDocumentImpl coreDocumentImpl, ElementImpl elementImpl) {
            this.fDocument = coreDocumentImpl;
            this.fAttributes = attributeMap;
            this.fElement = elementImpl;
            if (attributeMap == null) {
                this.fAugmentations.setSize(0);
                return;
            }
            int length = attributeMap.getLength();
            this.fAugmentations.setSize(length);
            for (int i = 0; i < length; i++) {
                this.fAugmentations.setElementAt(new AugmentationsImpl(), i);
            }
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void setAugmentations(int i, Augmentations augmentations) {
            this.fAugmentations.setElementAt(augmentations, i);
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void setName(int i, QName qName) {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void setNonNormalizedValue(int i, String str) {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void setSpecified(int i, boolean z) {
            ((AttrImpl) this.fAttributes.getItem(i)).setSpecified(z);
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void setType(int i, String str) {
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void setValue(int i, String str) {
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap != null) {
                AttrImpl attrImpl = (AttrImpl) attributeMap.getItem(i);
                boolean specified = attrImpl.getSpecified();
                attrImpl.setValue(str);
                attrImpl.setSpecified(specified);
            }
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public Augmentations getAugmentations(String str, String str2) {
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public int getIndex(String str, String str2) {
            return -1;
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getType(String str) {
            return "CDATA";
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getValue(int i) {
            AttributeMap attributeMap = this.fAttributes;
            return attributeMap != null ? attributeMap.item(i).getNodeValue() : "";
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public Augmentations getAugmentations(int i) {
            return (Augmentations) this.fAugmentations.elementAt(i);
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getType(String str, String str2) {
            return "CDATA";
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public String getValue(String str, String str2) {
            Node namedItemNS;
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap == null || (namedItemNS = attributeMap.getNamedItemNS(str, str2)) == null) {
                return null;
            }
            return namedItemNS.getNodeValue();
        }

        @Override // com.sun.org.apache.xerces.internal.xni.XMLAttributes
        public void setValue(int i, String str, XMLString xMLString) {
            setValue(i, xMLString.toString());
        }
    }

    private XMLGrammarPool createGrammarPool(DocumentTypeImpl documentTypeImpl) {
        XMLGrammarPoolImpl xMLGrammarPoolImpl = new XMLGrammarPoolImpl();
        XMLGrammarPreparser xMLGrammarPreparser = new XMLGrammarPreparser(this.fSymbolTable);
        xMLGrammarPreparser.registerPreparser("http://www.w3.org/TR/REC-xml", null);
        xMLGrammarPreparser.setFeature("http://apache.org/xml/features/namespaces", true);
        xMLGrammarPreparser.setFeature("http://apache.org/xml/features/validation", true);
        xMLGrammarPreparser.setProperty("http://apache.org/xml/properties/internal/grammar-pool", xMLGrammarPoolImpl);
        String internalSubset = documentTypeImpl.getInternalSubset();
        XMLInputSource xMLInputSource = new XMLInputSource(documentTypeImpl.getPublicId(), documentTypeImpl.getSystemId(), null);
        if (internalSubset != null) {
            xMLInputSource.setCharacterStream(new StringReader(internalSubset));
        }
        try {
            ((XMLDTDDescription) ((DTDGrammar) xMLGrammarPreparser.preparseGrammar("http://www.w3.org/TR/REC-xml", xMLInputSource)).getGrammarDescription()).setRootName(documentTypeImpl.getName());
            xMLInputSource.setCharacterStream(null);
            ((XMLDTDDescription) ((DTDGrammar) xMLGrammarPreparser.preparseGrammar("http://www.w3.org/TR/REC-xml", xMLInputSource)).getGrammarDescription()).setRootName(documentTypeImpl.getName());
        } catch (XNIException | IOException unused) {
        }
        return xMLGrammarPoolImpl;
    }

    public static final void isAttrValueWF(DOMErrorHandler dOMErrorHandler, DOMErrorImpl dOMErrorImpl, DOMLocatorImpl dOMLocatorImpl, NamedNodeMap namedNodeMap, Attr attr, String str, boolean z) {
        DocumentType doctype;
        if ((attr instanceof AttrImpl) && ((AttrImpl) attr).hasStringValue()) {
            isXMLCharWF(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, str, z);
            return;
        }
        NodeList childNodes = attr.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (item.getNodeType() == 5) {
                Document ownerDocument = attr.getOwnerDocument();
                if (((ownerDocument == null || (doctype = ownerDocument.getDoctype()) == null) ? null : (Entity) doctype.getEntities().getNamedItemNS("*", item.getNodeName())) == null) {
                    reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "UndeclaredEntRefInAttrValue", new Object[]{attr.getNodeName()}), (short) 2, "UndeclaredEntRefInAttrValue");
                }
            } else {
                isXMLCharWF(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, item.getNodeValue(), z);
            }
        }
    }

    public static final void isCDataWF(DOMErrorHandler dOMErrorHandler, DOMErrorImpl dOMErrorImpl, DOMLocatorImpl dOMLocatorImpl, String str, boolean z) {
        if (str == null || str.length() == 0) {
            return;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        if (z) {
            while (i < length) {
                int i2 = i + 1;
                char c = charArray[i];
                if (XML11Char.isXML11Invalid(c)) {
                    if (XMLChar.isHighSurrogate(c) && i2 < length) {
                        int i3 = i2 + 1;
                        char c2 = charArray[i2];
                        if (XMLChar.isLowSurrogate(c2) && XMLChar.isSupplemental(XMLChar.supplemental(c, c2))) {
                            i = i3;
                        } else {
                            i2 = i3;
                        }
                    }
                    reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInCDSect", new Object[]{Integer.toString(c, 16)}), (short) 2, "wf-invalid-character");
                } else if (c == ']' && i2 < length && charArray[i2] == ']') {
                    int i4 = i2;
                    do {
                        i4++;
                        if (i4 >= length) {
                            break;
                        }
                    } while (charArray[i4] == ']');
                    if (i4 < length && charArray[i4] == '>') {
                        reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "CDEndInContent", null), (short) 2, "wf-invalid-character");
                    }
                }
                i = i2;
            }
            return;
        }
        while (i < length) {
            int i5 = i + 1;
            char c3 = charArray[i];
            if (XMLChar.isInvalid(c3)) {
                if (XMLChar.isHighSurrogate(c3) && i5 < length) {
                    int i6 = i5 + 1;
                    char c4 = charArray[i5];
                    if (XMLChar.isLowSurrogate(c4) && XMLChar.isSupplemental(XMLChar.supplemental(c3, c4))) {
                        i = i6;
                    } else {
                        i5 = i6;
                    }
                }
                reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInCDSect", new Object[]{Integer.toString(c3, 16)}), (short) 2, "wf-invalid-character");
            } else if (c3 == ']' && i5 < length && charArray[i5] == ']') {
                int i7 = i5;
                do {
                    i7++;
                    if (i7 >= length) {
                        break;
                    }
                } while (charArray[i7] == ']');
                if (i7 < length && charArray[i7] == '>') {
                    reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "CDEndInContent", null), (short) 2, "wf-invalid-character");
                }
            }
            i = i5;
        }
    }

    public static final void isCommentWF(DOMErrorHandler dOMErrorHandler, DOMErrorImpl dOMErrorImpl, DOMLocatorImpl dOMLocatorImpl, String str, boolean z) {
        if (str == null || str.length() == 0) {
            return;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        if (z) {
            while (i < length) {
                int i2 = i + 1;
                char c = charArray[i];
                if (XML11Char.isXML11Invalid(c)) {
                    if (XMLChar.isHighSurrogate(c) && i2 < length) {
                        int i3 = i2 + 1;
                        char c2 = charArray[i2];
                        if (XMLChar.isLowSurrogate(c2) && XMLChar.isSupplemental(XMLChar.supplemental(c, c2))) {
                            i = i3;
                        } else {
                            i2 = i3;
                        }
                    }
                    reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInComment", new Object[]{Integer.toString(charArray[i2 - 1], 16)}), (short) 2, "wf-invalid-character");
                } else if (c == '-' && i2 < length && charArray[i2] == '-') {
                    reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "DashDashInComment", null), (short) 2, "wf-invalid-character");
                }
                i = i2;
            }
            return;
        }
        while (i < length) {
            int i4 = i + 1;
            char c3 = charArray[i];
            if (XMLChar.isInvalid(c3)) {
                if (XMLChar.isHighSurrogate(c3) && i4 < length) {
                    int i5 = i4 + 1;
                    char c4 = charArray[i4];
                    if (XMLChar.isLowSurrogate(c4) && XMLChar.isSupplemental(XMLChar.supplemental(c3, c4))) {
                        i = i5;
                    } else {
                        i4 = i5;
                    }
                }
                reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInComment", new Object[]{Integer.toString(charArray[i4 - 1], 16)}), (short) 2, "wf-invalid-character");
            } else if (c3 == '-' && i4 < length && charArray[i4] == '-') {
                reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "DashDashInComment", null), (short) 2, "wf-invalid-character");
            }
            i = i4;
        }
    }

    public static final void isXMLCharWF(DOMErrorHandler dOMErrorHandler, DOMErrorImpl dOMErrorImpl, DOMLocatorImpl dOMLocatorImpl, String str, boolean z) {
        if (str == null || str.length() == 0) {
            return;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        if (z) {
            while (i < length) {
                int i2 = i + 1;
                if (XML11Char.isXML11Invalid(charArray[i])) {
                    char c = charArray[i2 - 1];
                    if (!XMLChar.isHighSurrogate(c) || i2 >= length) {
                        i = i2;
                    } else {
                        int i3 = i2 + 1;
                        char c2 = charArray[i2];
                        if (XMLChar.isLowSurrogate(c2) && XMLChar.isSupplemental(XMLChar.supplemental(c, c2))) {
                            i = i3;
                        } else {
                            i = i3;
                        }
                    }
                    reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "InvalidXMLCharInDOM", new Object[]{Integer.toString(charArray[i - 1], 16)}), (short) 2, "wf-invalid-character");
                } else {
                    i = i2;
                }
            }
            return;
        }
        while (i < length) {
            int i4 = i + 1;
            if (XMLChar.isInvalid(charArray[i])) {
                char c3 = charArray[i4 - 1];
                if (!XMLChar.isHighSurrogate(c3) || i4 >= length) {
                    i = i4;
                } else {
                    int i5 = i4 + 1;
                    char c4 = charArray[i4];
                    if (XMLChar.isLowSurrogate(c4) && XMLChar.isSupplemental(XMLChar.supplemental(c3, c4))) {
                        i = i5;
                    } else {
                        i = i5;
                    }
                }
                reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "InvalidXMLCharInDOM", new Object[]{Integer.toString(charArray[i - 1], 16)}), (short) 2, "wf-invalid-character");
            } else {
                i = i4;
            }
        }
    }

    public static final void reportDOMError(DOMErrorHandler dOMErrorHandler, DOMErrorImpl dOMErrorImpl, DOMLocatorImpl dOMLocatorImpl, String str, short s, String str2) {
        if (dOMErrorHandler != null) {
            dOMErrorImpl.reset();
            dOMErrorImpl.fMessage = str;
            dOMErrorImpl.fSeverity = s;
            dOMErrorImpl.fLocator = dOMLocatorImpl;
            dOMErrorImpl.fType = str2;
            dOMErrorImpl.fRelatedData = dOMLocatorImpl.fRelatedNode;
            if (!dOMErrorHandler.handleError(dOMErrorImpl)) {
                throw abort;
            }
        }
        if (s == 3) {
            throw abort;
        }
    }

    public final void addNamespaceDecl(String str, String str2, ElementImpl elementImpl) {
        if (str == XMLSymbols.EMPTY_STRING) {
            elementImpl.setAttributeNS(NamespaceContext.XMLNS_URI, XMLSymbols.PREFIX_XMLNS, str2);
            return;
        }
        elementImpl.setAttributeNS(NamespaceContext.XMLNS_URI, "xmlns:" + str, str2);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void comment(XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void doctypeDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void emptyElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        startElement(qName, xMLAttributes, augmentations);
        endElement(qName, augmentations);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endDocument(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endElement(QName qName, Augmentations augmentations) throws XNIException {
        ElementPSVI elementPSVI;
        if (augmentations == null || (elementPSVI = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) == null) {
            return;
        }
        Node node = this.fCurrentNode;
        ElementImpl elementImpl = (ElementImpl) node;
        if (this.fPSVI) {
            ((PSVIElementNSImpl) node).setPSVI(elementPSVI);
        }
        String schemaNormalizedValue = elementPSVI.getSchemaNormalizedValue();
        if ((this.fConfiguration.features & 2) != 0) {
            if (schemaNormalizedValue != null) {
                elementImpl.setTextContent(schemaNormalizedValue);
            }
        } else {
            if (elementImpl.getTextContent().length() != 0 || schemaNormalizedValue == null) {
                return;
            }
            elementImpl.setTextContent(schemaNormalizedValue);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void endGeneralEntity(String str, Augmentations augmentations) throws XNIException {
    }

    public final void expandEntityRef(Node node, Node node2) {
        Node firstChild = node2.getFirstChild();
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            node.insertBefore(firstChild, node2);
            firstChild = nextSibling;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.allWhitespace = true;
    }

    public final void namespaceFixUp(ElementImpl elementImpl, AttributeMap attributeMap) {
        String str;
        String addSymbol;
        if (attributeMap != null) {
            for (int i = 0; i < attributeMap.getLength(); i++) {
                Attr attr = (Attr) attributeMap.getItem(i);
                CoreDocumentImpl coreDocumentImpl = this.fDocument;
                if (coreDocumentImpl.errorChecking && (this.fConfiguration.features & 256) != 0 && coreDocumentImpl.isXMLVersionChanged()) {
                    this.fDocument.checkQName(attr.getPrefix(), attr.getLocalName());
                }
                String namespaceURI = attr.getNamespaceURI();
                if (namespaceURI != null) {
                    String str2 = NamespaceContext.XMLNS_URI;
                    if (namespaceURI.equals(str2)) {
                        String nodeValue = attr.getNodeValue();
                        if (nodeValue == null) {
                            nodeValue = XMLSymbols.EMPTY_STRING;
                        }
                        if (this.fDocument.errorChecking && nodeValue.equals(str2)) {
                            this.fLocator.fRelatedNode = attr;
                            reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "CantBindXMLNS", null), (short) 2, "CantBindXMLNS");
                        } else {
                            String prefix = attr.getPrefix();
                            String addSymbol2 = (prefix == null || prefix.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix);
                            String addSymbol3 = this.fSymbolTable.addSymbol(attr.getLocalName());
                            if (addSymbol2 == XMLSymbols.PREFIX_XMLNS) {
                                String addSymbol4 = this.fSymbolTable.addSymbol(nodeValue);
                                if (addSymbol4.length() != 0) {
                                    this.fNamespaceContext.declarePrefix(addSymbol3, addSymbol4);
                                }
                            } else {
                                this.fNamespaceContext.declarePrefix(XMLSymbols.EMPTY_STRING, this.fSymbolTable.addSymbol(nodeValue));
                            }
                        }
                    }
                }
            }
        }
        String namespaceURI2 = elementImpl.getNamespaceURI();
        String prefix2 = elementImpl.getPrefix();
        if (namespaceURI2 != null) {
            String addSymbol5 = this.fSymbolTable.addSymbol(namespaceURI2);
            String addSymbol6 = (prefix2 == null || prefix2.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix2);
            if (this.fNamespaceContext.getURI(addSymbol6) != addSymbol5) {
                addNamespaceDecl(addSymbol6, addSymbol5, elementImpl);
                this.fLocalNSBinder.declarePrefix(addSymbol6, addSymbol5);
                this.fNamespaceContext.declarePrefix(addSymbol6, addSymbol5);
            }
        } else if (elementImpl.getLocalName() != null) {
            NamespaceContext namespaceContext = this.fNamespaceContext;
            String str3 = XMLSymbols.EMPTY_STRING;
            String uri = namespaceContext.getURI(str3);
            if (uri != null && uri.length() > 0) {
                addNamespaceDecl(str3, str3, elementImpl);
                this.fLocalNSBinder.declarePrefix(str3, str3);
                this.fNamespaceContext.declarePrefix(str3, str3);
            }
        } else if (this.fNamespaceValidation) {
            reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NullLocalElementName", new Object[]{elementImpl.getNodeName()}), (short) 3, "NullLocalElementName");
        } else {
            reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NullLocalElementName", new Object[]{elementImpl.getNodeName()}), (short) 2, "NullLocalElementName");
        }
        if (attributeMap != null) {
            attributeMap.cloneMap(this.fAttributeList);
            for (int i2 = 0; i2 < this.fAttributeList.size(); i2++) {
                Attr attr2 = (Attr) this.fAttributeList.elementAt(i2);
                this.fLocator.fRelatedNode = attr2;
                attr2.normalize();
                String value = attr2.getValue();
                attr2.getNodeName();
                String namespaceURI3 = attr2.getNamespaceURI();
                if (value == null) {
                    value = XMLSymbols.EMPTY_STRING;
                }
                String str4 = value;
                if (namespaceURI3 != null) {
                    String prefix3 = attr2.getPrefix();
                    String addSymbol7 = (prefix3 == null || prefix3.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix3);
                    this.fSymbolTable.addSymbol(attr2.getLocalName());
                    if (!namespaceURI3.equals(NamespaceContext.XMLNS_URI)) {
                        if (!this.fDocument.errorChecking || (this.fConfiguration.features & 256) == 0) {
                            str = addSymbol7;
                        } else {
                            str = addSymbol7;
                            isAttrValueWF(this.fErrorHandler, this.fError, this.fLocator, attributeMap, (AttrImpl) attr2, attr2.getValue(), this.fDocument.isXML11Version());
                            if (this.fDocument.isXMLVersionChanged() && !CoreDocumentImpl.isXMLName(attr2.getNodeName(), this.fDocument.isXML11Version())) {
                                reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "wf-invalid-character-in-node-name", new Object[]{"Attribute", attr2.getNodeName()}), (short) 2, "wf-invalid-character-in-node-name");
                            }
                        }
                        ((AttrImpl) attr2).setIdAttribute(false);
                        String addSymbol8 = this.fSymbolTable.addSymbol(namespaceURI3);
                        String str5 = str;
                        String uri2 = this.fNamespaceContext.getURI(str5);
                        String str6 = XMLSymbols.EMPTY_STRING;
                        if (str5 == str6 || uri2 != addSymbol8) {
                            attr2.getNodeName();
                            String prefix4 = this.fNamespaceContext.getPrefix(addSymbol8);
                            if (prefix4 == null || prefix4 == str6) {
                                if (str5 == str6 || this.fLocalNSBinder.getURI(str5) != null) {
                                    int i3 = 2;
                                    addSymbol = this.fSymbolTable.addSymbol(PREFIX + 1);
                                    while (this.fLocalNSBinder.getURI(addSymbol) != null) {
                                        addSymbol = this.fSymbolTable.addSymbol(PREFIX + i3);
                                        i3++;
                                    }
                                } else {
                                    addSymbol = str5;
                                }
                                addNamespaceDecl(addSymbol, addSymbol8, elementImpl);
                                this.fLocalNSBinder.declarePrefix(addSymbol, this.fSymbolTable.addSymbol(str4));
                                this.fNamespaceContext.declarePrefix(addSymbol, addSymbol8);
                                prefix4 = addSymbol;
                            }
                            attr2.setPrefix(prefix4);
                        }
                    }
                } else {
                    ((AttrImpl) attr2).setIdAttribute(false);
                    if (attr2.getLocalName() == null) {
                        if (this.fNamespaceValidation) {
                            reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NullLocalAttrName", new Object[]{attr2.getNodeName()}), (short) 3, "NullLocalAttrName");
                        } else {
                            reportDOMError(this.fErrorHandler, this.fError, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NullLocalAttrName", new Object[]{attr2.getNodeName()}), (short) 2, "NullLocalAttrName");
                        }
                    }
                }
            }
        }
    }

    public final String normalizeAttributeValue(String str, Attr attr) {
        if (!attr.getSpecified()) {
            return str;
        }
        int length = str.length();
        XMLString xMLString = this.fNormalizedValue;
        if (xMLString.f64120ch.length < length) {
            xMLString.f64120ch = new char[length];
        }
        int i = 0;
        xMLString.length = 0;
        boolean z = false;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\t' || charAt == '\n') {
                XMLString xMLString2 = this.fNormalizedValue;
                char[] cArr = xMLString2.f64120ch;
                int i2 = xMLString2.length;
                xMLString2.length = i2 + 1;
                cArr[i2] = ' ';
            } else if (charAt == '\r') {
                XMLString xMLString3 = this.fNormalizedValue;
                char[] cArr2 = xMLString3.f64120ch;
                int i3 = xMLString3.length;
                xMLString3.length = i3 + 1;
                cArr2[i3] = ' ';
                int i4 = i + 1;
                if (i4 < length && str.charAt(i4) == '\n') {
                    i = i4;
                }
            } else {
                XMLString xMLString4 = this.fNormalizedValue;
                char[] cArr3 = xMLString4.f64120ch;
                int i5 = xMLString4.length;
                xMLString4.length = i5 + 1;
                cArr3[i5] = charAt;
                i++;
            }
            z = true;
            i++;
        }
        if (!z) {
            return str;
        }
        String xMLString5 = this.fNormalizedValue.toString();
        attr.setValue(xMLString5);
        return xMLString5;
    }

    public void normalizeDocument(CoreDocumentImpl coreDocumentImpl, DOMConfigurationImpl dOMConfigurationImpl) {
        this.fDocument = coreDocumentImpl;
        this.fConfiguration = dOMConfigurationImpl;
        this.fSymbolTable = (SymbolTable) dOMConfigurationImpl.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fNamespaceContext.reset();
        NamespaceContext namespaceContext = this.fNamespaceContext;
        String str = XMLSymbols.EMPTY_STRING;
        namespaceContext.declarePrefix(str, str);
        DOMConfigurationImpl dOMConfigurationImpl2 = this.fConfiguration;
        if ((dOMConfigurationImpl2.features & 64) != 0) {
            String str2 = (String) dOMConfigurationImpl2.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
            if (str2 != null && str2.equals(Constants.NS_XMLSCHEMA)) {
                this.fValidationHandler = CoreDOMImplementationImpl.singleton.getValidator("http://www.w3.org/2001/XMLSchema");
                this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema", true);
                this.fConfiguration.setFeature(XMLSchemaFactory.f113332j, true);
                this.fNamespaceValidation = true;
                this.fPSVI = (this.fConfiguration.features & 128) != 0;
            }
            this.fConfiguration.setFeature("http://xml.org/sax/features/validation", true);
            this.fDocument.clearIdentifiers();
            RevalidationHandler revalidationHandler = this.fValidationHandler;
            if (revalidationHandler != null) {
                ((XMLComponent) revalidationHandler).reset(this.fConfiguration);
            }
        }
        this.fErrorHandler = (DOMErrorHandler) this.fConfiguration.getParameter("error-handler");
        RevalidationHandler revalidationHandler2 = this.fValidationHandler;
        if (revalidationHandler2 != null) {
            revalidationHandler2.setDocumentHandler(this);
            RevalidationHandler revalidationHandler3 = this.fValidationHandler;
            String str3 = this.fDocument.fDocumentURI;
            revalidationHandler3.startDocument(new SimpleLocator(str3, str3, -1, -1), this.fDocument.encoding, this.fNamespaceContext, null);
        }
        try {
            Node firstChild = this.fDocument.getFirstChild();
            while (firstChild != null) {
                Node nextSibling = firstChild.getNextSibling();
                firstChild = normalizeNode(firstChild);
                if (firstChild == null) {
                    firstChild = nextSibling;
                }
            }
            RevalidationHandler revalidationHandler4 = this.fValidationHandler;
            if (revalidationHandler4 != null) {
                revalidationHandler4.endDocument(null);
                CoreDOMImplementationImpl.singleton.releaseValidator("http://www.w3.org/2001/XMLSchema", this.fValidationHandler);
                this.fValidationHandler = null;
            }
        } catch (RuntimeException e) {
            if (e != abort) {
                throw e;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x0258, code lost:
    
        if (r0 == 6) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x025e, code lost:
    
        if (r0 == 8) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0263, code lost:
    
        if (r0 == 4) goto L192;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.w3c.dom.Node normalizeNode(org.w3c.dom.Node r15) {
        /*
            Method dump skipped, instructions count: 1197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.dom.DOMNormalizer.normalizeNode(org.w3c.dom.Node):org.w3c.dom.Node");
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        boolean isIDType;
        Element element = (Element) this.fCurrentNode;
        int length = xMLAttributes.getLength();
        for (int i = 0; i < length; i++) {
            xMLAttributes.getName(i, this.fAttrQName);
            QName qName2 = this.fAttrQName;
            Attr attributeNodeNS = element.getAttributeNodeNS(qName2.uri, qName2.localpart);
            AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_PSVI");
            if (attributePSVI != null) {
                XSSimpleTypeDefinition memberTypeDefinition = attributePSVI.getMemberTypeDefinition();
                if (memberTypeDefinition != null) {
                    isIDType = ((XSSimpleType) memberTypeDefinition).isIDType();
                } else {
                    XSTypeDefinition typeDefinition = attributePSVI.getTypeDefinition();
                    isIDType = typeDefinition != null ? ((XSSimpleType) typeDefinition).isIDType() : false;
                }
                if (isIDType) {
                    ((ElementImpl) element).setIdAttributeNode(attributeNodeNS, true);
                }
                if (this.fPSVI) {
                    ((PSVIAttrNSImpl) attributeNodeNS).setPSVI(attributePSVI);
                }
                if ((this.fConfiguration.features & 2) != 0) {
                    boolean specified = attributeNodeNS.getSpecified();
                    attributeNodeNS.setValue(attributePSVI.getSchemaNormalizedValue());
                    if (!specified) {
                        ((AttrImpl) attributeNodeNS).setSpecified(specified);
                    }
                }
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void textDecl(String str, String str2, Augmentations augmentations) throws XNIException {
    }

    public final void updateQName(Node node, QName qName) {
        String prefix = node.getPrefix();
        String namespaceURI = node.getNamespaceURI();
        String localName = node.getLocalName();
        qName.prefix = (prefix == null || prefix.length() == 0) ? null : this.fSymbolTable.addSymbol(prefix);
        qName.localpart = localName != null ? this.fSymbolTable.addSymbol(localName) : null;
        qName.rawname = this.fSymbolTable.addSymbol(node.getNodeName());
        qName.uri = namespaceURI != null ? this.fSymbolTable.addSymbol(namespaceURI) : null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }
}
