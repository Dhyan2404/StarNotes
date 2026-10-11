package com.sun.org.apache.xalan.internal.xsltc.trax;

import com.sun.org.apache.xalan.internal.xsltc.runtime.Constants;
import java.util.Stack;
import java.util.Vector;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.ext.Locator2;

/* loaded from: classes10.dex */
public class SAX2DOM implements ContentHandler, LexicalHandler, Constants {
    private Document _document;
    private Node _lastSibling;
    private Vector _namespaceDecls;
    private Node _nextSibling;
    private Stack _nodeStk;
    private Node _root;
    private Locator locator;
    private boolean needToSetDocumentInfo;

    public SAX2DOM() throws ParserConfigurationException {
        this._root = null;
        this._document = null;
        this._nextSibling = null;
        this._nodeStk = new Stack();
        this._namespaceDecls = null;
        this._lastSibling = null;
        this.locator = null;
        this.needToSetDocumentInfo = true;
        Document newDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
        this._document = newDocument;
        this._root = newDocument;
    }

    private void setDocumentInfo() {
        Locator locator = this.locator;
        if (locator == null) {
            return;
        }
        try {
            this._document.setXmlVersion(((Locator2) locator).getXMLVersion());
        } catch (ClassCastException unused) {
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        Node node = (Node) this._nodeStk.peek();
        if (node != this._document) {
            String str = new String(cArr, i, i2);
            Node node2 = this._lastSibling;
            if (node2 != null && node2.getNodeType() == 3) {
                ((Text) this._lastSibling).appendData(str);
            } else if (node != this._root || this._nextSibling == null) {
                this._lastSibling = node.appendChild(this._document.createTextNode(str));
            } else {
                this._lastSibling = node.insertBefore(this._document.createTextNode(str), this._nextSibling);
            }
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) {
        Node node;
        Node node2 = (Node) this._nodeStk.peek();
        Comment createComment = this._document.createComment(new String(cArr, i, i2));
        if (createComment != null) {
            if (node2 != this._root || (node = this._nextSibling) == null) {
                node2.appendChild(createComment);
            } else {
                node2.insertBefore(createComment, node);
            }
            this._lastSibling = createComment;
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() {
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() {
        this._nodeStk.pop();
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        this._nodeStk.pop();
        this._lastSibling = null;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) {
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
    }

    public Node getDOM() {
        return this._root;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) {
    }

    @Override // org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) {
        Node node;
        Node node2 = (Node) this._nodeStk.peek();
        ProcessingInstruction createProcessingInstruction = this._document.createProcessingInstruction(str, str2);
        if (createProcessingInstruction != null) {
            if (node2 != this._root || (node = this._nextSibling) == null) {
                node2.appendChild(createProcessingInstruction);
            } else {
                node2.insertBefore(createProcessingInstruction, node);
            }
            this._lastSibling = createProcessingInstruction;
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.locator = locator;
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String str, String str2, String str3) throws SAXException {
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() {
        this._nodeStk.push(this._root);
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        Node node;
        if (this.needToSetDocumentInfo) {
            setDocumentInfo();
            this.needToSetDocumentInfo = false;
        }
        Element createElementNS = this._document.createElementNS(str, str3);
        Vector vector = this._namespaceDecls;
        if (vector != null) {
            int size = vector.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                String str4 = (String) this._namespaceDecls.elementAt(i);
                if (str4 == null || str4.equals("")) {
                    createElementNS.setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns", (String) this._namespaceDecls.elementAt(i2));
                } else {
                    createElementNS.setAttributeNS("http://www.w3.org/2000/xmlns/", "xmlns:" + str4, (String) this._namespaceDecls.elementAt(i2));
                }
                i = i2 + 1;
            }
            this._namespaceDecls.clear();
        }
        int length = attributes.getLength();
        for (int i3 = 0; i3 < length; i3++) {
            String qName = attributes.getQName(i3);
            String uri = attributes.getURI(i3);
            if (attributes.getLocalName(i3).equals("")) {
                createElementNS.setAttribute(qName, attributes.getValue(i3));
                if (attributes.getType(i3).equals("ID")) {
                    createElementNS.setIdAttribute(qName, true);
                }
            } else {
                createElementNS.setAttributeNS(uri, qName, attributes.getValue(i3));
                if (attributes.getType(i3).equals("ID")) {
                    createElementNS.setIdAttributeNS(uri, attributes.getLocalName(i3), true);
                }
            }
        }
        Node node2 = (Node) this._nodeStk.peek();
        if (node2 != this._root || (node = this._nextSibling) == null) {
            node2.appendChild(createElementNS);
        } else {
            node2.insertBefore(createElementNS, node);
        }
        this._nodeStk.push(createElementNS);
        this._lastSibling = null;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) {
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
        if (this._namespaceDecls == null) {
            this._namespaceDecls = new Vector(2);
        }
        this._namespaceDecls.addElement(str);
        this._namespaceDecls.addElement(str2);
    }

    public SAX2DOM(Node node, Node node2) throws ParserConfigurationException {
        this._root = null;
        this._document = null;
        this._nextSibling = null;
        this._nodeStk = new Stack();
        this._namespaceDecls = null;
        this._lastSibling = null;
        this.locator = null;
        this.needToSetDocumentInfo = true;
        this._root = node;
        if (node instanceof Document) {
            this._document = (Document) node;
        } else if (node != null) {
            this._document = node.getOwnerDocument();
        } else {
            Document newDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
            this._document = newDocument;
            this._root = newDocument;
        }
        this._nextSibling = node2;
    }

    public SAX2DOM(Node node) throws ParserConfigurationException {
        this(node, null);
    }
}
