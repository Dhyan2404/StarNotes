package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.Enumeration;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.dom.DOMSource;
import net.p110sf.saxon.query.XQueryParser;
import org.apache.xerces.dom.NodeImpl;
import org.apache.xerces.impl.XMLErrorReporter;
import org.apache.xerces.impl.p117xs.XMLSchemaValidator;
import org.apache.xerces.impl.p117xs.util.SimpleLocator;
import org.apache.xerces.impl.validation.EntityState;
import org.apache.xerces.impl.validation.ValidationManager;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLAttributesImpl;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLString;
import org.apache.xerces.xni.XNIException;
import org.apache.xerces.xni.parser.XMLParseException;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Entity;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public final class tqe implements yzn, EntityState {

    /* renamed from: J */
    public static final String f85618J = "http://apache.org/xml/properties/internal/namespace-context";

    /* renamed from: O */
    public static final String f85619O = "http://apache.org/xml/properties/internal/validator/schema";

    /* renamed from: Q */
    public static final String f85620Q = "http://apache.org/xml/properties/internal/symbol-table";

    /* renamed from: Z */
    public static final String f85621Z = "http://apache.org/xml/properties/internal/validation-manager";

    /* renamed from: x */
    public static final int f85622x = 1024;

    /* renamed from: y */
    public static final int f85623y = 1023;

    /* renamed from: z */
    public static final String f85624z = "http://apache.org/xml/properties/internal/error-reporter";

    /* renamed from: e */
    public final XMLErrorReporter f85625e;

    /* renamed from: f */
    public final NamespaceSupport f85626f;

    /* renamed from: h */
    public final XMLSchemaValidator f85628h;

    /* renamed from: i */
    public final SymbolTable f85629i;

    /* renamed from: j */
    public final ValidationManager f85630j;

    /* renamed from: k */
    public final tlo f85631k;

    /* renamed from: m */
    public pqe f85633m;

    /* renamed from: r */
    public Node f85638r;

    /* renamed from: s */
    public Node f85639s;

    /* renamed from: g */
    public final C14469a f85627g = new C14469a();

    /* renamed from: l */
    public final SimpleLocator f85632l = new SimpleLocator(null, null, -1, -1, -1);

    /* renamed from: n */
    public final rqe f85634n = new rqe(this);

    /* renamed from: o */
    public final sqe f85635o = new sqe();

    /* renamed from: p */
    public NamedNodeMap f85636p = null;

    /* renamed from: q */
    public final char[] f85637q = new char[1024];

    /* renamed from: t */
    public final QName f85640t = new QName();

    /* renamed from: u */
    public final QName f85641u = new QName();

    /* renamed from: v */
    public final XMLAttributesImpl f85642v = new XMLAttributesImpl();

    /* renamed from: w */
    public final XMLString f85643w = new XMLString();

    /* renamed from: com.sunia.HTREnginev2.tqe$a */
    /* loaded from: classes13.dex */
    public final class C14469a implements NamespaceContext {

        /* renamed from: a */
        public String[] f85644a = new String[32];

        /* renamed from: b */
        public int f85645b = 0;

        /* renamed from: c */
        public boolean f85646c = false;

        public C14469a() {
        }

        /* renamed from: a */
        public final void m57436a(String str, String str2) {
            int i = this.f85645b;
            String[] strArr = this.f85644a;
            if (i == strArr.length) {
                String[] strArr2 = new String[i * 2];
                System.arraycopy(strArr, 0, strArr2, 0, i);
                this.f85644a = strArr2;
            }
            String[] strArr3 = this.f85644a;
            int i2 = this.f85645b;
            int i3 = i2 + 1;
            strArr3[i2] = str;
            this.f85645b = i3 + 1;
            strArr3[i3] = str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
        
            if (r5.length() != 0) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
        
            m57436a(r4, r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
        
            r8 = r9.f85647d.f85629i.addSymbol(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x005d, code lost:
        
            if (r5.length() != 0) goto L25;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m57437b() {
            /*
                r9 = this;
                com.sunia.HTREnginev2.tqe r0 = com.sunia.HTREnginev2.tqe.this
                org.w3c.dom.Node r0 = com.sunia.HTREnginev2.tqe.m57423b(r0)
                if (r0 == 0) goto L6f
                com.sunia.HTREnginev2.tqe r0 = com.sunia.HTREnginev2.tqe.this
                org.w3c.dom.Node r0 = com.sunia.HTREnginev2.tqe.m57423b(r0)
            Le:
                org.w3c.dom.Node r0 = r0.getParentNode()
                if (r0 != 0) goto L15
                goto L6f
            L15:
                short r1 = r0.getNodeType()
                r2 = 1
                if (r2 != r1) goto Le
                org.w3c.dom.NamedNodeMap r1 = r0.getAttributes()
                int r2 = r1.getLength()
                r3 = 0
            L25:
                if (r3 < r2) goto L28
                goto Le
            L28:
                org.w3c.dom.Node r4 = r1.item(r3)
                org.w3c.dom.Attr r4 = (org.w3c.dom.Attr) r4
                java.lang.String r5 = r4.getValue()
                if (r5 != 0) goto L36
                java.lang.String r5 = org.apache.xerces.util.XMLSymbols.EMPTY_STRING
            L36:
                com.sunia.HTREnginev2.tqe r6 = com.sunia.HTREnginev2.tqe.this
                org.apache.xerces.xni.QName r7 = r6.f85641u
                com.sunia.HTREnginev2.tqe.m57424c(r6, r7, r4)
                com.sunia.HTREnginev2.tqe r4 = com.sunia.HTREnginev2.tqe.this
                org.apache.xerces.xni.QName r4 = r4.f85641u
                java.lang.String r6 = r4.uri
                java.lang.String r7 = org.apache.xerces.xni.NamespaceContext.XMLNS_URI
                if (r6 != r7) goto L6c
                java.lang.String r6 = r4.prefix
                java.lang.String r7 = org.apache.xerces.util.XMLSymbols.PREFIX_XMLNS
                r8 = 0
                if (r6 != r7) goto L57
                java.lang.String r4 = r4.localpart
                int r6 = r5.length()
                if (r6 == 0) goto L69
                goto L5f
            L57:
                java.lang.String r4 = org.apache.xerces.util.XMLSymbols.EMPTY_STRING
                int r6 = r5.length()
                if (r6 == 0) goto L69
            L5f:
                com.sunia.HTREnginev2.tqe r6 = com.sunia.HTREnginev2.tqe.this
                org.apache.xerces.util.SymbolTable r6 = com.sunia.HTREnginev2.tqe.m57425d(r6)
                java.lang.String r8 = r6.addSymbol(r5)
            L69:
                r9.m57436a(r4, r8)
            L6c:
                int r3 = r3 + 1
                goto L25
            L6f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.tqe.C14469a.m57437b():void");
        }

        /* renamed from: c */
        public final String m57438c(String str) {
            for (int i = 0; i < this.f85645b; i += 2) {
                String[] strArr = this.f85644a;
                if (strArr[i] == str) {
                    return strArr[i + 1];
                }
            }
            return null;
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public boolean declarePrefix(String str, String str2) {
            return tqe.this.f85626f.declarePrefix(str, str2);
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public Enumeration getAllPrefixes() {
            return tqe.this.f85626f.getAllPrefixes();
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public String getDeclaredPrefixAt(int i) {
            return tqe.this.f85626f.getDeclaredPrefixAt(i);
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public int getDeclaredPrefixCount() {
            return tqe.this.f85626f.getDeclaredPrefixCount();
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public String getPrefix(String str) {
            return tqe.this.f85626f.getPrefix(str);
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public String getURI(String str) {
            String uri = tqe.this.f85626f.getURI(str);
            if (uri != null) {
                return uri;
            }
            if (!this.f85646c) {
                m57437b();
                this.f85646c = true;
            }
            return (this.f85645b <= 0 || tqe.this.f85626f.containsPrefix(str)) ? uri : m57438c(str);
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public void popContext() {
            tqe.this.f85626f.popContext();
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public void pushContext() {
            tqe.this.f85626f.pushContext();
        }

        @Override // org.apache.xerces.xni.NamespaceContext
        public void reset() {
            this.f85646c = false;
            this.f85645b = 0;
        }
    }

    public tqe(tlo tloVar) {
        this.f85631k = tloVar;
        this.f85625e = (XMLErrorReporter) tloVar.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.f85626f = (NamespaceSupport) tloVar.getProperty("http://apache.org/xml/properties/internal/namespace-context");
        this.f85628h = (XMLSchemaValidator) tloVar.getProperty("http://apache.org/xml/properties/internal/validator/schema");
        this.f85629i = (SymbolTable) tloVar.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.f85630j = (ValidationManager) tloVar.getProperty("http://apache.org/xml/properties/internal/validation-manager");
    }

    /* renamed from: e */
    public final void m57426e(Node node) {
        pqe pqeVar;
        short nodeType = node.getNodeType();
        if (nodeType == 1) {
            this.f85639s = node;
            this.f85626f.pushContext();
            m57427f(this.f85640t, node);
            m57430i(node.getAttributes());
            this.f85628h.startElement(this.f85640t, this.f85642v, null);
            return;
        }
        if (nodeType == 10) {
            pqe pqeVar2 = this.f85633m;
            if (pqeVar2 != null) {
                pqeVar2.doctypeDecl((DocumentType) node);
                return;
            }
            return;
        }
        if (nodeType == 3) {
            pqe pqeVar3 = this.f85633m;
            if (pqeVar3 == null) {
                m57431j(node.getNodeValue());
                return;
            }
            pqeVar3.setIgnoringCharacters(true);
            m57431j(node.getNodeValue());
            this.f85633m.setIgnoringCharacters(false);
            this.f85633m.characters((Text) node);
            return;
        }
        if (nodeType != 4) {
            if (nodeType != 7) {
                if (nodeType == 8 && (pqeVar = this.f85633m) != null) {
                    pqeVar.comment((Comment) node);
                    return;
                }
                return;
            }
            pqe pqeVar4 = this.f85633m;
            if (pqeVar4 != null) {
                pqeVar4.processingInstruction((ProcessingInstruction) node);
                return;
            }
            return;
        }
        pqe pqeVar5 = this.f85633m;
        if (pqeVar5 == null) {
            this.f85628h.startCDATA(null);
            m57431j(node.getNodeValue());
            this.f85628h.endCDATA(null);
        } else {
            pqeVar5.setIgnoringCharacters(true);
            this.f85628h.startCDATA(null);
            m57431j(node.getNodeValue());
            this.f85628h.endCDATA(null);
            this.f85633m.setIgnoringCharacters(false);
            this.f85633m.cdata((CDATASection) node);
        }
    }

    /* renamed from: f */
    public final void m57427f(QName qName, Node node) {
        String prefix = node.getPrefix();
        String localName = node.getLocalName();
        String nodeName = node.getNodeName();
        String namespaceURI = node.getNamespaceURI();
        qName.prefix = prefix != null ? this.f85629i.addSymbol(prefix) : XMLSymbols.EMPTY_STRING;
        qName.localpart = localName != null ? this.f85629i.addSymbol(localName) : XMLSymbols.EMPTY_STRING;
        qName.rawname = nodeName != null ? this.f85629i.addSymbol(nodeName) : XMLSymbols.EMPTY_STRING;
        qName.uri = (namespaceURI == null || namespaceURI.length() <= 0) ? null : this.f85629i.addSymbol(namespaceURI);
    }

    /* renamed from: g */
    public final void m57428g(Node node) {
        if (node.getNodeType() == 1) {
            this.f85639s = node;
            m57427f(this.f85640t, node);
            this.f85628h.endElement(this.f85640t, null);
            this.f85626f.popContext();
        }
    }

    /* renamed from: h */
    public Node m57429h() {
        return this.f85639s;
    }

    /* renamed from: i */
    public final void m57430i(NamedNodeMap namedNodeMap) {
        int length = namedNodeMap.getLength();
        this.f85642v.removeAllAttributes();
        for (int i = 0; i < length; i++) {
            Attr attr = (Attr) namedNodeMap.item(i);
            String value = attr.getValue();
            if (value == null) {
                value = XMLSymbols.EMPTY_STRING;
            }
            m57427f(this.f85641u, attr);
            this.f85642v.addAttributeNS(this.f85641u, XMLSymbols.fCDATASymbol, value);
            this.f85642v.setSpecified(i, attr.getSpecified());
            QName qName = this.f85641u;
            if (qName.uri == NamespaceContext.XMLNS_URI) {
                if (qName.prefix == XMLSymbols.PREFIX_XMLNS) {
                    this.f85626f.declarePrefix(qName.localpart, value.length() != 0 ? this.f85629i.addSymbol(value) : null);
                } else {
                    this.f85626f.declarePrefix(XMLSymbols.EMPTY_STRING, value.length() != 0 ? this.f85629i.addSymbol(value) : null);
                }
            }
        }
    }

    @Override // org.apache.xerces.impl.validation.EntityState
    public boolean isEntityDeclared(String str) {
        return false;
    }

    @Override // org.apache.xerces.impl.validation.EntityState
    public boolean isEntityUnparsed(String str) {
        Entity entity;
        NamedNodeMap namedNodeMap = this.f85636p;
        return (namedNodeMap == null || (entity = (Entity) namedNodeMap.getNamedItem(str)) == null || entity.getNotationName() == null) ? false : true;
    }

    /* renamed from: j */
    public final void m57431j(String str) {
        if (str != null) {
            int length = str.length();
            int i = length & 1023;
            if (i > 0) {
                str.getChars(0, i, this.f85637q, 0);
                this.f85643w.setValues(this.f85637q, 0, i);
                this.f85628h.characters(this.f85643w, null);
            }
            while (i < length) {
                int i2 = i + 1024;
                str.getChars(i, i2, this.f85637q, 0);
                this.f85643w.setValues(this.f85637q, 0, 1024);
                this.f85628h.characters(this.f85643w, null);
                i = i2;
            }
        }
    }

    /* renamed from: k */
    public final void m57432k(DOMSource dOMSource, DOMResult dOMResult) throws SAXException {
        if (dOMResult == null) {
            this.f85633m = null;
            this.f85628h.setDocumentHandler(null);
            return;
        }
        if (dOMSource.getNode() == dOMResult.getNode()) {
            rqe rqeVar = this.f85634n;
            this.f85633m = rqeVar;
            rqeVar.setDOMResult(dOMResult);
            this.f85628h.setDocumentHandler(this.f85634n);
            return;
        }
        if (dOMResult.getNode() == null) {
            try {
                DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                newInstance.setNamespaceAware(true);
                dOMResult.setNode(newInstance.newDocumentBuilder().newDocument());
            } catch (ParserConfigurationException e) {
                throw new SAXException(e);
            }
        }
        sqe sqeVar = this.f85635o;
        this.f85633m = sqeVar;
        sqeVar.setDOMResult(dOMResult);
        this.f85628h.setDocumentHandler(this.f85635o);
    }

    /* renamed from: l */
    public final void m57433l(Document document) {
        DocumentType doctype;
        this.f85636p = (document == null || (doctype = document.getDoctype()) == null) ? null : doctype.getEntities();
    }

    /* renamed from: m */
    public final boolean m57434m(Node node) {
        if (node instanceof NodeImpl) {
            return false;
        }
        Document ownerDocument = node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument();
        return ownerDocument != null && ownerDocument.getImplementation().hasFeature("Core", XQueryParser.XQUERY30);
    }

    /* renamed from: n */
    public final void m57435n(Node node) {
        boolean m57434m = m57434m(node);
        Node node2 = node;
        while (node2 != null) {
            m57426e(node2);
            Node firstChild = node2.getFirstChild();
            while (firstChild == null) {
                m57428g(node2);
                if (node == node2) {
                    break;
                }
                firstChild = node2.getNextSibling();
                if (firstChild == null) {
                    node2 = node2.getParentNode();
                    if (node2 != null) {
                        if (m57434m ? node.isSameNode(node2) : node == node2) {
                        }
                    }
                    if (node2 != null) {
                        m57428g(node2);
                    }
                    node2 = null;
                }
            }
            node2 = firstChild;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.yzn
    public void validate(Source source, Result result) throws SAXException, IOException {
        if (!(result instanceof DOMResult) && result != null) {
            throw new IllegalArgumentException(oqi.m56146a(this.f85631k.getLocale(), "SourceResultMismatch", new Object[]{source.getClass().getName(), result.getClass().getName()}));
        }
        DOMSource dOMSource = (DOMSource) source;
        DOMResult dOMResult = (DOMResult) result;
        Node node = dOMSource.getNode();
        this.f85638r = node;
        if (node != null) {
            this.f85631k.reset();
            this.f85630j.setEntityState(this);
            this.f85627g.reset();
            String systemId = dOMSource.getSystemId();
            this.f85632l.setLiteralSystemId(systemId);
            this.f85632l.setExpandedSystemId(systemId);
            this.f85625e.setDocumentLocator(this.f85632l);
            try {
                try {
                    m57433l(node.getNodeType() == 9 ? (Document) node : node.getOwnerDocument());
                    m57432k(dOMSource, dOMResult);
                    this.f85628h.startDocument(this.f85632l, null, this.f85627g, null);
                    m57435n(node);
                    this.f85628h.endDocument(null);
                } catch (XMLParseException e) {
                    throw fzn.m54212b(e);
                } catch (XNIException e2) {
                    throw fzn.m54211a(e2);
                }
            } finally {
                this.f85638r = null;
                this.f85639s = null;
                this.f85636p = null;
                pqe pqeVar = this.f85633m;
                if (pqeVar != null) {
                    pqeVar.setDOMResult(null);
                }
            }
        }
    }
}
