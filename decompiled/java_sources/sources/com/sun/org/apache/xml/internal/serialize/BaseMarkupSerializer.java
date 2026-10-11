package com.sun.org.apache.xml.internal.serialize;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xerces.internal.dom.DOMErrorImpl;
import com.sun.org.apache.xerces.internal.dom.DOMLocatorImpl;
import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Hashtable;
import java.util.Vector;
import org.w3c.dom.DOMError;
import org.w3c.dom.DOMErrorHandler;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSException;
import org.w3c.dom.ls.LSSerializerFilter;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes10.dex */
public abstract class BaseMarkupSerializer implements ContentHandler, DocumentHandler, LexicalHandler, DTDHandler, DeclHandler, DOMSerializer, Serializer {
    protected String _docTypePublicId;
    protected String _docTypeSystemId;
    private int _elementStateCount;
    protected EncodingInfo _encodingInfo;
    protected OutputFormat _format;
    protected boolean _indenting;
    private OutputStream _output;
    private Vector _preRoot;
    protected Hashtable _prefixes;
    private boolean _prepared;
    protected Printer _printer;
    protected boolean _started;
    private Writer _writer;
    protected DOMErrorHandler fDOMErrorHandler;
    protected LSSerializerFilter fDOMFilter;
    protected short features = -1;
    protected final DOMErrorImpl fDOMError = new DOMErrorImpl();
    protected final StringBuffer fStrBuffer = new StringBuffer(40);
    protected Node fCurrentNode = null;
    private ElementState[] _elementStates = new ElementState[10];

    public BaseMarkupSerializer(OutputFormat outputFormat) {
        int i = 0;
        while (true) {
            ElementState[] elementStateArr = this._elementStates;
            if (i >= elementStateArr.length) {
                this._format = outputFormat;
                return;
            } else {
                elementStateArr[i] = new ElementState();
                i++;
            }
        }
    }

