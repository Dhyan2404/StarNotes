package com.sun.org.apache.xml.internal.serialize;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Enumeration;
import java.util.Hashtable;
import org.w3c.dom.Attr;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.ls.LSSerializerFilter;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes10.dex */
public class XMLSerializer extends BaseMarkupSerializer {
    protected static final boolean DEBUG = false;
    protected static final String PREFIX = "NS";
    protected NamespaceSupport fLocalNSBinder;
    protected NamespaceSupport fNSBinder;
    protected boolean fNamespacePrefixes;
    protected boolean fNamespaces;
    private boolean fPreserveSpace;
    protected SymbolTable fSymbolTable;

    public XMLSerializer() {
        super(new OutputFormat("xml", (String) null, false));
        this.fNamespaces = false;
        this.fNamespacePrefixes = true;
    }

    private Attributes extractNamespaces(Attributes attributes) throws SAXException {
        if (attributes == null) {
            return null;
        }
        int length = attributes.getLength();
        AttributesImpl attributesImpl = new AttributesImpl(attributes);
        for (int i = length - 1; i >= 0; i--) {
            String qName = attributesImpl.getQName(i);
            if (qName.startsWith("xmlns")) {
                if (qName.length() == 5) {
                    startPrefixMapping("", attributes.getValue(i));
                    attributesImpl.removeAttribute(i);
                } else if (qName.charAt(5) == ':') {
                    startPrefixMapping(qName.substring(6), attributes.getValue(i));
                    attributesImpl.removeAttribute(i);
                }
            }
        }
        return attributesImpl;
    }

