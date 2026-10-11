package org.apache.xml.serialize;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Hashtable;
import java.util.Map;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLSymbols;
import org.w3c.dom.Attr;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSSerializerFilter;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes13.dex */
public class XMLSerializer extends BaseMarkupSerializer {
    protected static final boolean DEBUG = false;
    protected static final String PREFIX = "NS";
    protected NamespaceSupport fLocalNSBinder;
    protected NamespaceSupport fNSBinder;
    protected boolean fNamespacePrefixes;
    protected boolean fNamespaces;
    protected SymbolTable fSymbolTable;

    /* renamed from: l */
    public boolean f113715l;

    public XMLSerializer() {
        super(new OutputFormat("xml", (String) null, false));
        this.fNamespaces = false;
        this.fNamespacePrefixes = true;
    }

    /* renamed from: c */
    public final Attributes m70694c(Attributes attributes) throws SAXException {
        String substring;
        if (attributes == null) {
            return null;
        }
        int length = attributes.getLength();
        AttributesImpl attributesImpl = new AttributesImpl(attributes);
        for (int i = length - 1; i >= 0; i--) {
            String qName = attributesImpl.getQName(i);
            if (qName.startsWith("xmlns")) {
                if (qName.length() == 5) {
                    substring = "";
                } else if (qName.charAt(5) == ':') {
                    substring = qName.substring(6);
                }
                startPrefixMapping(substring, attributes.getValue(i));
                attributesImpl.removeAttribute(i);
            }
        }
        return attributesImpl;
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void checkUnboundNamespacePrefixedNode(Node node) throws IOException {
        if (this.fNamespaces) {
            Node firstChild = node.getFirstChild();
            while (firstChild != null) {
                Node nextSibling = firstChild.getNextSibling();
                String prefix = firstChild.getPrefix();
                String addSymbol = (prefix == null || prefix.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix);
                if (this.fNSBinder.getURI(addSymbol) == null && addSymbol != null) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("The replacement text of the entity node '");
                    stringBuffer.append(node.getNodeName());
                    stringBuffer.append("' contains an element node '");
                    stringBuffer.append(firstChild.getNodeName());
                    stringBuffer.append("' with an undeclared prefix '");
                    stringBuffer.append(addSymbol);
                    stringBuffer.append("'.");
                    fatalError(stringBuffer.toString());
                }
                if (firstChild.getNodeType() == 1) {
                    NamedNodeMap attributes = firstChild.getAttributes();
                    for (int i = 0; i < attributes.getLength(); i++) {
                        String prefix2 = attributes.item(i).getPrefix();
                        String addSymbol2 = (prefix2 == null || prefix2.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix2);
                        if (this.fNSBinder.getURI(addSymbol2) == null && addSymbol2 != null) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append("The replacement text of the entity node '");
                            stringBuffer2.append(node.getNodeName());
                            stringBuffer2.append("' contains an element node '");
                            stringBuffer2.append(firstChild.getNodeName());
                            stringBuffer2.append("' with an attribute '");
                            stringBuffer2.append(attributes.item(i).getNodeName());
                            stringBuffer2.append("' an undeclared prefix '");
                            stringBuffer2.append(addSymbol2);
                            stringBuffer2.append("'.");
                            fatalError(stringBuffer2.toString());
                        }
                    }
                }
                if (firstChild.hasChildNodes()) {
                    checkUnboundNamespacePrefixedNode(firstChild);
                }
                firstChild = nextSibling;
            }
        }
    }

    /* renamed from: d */
    public final void m70695d(String str, String str2, boolean z, Attr attr) throws IOException {
        short acceptNode;
        if (z || (this.features & 64) == 0) {
            LSSerializerFilter lSSerializerFilter = this.fDOMFilter;
            if (lSSerializerFilter != null && (lSSerializerFilter.getWhatToShow() & 2) != 0 && ((acceptNode = this.fDOMFilter.acceptNode(attr)) == 2 || acceptNode == 3)) {
                return;
            }
            this._printer.printSpace();
            this._printer.printText(str);
            this._printer.printText("=\"");
            printEscaped(str2);
            this._printer.printText('\"');
        }
        if (str.equals(Constants.ATTRNAME_XMLSPACE)) {
            this.f113715l = str2.equals("preserve") ? true : this._format.getPreserveSpace();
        }
    }

    /* renamed from: e */
    public final void m70696e(String str, String str2) throws IOException {
        this._printer.printSpace();
        if (str == XMLSymbols.EMPTY_STRING) {
            this._printer.printText(XMLSymbols.PREFIX_XMLNS);
        } else {
            Printer printer = this._printer;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("xmlns:");
            stringBuffer.append(str);
            printer.printText(stringBuffer.toString());
        }
        this._printer.printText("=\"");
        printEscaped(str2);
        this._printer.printText('\"');
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        endElement(null, null, str);
    }

    public void endElementIO(String str, String str2, String str3) throws IOException {
        this._printer.unindent();
        ElementState elementState = getElementState();
        if (elementState.empty) {
            this._printer.printText(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
        } else {
            if (elementState.inCData) {
                this._printer.printText("]]>");
            }
            if (this._indenting && !elementState.preserveSpace && (elementState.afterElement || elementState.afterComment)) {
                this._printer.breakLine();
            }
            this._printer.printText(XMLStreamWriterImpl.OPEN_END_TAG);
            this._printer.printText(elementState.rawName);
            this._printer.printText('>');
        }
        ElementState leaveElementState = leaveElementState();
        leaveElementState.afterElement = true;
        leaveElementState.afterComment = false;
        leaveElementState.empty = false;
        if (isDocumentState()) {
            this._printer.flush();
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public String getEntityRef(int i) {
        if (i == 34) {
            return "quot";
        }
        if (i == 60) {
            return WebvttCueParser.f27233m;
        }
        if (i == 62) {
            return WebvttCueParser.f27234n;
        }
        if (i == 38) {
            return WebvttCueParser.f27235o;
        }
        if (i != 39) {
            return null;
        }
        return "apos";
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void printEscaped(String str) throws IOException {
        Printer printer;
        String str2;
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (XMLChar.isValid(charAt)) {
                if (charAt != '\n' && charAt != '\r' && charAt != '\t') {
                    if (charAt == '<') {
                        printer = this._printer;
                        str2 = "&lt;";
                    } else if (charAt == '&') {
                        printer = this._printer;
                        str2 = "&amp;";
                    } else if (charAt == '\"') {
                        printer = this._printer;
                        str2 = SerializerConstants.ENTITY_QUOT;
                    } else if (charAt >= ' ') {
                        char c = charAt;
                        if (this._encodingInfo.isPrintable(c)) {
                            this._printer.printText(c);
                        }
                    }
                    printer.printText(str2);
                }
                m70658b(charAt);
            } else {
                i++;
                if (i < length) {
                    surrogates(charAt, str.charAt(i), false);
                } else {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("The character '");
                    stringBuffer.append(charAt);
                    stringBuffer.append("' is an invalid XML character");
                    fatalError(stringBuffer.toString());
                }
            }
            i++;
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void printText(String str, boolean z, boolean z2) throws IOException {
        int length = str.length();
        int i = 0;
        if (z) {
            while (i < length) {
                char charAt = str.charAt(i);
                if (!XMLChar.isValid(charAt)) {
                    i++;
                    if (i < length) {
                        surrogates(charAt, str.charAt(i), true);
                    } else {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("The character '");
                        stringBuffer.append(charAt);
                        stringBuffer.append("' is an invalid XML character");
                        fatalError(stringBuffer.toString());
                    }
                } else if (z2) {
                    this._printer.printText(charAt);
                } else {
                    printXMLChar(charAt);
                }
                i++;
            }
            return;
        }
        while (i < length) {
            char charAt2 = str.charAt(i);
            if (!XMLChar.isValid(charAt2)) {
                i++;
                if (i < length) {
                    surrogates(charAt2, str.charAt(i), true);
                } else {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("The character '");
                    stringBuffer2.append(charAt2);
                    stringBuffer2.append("' is an invalid XML character");
                    fatalError(stringBuffer2.toString());
                }
            } else if (z2) {
                this._printer.printText(charAt2);
            } else {
                printXMLChar(charAt2);
            }
            i++;
        }
    }

    public void printXMLChar(int i) throws IOException {
        Printer printer;
        String str;
        if (i != 13) {
            if (i == 60) {
                printer = this._printer;
                str = "&lt;";
            } else if (i == 38) {
                printer = this._printer;
                str = "&amp;";
            } else if (i == 62) {
                printer = this._printer;
                str = "&gt;";
            } else if (i == 10 || i == 9 || (i >= 32 && this._encodingInfo.isPrintable((char) i))) {
                this._printer.printText((char) i);
                return;
            }
            printer.printText(str);
            return;
        }
        m70658b(i);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public boolean reset() {
        super.reset();
        NamespaceSupport namespaceSupport = this.fNSBinder;
        if (namespaceSupport == null) {
            return true;
        }
        namespaceSupport.reset();
        NamespaceSupport namespaceSupport2 = this.fNSBinder;
        String str = XMLSymbols.EMPTY_STRING;
        namespaceSupport2.declarePrefix(str, str);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01db  */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object[], java.lang.String] */
    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeElement(org.w3c.dom.Element r24) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1075
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xml.serialize.XMLSerializer.serializeElement(org.w3c.dom.Element):void");
    }

    public void setNamespaces(boolean z) {
        this.fNamespaces = z;
        if (this.fNSBinder == null) {
            this.fNSBinder = new NamespaceSupport();
            this.fLocalNSBinder = new NamespaceSupport();
            this.fSymbolTable = new SymbolTable();
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.apache.xml.serialize.Serializer
    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            outputFormat = new OutputFormat("xml", (String) null, false);
        }
        super.setOutputFormat(outputFormat);
    }

    public void startDocument(String str) throws IOException {
        Printer printer;
        String str2;
        String leaveDTD = this._printer.leaveDTD();
        if (!this._started) {
            if (!this._format.getOmitXMLDeclaration()) {
                StringBuffer stringBuffer = new StringBuffer("<?xml version=\"");
                stringBuffer.append(this._format.getVersion() != null ? this._format.getVersion() : "1.0");
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
            if (!this._format.getOmitDocumentType()) {
                if (this._docTypeSystemId != null) {
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
                    } else {
                        this._printer.printText(" SYSTEM ");
                    }
                    printDoctypeURL(this._docTypeSystemId);
                    if (leaveDTD != null && leaveDTD.length() > 0) {
                        this._printer.printText(" [");
                        printText(leaveDTD, true, true);
                        this._printer.printText(']');
                    }
                    printer = this._printer;
                    str2 = ">";
                } else if (leaveDTD != null && leaveDTD.length() > 0) {
                    this._printer.printText("<!DOCTYPE ");
                    this._printer.printText(str);
                    this._printer.printText(" [");
                    printText(leaveDTD, true, true);
                    printer = this._printer;
                    str2 = "]>";
                }
                printer.printText(str2);
                this._printer.breakLine();
            }
        }
        this._started = true;
        serializePreRoot();
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        String prefix;
        Printer printer;
        String prefix2;
        String str4;
        try {
            if (this._printer == null) {
                throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
            }
            ElementState elementState = getElementState();
            if (!isDocumentState()) {
                if (elementState.empty) {
                    this._printer.printText('>');
                }
                if (elementState.inCData) {
                    this._printer.printText("]]>");
                    elementState.inCData = false;
                }
                if (this._indenting && !elementState.preserveSpace && (elementState.empty || elementState.afterElement || elementState.afterComment)) {
                    this._printer.breakLine();
                }
            } else if (!this._started) {
                if (str2 != null && str2.length() != 0) {
                    str4 = str2;
                    startDocument(str4);
                }
                str4 = str3;
                startDocument(str4);
            }
            boolean z = elementState.preserveSpace;
            Attributes m70694c = m70694c(attributes);
            if (str3 == null || str3.length() == 0) {
                if (str2 == null) {
                    throw new SAXException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoName", null));
                }
                if (str == null || str.equals("") || (prefix = getPrefix(str)) == null || prefix.length() <= 0) {
                    str3 = str2;
                } else {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(prefix);
                    stringBuffer.append(":");
                    stringBuffer.append(str2);
                    str3 = stringBuffer.toString();
                }
            }
            this._printer.printText('<');
            this._printer.printText(str3);
            this._printer.indent();
            if (m70694c != null) {
                for (int i = 0; i < m70694c.getLength(); i++) {
                    this._printer.printSpace();
                    String qName = m70694c.getQName(i);
                    if (qName != null && qName.length() == 0) {
                        qName = m70694c.getLocalName(i);
                        String uri = m70694c.getURI(i);
                        if (uri != null && uri.length() != 0 && ((str == null || str.length() == 0 || !uri.equals(str)) && (prefix2 = getPrefix(uri)) != null && prefix2.length() > 0)) {
                            StringBuffer stringBuffer2 = new StringBuffer();
                            stringBuffer2.append(prefix2);
                            stringBuffer2.append(":");
                            stringBuffer2.append(qName);
                            qName = stringBuffer2.toString();
                        }
                    }
                    String value = m70694c.getValue(i);
                    if (value == null) {
                        value = "";
                    }
                    this._printer.printText(qName);
                    this._printer.printText("=\"");
                    printEscaped(value);
                    this._printer.printText('\"');
                    if (qName.equals(Constants.ATTRNAME_XMLSPACE)) {
                        z = value.equals("preserve") ? true : this._format.getPreserveSpace();
                    }
                }
            }
            Hashtable hashtable = this._prefixes;
            if (hashtable != null) {
                for (Map.Entry entry : hashtable.entrySet()) {
                    this._printer.printSpace();
                    String str5 = (String) entry.getKey();
                    String str6 = (String) entry.getValue();
                    if (str6.length() == 0) {
                        this._printer.printText("xmlns=\"");
                        printEscaped(str5);
                        printer = this._printer;
                    } else {
                        this._printer.printText("xmlns:");
                        this._printer.printText(str6);
                        this._printer.printText("=\"");
                        printEscaped(str5);
                        printer = this._printer;
                    }
                    printer.printText('\"');
                }
            }
            ElementState enterElementState = enterElementState(str, str2, str3, z);
            if (str2 != null && str2.length() != 0) {
                StringBuffer stringBuffer3 = new StringBuffer();
                stringBuffer3.append(str);
                stringBuffer3.append("^");
                stringBuffer3.append(str2);
                str3 = stringBuffer3.toString();
            }
            enterElementState.doCData = this._format.isCDataElement(str3);
            enterElementState.unescaped = this._format.isNonEscapingElement(str3);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public XMLSerializer(OutputStream outputStream, OutputFormat outputFormat) {
        super(outputFormat == null ? new OutputFormat("xml", (String) null, false) : outputFormat);
        this.fNamespaces = false;
        this.fNamespacePrefixes = true;
        this._format.setMethod("xml");
        setOutputByteStream(outputStream);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        try {
            endElementIO(str, str2, str3);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void printText(char[] cArr, int i, int i2, boolean z, boolean z2) throws IOException {
        if (z) {
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    return;
                }
                int i4 = i + 1;
                char c = cArr[i];
                if (XMLChar.isValid(c)) {
                    if (z2) {
                        this._printer.printText(c);
                    } else {
                        printXMLChar(c);
                    }
                    i = i4;
                    i2 = i3;
                } else {
                    int i5 = i3 - 1;
                    if (i3 > 0) {
                        surrogates(c, cArr[i4], true);
                        i = i4 + 1;
                    } else {
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("The character '");
                        stringBuffer.append(c);
                        stringBuffer.append("' is an invalid XML character");
                        fatalError(stringBuffer.toString());
                        i = i4;
                    }
                    i2 = i5;
                }
            }
        } else {
            while (true) {
                int i6 = i2 - 1;
                if (i2 <= 0) {
                    return;
                }
                int i7 = i + 1;
                char c2 = cArr[i];
                if (XMLChar.isValid(c2)) {
                    if (z2) {
                        this._printer.printText(c2);
                    } else {
                        printXMLChar(c2);
                    }
                    i = i7;
                    i2 = i6;
                } else {
                    int i8 = i6 - 1;
                    if (i6 > 0) {
                        surrogates(c2, cArr[i7], true);
                        i = i7 + 1;
                    } else {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append("The character '");
                        stringBuffer2.append(c2);
                        stringBuffer2.append("' is an invalid XML character");
                        fatalError(stringBuffer2.toString());
                        i = i7;
                    }
                    i2 = i8;
                }
            }
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.DocumentHandler
    public void startElement(String str, AttributeList attributeList) throws SAXException {
        try {
            if (this._printer == null) {
                throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
            }
            ElementState elementState = getElementState();
            if (!isDocumentState()) {
                if (elementState.empty) {
                    this._printer.printText('>');
                }
                if (elementState.inCData) {
                    this._printer.printText("]]>");
                    elementState.inCData = false;
                }
                if (this._indenting && !elementState.preserveSpace && (elementState.empty || elementState.afterElement || elementState.afterComment)) {
                    this._printer.breakLine();
                }
            } else if (!this._started) {
                startDocument(str);
            }
            boolean z = elementState.preserveSpace;
            this._printer.printText('<');
            this._printer.printText(str);
            this._printer.indent();
            if (attributeList != null) {
                for (int i = 0; i < attributeList.getLength(); i++) {
                    this._printer.printSpace();
                    String name = attributeList.getName(i);
                    String value = attributeList.getValue(i);
                    if (value != null) {
                        this._printer.printText(name);
                        this._printer.printText("=\"");
                        printEscaped(value);
                        this._printer.printText('\"');
                    }
                    if (name.equals(Constants.ATTRNAME_XMLSPACE)) {
                        z = value.equals("preserve") ? true : this._format.getPreserveSpace();
                    }
                }
            }
            ElementState enterElementState = enterElementState(null, null, str, z);
            enterElementState.doCData = this._format.isCDataElement(str);
            enterElementState.unescaped = this._format.isNonEscapingElement(str);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public XMLSerializer(Writer writer, OutputFormat outputFormat) {
        super(outputFormat == null ? new OutputFormat("xml", (String) null, false) : outputFormat);
        this.fNamespaces = false;
        this.fNamespacePrefixes = true;
        this._format.setMethod("xml");
        setOutputCharStream(writer);
    }

    public XMLSerializer(OutputFormat outputFormat) {
        super(outputFormat == null ? new OutputFormat("xml", (String) null, false) : outputFormat);
        this.fNamespaces = false;
        this.fNamespacePrefixes = true;
        this._format.setMethod("xml");
    }
}
