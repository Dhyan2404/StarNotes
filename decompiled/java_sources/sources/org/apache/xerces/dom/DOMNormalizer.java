package org.apache.xerces.dom;

import com.caverock.androidsvg.SVGParser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Vector;
import org.apache.xerces.impl.Constants;
import org.apache.xerces.impl.RevalidationHandler;
import org.apache.xerces.impl.dtd.XMLDTDLoader;
import org.apache.xerces.impl.dtd.XMLDTDValidator;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.util.SimpleLocator;
import org.apache.xerces.jaxp.validation.XMLSchemaFactory;
import org.apache.xerces.p118xs.AttributePSVI;
import org.apache.xerces.p118xs.ElementPSVI;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.AugmentationsImpl;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLComponent;
import org.apache.xerces.xni.parser.XMLDocumentSource;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes13.dex */
public class DOMNormalizer implements XMLDocumentHandler {
    protected static final boolean DEBUG = false;
    protected static final boolean DEBUG_EVENTS = false;
    protected static final boolean DEBUG_ND = false;
    protected static final String PREFIX = "NS";
    protected DOMErrorHandler fErrorHandler;
    protected SymbolTable fSymbolTable;
    protected RevalidationHandler fValidationHandler;
    public static final RuntimeException abort = new RuntimeException() { // from class: org.apache.xerces.dom.DOMNormalizer.1
        private static final long serialVersionUID = 5361322877988412432L;

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    };
    public static final XMLString EMPTY_STRING = new XMLString();
    protected DOMConfigurationImpl fConfiguration = null;
    protected CoreDocumentImpl fDocument = null;
    protected final XMLAttributesProxy fAttrProxy = new XMLAttributesProxy();
    protected final QName fQName = new QName();

    /* renamed from: e */
    public final DOMErrorImpl f111876e = new DOMErrorImpl();
    protected boolean fNamespaceValidation = false;
    protected boolean fPSVI = false;
    protected final NamespaceContext fNamespaceContext = new NamespaceSupport();
    protected final NamespaceContext fLocalNSBinder = new NamespaceSupport();
    protected final ArrayList fAttributeList = new ArrayList(5);
    protected final DOMLocatorImpl fLocator = new DOMLocatorImpl();
    protected Node fCurrentNode = null;

    /* renamed from: f */
    public final QName f111877f = new QName();

    /* renamed from: g */
    public final XMLString f111878g = new XMLString(new char[16], 0, 0);

    /* renamed from: h */
    public boolean f111879h = false;

    /* loaded from: classes13.dex */
    public final class XMLAttributesProxy implements XMLAttributes {
        protected AttributeMap fAttributes;
        protected CoreDocumentImpl fDocument;
        protected ElementImpl fElement;
        protected final Vector fDTDTypes = new Vector(5);
        protected final Vector fAugmentations = new Vector(5);

        public XMLAttributesProxy() {
        }

