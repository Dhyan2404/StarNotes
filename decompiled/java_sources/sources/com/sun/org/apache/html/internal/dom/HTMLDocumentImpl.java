package com.sun.org.apache.html.internal.dom;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.text.webvtt.WebvttDecoder;
import com.sun.org.apache.xerces.internal.dom.DocumentImpl;
import com.sun.org.apache.xerces.internal.dom.NodeImpl;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Hashtable;
import java.util.Locale;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLDocument;
import org.w3c.dom.html.HTMLElement;
import org.w3c.dom.html.HTMLHeadElement;
import org.w3c.dom.html.HTMLHtmlElement;
import org.w3c.dom.html.HTMLTitleElement;

/* loaded from: classes10.dex */
public class HTMLDocumentImpl extends DocumentImpl implements HTMLDocument {
    private static final Class[] _elemClassSigHTML = {HTMLDocumentImpl.class, String.class};
    private static Hashtable _elementTypesHTML;
    private HTMLCollectionImpl _anchors;
    private HTMLCollectionImpl _applets;
    private HTMLCollectionImpl _forms;
    private HTMLCollectionImpl _images;
    private HTMLCollectionImpl _links;
    private StringWriter _writer;

    public HTMLDocumentImpl() {
        populateElementTypes();
    }

    private static void populateElementType(String str, String str2) {
        try {
            _elementTypesHTML.put(str, ObjectFactory.findProviderClass("com.sun.org.apache.html.internal.dom." + str2, HTMLDocumentImpl.class.getClassLoader(), true));
        } catch (Exception unused) {
            new RuntimeException("HTM019 OpenXML Error: Could not find or execute class " + str2 + " implementing HTML element " + str + "\n" + str2 + "\t" + str);
        }
    }

