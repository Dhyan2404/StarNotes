package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xalan.internal.xsltc.dom.SAXImpl;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Stack;
import java.util.Vector;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes10.dex */
public class DOM2SAX implements XMLReader, Locator {
    private static final String EMPTYSTRING = "";
    private static final String XMLNS_PREFIX = "xmlns";
    private Node _dom;
    private ContentHandler _sax = null;
    private LexicalHandler _lex = null;
    private SAXImpl _saxImpl = null;
    private Hashtable _nsPrefixes = new Hashtable();

    public DOM2SAX(Node node) {
        this._dom = null;
        this._dom = node;
    }

    private void endPrefixMapping(String str) throws SAXException {
        Stack stack = (Stack) this._nsPrefixes.get(str);
        if (stack != null) {
            this._sax.endPrefixMapping(str);
            stack.pop();
        }
    }

    private static String getLocalName(Node node) {
        String localName = node.getLocalName();
        if (localName != null) {
            return localName;
        }
        String nodeName = node.getNodeName();
        int lastIndexOf = nodeName.lastIndexOf(58);
        return lastIndexOf > 0 ? nodeName.substring(lastIndexOf + 1) : nodeName;
    }

    private String getNodeTypeFromCode(short s) {
        switch (s) {
            case 1:
                return "ELEMENT_NODE";
            case 2:
                return "ATTRIBUTE_NODE";
            case 3:
                return "TEXT_NODE";
            case 4:
                return "CDATA_SECTION_NODE";
            case 5:
                return "ENTITY_REFERENCE_NODE";
            case 6:
                return "ENTITY_NODE";
            case 7:
                return "PROCESSING_INSTRUCTION_NODE";
            case 8:
                return "COMMENT_NODE";
            case 9:
                return "DOCUMENT_NODE";
            case 10:
                return "DOCUMENT_TYPE_NODE";
            case 11:
                return "DOCUMENT_FRAGMENT_NODE";
            case 12:
                return "NOTATION_NODE";
            default:
                return null;
        }
    }

    private boolean startPrefixMapping(String str, String str2) throws SAXException {
        Stack stack = (Stack) this._nsPrefixes.get(str);
        if (stack == null) {
            this._sax.startPrefixMapping(str, str2);
            Hashtable hashtable = this._nsPrefixes;
            Stack stack2 = new Stack();
            hashtable.put(str, stack2);
            stack2.push(str2);
            return true;
        }
        if (stack.isEmpty()) {
            this._sax.startPrefixMapping(str, str2);
            stack.push(str2);
            return true;
        }
        if (((String) stack.peek()).equals(str2)) {
            return false;
        }
        this._sax.startPrefixMapping(str, str2);
        stack.push(str2);
        return true;
    }

    @Override // org.xml.sax.Locator
    public int getColumnNumber() {
        return 0;
    }

    @Override // org.xml.sax.XMLReader
    public ContentHandler getContentHandler() {
        return this._sax;
    }

    @Override // org.xml.sax.XMLReader
    public DTDHandler getDTDHandler() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public EntityResolver getEntityResolver() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public ErrorHandler getErrorHandler() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public boolean getFeature(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        return false;
    }

    @Override // org.xml.sax.Locator
    public int getLineNumber() {
        return 0;
    }

    @Override // org.xml.sax.XMLReader
    public Object getProperty(String str) throws SAXNotRecognizedException, SAXNotSupportedException {
        return null;
    }

    @Override // org.xml.sax.Locator
    public String getPublicId() {
        return null;
    }

    @Override // org.xml.sax.Locator
    public String getSystemId() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws IOException, SAXException {
        parse(this._dom);
    }

