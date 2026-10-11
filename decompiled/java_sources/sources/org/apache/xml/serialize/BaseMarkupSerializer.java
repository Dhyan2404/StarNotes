package org.apache.xml.serialize;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.xerces.dom.DOMErrorImpl;
import org.apache.xerces.dom.DOMLocatorImpl;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.util.XMLChar;
import org.w3c.dom.DOMError;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSException;
import org.w3c.dom.ls.LSSerializerFilter;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes13.dex */
public abstract class BaseMarkupSerializer implements ContentHandler, DocumentHandler, LexicalHandler, DTDHandler, DeclHandler, DOMSerializer, Serializer {

    /* renamed from: k */
    public static /* synthetic */ Class f113619k;
    protected String _docTypePublicId;
    protected String _docTypeSystemId;
    protected EncodingInfo _encodingInfo;
    protected OutputFormat _format;
    protected boolean _indenting;
    protected Hashtable _prefixes;
    protected Printer _printer;
    protected boolean _started;

    /* renamed from: f */
    public int f113621f;
    protected DOMErrorHandler fDOMErrorHandler;
    protected LSSerializerFilter fDOMFilter;

    /* renamed from: g */
    public Vector f113622g;

    /* renamed from: h */
    public boolean f113623h;

    /* renamed from: i */
    public Writer f113624i;

    /* renamed from: j */
    public OutputStream f113625j;
    protected short features = -1;
    protected final DOMErrorImpl fDOMError = new DOMErrorImpl();
    protected final StringBuffer fStrBuffer = new StringBuffer(40);
    protected Node fCurrentNode = null;

    /* renamed from: e */
    public ElementState[] f113620e = new ElementState[10];

