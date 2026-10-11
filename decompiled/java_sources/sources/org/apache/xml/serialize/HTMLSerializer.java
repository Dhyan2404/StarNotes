package org.apache.xml.serialize;

import com.google.android.exoplayer2.text.webvtt.WebvttDecoder;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.util.Locale;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.xml.sax.AttributeList;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class HTMLSerializer extends BaseMarkupSerializer {
    public static final String XHTMLNamespace = "http://www.w3.org/1999/xhtml";

    /* renamed from: l */
    public boolean f113661l;

    /* renamed from: m */
    public String f113662m;

    public HTMLSerializer() {
        this(false, new OutputFormat("html", "ISO-8859-1", false));
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public void characters(String str) throws IOException {
        content();
        super.characters(str);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        endElement(null, null, str);
    }

    public void endElementIO(String str, String str2, String str3) throws IOException {
        Printer printer;
        String str4;
        String str5;
        this._printer.unindent();
        ElementState elementState = getElementState();
        String str6 = elementState.namespaceURI;
        String str7 = (str6 == null || str6.length() == 0) ? elementState.rawName : (elementState.namespaceURI.equals("http://www.w3.org/1999/xhtml") || ((str5 = this.f113662m) != null && str5.equals(elementState.namespaceURI))) ? elementState.localName : null;
        if (!this.f113661l) {
            if (elementState.empty) {
                this._printer.printText('>');
            }
            if (str7 == null || !HTMLdtd.isOnlyOpening(str7)) {
                if (this._indenting && !elementState.preserveSpace && elementState.afterElement) {
                    this._printer.breakLine();
                }
                if (elementState.inCData) {
                    this._printer.printText("]]>");
                }
                this._printer.printText(XMLStreamWriterImpl.OPEN_END_TAG);
                printer = this._printer;
                str4 = elementState.rawName;
                printer.printText(str4);
                this._printer.printText('>');
            }
        } else if (elementState.empty) {
            this._printer.printText(" />");
        } else {
            if (elementState.inCData) {
                this._printer.printText("]]>");
            }
            this._printer.printText(XMLStreamWriterImpl.OPEN_END_TAG);
            printer = this._printer;
            str4 = elementState.rawName.toLowerCase(Locale.ENGLISH);
            printer.printText(str4);
            this._printer.printText('>');
        }
        ElementState leaveElementState = leaveElementState();
        if (str7 == null || (!str7.equalsIgnoreCase("A") && !str7.equalsIgnoreCase("TD"))) {
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

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public String getEntityRef(int i) {
        return HTMLdtd.fromChar(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e5, code lost:
    
        if (org.apache.xml.serialize.HTMLdtd.isBoolean(r0, r8) != false) goto L44;
     */
    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void serializeElement(org.w3c.dom.Element r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xml.serialize.HTMLSerializer.serializeElement(org.w3c.dom.Element):void");
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.apache.xml.serialize.Serializer
    public void setOutputFormat(OutputFormat outputFormat) {
        if (outputFormat == null) {
            outputFormat = new OutputFormat("html", "ISO-8859-1", false);
        }
        super.setOutputFormat(outputFormat);
    }

    public void setXHTMLNamespace(String str) {
        this.f113662m = str;
    }

    public void startDocument(String str) throws IOException {
        Printer printer;
        String str2;
        boolean z;
        Printer printer2;
        String str3;
        String str4;
        this._printer.leaveDTD();
        if (!this._started) {
            if (this._docTypePublicId == null && this._docTypeSystemId == null) {
                if (this.f113661l) {
                    this._docTypePublicId = "-//W3C//DTD XHTML 1.0 Strict//EN";
                    str4 = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd";
                } else {
                    this._docTypePublicId = "-//W3C//DTD HTML 4.01//EN";
                    str4 = "http://www.w3.org/TR/html4/strict.dtd";
                }
                this._docTypeSystemId = str4;
            }
            if (!this._format.getOmitDocumentType()) {
                if (this._docTypePublicId != null && (!(z = this.f113661l) || this._docTypeSystemId != null)) {
                    if (z) {
                        printer2 = this._printer;
                        str3 = "<!DOCTYPE html PUBLIC ";
                    } else {
                        printer2 = this._printer;
                        str3 = "<!DOCTYPE HTML PUBLIC ";
                    }
                    printer2.printText(str3);
                    printDoctypeURL(this._docTypePublicId);
                    if (this._docTypeSystemId != null) {
                        if (this._indenting) {
                            this._printer.breakLine();
                            this._printer.printText("                      ");
                        } else {
                            this._printer.printText(' ');
                        }
                    }
                    this._printer.printText('>');
                    this._printer.breakLine();
                } else if (this._docTypeSystemId != null) {
                    if (this.f113661l) {
                        printer = this._printer;
                        str2 = "<!DOCTYPE html SYSTEM ";
                    } else {
                        printer = this._printer;
                        str2 = "<!DOCTYPE HTML SYSTEM ";
                    }
                    printer.printText(str2);
                }
                printDoctypeURL(this._docTypeSystemId);
                this._printer.printText('>');
                this._printer.breakLine();
            }
        }
        this._started = true;
        serializePreRoot();
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x0069, code lost:
    
        r10 = getPrefix(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x006d, code lost:
    
        if (r10 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0073, code lost:
    
        if (r10.length() == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0075, code lost:
    
        r11 = new java.lang.StringBuffer();
        r11.append(r10);
        r11.append(":");
        r11.append(r18);
        r10 = r11.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x013f, code lost:
    
        r16._printer.printText(r6);
        r16._printer.printText("=\"\"");
     */
    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00ba A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d3, B:43:0x00f1, B:45:0x00f9, B:47:0x00ff, B:48:0x0101, B:50:0x015c, B:51:0x0105, B:53:0x010b, B:54:0x0120, B:56:0x0124, B:58:0x012a, B:59:0x012d, B:61:0x013f, B:63:0x014c, B:67:0x0164, B:71:0x016d, B:72:0x0177, B:74:0x017e, B:76:0x019b, B:78:0x01a7, B:79:0x01ab, B:83:0x01c2, B:85:0x01c8, B:87:0x01d0, B:89:0x01d8, B:91:0x01e3, B:93:0x01eb, B:97:0x01f3, B:99:0x01f7, B:101:0x01fb, B:104:0x00ba, B:105:0x0090, B:107:0x0098, B:109:0x009c, B:113:0x0069, B:115:0x006f, B:117:0x0075, B:121:0x002e, B:123:0x0032, B:124:0x0037, B:126:0x003b, B:128:0x003f, B:130:0x0043, B:132:0x0047, B:133:0x01ff, B:134:0x020c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0090 A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d3, B:43:0x00f1, B:45:0x00f9, B:47:0x00ff, B:48:0x0101, B:50:0x015c, B:51:0x0105, B:53:0x010b, B:54:0x0120, B:56:0x0124, B:58:0x012a, B:59:0x012d, B:61:0x013f, B:63:0x014c, B:67:0x0164, B:71:0x016d, B:72:0x0177, B:74:0x017e, B:76:0x019b, B:78:0x01a7, B:79:0x01ab, B:83:0x01c2, B:85:0x01c8, B:87:0x01d0, B:89:0x01d8, B:91:0x01e3, B:93:0x01eb, B:97:0x01f3, B:99:0x01f7, B:101:0x01fb, B:104:0x00ba, B:105:0x0090, B:107:0x0098, B:109:0x009c, B:113:0x0069, B:115:0x006f, B:117:0x0075, B:121:0x002e, B:123:0x0032, B:124:0x0037, B:126:0x003b, B:128:0x003f, B:130:0x0043, B:132:0x0047, B:133:0x01ff, B:134:0x020c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d3, B:43:0x00f1, B:45:0x00f9, B:47:0x00ff, B:48:0x0101, B:50:0x015c, B:51:0x0105, B:53:0x010b, B:54:0x0120, B:56:0x0124, B:58:0x012a, B:59:0x012d, B:61:0x013f, B:63:0x014c, B:67:0x0164, B:71:0x016d, B:72:0x0177, B:74:0x017e, B:76:0x019b, B:78:0x01a7, B:79:0x01ab, B:83:0x01c2, B:85:0x01c8, B:87:0x01d0, B:89:0x01d8, B:91:0x01e3, B:93:0x01eb, B:97:0x01f3, B:99:0x01f7, B:101:0x01fb, B:104:0x00ba, B:105:0x0090, B:107:0x0098, B:109:0x009c, B:113:0x0069, B:115:0x006f, B:117:0x0075, B:121:0x002e, B:123:0x0032, B:124:0x0037, B:126:0x003b, B:128:0x003f, B:130:0x0043, B:132:0x0047, B:133:0x01ff, B:134:0x020c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x016d A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d3, B:43:0x00f1, B:45:0x00f9, B:47:0x00ff, B:48:0x0101, B:50:0x015c, B:51:0x0105, B:53:0x010b, B:54:0x0120, B:56:0x0124, B:58:0x012a, B:59:0x012d, B:61:0x013f, B:63:0x014c, B:67:0x0164, B:71:0x016d, B:72:0x0177, B:74:0x017e, B:76:0x019b, B:78:0x01a7, B:79:0x01ab, B:83:0x01c2, B:85:0x01c8, B:87:0x01d0, B:89:0x01d8, B:91:0x01e3, B:93:0x01eb, B:97:0x01f3, B:99:0x01f7, B:101:0x01fb, B:104:0x00ba, B:105:0x0090, B:107:0x0098, B:109:0x009c, B:113:0x0069, B:115:0x006f, B:117:0x0075, B:121:0x002e, B:123:0x0032, B:124:0x0037, B:126:0x003b, B:128:0x003f, B:130:0x0043, B:132:0x0047, B:133:0x01ff, B:134:0x020c), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01e3 A[Catch: IOException -> 0x020d, TryCatch #0 {IOException -> 0x020d, blocks: (B:3:0x0008, B:5:0x000d, B:7:0x0019, B:10:0x001f, B:14:0x002a, B:16:0x004c, B:18:0x0051, B:22:0x005c, B:28:0x00a3, B:30:0x00ae, B:31:0x00bf, B:35:0x00cb, B:37:0x00d3, B:43:0x00f1, B:45:0x00f9, B:47:0x00ff, B:48:0x0101, B:50:0x015c, B:51:0x0105, B:53:0x010b, B:54:0x0120, B:56:0x0124, B:58:0x012a, B:59:0x012d, B:61:0x013f, B:63:0x014c, B:67:0x0164, B:71:0x016d, B:72:0x0177, B:74:0x017e, B:76:0x019b, B:78:0x01a7, B:79:0x01ab, B:83:0x01c2, B:85:0x01c8, B:87:0x01d0, B:89:0x01d8, B:91:0x01e3, B:93:0x01eb, B:97:0x01f3, B:99:0x01f7, B:101:0x01fb, B:104:0x00ba, B:105:0x0090, B:107:0x0098, B:109:0x009c, B:113:0x0069, B:115:0x006f, B:117:0x0075, B:121:0x002e, B:123:0x0032, B:124:0x0037, B:126:0x003b, B:128:0x003f, B:130:0x0043, B:132:0x0047, B:133:0x01ff, B:134:0x020c), top: B:2:0x0008 }] */
    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(java.lang.String r17, java.lang.String r18, java.lang.String r19, org.xml.sax.Attributes r20) throws org.xml.sax.SAXException {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xml.serialize.HTMLSerializer.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }

    public HTMLSerializer(OutputStream outputStream, OutputFormat outputFormat) {
        this(false, outputFormat == null ? new OutputFormat("html", "ISO-8859-1", false) : outputFormat);
        setOutputByteStream(outputStream);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        try {
            content().doCData = false;
            super.characters(cArr, i, i2);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        try {
            endElementIO(str, str2, str3);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.DocumentHandler
    public void startElement(String str, AttributeList attributeList) throws SAXException {
        Printer printer;
        Printer printer2;
        try {
            if (this._printer == null) {
                throw new IllegalStateException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "NoWriterSupplied", null));
            }
            ElementState elementState = getElementState();
            if (!isDocumentState()) {
                if (elementState.empty) {
                    this._printer.printText('>');
                }
                if (this._indenting && !elementState.preserveSpace && (elementState.empty || elementState.afterElement)) {
                    this._printer.breakLine();
                }
            } else if (!this._started) {
                startDocument(str);
            }
            boolean z = elementState.preserveSpace;
            this._printer.printText('<');
            if (this.f113661l) {
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
                    if (!this.f113661l) {
                        if (value == null) {
                            value = "";
                        }
                        if (this._format.getPreserveEmptyAttributes() || value.length() != 0) {
                            if (HTMLdtd.isURI(str, lowerCase)) {
                                this._printer.printText(lowerCase);
                                this._printer.printText("=\"");
                                this._printer.printText(escapeURI(value));
                                printer = this._printer;
                            } else if (HTMLdtd.isBoolean(str, lowerCase)) {
                                printer2 = this._printer;
                            } else {
                                this._printer.printText(lowerCase);
                                this._printer.printText("=\"");
                                printEscaped(value);
                                printer = this._printer;
                            }
                            printer.printText('\"');
                        } else {
                            printer2 = this._printer;
                        }
                        printer2.printText(lowerCase);
                    } else if (value == null) {
                        this._printer.printText(lowerCase);
                        this._printer.printText("=\"\"");
                    } else {
                        this._printer.printText(lowerCase);
                        this._printer.printText("=\"");
                        printEscaped(value);
                        printer = this._printer;
                        printer.printText('\"');
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
                if (this.f113661l) {
                    enterElementState.doCData = true;
                } else {
                    enterElementState.unescaped = true;
                }
            }
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    public HTMLSerializer(Writer writer, OutputFormat outputFormat) {
        this(false, outputFormat == null ? new OutputFormat("html", "ISO-8859-1", false) : outputFormat);
        setOutputCharStream(writer);
    }

    public HTMLSerializer(OutputFormat outputFormat) {
        this(false, outputFormat == null ? new OutputFormat("html", "ISO-8859-1", false) : outputFormat);
    }

    public HTMLSerializer(boolean z, OutputFormat outputFormat) {
        super(outputFormat);
        this.f113662m = null;
        this.f113661l = z;
    }
}
