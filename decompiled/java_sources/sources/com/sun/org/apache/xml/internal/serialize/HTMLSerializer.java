package com.sun.org.apache.xml.internal.serialize;

import com.google.android.exoplayer2.text.webvtt.WebvttDecoder;
import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Locale;
import org.w3c.dom.Attr;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.xml.sax.AttributeList;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class HTMLSerializer extends BaseMarkupSerializer {
    public static final String XHTMLNamespace = "http://www.w3.org/1999/xhtml";
    private boolean _xhtml;
    private String fUserXHTMLNamespace;

    public HTMLSerializer(boolean z, OutputFormat outputFormat) {
        super(outputFormat);
        this.fUserXHTMLNamespace = null;
        this._xhtml = z;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        try {
            content().doCData = false;
            super.characters(cArr, i, i2);
        } catch (IOException e) {
            throw new SAXException(e);
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
        String str4;
        this._printer.unindent();
        ElementState elementState = getElementState();
        String str5 = elementState.namespaceURI;
        String str6 = (str5 == null || str5.length() == 0) ? elementState.rawName : (elementState.namespaceURI.equals("http://www.w3.org/1999/xhtml") || ((str4 = this.fUserXHTMLNamespace) != null && str4.equals(elementState.namespaceURI))) ? elementState.localName : null;
        if (!this._xhtml) {
            if (elementState.empty) {
                this._printer.printText('>');
            }
            if (str6 == null || !HTMLdtd.isOnlyOpening(str6)) {
                if (this._indenting && !elementState.preserveSpace && elementState.afterElement) {
                    this._printer.breakLine();
                }
                if (elementState.inCData) {
                    this._printer.printText("]]>");
                }
                this._printer.printText(XMLStreamWriterImpl.OPEN_END_TAG);
                this._printer.printText(elementState.rawName);
                this._printer.printText('>');
            }
        } else if (elementState.empty) {
            this._printer.printText(" />");
        } else {
            if (elementState.inCData) {
                this._printer.printText("]]>");
            }
            this._printer.printText(XMLStreamWriterImpl.OPEN_END_TAG);
            this._printer.printText(elementState.rawName.toLowerCase(Locale.ENGLISH));
            this._printer.printText('>');
        }
        ElementState leaveElementState = leaveElementState();
        if (str6 == null || (!str6.equalsIgnoreCase("A") && !str6.equalsIgnoreCase("TD"))) {
            leaveElementState.afterElement = true;
        }
        leaveElementState.empty = false;
        if (isDocumentState()) {
            this._printer.flush();
        }
    }

    public String escapeURI(String str) {
        int indexOf = str.indexOf("\"");
        return indexOf >= 0 ? str.substring(0, indexOf) : str;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public String getEntityRef(int i) {
        return HTMLdtd.fromChar(i);
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public void serializeElement(Element element) throws IOException {
        String tagName = element.getTagName();
        ElementState elementState = getElementState();
        if (!isDocumentState()) {
            if (elementState.empty) {
                this._printer.printText('>');
            }
            if (this._indenting && !elementState.preserveSpace && (elementState.empty || elementState.afterElement)) {
                this._printer.breakLine();
            }
        } else if (!this._started) {
            startDocument(tagName);
        }
        boolean z = elementState.preserveSpace;
        this._printer.printText('<');
        if (this._xhtml) {
            this._printer.printText(tagName.toLowerCase(Locale.ENGLISH));
        } else {
            this._printer.printText(tagName);
        }
        this._printer.indent();
        NamedNodeMap attributes = element.getAttributes();
        if (attributes != null) {
            for (int i = 0; i < attributes.getLength(); i++) {
                Attr attr = (Attr) attributes.item(i);
                String lowerCase = attr.getName().toLowerCase(Locale.ENGLISH);
                String value = attr.getValue();
                if (attr.getSpecified()) {
                    this._printer.printSpace();
                    if (!this._xhtml) {
                        if (value == null) {
                            value = "";
                        }
                        if (!this._format.getPreserveEmptyAttributes() && value.length() == 0) {
                            this._printer.printText(lowerCase);
                        } else if (HTMLdtd.isURI(tagName, lowerCase)) {
                            this._printer.printText(lowerCase);
                            this._printer.printText("=\"");
                            this._printer.printText(escapeURI(value));
                            this._printer.printText('\"');
                        } else if (HTMLdtd.isBoolean(tagName, lowerCase)) {
                            this._printer.printText(lowerCase);
                        } else {
                            this._printer.printText(lowerCase);
                            this._printer.printText("=\"");
                            printEscaped(value);
                            this._printer.printText('\"');
                        }
                    } else if (value == null) {
                        this._printer.printText(lowerCase);
                        this._printer.printText("=\"\"");
                    } else {
                        this._printer.printText(lowerCase);
                        this._printer.printText("=\"");
                        printEscaped(value);
                        this._printer.printText('\"');
                    }
                }
            }
        }
        if (HTMLdtd.isPreserveSpace(tagName)) {
            z = true;
        }
        if (!element.hasChildNodes() && HTMLdtd.isEmptyTag(tagName)) {
            this._printer.unindent();
            if (this._xhtml) {
                this._printer.printText(" />");
            } else {
                this._printer.printText('>');
            }
            elementState.afterElement = true;
            elementState.empty = false;
            if (isDocumentState()) {
                this._printer.flush();
                return;
            }
            return;
        }
        ElementState enterElementState = enterElementState(null, null, tagName, z);
        if (tagName.equalsIgnoreCase("A") || tagName.equalsIgnoreCase("TD")) {
            enterElementState.empty = false;
            this._printer.printText('>');
        }
        if (tagName.equalsIgnoreCase("SCRIPT") || tagName.equalsIgnoreCase(WebvttDecoder.f27273w)) {
            if (this._xhtml) {
                enterElementState.doCData = true;
            } else {
                enterElementState.unescaped = true;
            }
        }
        for (Node firstChild = element.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            serializeNode(firstChild);
        }
        endElementIO(null, null, tagName);
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer, com.sun.org.apache.xml.internal.serialize.Serializer
    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            outputFormat = new OutputFormat("html", "ISO-8859-1", false);
        }
        super.setOutputFormat(outputFormat);
    }

    public void setXHTMLNamespace(String str) {
        this.fUserXHTMLNamespace = str;
    }

    public void startDocument(String str) throws IOException {
        boolean z;
        this._printer.leaveDTD();
        if (!this._started) {
            if (this._docTypePublicId == null && this._docTypeSystemId == null) {
                if (this._xhtml) {
                    this._docTypePublicId = "-//W3C//DTD XHTML 1.0 Strict//EN";
                    this._docTypeSystemId = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd";
                } else {
                    this._docTypePublicId = "-//W3C//DTD HTML 4.01//EN";
                    this._docTypeSystemId = "http://www.w3.org/TR/html4/strict.dtd";
                }
            }
            if (!this._format.getOmitDocumentType()) {
                if (this._docTypePublicId != null && (!(z = this._xhtml) || this._docTypeSystemId != null)) {
                    if (z) {
                        this._printer.printText("<!DOCTYPE html PUBLIC ");
                    } else {
                        this._printer.printText("<!DOCTYPE HTML PUBLIC ");
                    }
                    printDoctypeURL(this._docTypePublicId);
                    if (this._docTypeSystemId != null) {
                        if (this._indenting) {
                            this._printer.breakLine();
                            this._printer.printText("                      ");
                        } else {
                            this._printer.printText(' ');
                        }
                        printDoctypeURL(this._docTypeSystemId);
                    }
                    this._printer.printText('>');
                    this._printer.breakLine();
                } else if (this._docTypeSystemId != null) {
                    if (this._xhtml) {
                        this._printer.printText("<!DOCTYPE html SYSTEM ");
                    } else {
                        this._printer.printText("<!DOCTYPE HTML SYSTEM ");
                    }
                    printDoctypeURL(this._docTypeSystemId);
                    this._printer.printText('>');
                    this._printer.breakLine();
                }
            }
        }
        this._started = true;
        serializePreRoot();
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x0069, code lost:
    
        r10 = getPrefix(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x006d, code lost:
    
        if (r10 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0073, code lost:
    
        if (r10.length() == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0075, code lost:
    
        r10 = r10 + ":" + r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0143, code lost:
    
        r16._printer.printText(r6);
        r16._printer.printText("=\"\"");
     */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00ba A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d1, B:43:0x00ef, B:45:0x00f7, B:47:0x00fd, B:49:0x0162, B:50:0x0103, B:52:0x0109, B:54:0x0122, B:56:0x0128, B:58:0x012e, B:61:0x0143, B:63:0x0150, B:67:0x016a, B:71:0x0173, B:72:0x0179, B:74:0x017f, B:81:0x0198, B:77:0x01a8, B:84:0x01c2, B:86:0x01c8, B:88:0x01d0, B:90:0x01d8, B:92:0x01e3, B:94:0x01eb, B:98:0x01f3, B:100:0x01f7, B:102:0x01fb, B:105:0x00ba, B:106:0x0090, B:108:0x0098, B:110:0x009c, B:114:0x0069, B:116:0x006f, B:118:0x0075, B:122:0x002e, B:124:0x0032, B:125:0x0037, B:127:0x003b, B:129:0x003f, B:131:0x0043, B:133:0x0047, B:134:0x01ff, B:135:0x020c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0090 A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d1, B:43:0x00ef, B:45:0x00f7, B:47:0x00fd, B:49:0x0162, B:50:0x0103, B:52:0x0109, B:54:0x0122, B:56:0x0128, B:58:0x012e, B:61:0x0143, B:63:0x0150, B:67:0x016a, B:71:0x0173, B:72:0x0179, B:74:0x017f, B:81:0x0198, B:77:0x01a8, B:84:0x01c2, B:86:0x01c8, B:88:0x01d0, B:90:0x01d8, B:92:0x01e3, B:94:0x01eb, B:98:0x01f3, B:100:0x01f7, B:102:0x01fb, B:105:0x00ba, B:106:0x0090, B:108:0x0098, B:110:0x009c, B:114:0x0069, B:116:0x006f, B:118:0x0075, B:122:0x002e, B:124:0x0032, B:125:0x0037, B:127:0x003b, B:129:0x003f, B:131:0x0043, B:133:0x0047, B:134:0x01ff, B:135:0x020c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d1, B:43:0x00ef, B:45:0x00f7, B:47:0x00fd, B:49:0x0162, B:50:0x0103, B:52:0x0109, B:54:0x0122, B:56:0x0128, B:58:0x012e, B:61:0x0143, B:63:0x0150, B:67:0x016a, B:71:0x0173, B:72:0x0179, B:74:0x017f, B:81:0x0198, B:77:0x01a8, B:84:0x01c2, B:86:0x01c8, B:88:0x01d0, B:90:0x01d8, B:92:0x01e3, B:94:0x01eb, B:98:0x01f3, B:100:0x01f7, B:102:0x01fb, B:105:0x00ba, B:106:0x0090, B:108:0x0098, B:110:0x009c, B:114:0x0069, B:116:0x006f, B:118:0x0075, B:122:0x002e, B:124:0x0032, B:125:0x0037, B:127:0x003b, B:129:0x003f, B:131:0x0043, B:133:0x0047, B:134:0x01ff, B:135:0x020c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0173 A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d1, B:43:0x00ef, B:45:0x00f7, B:47:0x00fd, B:49:0x0162, B:50:0x0103, B:52:0x0109, B:54:0x0122, B:56:0x0128, B:58:0x012e, B:61:0x0143, B:63:0x0150, B:67:0x016a, B:71:0x0173, B:72:0x0179, B:74:0x017f, B:81:0x0198, B:77:0x01a8, B:84:0x01c2, B:86:0x01c8, B:88:0x01d0, B:90:0x01d8, B:92:0x01e3, B:94:0x01eb, B:98:0x01f3, B:100:0x01f7, B:102:0x01fb, B:105:0x00ba, B:106:0x0090, B:108:0x0098, B:110:0x009c, B:114:0x0069, B:116:0x006f, B:118:0x0075, B:122:0x002e, B:124:0x0032, B:125:0x0037, B:127:0x003b, B:129:0x003f, B:131:0x0043, B:133:0x0047, B:134:0x01ff, B:135:0x020c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01e3 A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d1, B:43:0x00ef, B:45:0x00f7, B:47:0x00fd, B:49:0x0162, B:50:0x0103, B:52:0x0109, B:54:0x0122, B:56:0x0128, B:58:0x012e, B:61:0x0143, B:63:0x0150, B:67:0x016a, B:71:0x0173, B:72:0x0179, B:74:0x017f, B:81:0x0198, B:77:0x01a8, B:84:0x01c2, B:86:0x01c8, B:88:0x01d0, B:90:0x01d8, B:92:0x01e3, B:94:0x01eb, B:98:0x01f3, B:100:0x01f7, B:102:0x01fb, B:105:0x00ba, B:106:0x0090, B:108:0x0098, B:110:0x009c, B:114:0x0069, B:116:0x006f, B:118:0x0075, B:122:0x002e, B:124:0x0032, B:125:0x0037, B:127:0x003b, B:129:0x003f, B:131:0x0043, B:133:0x0047, B:134:0x01ff, B:135:0x020c), top: B:2:0x0008 }] */
    @Override // org.xml.sax.ContentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(java.lang.String r17, java.lang.String r18, java.lang.String r19, org.xml.sax.Attributes r20) throws org.xml.sax.SAXException {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.serialize.HTMLSerializer.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }

    @Override // org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        endElement(null, null, str);
    }

    public HTMLSerializer() {
        this(false, new OutputFormat("html", "ISO-8859-1", false));
    }

    public HTMLSerializer(OutputFormat outputFormat) {
        this(false, outputFormat == null ? new OutputFormat("html", "ISO-8859-1", false) : outputFormat);
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public void characters(String str) throws IOException {
        content();
        super.characters(str);
    }

    public HTMLSerializer(Writer writer, OutputFormat outputFormat) {
        this(false, outputFormat == null ? new OutputFormat("html", "ISO-8859-1", false) : outputFormat);
        setOutputCharStream(writer);
    }

    public HTMLSerializer(OutputStream outputStream, OutputFormat outputFormat) {
        this(false, outputFormat == null ? new OutputFormat("html", "ISO-8859-1", false) : outputFormat);
        setOutputByteStream(outputStream);
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
                    if (this._indenting && !elementState.preserveSpace && (elementState.empty || elementState.afterElement)) {
                        this._printer.breakLine();
                    }
                }
                boolean z = elementState.preserveSpace;
                this._printer.printText('<');
                if (this._xhtml) {
                    this._printer.printText(str.toLowerCase(Locale.ENGLISH));
                } else {
                    this._printer.printText(str);
                }
                this._printer.indent();
                if (attributeList != null) {
                    for (int i = 0; i < attributeList.getLength(); i++) {
                        this._printer.printSpace();
                        String lowerCase = attributeList.getName(i).toLowerCase(Locale.ENGLISH);
                        String value = attributeList.getValue(i);
                        if (!this._xhtml) {
                            if (value == null) {
                                value = "";
                            }
                            if (!this._format.getPreserveEmptyAttributes() && value.length() == 0) {
                                this._printer.printText(lowerCase);
                            } else if (HTMLdtd.isURI(str, lowerCase)) {
                                this._printer.printText(lowerCase);
                                this._printer.printText("=\"");
                                this._printer.printText(escapeURI(value));
                                this._printer.printText('\"');
                            } else if (HTMLdtd.isBoolean(str, lowerCase)) {
                                this._printer.printText(lowerCase);
                            } else {
                                this._printer.printText(lowerCase);
                                this._printer.printText("=\"");
                                printEscaped(value);
                                this._printer.printText('\"');
                            }
                        } else if (value == null) {
                            this._printer.printText(lowerCase);
                            this._printer.printText("=\"\"");
                        } else {
                            this._printer.printText(lowerCase);
                            this._printer.printText("=\"");
                            printEscaped(value);
                            this._printer.printText('\"');
                        }
                    }
                }
                if (HTMLdtd.isPreserveSpace(str)) {
                    z = true;
                }
                ElementState enterElementState = enterElementState(null, null, str, z);
                if (str.equalsIgnoreCase("A") || str.equalsIgnoreCase("TD")) {
                    enterElementState.empty = false;
                    this._printer.printText('>');
                }
                if (str.equalsIgnoreCase("SCRIPT") || str.equalsIgnoreCase(WebvttDecoder.f27273w)) {
                    if (this._xhtml) {
                        enterElementState.doCData = true;
                        return;
                    } else {
                        enterElementState.unescaped = true;
                        return;
                    }
                }
                return;
            }
            throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }
}
