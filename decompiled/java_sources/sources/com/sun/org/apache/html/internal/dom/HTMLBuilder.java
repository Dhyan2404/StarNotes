package com.sun.org.apache.html.internal.dom;

import com.sun.org.apache.xerces.internal.dom.ElementImpl;
import com.sun.org.apache.xerces.internal.dom.ProcessingInstructionImpl;
import com.sun.org.apache.xerces.internal.dom.TextImpl;
import java.util.Vector;
import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLDocument;
import org.xml.sax.AttributeList;
import org.xml.sax.DocumentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class HTMLBuilder implements DocumentHandler {
    protected ElementImpl _current;
    protected HTMLDocumentImpl _document;
    private Locator _locator;
    protected Vector _preRootNodes;
    private boolean _ignoreWhitespace = true;
    private boolean _done = true;

    public void characters(String str) throws SAXException {
        ElementImpl elementImpl = this._current;
        if (elementImpl != null) {
            elementImpl.appendChild(new TextImpl(this._document, str));
            return;
        }
        throw new SAXException("HTM009 State error: character data found outside of root element.");
    }

    @Override // org.xml.sax.DocumentHandler
    public void endDocument() throws SAXException {
        if (this._document == null) {
            throw new SAXException("HTM002 State error: document never started or missing document element.");
        }
        if (this._current != null) {
            throw new SAXException("HTM003 State error: document ended before end of document element.");
        }
        this._current = null;
        this._done = true;
    }

    @Override // org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        ElementImpl elementImpl = this._current;
        if (elementImpl == null) {
            throw new SAXException("HTM007 State error: endElement called with no current node.");
        }
        if (elementImpl.getNodeName().equalsIgnoreCase(str)) {
            if (this._current.getParentNode() == this._current.getOwnerDocument()) {
                this._current = null;
                return;
            } else {
                this._current = (ElementImpl) this._current.getParentNode();
                return;
            }
        }
        throw new SAXException("HTM008 State error: mismatch in closing tag name " + str + "\n" + str);
    }

    public HTMLDocument getHTMLDocument() {
        return this._document;
    }

    @Override // org.xml.sax.DocumentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        if (this._ignoreWhitespace) {
            return;
        }
        this._current.appendChild(new TextImpl(this._document, new String(cArr, i, i2)));
    }

    @Override // org.xml.sax.DocumentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        HTMLDocumentImpl hTMLDocumentImpl;
        ElementImpl elementImpl = this._current;
        if (elementImpl == null && this._document == null) {
            if (this._preRootNodes == null) {
                this._preRootNodes = new Vector();
            }
            this._preRootNodes.addElement(new ProcessingInstructionImpl(null, str, str2));
        } else if (elementImpl != null || (hTMLDocumentImpl = this._document) == null) {
            elementImpl.appendChild(new ProcessingInstructionImpl(this._document, str, str2));
        } else {
            hTMLDocumentImpl.appendChild(new ProcessingInstructionImpl(this._document, str, str2));
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void setDocumentLocator(Locator locator) {
        this._locator = locator;
    }

    @Override // org.xml.sax.DocumentHandler
    public void startDocument() throws SAXException {
        if (!this._done) {
            throw new SAXException("HTM001 State error: startDocument fired twice on one builder.");
        }
        this._document = null;
        this._done = false;
    }

    @Override // org.xml.sax.DocumentHandler
    public synchronized void startElement(String str, AttributeList attributeList) throws SAXException {
        ElementImpl elementImpl;
        try {
            if (str == null) {
                throw new SAXException("HTM004 Argument 'tagName' is null.");
            }
            HTMLDocumentImpl hTMLDocumentImpl = this._document;
            if (hTMLDocumentImpl == null) {
                HTMLDocumentImpl hTMLDocumentImpl2 = new HTMLDocumentImpl();
                this._document = hTMLDocumentImpl2;
                elementImpl = (ElementImpl) hTMLDocumentImpl2.getDocumentElement();
                this._current = elementImpl;
                if (elementImpl == null) {
                    throw new SAXException("HTM005 State error: Document.getDocumentElement returns null.");
                }
                Vector vector = this._preRootNodes;
                if (vector != null) {
                    int size = vector.size();
                    while (true) {
                        int i = size - 1;
                        if (size <= 0) {
                            break;
                        }
                        this._document.insertBefore((Node) this._preRootNodes.elementAt(i), elementImpl);
                        size = i;
                    }
                    this._preRootNodes = null;
                }
            } else {
                if (this._current == null) {
                    throw new SAXException("HTM006 State error: startElement called after end of document element.");
                }
                elementImpl = (ElementImpl) hTMLDocumentImpl.createElement(str);
                this._current.appendChild(elementImpl);
                this._current = elementImpl;
            }
            if (attributeList != null) {
                for (int i2 = 0; i2 < attributeList.getLength(); i2++) {
                    elementImpl.setAttribute(attributeList.getName(i2), attributeList.getValue(i2));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        ElementImpl elementImpl = this._current;
        if (elementImpl != null) {
            elementImpl.appendChild(new TextImpl(this._document, new String(cArr, i, i2)));
            return;
        }
        throw new SAXException("HTM010 State error: character data found outside of root element.");
    }
}