    private static synchronized void populateElementTypes() {
        synchronized (HTMLDocumentImpl.class) {
            if (_elementTypesHTML != null) {
                return;
            }
            _elementTypesHTML = new Hashtable(63);
            populateElementType("A", "HTMLAnchorElementImpl");
            populateElementType("APPLET", "HTMLAppletElementImpl");
            populateElementType("AREA", "HTMLAreaElementImpl");
            populateElementType("BASE", "HTMLBaseElementImpl");
            populateElementType("BASEFONT", "HTMLBaseFontElementImpl");
            populateElementType("BLOCKQUOTE", "HTMLQuoteElementImpl");
            populateElementType("BODY", "HTMLBodyElementImpl");
            populateElementType("BR", "HTMLBRElementImpl");
            populateElementType("BUTTON", "HTMLButtonElementImpl");
            populateElementType("DEL", "HTMLModElementImpl");
            populateElementType("DIR", "HTMLDirectoryElementImpl");
            populateElementType("DIV", "HTMLDivElementImpl");
            populateElementType("DL", "HTMLDListElementImpl");
            populateElementType("FIELDSET", "HTMLFieldSetElementImpl");
            populateElementType("FONT", "HTMLFontElementImpl");
            populateElementType("FORM", "HTMLFormElementImpl");
            populateElementType("FRAME", "HTMLFrameElementImpl");
            populateElementType("FRAMESET", "HTMLFrameSetElementImpl");
            populateElementType("HEAD", "HTMLHeadElementImpl");
            populateElementType("H1", "HTMLHeadingElementImpl");
            populateElementType("H2", "HTMLHeadingElementImpl");
            populateElementType("H3", "HTMLHeadingElementImpl");
            populateElementType("H4", "HTMLHeadingElementImpl");
            populateElementType("H5", "HTMLHeadingElementImpl");
            populateElementType("H6", "HTMLHeadingElementImpl");
            populateElementType("HR", "HTMLHRElementImpl");
            populateElementType("HTML", "HTMLHtmlElementImpl");
            populateElementType("IFRAME", "HTMLIFrameElementImpl");
            populateElementType("IMG", "HTMLImageElementImpl");
            populateElementType("INPUT", "HTMLInputElementImpl");
            populateElementType("INS", "HTMLModElementImpl");
            populateElementType("ISINDEX", "HTMLIsIndexElementImpl");
            populateElementType("LABEL", "HTMLLabelElementImpl");
            populateElementType("LEGEND", "HTMLLegendElementImpl");
            populateElementType("LI", "HTMLLIElementImpl");
            populateElementType("LINK", "HTMLLinkElementImpl");
            populateElementType(HlsPlaylistParser.f26120C0, "HTMLMapElementImpl");
            populateElementType("MENU", "HTMLMenuElementImpl");
            populateElementType("META", "HTMLMetaElementImpl");
            populateElementType("OBJECT", "HTMLObjectElementImpl");
            populateElementType("OL", "HTMLOListElementImpl");
            populateElementType("OPTGROUP", "HTMLOptGroupElementImpl");
            populateElementType("OPTION", "HTMLOptionElementImpl");
            populateElementType("P", "HTMLParagraphElementImpl");
            populateElementType("PARAM", "HTMLParamElementImpl");
            populateElementType("PRE", "HTMLPreElementImpl");
            populateElementType("Q", "HTMLQuoteElementImpl");
            populateElementType("SCRIPT", "HTMLScriptElementImpl");
            populateElementType("SELECT", "HTMLSelectElementImpl");
            populateElementType(WebvttDecoder.f27273w, "HTMLStyleElementImpl");
            populateElementType("TABLE", "HTMLTableElementImpl");
            populateElementType("CAPTION", "HTMLTableCaptionElementImpl");
            populateElementType("TD", "HTMLTableCellElementImpl");
            populateElementType("TH", "HTMLTableCellElementImpl");
            populateElementType("COL", "HTMLTableColElementImpl");
            populateElementType("COLGROUP", "HTMLTableColElementImpl");
            populateElementType("TR", "HTMLTableRowElementImpl");
            populateElementType("TBODY", "HTMLTableSectionElementImpl");
            populateElementType("THEAD", "HTMLTableSectionElementImpl");
            populateElementType("TFOOT", "HTMLTableSectionElementImpl");
            populateElementType("TEXTAREA", "HTMLTextAreaElementImpl");
            populateElementType("TITLE", "HTMLTitleElementImpl");
            populateElementType("UL", "HTMLUListElementImpl");
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.DocumentImpl, com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.ChildNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        HTMLDocumentImpl hTMLDocumentImpl = new HTMLDocumentImpl();
        if (z) {
            for (NodeImpl nodeImpl = (NodeImpl) getFirstChild(); nodeImpl != null; nodeImpl = (NodeImpl) nodeImpl.getNextSibling()) {
                hTMLDocumentImpl.appendChild(hTMLDocumentImpl.importNode(nodeImpl, true));
            }
        }
        return hTMLDocumentImpl;
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public void close() {
        if (this._writer != null) {
            this._writer = null;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, org.w3c.dom.Document
    public Attr createAttribute(String str) throws DOMException {
        return super.createAttribute(str.toLowerCase(Locale.ENGLISH));
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, org.w3c.dom.Document
    public Element createElement(String str) throws DOMException {
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        Class cls = (Class) _elementTypesHTML.get(upperCase);
        if (cls == null) {
            return new HTMLElementImpl(this, upperCase);
        }
        try {
            return (Element) cls.getConstructor(_elemClassSigHTML).newInstance(this, upperCase);
        } catch (Exception e) {
            if (e instanceof InvocationTargetException) {
                ((InvocationTargetException) e).getTargetException();
            }
            throw new IllegalStateException("HTM15 Tag '" + upperCase + "' associated with an Element class that failed to construct.\n" + upperCase);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public Element createElementNS(String str, String str2, String str3) throws DOMException {
        return createElementNS(str, str2);
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public HTMLCollection getAnchors() {
        if (this._anchors == null) {
            this._anchors = new HTMLCollectionImpl(getBody(), (short) 1);
        }
        return this._anchors;
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public HTMLCollection getApplets() {
        if (this._applets == null) {
            this._applets = new HTMLCollectionImpl(getBody(), (short) 4);
        }
        return this._applets;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001f, code lost:
    
        monitor-enter(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0020, code lost:
    
        r1 = r1.getNextSibling();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
    
        if (r1 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0026, code lost:
    
        if (r1 == r2) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0028, code lost:
    
        r3 = r1.getNextSibling();
        r2.insertBefore(r1, r2.getFirstChild());
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0036, code lost:
    
        r2 = (org.w3c.dom.html.HTMLElement) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003a, code lost:
    
        return r2;
     */
    @Override // org.w3c.dom.html.HTMLDocument
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized org.w3c.dom.html.HTMLElement getBody() {
        /*
            r5 = this;
            monitor-enter(r5)
            org.w3c.dom.Element r0 = r5.getDocumentElement()     // Catch: java.lang.Throwable -> L4e
            org.w3c.dom.html.HTMLElement r1 = r5.getHead()     // Catch: java.lang.Throwable -> L4e
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L4e
            org.w3c.dom.Node r2 = r1.getNextSibling()     // Catch: java.lang.Throwable -> L4b
        Le:
            if (r2 == 0) goto L1d
            boolean r3 = r2 instanceof org.w3c.dom.html.HTMLBodyElement     // Catch: java.lang.Throwable -> L4b
            if (r3 != 0) goto L1d
            boolean r3 = r2 instanceof org.w3c.dom.html.HTMLFrameSetElement     // Catch: java.lang.Throwable -> L4b
            if (r3 != 0) goto L1d
            org.w3c.dom.Node r2 = r2.getNextSibling()     // Catch: java.lang.Throwable -> L4b
            goto Le
        L1d:
            if (r2 == 0) goto L3e
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L4b
            org.w3c.dom.Node r1 = r1.getNextSibling()     // Catch: java.lang.Throwable -> L3b
        L24:
            if (r1 == 0) goto L35
            if (r1 == r2) goto L35
            org.w3c.dom.Node r3 = r1.getNextSibling()     // Catch: java.lang.Throwable -> L3b
            org.w3c.dom.Node r4 = r2.getFirstChild()     // Catch: java.lang.Throwable -> L3b
            r2.insertBefore(r1, r4)     // Catch: java.lang.Throwable -> L3b
            r1 = r3
            goto L24
        L35:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3b
            org.w3c.dom.html.HTMLElement r2 = (org.w3c.dom.html.HTMLElement) r2     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r5)
            return r2
        L3b:
            r1 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3b
            throw r1     // Catch: java.lang.Throwable -> L4b
        L3e:
            com.sun.org.apache.html.internal.dom.HTMLBodyElementImpl r1 = new com.sun.org.apache.html.internal.dom.HTMLBodyElementImpl     // Catch: java.lang.Throwable -> L4b
            java.lang.String r2 = "BODY"
            r1.<init>(r5, r2)     // Catch: java.lang.Throwable -> L4b
            r0.appendChild(r1)     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r5)
            return r1
        L4b:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4b
            throw r1     // Catch: java.lang.Throwable -> L4e
        L4e:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.html.internal.dom.HTMLDocumentImpl.getBody():org.w3c.dom.html.HTMLElement");
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public String getCookie() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, org.w3c.dom.Document
    public synchronized Element getDocumentElement() {
        for (Node firstChild = getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof HTMLHtmlElement) {
                return (HTMLElement) firstChild;
            }
        }
        HTMLHtmlElementImpl hTMLHtmlElementImpl = new HTMLHtmlElementImpl(this, "HTML");
        Node firstChild2 = getFirstChild();
        while (firstChild2 != null) {
            Node nextSibling = firstChild2.getNextSibling();
            hTMLHtmlElementImpl.appendChild(firstChild2);
            firstChild2 = nextSibling;
        }
        appendChild(hTMLHtmlElementImpl);
        return hTMLHtmlElementImpl;
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public String getDomain() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, org.w3c.dom.Document, org.w3c.dom.html.HTMLDocument
    public synchronized Element getElementById(String str) {
        return getElementById(str, this);
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public NodeList getElementsByName(String str) {
        return new NameNodeListImpl(this, str);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, org.w3c.dom.Document
    public final NodeList getElementsByTagName(String str) {
        return super.getElementsByTagName(str.toUpperCase(Locale.ENGLISH));
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, org.w3c.dom.Document
    public final NodeList getElementsByTagNameNS(String str, String str2) {
        return (str == null || str.length() <= 0) ? super.getElementsByTagName(str2.toUpperCase(Locale.ENGLISH)) : super.getElementsByTagNameNS(str, str2.toUpperCase(Locale.ENGLISH));
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public HTMLCollection getForms() {
        if (this._forms == null) {
            this._forms = new HTMLCollectionImpl(getBody(), (short) 2);
        }
        return this._forms;
    }

    public synchronized HTMLElement getHead() {
        Element documentElement = getDocumentElement();
        synchronized (documentElement) {
            Node firstChild = documentElement.getFirstChild();
            while (firstChild != null && !(firstChild instanceof HTMLHeadElement)) {
                firstChild = firstChild.getNextSibling();
            }
            if (firstChild == null) {
                HTMLHeadElementImpl hTMLHeadElementImpl = new HTMLHeadElementImpl(this, "HEAD");
                documentElement.insertBefore(hTMLHeadElementImpl, documentElement.getFirstChild());
                return hTMLHeadElementImpl;
            }
            synchronized (firstChild) {
                Node firstChild2 = documentElement.getFirstChild();
                while (firstChild2 != null && firstChild2 != firstChild) {
                    Node nextSibling = firstChild2.getNextSibling();
                    firstChild.insertBefore(firstChild2, firstChild.getFirstChild());
                    firstChild2 = nextSibling;
                }
            }
            return (HTMLElement) firstChild;
        }
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public HTMLCollection getImages() {
        if (this._images == null) {
            this._images = new HTMLCollectionImpl(getBody(), (short) 3);
        }
        return this._images;
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public HTMLCollection getLinks() {
        if (this._links == null) {
            this._links = new HTMLCollectionImpl(getBody(), (short) 5);
        }
        return this._links;
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public String getReferrer() {
        return null;
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public synchronized String getTitle() {
        HTMLElement head = getHead();
        head.getElementsByTagName("TITLE").item(0);
        NodeList elementsByTagName = head.getElementsByTagName("TITLE");
        if (elementsByTagName.getLength() <= 0) {
            return "";
        }
        return ((HTMLTitleElement) elementsByTagName.item(0)).getText();
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public String getURL() {
        return null;
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public void open() {
        if (this._writer == null) {
            this._writer = new StringWriter();
        }
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public synchronized void setBody(HTMLElement hTMLElement) {
        synchronized (hTMLElement) {
            Element documentElement = getDocumentElement();
            synchronized (documentElement) {
                NodeList elementsByTagName = getElementsByTagName("BODY");
                if (elementsByTagName.getLength() <= 0) {
                    documentElement.appendChild(hTMLElement);
                    return;
                }
                Node item = elementsByTagName.item(0);
                synchronized (item) {
                    for (Node head = getHead(); head != null; head = head.getNextSibling()) {
                        if (head instanceof Element) {
                            if (head != item) {
                                documentElement.insertBefore(hTMLElement, head);
                            } else {
                                documentElement.replaceChild(hTMLElement, item);
                            }
                            return;
                        }
                    }
                    documentElement.appendChild(hTMLElement);
                }
            }
        }
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public void setCookie(String str) {
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public synchronized void setTitle(String str) {
        HTMLElement head = getHead();
        NodeList elementsByTagName = head.getElementsByTagName("TITLE");
        if (elementsByTagName.getLength() > 0) {
            Node item = elementsByTagName.item(0);
            if (item.getParentNode() != head) {
                head.appendChild(item);
            }
            ((HTMLTitleElement) item).setText(str);
        } else {
            HTMLTitleElementImpl hTMLTitleElementImpl = new HTMLTitleElementImpl(this, "TITLE");
            hTMLTitleElementImpl.setText(str);
            head.appendChild(hTMLTitleElementImpl);
        }
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public void write(String str) {
        StringWriter stringWriter = this._writer;
        if (stringWriter != null) {
            stringWriter.write(str);
        }
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public void writeln(String str) {
        StringWriter stringWriter = this._writer;
        if (stringWriter != null) {
            stringWriter.write(str + "\n");
        }
    }

    private Element getElementById(String str, Node node) {
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild instanceof Element) {
                Element element = (Element) firstChild;
                if (str.equals(element.getAttribute("id"))) {
                    return element;
                }
                Element elementById = getElementById(str, firstChild);
                if (elementById != null) {
                    return elementById;
                }
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, org.w3c.dom.Document
    public Element createElementNS(String str, String str2) {
        if (str != null && str.length() != 0) {
            return super.createElementNS(str, str2);
        }
        return createElement(str2);
    }
}