    private void printAttribute(String str, String str2, boolean z, Attr attr) throws IOException {
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
            if (str2.equals("preserve")) {
                this.fPreserveSpace = true;
            } else {
                this.fPreserveSpace = this._format.getPreserveSpace();
            }
        }
    }

    private void printNamespaceAttr(String str, String str2) throws IOException {
        this._printer.printSpace();
        if (str == XMLSymbols.EMPTY_STRING) {
            this._printer.printText(XMLSymbols.PREFIX_XMLNS);
        } else {
            this._printer.printText("xmlns:" + str);
        }
        this._printer.printText("=\"");
        printEscaped(str2);
        this._printer.printText('\"');
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public void checkUnboundNamespacePrefixedNode(Node node) throws IOException {
        if (this.fNamespaces) {
            Node firstChild = node.getFirstChild();
            while (firstChild != null) {
                Node nextSibling = firstChild.getNextSibling();
                String prefix = firstChild.getPrefix();
                String addSymbol = (prefix == null || prefix.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix);
                if (this.fNSBinder.getURI(addSymbol) == null && addSymbol != null) {
                    fatalError("The replacement text of the entity node '" + node.getNodeName() + "' contains an element node '" + firstChild.getNodeName() + "' with an undeclared prefix '" + addSymbol + "'.");
                }
                if (firstChild.getNodeType() == 1) {
                    NamedNodeMap attributes = firstChild.getAttributes();
                    for (int i = 0; i < attributes.getLength(); i++) {
                        String prefix2 = attributes.item(i).getPrefix();
                        String addSymbol2 = (prefix2 == null || prefix2.length() == 0) ? XMLSymbols.EMPTY_STRING : this.fSymbolTable.addSymbol(prefix2);
                        if (this.fNSBinder.getURI(addSymbol2) == null && addSymbol2 != null) {
                            fatalError("The replacement text of the entity node '" + node.getNodeName() + "' contains an element node '" + firstChild.getNodeName() + "' with an attribute '" + attributes.item(i).getNodeName() + "' an undeclared prefix '" + addSymbol2 + "'.");
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

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        try {
            endElementIO(str, str2, str3);
        } catch (IOException e) {
            throw new SAXException(e);
        }
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

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
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

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public void printEscaped(String str) throws IOException {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (!XMLChar.isValid(charAt)) {
                i++;
                if (i < length) {
                    surrogates(charAt, str.charAt(i));
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("The character '");
                    sb.append(charAt);
                    sb.append("' is an invalid XML character");
                    fatalError(sb.toString());
                }
            } else if (charAt == '\n' || charAt == '\r' || charAt == '\t') {
                printHex(charAt);
            } else if (charAt == '<') {
                this._printer.printText("&lt;");
            } else if (charAt == '&') {
                this._printer.printText("&amp;");
            } else if (charAt == '\"') {
                this._printer.printText(SerializerConstants.ENTITY_QUOT);
            } else {
                if (charAt >= ' ') {
                    char c = charAt;
                    if (this._encodingInfo.isPrintable(c)) {
                        this._printer.printText(c);
                    }
                }
                printHex(charAt);
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public void printText(String str, boolean z, boolean z2) throws IOException {
        int length = str.length();
        int i = 0;
        if (z) {
            while (i < length) {
                char charAt = str.charAt(i);
                if (!XMLChar.isValid(charAt)) {
                    i++;
                    if (i < length) {
                        surrogates(charAt, str.charAt(i));
                    } else {
                        fatalError("The character '" + charAt + "' is an invalid XML character");
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
                    surrogates(charAt2, str.charAt(i));
                } else {
                    fatalError("The character '" + charAt2 + "' is an invalid XML character");
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
        if (i == 13) {
            printHex(i);
            return;
        }
        if (i == 60) {
            this._printer.printText("&lt;");
            return;
        }
        if (i == 38) {
            this._printer.printText("&amp;");
            return;
        }
        if (i == 62) {
            this._printer.printText("&gt;");
            return;
        }
        if (i == 10 || i == 9 || (i >= 32 && this._encodingInfo.isPrintable((char) i))) {
            this._printer.printText((char) i);
        } else {
            printHex(i);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
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

    /* JADX WARN: Removed duplicated region for block: B:107:0x0205  */
    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeElement(org.w3c.dom.Element r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serialize.XMLSerializer.serializeElement(org.w3c.dom.Element):void");
    }

    public void setNamespaces(boolean z) {
        this.fNamespaces = z;
        if (this.fNSBinder == null) {
            this.fNSBinder = new NamespaceSupport();
            this.fLocalNSBinder = new NamespaceSupport();
            this.fSymbolTable = new SymbolTable();
        }
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer, com.sun.org.apache.xml.internal.serialize.Serializer
    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            outputFormat = new OutputFormat("xml", (String) null, false);
        }
        super.setOutputFormat(outputFormat);
    }

    public void startDocument(String str) throws IOException {
        String leaveDTD = this._printer.leaveDTD();
        if (!this._started) {
            if (!this._format.getOmitXMLDeclaration()) {
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
                } else if (leaveDTD != null && leaveDTD.length() > 0) {
                    this._printer.printText("<!DOCTYPE ");
                    this._printer.printText(str);
                    this._printer.printText(" [");
                    printText(leaveDTD, true, true);
                    this._printer.printText("]>");
                    this._printer.breakLine();
                }
            }
        }
        this._started = true;
        serializePreRoot();
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        String prefix;
        String prefix2;
        String str4;
        try {
            if (this._printer != null) {
                ElementState elementState = getElementState();
                if (isDocumentState()) {
                    if (!this._started) {
                        if (str2 != null && str2.length() != 0) {
                            str4 = str2;
                            startDocument(str4);
                        }
                        str4 = str3;
                        startDocument(str4);
                    }
                } else {
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
                }
                boolean z = elementState.preserveSpace;
                Attributes extractNamespaces = extractNamespaces(attributes);
                if (str3 == null || str3.length() == 0) {
                    if (str2 != null) {
                        str3 = (str == null || str.equals("") || (prefix = getPrefix(str)) == null || prefix.length() <= 0) ? str2 : prefix + ":" + str2;
                    } else {
                        throw new SAXException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoName", null));
                    }
                }
                this._printer.printText('<');
                this._printer.printText(str3);
                this._printer.indent();
                if (extractNamespaces != null) {
                    for (int i = 0; i < extractNamespaces.getLength(); i++) {
                        this._printer.printSpace();
                        String qName = extractNamespaces.getQName(i);
                        if (qName != null && qName.length() == 0) {
                            qName = extractNamespaces.getLocalName(i);
                            String uri = extractNamespaces.getURI(i);
                            if (uri != null && uri.length() != 0 && ((str == null || str.length() == 0 || !uri.equals(str)) && (prefix2 = getPrefix(uri)) != null && prefix2.length() > 0)) {
                                qName = prefix2 + ":" + qName;
                            }
                        }
                        String value = extractNamespaces.getValue(i);
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
                    Enumeration keys = hashtable.keys();
                    while (keys.hasMoreElements()) {
                        this._printer.printSpace();
                        String str5 = (String) keys.nextElement();
                        String str6 = (String) this._prefixes.get(str5);
                        if (str6.length() == 0) {
                            this._printer.printText("xmlns=\"");
                            printEscaped(str5);
                            this._printer.printText('\"');
                        } else {
                            this._printer.printText("xmlns:");
                            this._printer.printText(str6);
                            this._printer.printText("=\"");
                            printEscaped(str5);
                            this._printer.printText('\"');
                        }
                    }
                }
                ElementState enterElementState = enterElementState(str, str2, str3, z);
                if (str2 != null && str2.length() != 0) {
                    str3 = str + "^" + str2;
                }
                enterElementState.doCData = this._format.isCDataElement(str3);
                enterElementState.unescaped = this._format.isNonEscapingElement(str3);
                return;
            }
            throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        endElement(null, null, str);
    }

    public XMLSerializer(OutputFormat outputFormat) {
        super(outputFormat == null ? new OutputFormat("xml", (String) null, false) : outputFormat);
        this.fNamespaces = false;
        this.fNamespacePrefixes = true;
        this._format.setMethod("xml");
    }

    public XMLSerializer(Writer writer, OutputFormat outputFormat) {
        super(outputFormat == null ? new OutputFormat("xml", (String) null, false) : outputFormat);
        this.fNamespaces = false;
        this.fNamespacePrefixes = true;
        this._format.setMethod("xml");
        setOutputCharStream(writer);
    }

    public XMLSerializer(OutputStream outputStream, OutputFormat outputFormat) {
        super(outputFormat == null ? new OutputFormat("xml", (String) null, false) : outputFormat);
        this.fNamespaces = false;
        this.fNamespacePrefixes = true;
        this._format.setMethod("xml");
        setOutputByteStream(outputStream);
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
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
                        surrogates(c, cArr[i4]);
                        i = i4 + 1;
                    } else {
                        fatalError("The character '" + c + "' is an invalid XML character");
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
                        surrogates(c2, cArr[i7]);
                        i = i7 + 1;
                    } else {
                        fatalError("The character '" + c2 + "' is an invalid XML character");
                        i = i7;
                    }
                    i2 = i8;
                }
            }
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void startElement(String str, AttributeList attributeList) throws SAXException {
        try {
            if (this._printer != null) {
                ElementState elementState = getElementState();
                if (isDocumentState()) {
                    if (!this._started) {
                        startDocument(str);
                    }
                } else {
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
                return;
            }
            throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }
}
