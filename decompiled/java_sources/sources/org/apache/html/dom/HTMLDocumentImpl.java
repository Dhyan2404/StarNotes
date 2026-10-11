package org.apache.html.dom;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.text.webvtt.WebvttDecoder;
import java.io.StringWriter;
import java.util.Hashtable;
import java.util.Locale;
import org.apache.xerces.dom.CoreDocumentImpl;
import org.apache.xerces.dom.DocumentImpl;
import org.apache.xerces.dom.ElementImpl;
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

/* loaded from: classes12.dex */
public class HTMLDocumentImpl extends DocumentImpl implements HTMLDocument {
    private static final Class[] _elemClassSigHTML;
    private static Hashtable _elementTypesHTML = null;
    static /* synthetic */ Class class$java$lang$String = null;
    static /* synthetic */ Class class$org$apache$html$dom$HTMLDocumentImpl = null;
    private static final long serialVersionUID = 4285791750126227180L;
    private HTMLCollectionImpl _anchors;
    private HTMLCollectionImpl _applets;
    private HTMLCollectionImpl _forms;
    private HTMLCollectionImpl _images;
    private HTMLCollectionImpl _links;
    private StringWriter _writer;

    static {
        Class[] clsArr = new Class[2];
        Class cls = class$org$apache$html$dom$HTMLDocumentImpl;
        if (cls == null) {
            cls = class$("org.apache.html.dom.HTMLDocumentImpl");
            class$org$apache$html$dom$HTMLDocumentImpl = cls;
        }
        clsArr[0] = cls;
        Class cls2 = class$java$lang$String;
        if (cls2 == null) {
            cls2 = class$("java.lang.String");
            class$java$lang$String = cls2;
        }
        clsArr[1] = cls2;
        _elemClassSigHTML = clsArr;
    }