    @Override // org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) throws NullPointerException {
        this._sax = contentHandler;
        if (contentHandler instanceof LexicalHandler) {
            this._lex = (LexicalHandler) contentHandler;
        }
        if (contentHandler instanceof SAXImpl) {
            this._saxImpl = (SAXImpl) contentHandler;
        }
    }

    @Override // org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler dTDHandler) throws NullPointerException {
    }

    @Override // org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) throws NullPointerException {
    }

    @Override // org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) throws NullPointerException {
    }

    @Override // org.xml.sax.XMLReader
    public void setFeature(String str, boolean z) throws SAXNotRecognizedException, SAXNotSupportedException {
    }

    @Override // org.xml.sax.XMLReader
    public void setProperty(String str, Object obj) throws SAXNotRecognizedException, SAXNotSupportedException {
    }

    public void parse() throws IOException, SAXException {
        Node node = this._dom;
        if (node != null) {
            if (node.getNodeType() != 9) {
                this._sax.startDocument();
                parse(this._dom);
                this._sax.endDocument();
                return;
            }
            parse(this._dom);
        }
    }

    private void parse(Node node) throws IOException, SAXException {
        String substring;
        if (node == null) {
            return;
        }
        short nodeType = node.getNodeType();
        if (nodeType != 1) {
            if (nodeType == 3) {
                String nodeValue = node.getNodeValue();
                this._sax.characters(nodeValue.toCharArray(), 0, nodeValue.length());
                return;
            }
            if (nodeType == 4) {
                String nodeValue2 = node.getNodeValue();
                LexicalHandler lexicalHandler = this._lex;
                if (lexicalHandler != null) {
                    lexicalHandler.startCDATA();
                    this._sax.characters(nodeValue2.toCharArray(), 0, nodeValue2.length());
                    this._lex.endCDATA();
                    return;
                }
                this._sax.characters(nodeValue2.toCharArray(), 0, nodeValue2.length());
                return;
            }
            if (nodeType == 7) {
                this._sax.processingInstruction(node.getNodeName(), node.getNodeValue());
                return;
            }
            if (nodeType == 8) {
                if (this._lex != null) {
                    String nodeValue3 = node.getNodeValue();
                    this._lex.comment(nodeValue3.toCharArray(), 0, nodeValue3.length());
                    return;
                }
                return;
            }
            if (nodeType != 9) {
                return;
            }
            this._sax.setDocumentLocator(this);
            this._sax.startDocument();
            for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                parse(firstChild);
            }
            this._sax.endDocument();
            return;
        }
        Vector vector = new Vector();
        AttributesImpl attributesImpl = new AttributesImpl();
        NamedNodeMap attributes = node.getAttributes();
        int length = attributes.getLength();
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Node item = attributes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName.startsWith("xmlns")) {
                String nodeValue4 = item.getNodeValue();
                int lastIndexOf = nodeName.lastIndexOf(58);
                substring = lastIndexOf > 0 ? nodeName.substring(lastIndexOf + 1) : "";
                if (startPrefixMapping(substring, nodeValue4)) {
                    vector.addElement(substring);
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < length; i2++) {
            Node item2 = attributes.item(i2);
            String nodeName2 = item2.getNodeName();
            if (!nodeName2.startsWith("xmlns")) {
                String namespaceURI = item2.getNamespaceURI();
                getLocalName(item2);
                if (namespaceURI != null) {
                    int lastIndexOf2 = nodeName2.lastIndexOf(58);
                    String substring2 = lastIndexOf2 > 0 ? nodeName2.substring(0, lastIndexOf2) : "";
                    if (startPrefixMapping(substring2, namespaceURI)) {
                        vector.addElement(substring2);
                    }
                }
                attributesImpl.addAttribute(item2.getNamespaceURI(), getLocalName(item2), nodeName2, "CDATA", item2.getNodeValue());
            }
        }
        String nodeName3 = node.getNodeName();
        String namespaceURI2 = node.getNamespaceURI();
        String localName = getLocalName(node);
        if (namespaceURI2 != null) {
            int lastIndexOf3 = nodeName3.lastIndexOf(58);
            substring = lastIndexOf3 > 0 ? nodeName3.substring(0, lastIndexOf3) : "";
            if (startPrefixMapping(substring, namespaceURI2)) {
                vector.addElement(substring);
            }
        }
        SAXImpl sAXImpl = this._saxImpl;
        if (sAXImpl != null) {
            sAXImpl.startElement(namespaceURI2, localName, nodeName3, attributesImpl, node);
        } else {
            this._sax.startElement(namespaceURI2, localName, nodeName3, attributesImpl);
        }
        for (Node firstChild2 = node.getFirstChild(); firstChild2 != null; firstChild2 = firstChild2.getNextSibling()) {
            parse(firstChild2);
        }
        this._sax.endElement(namespaceURI2, localName, nodeName3);
        int size = vector.size();
        for (int i3 = 0; i3 < size; i3++) {
            endPrefixMapping((String) vector.elementAt(i3));
        }
    }

    @Override // org.xml.sax.XMLReader
    public void parse(String str) throws IOException, SAXException {
        throw new IOException("This method is not yet implemented.");
    }
}