    @Override // com.sun.org.apache.xml.internal.serialize.Serializer
    public ContentHandler asContentHandler() throws IOException {
        prepare();
        return this;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.Serializer
    public DOMSerializer asDOMSerializer() throws IOException {
        prepare();
        return this;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.Serializer
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

    @Override // org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        int i3;
        try {
            ElementState content = content();
            boolean z = content.inCData;
            if (!z && !content.doCData) {
                if (content.preserveSpace) {
                    int nextIndent = this._printer.getNextIndent();
                    this._printer.setNextIndent(0);
                    printText(cArr, i, i2, true, content.unescaped);
                    this._printer.setNextIndent(nextIndent);
                    return;
                }
                printText(cArr, i, i2, false, content.unescaped);
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
                    if ((c < ' ' || !this._encodingInfo.isPrintable(c) || c == 247) && c != '\n' && c != '\r' && c != '\t') {
                        this._printer.printText("]]>&#x");
                        this._printer.printText(Integer.toHexString(c));
                        this._printer.printText(";<![CDATA[");
                    }
                    this._printer.printText(c);
                } else {
                    i++;
                    if (i < i4) {
                        surrogates(c, cArr[i]);
                    } else {
                        fatalError("The character '" + c + "' is an invalid XML character");
                    }
                }
                i++;
            }
            this._printer.setNextIndent(nextIndent2);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void checkUnboundNamespacePrefixedNode(Node node) throws IOException {
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] cArr, int i, int i2) throws SAXException {
        try {
            comment(new String(cArr, i, i2));
        } catch (IOException e) {
            throw new SAXException(e);
        }
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
        int i = this._elementStateCount + 1;
        ElementState[] elementStateArr2 = this._elementStates;
        if (i == elementStateArr2.length) {
            int length = elementStateArr2.length + 10;
            ElementState[] elementStateArr3 = new ElementState[length];
            int i2 = 0;
            while (true) {
                elementStateArr = this._elementStates;
                if (i2 >= elementStateArr.length) {
                    break;
                }
                elementStateArr3[i2] = elementStateArr[i2];
                i2++;
            }
            for (int length2 = elementStateArr.length; length2 < length; length2++) {
                elementStateArr3[length2] = new ElementState();
            }
            this._elementStates = elementStateArr3;
        }
        int i3 = this._elementStateCount + 1;
        this._elementStateCount = i3;
        ElementState elementState = this._elementStates[i3];
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
        return this._elementStates[this._elementStateCount];
    }

    public abstract String getEntityRef(int i);

    public String getPrefix(String str) {
        String str2;
        String str3;
        Hashtable hashtable = this._prefixes;
        if (hashtable != null && (str3 = (String) hashtable.get(str)) != null) {
            return str3;
        }
        int i = this._elementStateCount;
        if (i == 0) {
            return null;
        }
        while (i > 0) {
            Hashtable hashtable2 = this._elementStates[i].prefixes;
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
        return this._elementStateCount == 0;
    }

    public ElementState leaveElementState() {
        int i = this._elementStateCount;
        if (i <= 0) {
            throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "Internal", null));
        }
        this._prefixes = null;
        int i2 = i - 1;
        this._elementStateCount = i2;
        return this._elementStates[i2];
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

    @Override // org.xml.sax.DTDHandler
    public void notationDecl(String str, String str2, String str3) throws SAXException {
        try {
            this._printer.enterDTD();
            if (str2 != null) {
                this._printer.printText("<!NOTATION ");
                this._printer.printText(str);
                this._printer.printText(" PUBLIC ");
                printDoctypeURL(str2);
                if (str3 != null) {
                    this._printer.printText(' ');
                    printDoctypeURL(str3);
                }
            } else {
                this._printer.printText("<!NOTATION ");
                this._printer.printText(str);
                this._printer.printText(" SYSTEM ");
                printDoctypeURL(str3);
            }
            this._printer.printText('>');
            if (this._indenting) {
                this._printer.breakLine();
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public void prepare() throws IOException {
        if (this._prepared) {
            return;
        }
        if (this._writer == null && this._output == null) {
            throw new IOException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
        }
        EncodingInfo encodingInfo = this._format.getEncodingInfo();
        this._encodingInfo = encodingInfo;
        OutputStream outputStream = this._output;
        if (outputStream != null) {
            this._writer = encodingInfo.getWriter(outputStream);
        }
        if (this._format.getIndenting()) {
            this._indenting = true;
            this._printer = new IndentPrinter(this._writer, this._format);
        } else {
            this._indenting = false;
            this._printer = new Printer(this._writer, this._format);
        }
        this._elementStateCount = 0;
        ElementState elementState = this._elementStates[0];
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
        this._prepared = true;
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
                    surrogates(charAt, str.charAt(i2));
                } else {
                    fatalError("The character '" + charAt + "' is an invalid XML character");
                }
            } else if ((charAt >= ' ' && this._encodingInfo.isPrintable(charAt) && charAt != 247) || charAt == '\n' || charAt == '\r' || charAt == '\t') {
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
        String entityRef = getEntityRef(i);
        if (entityRef != null) {
            this._printer.printText('&');
            this._printer.printText(entityRef);
            this._printer.printText(';');
        } else if ((i < 32 || !this._encodingInfo.isPrintable((char) i) || i == 247) && i != 10 && i != 13 && i != 9) {
            printHex(i);
        } else {
            if (i < 65536) {
                this._printer.printText((char) i);
                return;
            }
            int i2 = i - 65536;
            this._printer.printText((char) ((i2 >> 10) + 55296));
            this._printer.printText((char) ((i2 & 1023) + 56320));
        }
    }

    public final void printHex(int i) throws IOException {
        this._printer.printText("&#x");
        this._printer.printText(Integer.toHexString(i));
        this._printer.printText(';');
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
                if (c != '\n' && c != '\r' && !z2) {
                    printEscaped(c);
                } else {
                    this._printer.printText(c);
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
            if (this._preRoot == null) {
                this._preRoot = new Vector();
            }
            this._preRoot.addElement(this.fStrBuffer.toString());
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
        if (this._elementStateCount > 1) {
            throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ResetInMiddle", null));
        }
        this._prepared = false;
        this.fCurrentNode = null;
        this.fStrBuffer.setLength(0);
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.DOMSerializer
    public void serialize(Element element) throws IOException {
        reset();
        prepare();
        serializeNode(element);
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    public void serializeDTD(String str) throws IOException {
        String leaveDTD = this._printer.leaveDTD();
        if (this._format.getOmitDocumentType()) {
            return;
        }
        if (this._docTypeSystemId == null) {
            if (leaveDTD == null || leaveDTD.length() <= 0) {
                return;
            }
            this._printer.printText("<!DOCTYPE ");
            this._printer.printText(str);
            this._printer.printText(" [");
            printText(leaveDTD, true, true);
            this._printer.printText("]>");
            this._printer.breakLine();
            return;
        }
        this._printer.printText("<!DOCTYPE ");
        this._printer.printText(str);
        if (this._docTypePublicId != null) {
            this._printer.printText(" PUBLIC ");
            printDoctypeURL(this._docTypePublicId);
            if (this._indenting) {
                this._printer.breakLine();
                for (int i = 0; i < str.length() + 18; i++) {
                    this._printer.printText(" ");
                }
            } else {
                this._printer.printText(" ");
            }
            printDoctypeURL(this._docTypeSystemId);
        } else {
            this._printer.printText(" SYSTEM ");
            printDoctypeURL(this._docTypeSystemId);
        }
        if (leaveDTD != null && leaveDTD.length() > 0) {
            this._printer.printText(" [");
            printText(leaveDTD, true, true);
            this._printer.printText(']');
        }
        this._printer.printText(">");
        this._printer.breakLine();
    }

    public void serializeDocument() throws IOException {
        this._printer.leaveDTD();
        if (!this._started && !this._format.getOmitXMLDeclaration()) {
            StringBuffer stringBuffer = new StringBuffer("<?xml version=\"");
            if (this._format.getVersion() != null) {
                stringBuffer.append(this._format.getVersion());
            } else {
                stringBuffer.append("1.0");
            }
            stringBuffer.append('\"');
            String encoding = this._format.getEncoding();
            if (encoding != null) {
                stringBuffer.append(" encoding=\"");
                stringBuffer.append(encoding);
                stringBuffer.append('\"');
            }
            if (this._format.getStandalone() && this._docTypeSystemId == null && this._docTypePublicId == null) {
                stringBuffer.append(" standalone=\"yes\"");
            }
            stringBuffer.append("?>");
            this._printer.printText(stringBuffer);
            this._printer.breakLine();
        }
        serializePreRoot();
    }

    public abstract void serializeElement(Element element) throws IOException;

    /* JADX WARN: Can't wrap try/catch for region: R(8:28|(2:29|30)|(5:32|33|34|(2:36|37)|39)|42|33|34|(0)|39) */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0088 A[Catch: Exception -> 0x008f, TRY_LEAVE, TryCatch #0 {Exception -> 0x008f, blocks: (B:34:0x0078, B:36:0x0088), top: B:33:0x0078 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeNode(org.w3c.dom.Node r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer.serializeNode(org.w3c.dom.Node):void");
    }

    public void serializePreRoot() throws IOException {
        if (this._preRoot != null) {
            for (int i = 0; i < this._preRoot.size(); i++) {
                printText((String) this._preRoot.elementAt(i), true, true);
                if (this._indenting) {
                    this._printer.breakLine();
                }
            }
            this._preRoot.removeAllElements();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
    }

    @Override // com.sun.org.apache.xml.internal.serialize.Serializer
    public void setOutputByteStream(OutputStream outputStream) {
        if (outputStream == null) {
            throw new NullPointerException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ArgumentIsNull", new Object[]{Constants.ELEMNAME_OUTPUT_STRING}));
        }
        this._output = outputStream;
        this._writer = null;
        reset();
    }

    @Override // com.sun.org.apache.xml.internal.serialize.Serializer
    public void setOutputCharStream(Writer writer) {
        if (writer == null) {
            throw new NullPointerException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ArgumentIsNull", new Object[]{"writer"}));
        }
        this._writer = writer;
        this._output = null;
        reset();
    }

    @Override // com.sun.org.apache.xml.internal.serialize.Serializer
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

    public void surrogates(int i, int i2) throws IOException {
        if (!XMLChar.isHighSurrogate(i)) {
            fatalError("The character '" + ((char) i) + "' is an invalid XML character");
            return;
        }
        if (!XMLChar.isLowSurrogate(i2)) {
            fatalError("The character '" + ((char) i2) + "' is an invalid XML character");
            return;
        }
        int supplemental = XMLChar.supplemental((char) i, (char) i2);
        if (!XMLChar.isValid(supplemental)) {
            fatalError("The character '" + ((char) supplemental) + "' is an invalid XML character");
            return;
        }
        if (!content().inCData) {
            printHex(supplemental);
            return;
        }
        this._printer.printText("]]>&#x");
        this._printer.printText(Integer.toHexString(supplemental));
        this._printer.printText(";<![CDATA[");
    }

    @Override // org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String str, String str2, String str3, String str4) throws SAXException {
        try {
            this._printer.enterDTD();
            if (str2 == null) {
                this._printer.printText("<!ENTITY ");
                this._printer.printText(str);
                this._printer.printText(" SYSTEM ");
                printDoctypeURL(str3);
            } else {
                this._printer.printText("<!ENTITY ");
                this._printer.printText(str);
                this._printer.printText(" PUBLIC ");
                printDoctypeURL(str2);
                this._printer.printText(' ');
                printDoctypeURL(str3);
            }
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
            if (this._preRoot == null) {
                this._preRoot = new Vector();
            }
            this._preRoot.addElement(this.fStrBuffer.toString());
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

    public void serialize(Node node) throws IOException {
        reset();
        prepare();
        serializeNode(node);
        serializePreRoot();
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    public void printText(String str, boolean z, boolean z2) throws IOException {
        int i = 0;
        if (z) {
            while (i < str.length()) {
                char charAt = str.charAt(i);
                if (charAt != '\n' && charAt != '\r' && !z2) {
                    printEscaped(charAt);
                } else {
                    this._printer.printText(charAt);
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

    @Override // com.sun.org.apache.xml.internal.serialize.DOMSerializer
    public void serialize(DocumentFragment documentFragment) throws IOException {
        reset();
        prepare();
        serializeNode(documentFragment);
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    @Override // com.sun.org.apache.xml.internal.serialize.DOMSerializer
    public void serialize(Document document) throws IOException {
        reset();
        prepare();
        serializeNode(document);
        serializePreRoot();
        this._printer.flush();
        if (this._printer.getException() != null) {
            throw this._printer.getException();
        }
    }

    public void characters(String str) throws IOException {
        ElementState content = content();
        boolean z = content.inCData;
        if (!z && !content.doCData) {
            if (content.preserveSpace) {
                int nextIndent = this._printer.getNextIndent();
                this._printer.setNextIndent(0);
                printText(str, true, content.unescaped);
                this._printer.setNextIndent(nextIndent);
                return;
            }
            printText(str, false, content.unescaped);
            return;
        }
        if (!z) {
            this._printer.printText("<![CDATA[");
            content.inCData = true;
        }
        int nextIndent2 = this._printer.getNextIndent();
        this._printer.setNextIndent(0);
        printCDATAText(str);
        this._printer.setNextIndent(nextIndent2);
    }
}