    public HTMLDocumentImpl() {
        populateElementTypes();
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    private static void populateElementType(String str, String str2) {
        try {
            Hashtable hashtable = _elementTypesHTML;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("org.apache.html.dom.");
            stringBuffer.append(str2);
            String stringBuffer2 = stringBuffer.toString();
            Class cls = class$org$apache$html$dom$HTMLDocumentImpl;
            if (cls == null) {
                cls = class$("org.apache.html.dom.HTMLDocumentImpl");
                class$org$apache$html$dom$HTMLDocumentImpl = cls;
            }
            hashtable.put(str, ObjectFactory.m68287f(stringBuffer2, cls.getClassLoader(), true));
        } catch (Exception unused) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append("HTM019 OpenXML Error: Could not find or execute class ");
            stringBuffer3.append(str2);
            stringBuffer3.append(" implementing HTML element ");
            stringBuffer3.append(str);
            stringBuffer3.append("\n");
            stringBuffer3.append(str2);
            stringBuffer3.append("\t");
            stringBuffer3.append(str);
            throw new RuntimeException(stringBuffer3.toString());
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

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public boolean canRenameElements(String str, String str2, ElementImpl elementImpl) {
        return elementImpl.getNamespaceURI() != null ? str != null : ((Class) _elementTypesHTML.get(str2.toUpperCase(Locale.ENGLISH))) == ((Class) _elementTypesHTML.get(elementImpl.getTagName()));
    }

    @Override // org.apache.xerces.dom.DocumentImpl, org.apache.xerces.dom.CoreDocumentImpl, org.apache.xerces.dom.ParentNode, org.apache.xerces.dom.ChildNode, org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        CoreDocumentImpl hTMLDocumentImpl = new HTMLDocumentImpl();
        callUserDataHandlers(this, hTMLDocumentImpl, (short) 1);
        cloneNode(hTMLDocumentImpl, z);
        return hTMLDocumentImpl;
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public void close() {
        if (this._writer != null) {
            this._writer = null;
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
    public Attr createAttribute(String str) throws DOMException {
        return super.createAttribute(str.toLowerCase(Locale.ENGLISH));
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
    public Element createElement(String str) throws DOMException {
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        Class cls = (Class) _elementTypesHTML.get(upperCase);
        if (cls == null) {
            return new HTMLElementImpl(this, upperCase);
        }
        try {
            return (Element) cls.getConstructor(_elemClassSigHTML).newInstance(this, upperCase);
        } catch (Exception unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("HTM15 Tag '");
            stringBuffer.append(upperCase);
            stringBuffer.append("' associated with an Element class that failed to construct.\n");
            stringBuffer.append(upperCase);
            throw new IllegalStateException(stringBuffer.toString());
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
    public Element createElementNS(String str, String str2) {
        return (str == null || str.length() == 0) ? createElement(str2) : super.createElementNS(str, str2);
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

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
    
        monitor-enter(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0021, code lost:
    
        r1 = r1.getNextSibling();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0025, code lost:
    
        if (r1 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0027, code lost:
    
        if (r1 != r2) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002a, code lost:
    
        r3 = r1.getNextSibling();
        r2.insertBefore(r1, r2.getFirstChild());
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0037, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0038, code lost:
    
        r2 = (org.w3c.dom.html.HTMLElement) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003c, code lost:
    
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
            org.w3c.dom.Element r0 = r5.getDocumentElement()     // Catch: java.lang.Throwable -> L50
            org.w3c.dom.html.HTMLElement r1 = r5.getHead()     // Catch: java.lang.Throwable -> L50
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L50
            org.w3c.dom.Node r2 = r1.getNextSibling()     // Catch: java.lang.Throwable -> L4d
        Le:
            if (r2 == 0) goto L1e
            boolean r3 = r2 instanceof org.w3c.dom.html.HTMLBodyElement     // Catch: java.lang.Throwable -> L4d
            if (r3 != 0) goto L1e
            boolean r3 = r2 instanceof org.w3c.dom.html.HTMLFrameSetElement     // Catch: java.lang.Throwable -> L4d
            if (r3 == 0) goto L19
            goto L1e
        L19:
            org.w3c.dom.Node r2 = r2.getNextSibling()     // Catch: java.lang.Throwable -> L4d
            goto Le
        L1e:
            if (r2 == 0) goto L40
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L4d
            org.w3c.dom.Node r1 = r1.getNextSibling()     // Catch: java.lang.Throwable -> L3d
        L25:
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2a
            goto L37
        L2a:
            org.w3c.dom.Node r3 = r1.getNextSibling()     // Catch: java.lang.Throwable -> L3d
            org.w3c.dom.Node r4 = r2.getFirstChild()     // Catch: java.lang.Throwable -> L3d
            r2.insertBefore(r1, r4)     // Catch: java.lang.Throwable -> L3d
            r1 = r3
            goto L25
        L37:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3d
            org.w3c.dom.html.HTMLElement r2 = (org.w3c.dom.html.HTMLElement) r2     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r5)
            return r2
        L3d:
            r1 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4d
            throw r1     // Catch: java.lang.Throwable -> L4d
        L40:
            org.apache.html.dom.HTMLBodyElementImpl r1 = new org.apache.html.dom.HTMLBodyElementImpl     // Catch: java.lang.Throwable -> L4d
            java.lang.String r2 = "BODY"
            r1.<init>(r5, r2)     // Catch: java.lang.Throwable -> L4d
            r0.appendChild(r1)     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r5)
            return r1
        L4d:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L50
            throw r1     // Catch: java.lang.Throwable -> L50
        L50:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.html.dom.HTMLDocumentImpl.getBody():org.w3c.dom.html.HTMLElement");
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public String getCookie() {
        return null;
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
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

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document, org.w3c.dom.html.HTMLDocument
    public synchronized Element getElementById(String str) {
        Element elementById = super.getElementById(str);
        if (elementById != null) {
            return elementById;
        }
        return getElementById(str, this);
    }

    @Override // org.w3c.dom.html.HTMLDocument
    public NodeList getElementsByName(String str) {
        return new NameNodeListImpl(this, str);
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
    public final NodeList getElementsByTagName(String str) {
        return super.getElementsByTagName(str.toUpperCase(Locale.ENGLISH));
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
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
        NodeList elementsByTagName = getHead().getElementsByTagName("TITLE");
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
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str);
            stringBuffer.append("\n");
            stringWriter.write(stringBuffer.toString());
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

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public Element createElementNS(String str, String str2, String str3) throws DOMException {
        return createElementNS(str, str2);
    }
}