        /* renamed from: a */
        public final String m69747a(String str) {
            return str.charAt(0) == '(' ? "NMTOKEN" : str;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public int addAttribute(QName qName, String str, String str2) {
            int xercesAttribute = this.fElement.getXercesAttribute(qName.uri, qName.localpart);
            if (xercesAttribute >= 0) {
                return xercesAttribute;
            }
            AttrImpl attrImpl = (AttrImpl) ((CoreDocumentImpl) this.fElement.getOwnerDocument()).createAttributeNS(qName.uri, qName.rawname, qName.localpart);
            attrImpl.setNodeValue(str2);
            int xercesAttributeNode = this.fElement.setXercesAttributeNode(attrImpl);
            this.fDTDTypes.insertElementAt(str, xercesAttributeNode);
            this.fAugmentations.insertElementAt(new AugmentationsImpl(), xercesAttributeNode);
            attrImpl.setSpecified(false);
            return xercesAttributeNode;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public Augmentations getAugmentations(int i) {
            return (Augmentations) this.fAugmentations.elementAt(i);
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public int getIndex(String str) {
            return -1;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public int getLength() {
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap != null) {
                return attributeMap.getLength();
            }
            return 0;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getLocalName(int i) {
            String localName;
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap == null || (localName = ((Node) attributeMap.getItem(i)).getLocalName()) == null) {
                return null;
            }
            return DOMNormalizer.this.fSymbolTable.addSymbol(localName);
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void getName(int i, QName qName) {
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap != null) {
                DOMNormalizer.this.updateQName((Node) attributeMap.getItem(i), qName);
            }
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getNonNormalizedValue(int i) {
            return null;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getPrefix(int i) {
            String prefix;
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap == null || (prefix = ((Node) attributeMap.getItem(i)).getPrefix()) == null || prefix.length() == 0) {
                return null;
            }
            return DOMNormalizer.this.fSymbolTable.addSymbol(prefix);
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getQName(int i) {
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap == null) {
                return null;
            }
            return DOMNormalizer.this.fSymbolTable.addSymbol(((Node) attributeMap.getItem(i)).getNodeName());
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getType(int i) {
            String str = (String) this.fDTDTypes.elementAt(i);
            return str != null ? m69747a(str) : "CDATA";
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getURI(int i) {
            String namespaceURI;
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap == null || (namespaceURI = ((Node) attributeMap.getItem(i)).getNamespaceURI()) == null) {
                return null;
            }
            return DOMNormalizer.this.fSymbolTable.addSymbol(namespaceURI);
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getValue(int i) {
            AttributeMap attributeMap = this.fAttributes;
            return attributeMap != null ? attributeMap.item(i).getNodeValue() : "";
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public boolean isSpecified(int i) {
            return ((Attr) this.fAttributes.getItem(i)).getSpecified();
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void removeAllAttributes() {
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void removeAttributeAt(int i) {
        }

        public void setAttributes(AttributeMap attributeMap, CoreDocumentImpl coreDocumentImpl, ElementImpl elementImpl) {
            this.fDocument = coreDocumentImpl;
            this.fAttributes = attributeMap;
            this.fElement = elementImpl;
            if (attributeMap == null) {
                this.fDTDTypes.setSize(0);
                this.fAugmentations.setSize(0);
                return;
            }
            int length = attributeMap.getLength();
            this.fDTDTypes.setSize(length);
            this.fAugmentations.setSize(length);
            for (int i = 0; i < length; i++) {
                this.fAugmentations.setElementAt(new AugmentationsImpl(), i);
            }
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void setAugmentations(int i, Augmentations augmentations) {
            this.fAugmentations.setElementAt(augmentations, i);
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void setName(int i, QName qName) {
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void setNonNormalizedValue(int i, String str) {
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void setSpecified(int i, boolean z) {
            ((AttrImpl) this.fAttributes.getItem(i)).setSpecified(z);
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void setType(int i, String str) {
            this.fDTDTypes.setElementAt(str, i);
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public void setValue(int i, String str) {
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap != null) {
                AttrImpl attrImpl = (AttrImpl) attributeMap.getItem(i);
                boolean specified = attrImpl.getSpecified();
                attrImpl.setValue(str);
                attrImpl.setSpecified(specified);
            }
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public Augmentations getAugmentations(String str) {
            return null;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public int getIndex(String str, String str2) {
            return -1;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getType(String str) {
            return "CDATA";
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getValue(String str) {
            return null;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public Augmentations getAugmentations(String str, String str2) {
            return null;
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getType(String str, String str2) {
            return "CDATA";
        }

        @Override // org.apache.xerces.xni.XMLAttributes
        public String getValue(String str, String str2) {
            Node namedItemNS;
            AttributeMap attributeMap = this.fAttributes;
            if (attributeMap == null || (namedItemNS = attributeMap.getNamedItemNS(str, str2)) == null) {
                return null;
            }
            return namedItemNS.getNodeValue();
        }
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

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0047, code lost:
    
        if (org.apache.xerces.util.XMLChar.isSupplemental(org.apache.xerces.util.XMLChar.supplemental(r7, r10)) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00b6, code lost:
    
        if (org.apache.xerces.util.XMLChar.isSupplemental(org.apache.xerces.util.XMLChar.supplemental(r7, r10)) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void isCDataWF(org.w3c.dom.DOMErrorHandler r18, org.apache.xerces.dom.DOMErrorImpl r19, org.apache.xerces.dom.DOMLocatorImpl r20, java.lang.String r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.dom.DOMNormalizer.isCDataWF(org.w3c.dom.DOMErrorHandler, org.apache.xerces.dom.DOMErrorImpl, org.apache.xerces.dom.DOMLocatorImpl, java.lang.String, boolean):void");
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
                    reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInComment", new Object[]{Integer.toString(charArray[i - 1], 16)}), (short) 2, "wf-invalid-character");
                } else {
                    if (c == '-' && i2 < length && charArray[i2] == '-') {
                        reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "DashDashInComment", null), (short) 2, "wf-invalid-character");
                    }
                    i = i2;
                }
            }
            return;
        }
        while (i < length) {
            int i4 = i + 1;
            char c3 = charArray[i];
            if (XMLChar.isInvalid(c3)) {
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
                reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "InvalidCharInComment", new Object[]{Integer.toString(charArray[i - 1], 16)}), (short) 2, "wf-invalid-character");
            } else {
                if (c3 == '-' && i4 < length && charArray[i4] == '-') {
                    reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "DashDashInComment", null), (short) 2, "wf-invalid-character");
                }
                i = i4;
            }
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
        String str3;
        String stringBuffer;
        if (str == XMLSymbols.EMPTY_STRING) {
            str3 = NamespaceContext.XMLNS_URI;
            stringBuffer = XMLSymbols.PREFIX_XMLNS;
        } else {
            str3 = NamespaceContext.XMLNS_URI;
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("xmlns:");
            stringBuffer2.append(str);
            stringBuffer = stringBuffer2.toString();
        }
        elementImpl.setAttributeNS(str3, stringBuffer, str2);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void characters(XMLString xMLString, Augmentations augmentations) throws XNIException {
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
        if (augmentations == null || (elementPSVI = (ElementPSVI) augmentations.getItem("ELEMENT_PSVI")) == null) {
            Node node = this.fCurrentNode;
            if (node instanceof ElementNSImpl) {
                ((ElementNSImpl) node).setType(null);
                return;
            }
            return;
        }
        Node node2 = this.fCurrentNode;
        ElementImpl elementImpl = (ElementImpl) node2;
        if (this.fPSVI) {
            ((PSVIElementNSImpl) node2).setPSVI(elementPSVI);
        }
        if (elementImpl instanceof ElementNSImpl) {
            XSTypeDefinition memberTypeDefinition = elementPSVI.getMemberTypeDefinition();
            if (memberTypeDefinition == null) {
                memberTypeDefinition = elementPSVI.getTypeDefinition();
            }
            ((ElementNSImpl) elementImpl).setType(memberTypeDefinition);
        }
        String schemaNormalizedValue = elementPSVI.getSchemaNormalizedValue();
        if ((this.fConfiguration.features & 2) != 0) {
            if (schemaNormalizedValue == null) {
                return;
            }
        } else if (elementImpl.getTextContent().length() != 0 || schemaNormalizedValue == null) {
            return;
        }
        elementImpl.setTextContent(schemaNormalizedValue);
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
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

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public XMLDocumentSource getDocumentSource() {
        return null;
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void ignorableWhitespace(XMLString xMLString, Augmentations augmentations) throws XNIException {
        this.f111879h = true;
    }

    public final void namespaceFixUp(ElementImpl elementImpl, AttributeMap attributeMap) {
        String formatMessage;
        DOMErrorHandler dOMErrorHandler;
        DOMErrorImpl dOMErrorImpl;
        DOMLocatorImpl dOMLocatorImpl;
        short s;
        String formatMessage2;
        DOMErrorHandler dOMErrorHandler2;
        DOMErrorImpl dOMErrorImpl2;
        DOMLocatorImpl dOMLocatorImpl2;
        short s2;
        if (attributeMap != null) {
            for (int i = 0; i < attributeMap.getLength(); i++) {
                Attr attr = (Attr) attributeMap.getItem(i);
                String namespaceURI = attr.getNamespaceURI();
                if (namespaceURI != null) {
                    String str = NamespaceContext.XMLNS_URI;
                    if (namespaceURI.equals(str)) {
                        String nodeValue = attr.getNodeValue();
                        if (nodeValue == null) {
                            nodeValue = XMLSymbols.EMPTY_STRING;
                        }
                        if (this.fDocument.errorChecking && nodeValue.equals(str)) {
                            this.fLocator.fRelatedNode = attr;
                            reportDOMError(this.fErrorHandler, this.f111876e, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/TR/1998/REC-xml-19980210", "CantBindXMLNS", null), (short) 2, "CantBindXMLNS");
                        } else {
                            String prefix = attr.getPrefix();
                            String addSymbol = (prefix == null || prefix.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix);
                            String addSymbol2 = this.fSymbolTable.addSymbol(attr.getLocalName());
                            if (addSymbol == XMLSymbols.PREFIX_XMLNS) {
                                String addSymbol3 = this.fSymbolTable.addSymbol(nodeValue);
                                if (addSymbol3.length() != 0) {
                                    this.fNamespaceContext.declarePrefix(addSymbol2, addSymbol3);
                                }
                            } else {
                                String addSymbol4 = this.fSymbolTable.addSymbol(nodeValue);
                                NamespaceContext namespaceContext = this.fNamespaceContext;
                                String str2 = XMLSymbols.EMPTY_STRING;
                                if (addSymbol4.length() == 0) {
                                    addSymbol4 = null;
                                }
                                namespaceContext.declarePrefix(str2, addSymbol4);
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
        } else if (elementImpl.getLocalName() == null) {
            if (this.fNamespaceValidation) {
                formatMessage = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NullLocalElementName", new Object[]{elementImpl.getNodeName()});
                dOMErrorHandler = this.fErrorHandler;
                dOMErrorImpl = this.f111876e;
                dOMLocatorImpl = this.fLocator;
                s = 3;
            } else {
                formatMessage = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NullLocalElementName", new Object[]{elementImpl.getNodeName()});
                dOMErrorHandler = this.fErrorHandler;
                dOMErrorImpl = this.f111876e;
                dOMLocatorImpl = this.fLocator;
                s = 2;
            }
            reportDOMError(dOMErrorHandler, dOMErrorImpl, dOMLocatorImpl, formatMessage, s, "NullLocalElementName");
        } else {
            NamespaceContext namespaceContext2 = this.fNamespaceContext;
            String str3 = XMLSymbols.EMPTY_STRING;
            String uri = namespaceContext2.getURI(str3);
            if (uri != null && uri.length() > 0) {
                addNamespaceDecl(str3, str3, elementImpl);
                this.fLocalNSBinder.declarePrefix(str3, null);
                this.fNamespaceContext.declarePrefix(str3, null);
            }
        }
        if (attributeMap != null) {
            attributeMap.cloneMap(this.fAttributeList);
            for (int i2 = 0; i2 < this.fAttributeList.size(); i2++) {
                Attr attr2 = (Attr) this.fAttributeList.get(i2);
                this.fLocator.fRelatedNode = attr2;
                attr2.normalize();
                String value = attr2.getValue();
                String namespaceURI3 = attr2.getNamespaceURI();
                if (value == null) {
                    value = XMLSymbols.EMPTY_STRING;
                }
                String str4 = value;
                CoreDocumentImpl coreDocumentImpl = this.fDocument;
                if (coreDocumentImpl.errorChecking && (this.fConfiguration.features & 256) != 0) {
                    isAttrValueWF(this.fErrorHandler, this.f111876e, this.fLocator, attributeMap, attr2, str4, coreDocumentImpl.isXML11Version());
                    if (this.fDocument.isXMLVersionChanged()) {
                        if (!(this.fNamespaceValidation ? CoreDocumentImpl.isValidQName(attr2.getPrefix(), attr2.getLocalName(), this.fDocument.isXML11Version()) : CoreDocumentImpl.isXMLName(attr2.getNodeName(), this.fDocument.isXML11Version()))) {
                            reportDOMError(this.fErrorHandler, this.f111876e, this.fLocator, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "wf-invalid-character-in-node-name", new Object[]{"Attr", attr2.getNodeName()}), (short) 2, "wf-invalid-character-in-node-name");
                        }
                    }
                }
                if (namespaceURI3 != null) {
                    String prefix3 = attr2.getPrefix();
                    String addSymbol7 = (prefix3 == null || prefix3.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix3);
                    this.fSymbolTable.addSymbol(attr2.getLocalName());
                    if (!namespaceURI3.equals(NamespaceContext.XMLNS_URI)) {
                        ((AttrImpl) attr2).setIdAttribute(false);
                        String addSymbol8 = this.fSymbolTable.addSymbol(namespaceURI3);
                        String uri2 = this.fNamespaceContext.getURI(addSymbol7);
                        String str5 = XMLSymbols.EMPTY_STRING;
                        if (addSymbol7 == str5 || uri2 != addSymbol8) {
                            String prefix4 = this.fNamespaceContext.getPrefix(addSymbol8);
                            if (prefix4 == null || prefix4 == str5) {
                                if (addSymbol7 == str5 || this.fLocalNSBinder.getURI(addSymbol7) != null) {
                                    SymbolTable symbolTable = this.fSymbolTable;
                                    StringBuffer stringBuffer = new StringBuffer();
                                    stringBuffer.append(PREFIX);
                                    stringBuffer.append(1);
                                    addSymbol7 = symbolTable.addSymbol(stringBuffer.toString());
                                    int i3 = 2;
                                    while (this.fLocalNSBinder.getURI(addSymbol7) != null) {
                                        SymbolTable symbolTable2 = this.fSymbolTable;
                                        StringBuffer stringBuffer2 = new StringBuffer();
                                        stringBuffer2.append(PREFIX);
                                        stringBuffer2.append(i3);
                                        addSymbol7 = symbolTable2.addSymbol(stringBuffer2.toString());
                                        i3++;
                                    }
                                }
                                addNamespaceDecl(addSymbol7, addSymbol8, elementImpl);
                                this.fLocalNSBinder.declarePrefix(addSymbol7, this.fSymbolTable.addSymbol(str4));
                                this.fNamespaceContext.declarePrefix(addSymbol7, addSymbol8);
                                prefix4 = addSymbol7;
                            }
                            attr2.setPrefix(prefix4);
                        }
                    }
                } else {
                    ((AttrImpl) attr2).setIdAttribute(false);
                    if (attr2.getLocalName() == null) {
                        if (this.fNamespaceValidation) {
                            formatMessage2 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NullLocalAttrName", new Object[]{attr2.getNodeName()});
                            dOMErrorHandler2 = this.fErrorHandler;
                            dOMErrorImpl2 = this.f111876e;
                            dOMLocatorImpl2 = this.fLocator;
                            s2 = 3;
                        } else {
                            formatMessage2 = DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NullLocalAttrName", new Object[]{attr2.getNodeName()});
                            dOMErrorHandler2 = this.fErrorHandler;
                            dOMErrorImpl2 = this.f111876e;
                            dOMLocatorImpl2 = this.fLocator;
                            s2 = 2;
                        }
                        reportDOMError(dOMErrorHandler2, dOMErrorImpl2, dOMLocatorImpl2, formatMessage2, s2, "NullLocalAttrName");
                    }
                }
            }
        }
    }

    public void normalizeDocument(CoreDocumentImpl coreDocumentImpl, DOMConfigurationImpl dOMConfigurationImpl) {
        String[] strArr;
        String str;
        String str2;
        this.fDocument = coreDocumentImpl;
        this.fConfiguration = dOMConfigurationImpl;
        this.f111879h = false;
        this.fNamespaceValidation = false;
        String xmlVersion = coreDocumentImpl.getXmlVersion();
        this.fSymbolTable = (SymbolTable) this.fConfiguration.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fNamespaceContext.reset();
        this.fNamespaceContext.declarePrefix(XMLSymbols.EMPTY_STRING, null);
        DOMConfigurationImpl dOMConfigurationImpl2 = this.fConfiguration;
        if ((dOMConfigurationImpl2.features & 64) != 0) {
            String str3 = (String) dOMConfigurationImpl2.getProperty("http://java.sun.com/xml/jaxp/properties/schemaLanguage");
            if (str3 == null || !str3.equals(Constants.NS_XMLSCHEMA)) {
                strArr = str3 != null ? (String[]) this.fConfiguration.getProperty("http://java.sun.com/xml/jaxp/properties/schemaSource") : null;
                this.fConfiguration.setDTDValidatorFactory(xmlVersion);
                this.fValidationHandler = CoreDOMImplementationImpl.f111848r.m69736c("http://www.w3.org/TR/REC-xml", xmlVersion);
                this.fPSVI = false;
                str = "http://www.w3.org/TR/REC-xml";
            } else {
                str = "http://www.w3.org/2001/XMLSchema";
                this.fValidationHandler = CoreDOMImplementationImpl.f111848r.m69736c("http://www.w3.org/2001/XMLSchema", xmlVersion);
                this.fConfiguration.setFeature("http://apache.org/xml/features/validation/schema", true);
                this.fConfiguration.setFeature(XMLSchemaFactory.f113332j, true);
                this.fNamespaceValidation = true;
                this.fPSVI = (this.fConfiguration.features & 128) != 0;
                strArr = null;
            }
            this.fConfiguration.setFeature("http://xml.org/sax/features/validation", true);
            this.fDocument.clearIdentifiers();
            RevalidationHandler revalidationHandler = this.fValidationHandler;
            if (revalidationHandler != null) {
                ((XMLComponent) revalidationHandler).reset(this.fConfiguration);
            }
        } else {
            this.fValidationHandler = null;
            strArr = null;
            str = null;
        }
        this.fErrorHandler = (DOMErrorHandler) this.fConfiguration.getParameter("error-handler");
        RevalidationHandler revalidationHandler2 = this.fValidationHandler;
        if (revalidationHandler2 != null) {
            revalidationHandler2.setDocumentHandler(this);
            RevalidationHandler revalidationHandler3 = this.fValidationHandler;
            String str4 = this.fDocument.fDocumentURI;
            revalidationHandler3.startDocument(new SimpleLocator(str4, str4, -1, -1), this.fDocument.encoding, this.fNamespaceContext, null);
            this.fValidationHandler.xmlDecl(this.fDocument.getXmlVersion(), this.fDocument.getXmlEncoding(), this.fDocument.getXmlStandalone() ? "yes" : SVGParser.f16048t, null);
        }
        if (str == "http://www.w3.org/TR/REC-xml") {
            if (strArr != null) {
                try {
                    str2 = strArr[0];
                } catch (RuntimeException e) {
                    RevalidationHandler revalidationHandler4 = this.fValidationHandler;
                    if (revalidationHandler4 != null) {
                        revalidationHandler4.setDocumentHandler(null);
                        CoreDOMImplementationImpl.f111848r.m69738e(str, xmlVersion, this.fValidationHandler);
                        this.fValidationHandler = null;
                    }
                    if (e != abort) {
                        throw e;
                    }
                    return;
                }
            } else {
                str2 = null;
            }
            m69746p(xmlVersion, str2);
        }
        Node firstChild = this.fDocument.getFirstChild();
        while (firstChild != null) {
            Node nextSibling = firstChild.getNextSibling();
            firstChild = normalizeNode(firstChild);
            if (firstChild == null) {
                firstChild = nextSibling;
            }
        }
        RevalidationHandler revalidationHandler5 = this.fValidationHandler;
        if (revalidationHandler5 != null) {
            revalidationHandler5.endDocument(null);
            this.fValidationHandler.setDocumentHandler(null);
            CoreDOMImplementationImpl.f111848r.m69738e(str, xmlVersion, this.fValidationHandler);
            this.fValidationHandler = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0251, code lost:
    
        if (r0 == 6) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0257, code lost:
    
        if (r0 == 8) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x025c, code lost:
    
        if (r0 == 4) goto L194;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.w3c.dom.Node normalizeNode(org.w3c.dom.Node r15) {
        /*
            Method dump skipped, instructions count: 1092
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.dom.DOMNormalizer.normalizeNode(org.w3c.dom.Node):org.w3c.dom.Node");
    }

    /* renamed from: o */
    public final String m69745o(String str, Attr attr) {
        if (!attr.getSpecified()) {
            return str;
        }
        int length = str.length();
        XMLString xMLString = this.f111878g;
        if (xMLString.f113585ch.length < length) {
            xMLString.f113585ch = new char[length];
        }
        int i = 0;
        xMLString.length = 0;
        boolean z = false;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '\t' || charAt == '\n') {
                XMLString xMLString2 = this.f111878g;
                char[] cArr = xMLString2.f113585ch;
                int i2 = xMLString2.length;
                xMLString2.length = i2 + 1;
                cArr[i2] = ' ';
            } else if (charAt == '\r') {
                XMLString xMLString3 = this.f111878g;
                char[] cArr2 = xMLString3.f113585ch;
                int i3 = xMLString3.length;
                xMLString3.length = i3 + 1;
                cArr2[i3] = ' ';
                int i4 = i + 1;
                if (i4 < length && str.charAt(i4) == '\n') {
                    i = i4;
                }
            } else {
                XMLString xMLString4 = this.f111878g;
                char[] cArr3 = xMLString4.f113585ch;
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
        String xMLString5 = this.f111878g.toString();
        attr.setValue(xMLString5);
        return xMLString5;
    }

    /* renamed from: p */
    public final void m69746p(String str, String str2) {
        String str3;
        String str4;
        String str5;
        String str6;
        String documentURI = this.fDocument.getDocumentURI();
        DocumentType doctype = this.fDocument.getDoctype();
        XMLDTDLoader xMLDTDLoader = null;
        if (doctype != null) {
            String name = doctype.getName();
            String publicId = doctype.getPublicId();
            if (str2 == null || str2.length() == 0) {
                str2 = doctype.getSystemId();
            }
            str3 = str2;
            str6 = doctype.getInternalSubset();
            str5 = publicId;
            str4 = name;
        } else {
            Element documentElement = this.fDocument.getDocumentElement();
            if (documentElement == null) {
                return;
            }
            String nodeName = documentElement.getNodeName();
            if (str2 == null || str2.length() == 0) {
                return;
            }
            str3 = str2;
            str4 = nodeName;
            str5 = null;
            str6 = null;
        }
        try {
            this.fValidationHandler.doctypeDecl(str4, str5, str3, null);
            CoreDOMImplementationImpl coreDOMImplementationImpl = CoreDOMImplementationImpl.f111848r;
            XMLDTDLoader m69735b = coreDOMImplementationImpl.m69735b(str);
            try {
                m69735b.setFeature("http://xml.org/sax/features/validation", true);
                m69735b.setEntityResolver(this.fConfiguration.getEntityResolver());
                m69735b.setErrorHandler(this.fConfiguration.getErrorHandler());
                m69735b.loadGrammarWithContext((XMLDTDValidator) this.fValidationHandler, str4, str5, str3, documentURI, str6);
                coreDOMImplementationImpl.m69737d(str, m69735b);
            } catch (IOException unused) {
                xMLDTDLoader = m69735b;
                if (xMLDTDLoader != null) {
                    CoreDOMImplementationImpl.f111848r.m69737d(str, xMLDTDLoader);
                }
            } catch (Throwable th) {
                th = th;
                xMLDTDLoader = m69735b;
                if (xMLDTDLoader != null) {
                    CoreDOMImplementationImpl.f111848r.m69737d(str, xMLDTDLoader);
                }
                throw th;
            }
        } catch (IOException unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void processingInstruction(String str, XMLString xMLString, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void setDocumentSource(XMLDocumentSource xMLDocumentSource) {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startCDATA(Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startDocument(XMLLocator xMLLocator, String str, NamespaceContext namespaceContext, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startElement(QName qName, XMLAttributes xMLAttributes, Augmentations augmentations) throws XNIException {
        String str;
        String schemaNormalizedValue;
        Element element = (Element) this.fCurrentNode;
        int length = xMLAttributes.getLength();
        for (int i = 0; i < length; i++) {
            xMLAttributes.getName(i, this.f111877f);
            QName qName2 = this.f111877f;
            Attr attributeNodeNS = element.getAttributeNodeNS(qName2.uri, qName2.localpart);
            if (attributeNodeNS == null) {
                attributeNodeNS = element.getAttributeNode(this.f111877f.rawname);
            }
            AttributePSVI attributePSVI = (AttributePSVI) xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_PSVI");
            if (attributePSVI != null) {
                XSTypeDefinition memberTypeDefinition = attributePSVI.getMemberTypeDefinition();
                if ((memberTypeDefinition == null && (memberTypeDefinition = attributePSVI.getTypeDefinition()) == null) ? false : ((XSSimpleType) memberTypeDefinition).isIDType()) {
                    ((ElementImpl) element).setIdAttributeNode(attributeNodeNS, true);
                }
                if (this.fPSVI) {
                    ((PSVIAttrNSImpl) attributeNodeNS).setPSVI(attributePSVI);
                }
                ((AttrImpl) attributeNodeNS).setType(memberTypeDefinition);
                if ((this.fConfiguration.features & 2) != 0 && (schemaNormalizedValue = attributePSVI.getSchemaNormalizedValue()) != null) {
                    boolean specified = attributeNodeNS.getSpecified();
                    attributeNodeNS.setValue(schemaNormalizedValue);
                    if (!specified) {
                        ((AttrImpl) attributeNodeNS).setSpecified(specified);
                    }
                }
            } else {
                if (Boolean.TRUE.equals(xMLAttributes.getAugmentations(i).getItem("ATTRIBUTE_DECLARED"))) {
                    str = xMLAttributes.getType(i);
                    if ("ID".equals(str)) {
                        ((ElementImpl) element).setIdAttributeNode(attributeNodeNS, true);
                    }
                } else {
                    str = null;
                }
                ((AttrImpl) attributeNodeNS).setType(str);
            }
        }
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void startGeneralEntity(String str, XMLResourceIdentifier xMLResourceIdentifier, String str2, Augmentations augmentations) throws XNIException {
    }

    @Override // org.apache.xerces.xni.XMLDocumentHandler
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

    @Override // org.apache.xerces.xni.XMLDocumentHandler
    public void xmlDecl(String str, String str2, String str3, Augmentations augmentations) throws XNIException {
    }
}