    public BaseMarkupSerializer(OutputFormat outputFormat) {
        int i = 0;
        while (true) {
            ElementState[] elementStateArr = this.f113620e;
            if (i >= elementStateArr.length) {
                this._format = outputFormat;
                return;
            } else {
                elementStateArr[i] = new ElementState();
                i++;
            }
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: a */
    public final void m70657a() {
        this.f113621f = 0;
    }

    @Override // org.apache.xml.serialize.Serializer
    public ContentHandler asContentHandler() throws IOException {
        prepare();
        return this;
    }

    @Override // org.apache.xml.serialize.Serializer
    public DOMSerializer asDOMSerializer() throws IOException {
        prepare();
        return this;
    }

    @Override // org.apache.xml.serialize.Serializer
    public DocumentHandler asDocumentHandler() throws IOException {
        prepare();
        return this;
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void attributeDecl(String str, String str2, String str3, String str4, String str5) throws SAXException {
        try {
            this._printer.enterDTD();
            this._printer.printText("<!ATTLIST ");
            this._printer.printText(str);
            this._printer.printText(' ');
            this._printer.printText(str2);
            this._printer.printText(' ');
            this._printer.printText(str3);
            if (str4 != null) {
                this._printer.printText(' ');
                this._printer.printText(str4);
            }
            if (str5 != null) {
                this._printer.printText(" \"");
                printEscaped(str5);
                this._printer.printText('\"');
            }
            this._printer.printText('>');
            if (this._indenting) {
                this._printer.breakLine();
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    /* renamed from: b */
    public final void m70658b(int i) throws IOException {
        this._printer.printText("&#x");
        this._printer.printText(Integer.toHexString(i));
        this._printer.printText(';');
    }

    public void characters(String str) throws IOException {
        ElementState content = content();
        boolean z = content.inCData;
        if (z || content.doCData) {
            if (!z) {
                this._printer.printText("<![CDATA[");
                content.inCData = true;
            }
            int nextIndent = this._printer.getNextIndent();
            this._printer.setNextIndent(0);
            printCDATAText(str);
            this._printer.setNextIndent(nextIndent);
            return;
        }
        if (!content.preserveSpace) {
            printText(str, false, content.unescaped);
            return;
        }
        int nextIndent2 = this._printer.getNextIndent();
        this._printer.setNextIndent(0);
        printText(str, true, content.unescaped);
        this._printer.setNextIndent(nextIndent2);
    }

    public void checkUnboundNamespacePrefixedNode(Node node) throws IOException {
    }

    public void cleanup() {
        this.fCurrentNode = null;
    }

    public void comment(String str) throws IOException {
        if (this._format.getOmitComments()) {
            return;
        }
        ElementState content = content();
        int indexOf = str.indexOf(XMLStreamWriterImpl.END_COMMENT);
        if (indexOf >= 0) {
            StringBuffer stringBuffer = this.fStrBuffer;
            stringBuffer.append(XMLStreamWriterImpl.START_COMMENT);
            stringBuffer.append(str.substring(0, indexOf));
            stringBuffer.append(XMLStreamWriterImpl.END_COMMENT);
        } else {
            StringBuffer stringBuffer2 = this.fStrBuffer;
            stringBuffer2.append(XMLStreamWriterImpl.START_COMMENT);
            stringBuffer2.append(str);
            stringBuffer2.append(XMLStreamWriterImpl.END_COMMENT);
        }
        if (isDocumentState()) {
            if (this.f113622g == null) {
                this.f113622g = new Vector();
            }
            this.f113622g.addElement(this.fStrBuffer.toString());
        } else {
            if (this._indenting && !content.preserveSpace) {
                this._printer.breakLine();
            }
            this._printer.indent();
            printText(this.fStrBuffer.toString(), true, true);
            this._printer.unindent();
            if (this._indenting) {
                content.afterElement = true;
            }
        }
        this.fStrBuffer.setLength(0);
        content.afterComment = true;
        content.afterElement = false;
    }

    public ElementState content() throws IOException {
        ElementState elementState = getElementState();
        if (!isDocumentState()) {
            if (elementState.inCData && !elementState.doCData) {
                this._printer.printText("]]>");
                elementState.inCData = false;
            }
            if (elementState.empty) {
                this._printer.printText('>');
                elementState.empty = false;
            }
            elementState.afterElement = false;
            elementState.afterComment = false;
        }
        return elementState;
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void elementDecl(String str, String str2) throws SAXException {
        try {
            this._printer.enterDTD();
            this._printer.printText("<!ELEMENT ");
            this._printer.printText(str);
            this._printer.printText(' ');
            this._printer.printText(str2);
            this._printer.printText('>');
            if (this._indenting) {
                this._printer.breakLine();
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() {
        getElementState().doCData = false;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() {
    }

    @Override // org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        try {
            serializePreRoot();
            this._printer.flush();
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public abstract void endElement(String str) throws SAXException;

    @Override // org.xml.sax.ContentHandler
    public abstract void endElement(String str, String str2, String str3) throws SAXException;

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String str) {
    }

    public void endNonEscaping() {
        getElementState().unescaped = false;
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) throws SAXException {
    }

    public void endPreserving() {
        getElementState().preserveSpace = false;
    }

    public ElementState enterElementState(String str, String str2, String str3, boolean z) {
        ElementState[] elementStateArr;
        int i = this.f113621f + 1;
        ElementState[] elementStateArr2 = this.f113620e;
        if (i == elementStateArr2.length) {
            int length = elementStateArr2.length + 10;
            ElementState[] elementStateArr3 = new ElementState[length];
            int i2 = 0;
            while (true) {
                elementStateArr = this.f113620e;
                if (i2 >= elementStateArr.length) {
                    break;
                }
                elementStateArr3[i2] = elementStateArr[i2];
                i2++;
            }
            for (int length2 = elementStateArr.length; length2 < length; length2++) {
                elementStateArr3[length2] = new ElementState();
            }
            this.f113620e = elementStateArr3;
        }
        int i3 = this.f113621f + 1;
        this.f113621f = i3;
        ElementState elementState = this.f113620e[i3];
        elementState.namespaceURI = str;
        elementState.localName = str2;
        elementState.rawName = str3;
        elementState.preserveSpace = z;
        elementState.empty = true;
        elementState.afterElement = false;
        elementState.afterComment = false;
        elementState.inCData = false;
        elementState.doCData = false;
        elementState.unescaped = false;
        elementState.prefixes = this._prefixes;
        this._prefixes = null;
        return elementState;
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void externalEntityDecl(String str, String str2, String str3) throws SAXException {
        try {
            this._printer.enterDTD();
            unparsedEntityDecl(str, str2, str3, null);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void fatalError(String str) throws IOException {
        if (this.fDOMErrorHandler == null) {
            throw new IOException(str);
        }
        modifyDOMError(str, (short) 3, null, this.fCurrentNode);
        this.fDOMErrorHandler.handleError(this.fDOMError);
    }

    public ElementState getElementState() {
        return this.f113620e[this.f113621f];
    }

    public abstract String getEntityRef(int i);

    public String getPrefix(String str) {
        String str2;
        String str3;
        Hashtable hashtable = this._prefixes;
        if (hashtable != null && (str3 = (String) hashtable.get(str)) != null) {
            return str3;
        }
        int i = this.f113621f;
        if (i == 0) {
            return null;
        }
        while (i > 0) {
            Hashtable hashtable2 = this.f113620e[i].prefixes;
            if (hashtable2 != null && (str2 = (String) hashtable2.get(str)) != null) {
                return str2;
            }
            i--;
        }
        return null;
    }

    @Override // org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        try {
            content();
            if (!this._indenting) {
                return;
            }
            this._printer.setThisIndent(0);
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    return;
                }
                this._printer.printText(cArr[i]);
                i++;
                i2 = i3;
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void internalEntityDecl(String str, String str2) throws SAXException {
        try {
            this._printer.enterDTD();
            this._printer.printText("<!ENTITY ");
            this._printer.printText(str);
            this._printer.printText(" \"");
            printEscaped(str2);
            this._printer.printText("\">");
            if (this._indenting) {
                this._printer.breakLine();
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public boolean isDocumentState() {
        return this.f113621f == 0;
    }

    public ElementState leaveElementState() {
        int i = this.f113621f;
        if (i <= 0) {
            throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "Internal", null));
        }
        this._prefixes = null;
        int i2 = i - 1;
        this.f113621f = i2;
        return this.f113620e[i2];
    }

    public DOMError modifyDOMError(String str, short s, String str2, Node node) {
        this.fDOMError.reset();
        DOMErrorImpl dOMErrorImpl = this.fDOMError;
        dOMErrorImpl.fMessage = str;
        dOMErrorImpl.fType = str2;
        dOMErrorImpl.fSeverity = s;
        dOMErrorImpl.fLocator = new DOMLocatorImpl(-1, -1, -1, node, null);
        return this.fDOMError;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0047 A[Catch: IOException -> 0x004d, TRY_LEAVE, TryCatch #0 {IOException -> 0x004d, blocks: (B:2:0x0000, B:5:0x0009, B:7:0x001f, B:8:0x0026, B:9:0x003c, B:11:0x0047, B:16:0x002a), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // org.xml.sax.DTDHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void notationDecl(java.lang.String r3, java.lang.String r4, java.lang.String r5) throws org.xml.sax.SAXException {
        /*
            r2 = this;
            org.apache.xml.serialize.Printer r0 = r2._printer     // Catch: java.io.IOException -> L4d
            r0.enterDTD()     // Catch: java.io.IOException -> L4d
            java.lang.String r0 = "<!NOTATION "
            if (r4 == 0) goto L2a
            org.apache.xml.serialize.Printer r1 = r2._printer     // Catch: java.io.IOException -> L4d
            r1.printText(r0)     // Catch: java.io.IOException -> L4d
            org.apache.xml.serialize.Printer r0 = r2._printer     // Catch: java.io.IOException -> L4d
            r0.printText(r3)     // Catch: java.io.IOException -> L4d
            org.apache.xml.serialize.Printer r3 = r2._printer     // Catch: java.io.IOException -> L4d
            java.lang.String r0 = " PUBLIC "
            r3.printText(r0)     // Catch: java.io.IOException -> L4d
            r2.printDoctypeURL(r4)     // Catch: java.io.IOException -> L4d
            if (r5 == 0) goto L3c
            org.apache.xml.serialize.Printer r3 = r2._printer     // Catch: java.io.IOException -> L4d
            r4 = 32
            r3.printText(r4)     // Catch: java.io.IOException -> L4d
        L26:
            r2.printDoctypeURL(r5)     // Catch: java.io.IOException -> L4d
            goto L3c
        L2a:
            org.apache.xml.serialize.Printer r4 = r2._printer     // Catch: java.io.IOException -> L4d
            r4.printText(r0)     // Catch: java.io.IOException -> L4d
            org.apache.xml.serialize.Printer r4 = r2._printer     // Catch: java.io.IOException -> L4d
            r4.printText(r3)     // Catch: java.io.IOException -> L4d
            org.apache.xml.serialize.Printer r3 = r2._printer     // Catch: java.io.IOException -> L4d
            java.lang.String r4 = " SYSTEM "
            r3.printText(r4)     // Catch: java.io.IOException -> L4d
            goto L26
        L3c:
            org.apache.xml.serialize.Printer r3 = r2._printer     // Catch: java.io.IOException -> L4d
            r4 = 62
            r3.printText(r4)     // Catch: java.io.IOException -> L4d
            boolean r3 = r2._indenting     // Catch: java.io.IOException -> L4d
            if (r3 == 0) goto L4c
            org.apache.xml.serialize.Printer r2 = r2._printer     // Catch: java.io.IOException -> L4d
            r2.breakLine()     // Catch: java.io.IOException -> L4d
        L4c:
            return
        L4d:
            r2 = move-exception
            org.xml.sax.SAXException r3 = new org.xml.sax.SAXException
            r3.<init>(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xml.serialize.BaseMarkupSerializer.notationDecl(java.lang.String, java.lang.String, java.lang.String):void");
    }

    public void prepare() throws IOException {
        Printer printer;
        if (this.f113623h) {
            return;
        }
        if (this.f113624i == null && this.f113625j == null) {
            throw new IOException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
        }
        EncodingInfo encodingInfo = this._format.getEncodingInfo();
        this._encodingInfo = encodingInfo;
        OutputStream outputStream = this.f113625j;
        if (outputStream != null) {
            this.f113624i = encodingInfo.getWriter(outputStream);
        }
        if (this._format.getIndenting()) {
            this._indenting = true;
            printer = new IndentPrinter(this.f113624i, this._format);
        } else {
            this._indenting = false;
            printer = new Printer(this.f113624i, this._format);
        }
        this._printer = printer;
        this.f113621f = 0;
        ElementState elementState = this.f113620e[0];
        elementState.namespaceURI = null;
        elementState.localName = null;
        elementState.rawName = null;
        elementState.preserveSpace = this._format.getPreserveSpace();
        elementState.empty = true;
        elementState.afterElement = false;
        elementState.afterComment = false;
        elementState.inCData = false;
        elementState.doCData = false;
        elementState.prefixes = null;
        this._docTypePublicId = this._format.getDoctypePublic();
        this._docTypeSystemId = this._format.getDoctypeSystem();
        this._started = false;
        this.f113623h = true;
    }

    public void printCDATAText(String str) throws IOException {
        int i;
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == ']' && (i = i2 + 2) < length && str.charAt(i2 + 1) == ']' && str.charAt(i) == '>') {
                if (this.fDOMErrorHandler != null) {
                    if ((this.features & 16) == 0) {
                        String formatMessage = DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "EndingCDATA", null);
                        if ((this.features & 2) != 0) {
                            modifyDOMError(formatMessage, (short) 3, "wf-invalid-character", this.fCurrentNode);
                            this.fDOMErrorHandler.handleError(this.fDOMError);
                            throw new LSException((short) 82, formatMessage);
                        }
                        modifyDOMError(formatMessage, (short) 2, "cdata-section-not-splitted", this.fCurrentNode);
                        if (!this.fDOMErrorHandler.handleError(this.fDOMError)) {
                            throw new LSException((short) 82, formatMessage);
                        }
                    } else {
                        modifyDOMError(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "SplittingCDATA", null), (short) 1, null, this.fCurrentNode);
                        this.fDOMErrorHandler.handleError(this.fDOMError);
                    }
                }
                this._printer.printText(SerializerConstants.CDATA_CONTINUE);
                i2 = i;
            } else if (!XMLChar.isValid(charAt)) {
                i2++;
                if (i2 < length) {
                    surrogates(charAt, str.charAt(i2), true);
                } else {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("The character '");
                    stringBuffer.append(charAt);
                    stringBuffer.append("' is an invalid XML character");
                    fatalError(stringBuffer.toString());
                }
            } else if ((charAt >= ' ' && this._encodingInfo.isPrintable(charAt) && charAt != 127) || charAt == '\n' || charAt == '\r' || charAt == '\t') {
                this._printer.printText(charAt);
            } else {
                this._printer.printText("]]>&#x");
                this._printer.printText(Integer.toHexString(charAt));
                this._printer.printText(";<![CDATA[");
            }
            i2++;
        }
    }

    public void printDoctypeURL(String str) throws IOException {
        this._printer.printText('\"');
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) == '\"' || str.charAt(i) < ' ' || str.charAt(i) > 127) {
                this._printer.printText('%');
                this._printer.printText(Integer.toHexString(str.charAt(i)));
            } else {
                this._printer.printText(str.charAt(i));
            }
        }
        this._printer.printText('\"');
    }

    public void printEscaped(int i) throws IOException {
        Printer printer;
        char c;
        String entityRef = getEntityRef(i);
        if (entityRef != null) {
            this._printer.printText('&');
            this._printer.printText(entityRef);
            printer = this._printer;
            c = ';';
        } else {
            if ((i < 32 || !this._encodingInfo.isPrintable((char) i) || i == 127) && i != 10 && i != 13 && i != 9) {
                m70658b(i);
                return;
            }
            if (i < 65536) {
                printer = this._printer;
            } else {
                int i2 = i - 65536;
                this._printer.printText((char) ((i2 >> 10) + 55296));
                printer = this._printer;
                i = (i2 & 1023) + 56320;
            }
            c = (char) i;
        }
        printer.printText(c);
    }

    public void printText(String str, boolean z, boolean z2) throws IOException {
        int i = 0;
        if (z) {
            while (i < str.length()) {
                char charAt = str.charAt(i);
                if (charAt == '\n' || charAt == '\r' || z2) {
                    this._printer.printText(charAt);
                } else {
                    printEscaped(charAt);
                }
                i++;
            }
            return;
        }
        while (i < str.length()) {
            char charAt2 = str.charAt(i);
            if (charAt2 == ' ' || charAt2 == '\f' || charAt2 == '\t' || charAt2 == '\n' || charAt2 == '\r') {
                this._printer.printSpace();
            } else if (z2) {
                this._printer.printText(charAt2);
            } else {
                printEscaped(charAt2);
            }
            i++;
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void processingInstruction(String str, String str2) throws SAXException {
        try {
            processingInstructionIO(str, str2);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void processingInstructionIO(String str, String str2) throws IOException {
        ElementState content = content();
        int indexOf = str.indexOf("?>");
        if (indexOf >= 0) {
            StringBuffer stringBuffer = this.fStrBuffer;
            stringBuffer.append("<?");
            stringBuffer.append(str.substring(0, indexOf));
        } else {
            StringBuffer stringBuffer2 = this.fStrBuffer;
            stringBuffer2.append("<?");
            stringBuffer2.append(str);
        }
        if (str2 != null) {
            this.fStrBuffer.append(' ');
            int indexOf2 = str2.indexOf("?>");
            if (indexOf2 >= 0) {
                this.fStrBuffer.append(str2.substring(0, indexOf2));
            } else {
                this.fStrBuffer.append(str2);
            }
        }
        this.fStrBuffer.append("?>");
        if (isDocumentState()) {
            if (this.f113622g == null) {
                this.f113622g = new Vector();
            }
            this.f113622g.addElement(this.fStrBuffer.toString());
        } else {
            this._printer.indent();
            printText(this.fStrBuffer.toString(), true, true);
            this._printer.unindent();
            if (this._indenting) {
                content.afterElement = true;
            }
        }
        this.fStrBuffer.setLength(0);
    }

    public boolean reset() {
        if (this.f113621f > 1) {
            throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ResetInMiddle", null));
        }
        this.f113623h = false;
        this.fCurrentNode = null;
        this.fStrBuffer.setLength(0);
        return true;
    }

    @Override // org.apache.xml.serialize.DOMSerializer
    public void serialize(Document document) throws IOException {
        reset();
        prepare();
        serializeNode(document);
        serializePreRoot();
        cleanup();
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    public abstract void serializeElement(Element element) throws IOException;

    /* JADX WARN: Can't wrap try/catch for region: R(10:26|(4:27|28|(1:30)|31)|(7:33|34|35|(1:37)|38|(2:40|41)|43)|46|34|35|(0)|38|(0)|43) */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008b A[Catch: Exception -> 0x009e, TryCatch #0 {Exception -> 0x009e, blocks: (B:35:0x007d, B:37:0x008b, B:38:0x0091, B:40:0x0097), top: B:34:0x007d }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0097 A[Catch: Exception -> 0x009e, TRY_LEAVE, TryCatch #0 {Exception -> 0x009e, blocks: (B:35:0x007d, B:37:0x008b, B:38:0x0091, B:40:0x0097), top: B:34:0x007d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeNode(org.w3c.dom.Node r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xml.serialize.BaseMarkupSerializer.serializeNode(org.w3c.dom.Node):void");
    }

    public void serializePreRoot() throws IOException {
        if (this.f113622g != null) {
            for (int i = 0; i < this.f113622g.size(); i++) {
                printText((String) this.f113622g.elementAt(i), true, true);
                if (this._indenting) {
                    this._printer.breakLine();
                }
            }
            this.f113622g.removeAllElements();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
    }

    @Override // org.apache.xml.serialize.Serializer
    public void setOutputByteStream(OutputStream outputStream) {
        if (outputStream == null) {
            throw new NullPointerException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ArgumentIsNull", new Object[]{Constants.ELEMNAME_OUTPUT_STRING}));
        }
        this.f113625j = outputStream;
        this.f113624i = null;
        reset();
    }

    @Override // org.apache.xml.serialize.Serializer
    public void setOutputCharStream(Writer writer) {
        if (writer == null) {
            throw new NullPointerException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ArgumentIsNull", new Object[]{"writer"}));
        }
        this.f113624i = writer;
        this.f113625j = null;
        reset();
    }

    @Override // org.apache.xml.serialize.Serializer
    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            throw new NullPointerException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ArgumentIsNull", new Object[]{Constants.ATTRNAME_FORMAT}));
        }
        this._format = outputFormat;
        reset();
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) throws SAXException {
        try {
            endCDATA();
            content();
            this._printer.printText('&');
            this._printer.printText(str);
            this._printer.printText(';');
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() {
        getElementState().doCData = true;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public final void startDTD(String str, String str2, String str3) throws SAXException {
        try {
            this._printer.enterDTD();
            this._docTypePublicId = str2;
            this._docTypeSystemId = str3;
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        try {
            prepare();
        } catch (IOException e) {
            throw new SAXException(e.toString());
        }
    }

    @Override // org.xml.sax.ContentHandler
    public abstract void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException;

    @Override // org.xml.sax.DocumentHandler
    public abstract void startElement(String str, AttributeList attributeList) throws SAXException;

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String str) {
    }

    public void startNonEscaping() {
        getElementState().unescaped = true;
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) throws SAXException {
        if (this._prefixes == null) {
            this._prefixes = new Hashtable();
        }
        Hashtable hashtable = this._prefixes;
        if (str == null) {
            str = "";
        }
        hashtable.put(str2, str);
    }

    public void startPreserving() {
        getElementState().preserveSpace = true;
    }

    public void surrogates(int i, int i2, boolean z) throws IOException {
        StringBuffer stringBuffer;
        String stringBuffer2;
        if (!XMLChar.isHighSurrogate(i)) {
            stringBuffer = new StringBuffer();
        } else {
            if (!XMLChar.isLowSurrogate(i2)) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append("The character '");
                stringBuffer3.append((char) i2);
                stringBuffer3.append("' is an invalid XML character");
                stringBuffer2 = stringBuffer3.toString();
                fatalError(stringBuffer2);
            }
            i = XMLChar.supplemental((char) i, (char) i2);
            if (XMLChar.isValid(i)) {
                if (!z || !content().inCData) {
                    m70658b(i);
                    return;
                }
                this._printer.printText("]]>&#x");
                this._printer.printText(Integer.toHexString(i));
                this._printer.printText(";<![CDATA[");
                return;
            }
            stringBuffer = new StringBuffer();
        }
        stringBuffer.append("The character '");
        stringBuffer.append((char) i);
        stringBuffer.append("' is an invalid XML character");
        stringBuffer2 = stringBuffer.toString();
        fatalError(stringBuffer2);
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        try {
            this._printer.enterDTD();
            if (str2 == null) {
                this._printer.printText("<!ENTITY ");
                this._printer.printText(str);
                this._printer.printText(" SYSTEM ");
            } else {
                this._printer.printText("<!ENTITY ");
                this._printer.printText(str);
                this._printer.printText(" PUBLIC ");
                printDoctypeURL(str2);
                this._printer.printText(' ');
            }
            printDoctypeURL(str3);
            if (str4 != null) {
                this._printer.printText(" NDATA ");
                this._printer.printText(str4);
            }
            this._printer.printText('>');
            if (this._indenting) {
                this._printer.breakLine();
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        int i3;
        try {
            ElementState content = content();
            boolean z = content.inCData;
            if (!z && !content.doCData) {
                if (!content.preserveSpace) {
                    printText(cArr, i, i2, false, content.unescaped);
                    return;
                }
                int nextIndent = this._printer.getNextIndent();
                this._printer.setNextIndent(0);
                printText(cArr, i, i2, true, content.unescaped);
                this._printer.setNextIndent(nextIndent);
                return;
            }
            if (!z) {
                this._printer.printText("<![CDATA[");
                content.inCData = true;
            }
            int nextIndent2 = this._printer.getNextIndent();
            this._printer.setNextIndent(0);
            int i4 = i2 + i;
            while (i < i4) {
                char c = cArr[i];
                if (c == ']' && (i3 = i + 2) < i4 && cArr[i + 1] == ']' && cArr[i3] == '>') {
                    this._printer.printText(SerializerConstants.CDATA_CONTINUE);
                    i = i3;
                } else if (XMLChar.isValid(c)) {
                    if ((c < ' ' || !this._encodingInfo.isPrintable(c) || c == 127) && c != '\n' && c != '\r' && c != '\t') {
                        this._printer.printText("]]>&#x");
                        this._printer.printText(Integer.toHexString(c));
                        this._printer.printText(";<![CDATA[");
                    }
                    this._printer.printText(c);
                } else {
                    i++;
                    if (i < i4) {
                        surrogates(c, cArr[i], true);
                    } else {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("The character '");
                        stringBuffer.append(c);
                        stringBuffer.append("' is an invalid XML character");
                        fatalError(stringBuffer.toString());
                    }
                }
                i++;
            }
            this._printer.setNextIndent(nextIndent2);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        try {
            comment(new String(cArr, i, i2));
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void printEscaped(String str) throws IOException {
        int i;
        int i2 = 0;
        while (i2 < str.length()) {
            int charAt = str.charAt(i2);
            if ((charAt & 64512) == 55296 && (i = i2 + 1) < str.length()) {
                char charAt2 = str.charAt(i);
                if ((64512 & charAt2) == 56320) {
                    charAt = ((((charAt - 55296) << 10) + 65536) + charAt2) - 56320;
                    i2 = i;
                }
            }
            printEscaped(charAt);
            i2++;
        }
    }

    public void printText(char[] cArr, int i, int i2, boolean z, boolean z2) throws IOException {
        if (z) {
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    return;
                }
                char c = cArr[i];
                i++;
                if (c == '\n' || c == '\r' || z2) {
                    this._printer.printText(c);
                } else {
                    printEscaped(c);
                }
                i2 = i3;
            }
        } else {
            while (true) {
                int i4 = i2 - 1;
                if (i2 <= 0) {
                    return;
                }
                char c2 = cArr[i];
                i++;
                if (c2 == ' ' || c2 == '\f' || c2 == '\t' || c2 == '\n' || c2 == '\r') {
                    this._printer.printSpace();
                } else if (z2) {
                    this._printer.printText(c2);
                } else {
                    printEscaped(c2);
                }
                i2 = i4;
            }
        }
    }

    @Override // org.apache.xml.serialize.DOMSerializer
    public void serialize(DocumentFragment documentFragment) throws IOException {
        reset();
        prepare();
        serializeNode(documentFragment);
        cleanup();
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    @Override // org.apache.xml.serialize.DOMSerializer
    public void serialize(Element element) throws IOException {
        reset();
        prepare();
        serializeNode(element);
        cleanup();
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }
}
