package org.apache.xml.serialize;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import org.apache.xerces.dom.DOMMessageFormatter;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class XML11Serializer extends XMLSerializer {
    protected static final boolean DEBUG = false;
    protected static final String PREFIX = "NS";
    protected boolean fDOML1;
    protected NamespaceSupport fLocalNSBinder;
    protected NamespaceSupport fNSBinder;
    protected int fNamespaceCounter;
    protected boolean fNamespaces;
    protected SymbolTable fSymbolTable;

    public XML11Serializer() {
        this.fDOML1 = false;
        this.fNamespaceCounter = 1;
        this.fNamespaces = false;
        this._format.setVersion(SerializerConstants.XMLVERSION11);
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
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
                } else if (!XML11Char.isXML11Valid(c)) {
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
                } else if (this._encodingInfo.isPrintable(c) && XML11Char.isXML11ValidLiteral(c)) {
                    this._printer.printText(c);
                } else {
                    this._printer.printText("]]>&#x");
                    this._printer.printText(Integer.toHexString(c));
                    this._printer.printText(";<![CDATA[");
                }
                i++;
            }
            this._printer.setNextIndent(nextIndent2);
        } catch (IOException e) {
            throw new SAXException(e);
        }
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public final void printCDATAText(String str) throws IOException {
        int i;
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            if (charAt == ']' && (i = i2 + 2) < length && str.charAt(i2 + 1) == ']' && str.charAt(i) == '>') {
                if (this.fDOMErrorHandler != null) {
                    short s = this.features;
                    if ((s & 16) == 0 && (s & 2) == 0) {
                        modifyDOMError(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "EndingCDATA", null), (short) 3, null, this.fCurrentNode);
                        if (!this.fDOMErrorHandler.handleError(this.fDOMError)) {
                            throw new IOException();
                        }
                    } else {
                        modifyDOMError(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "SplittingCDATA", null), (short) 1, null, this.fCurrentNode);
                        this.fDOMErrorHandler.handleError(this.fDOMError);
                    }
                }
                this._printer.printText(SerializerConstants.CDATA_CONTINUE);
                i2 = i;
            } else if (!XML11Char.isXML11Valid(charAt)) {
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
            } else if (this._encodingInfo.isPrintable(charAt) && XML11Char.isXML11ValidLiteral(charAt)) {
                this._printer.printText(charAt);
            } else {
                this._printer.printText("]]>&#x");
                this._printer.printText(Integer.toHexString(charAt));
                this._printer.printText(";<![CDATA[");
            }
            i2++;
        }
    }

    @Override // org.apache.xml.serialize.XMLSerializer, org.apache.xml.serialize.BaseMarkupSerializer
    public void printEscaped(String str) throws IOException {
        Printer printer;
        String str2;
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (XML11Char.isXML11Valid(charAt)) {
                if (charAt != '\n' && charAt != '\r' && charAt != '\t' && charAt != 133 && charAt != 8232) {
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

    @Override // org.apache.xml.serialize.XMLSerializer, org.apache.xml.serialize.BaseMarkupSerializer
    public void printText(String str, boolean z, boolean z2) throws IOException {
        int length = str.length();
        int i = 0;
        if (z) {
            while (i < length) {
                char charAt = str.charAt(i);
                if (!XML11Char.isXML11Valid(charAt)) {
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
                } else if (z2 && XML11Char.isXML11ValidLiteral(charAt)) {
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
            if (!XML11Char.isXML11Valid(charAt2)) {
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
            } else if (z2 && XML11Char.isXML11ValidLiteral(charAt2)) {
                this._printer.printText(charAt2);
            } else {
                printXMLChar(charAt2);
            }
            i++;
        }
    }

    @Override // org.apache.xml.serialize.XMLSerializer
    public final void printXMLChar(int i) throws IOException {
        Printer printer;
        String str;
        if (i != 13 && i != 133 && i != 8232) {
            if (i == 60) {
                printer = this._printer;
                str = "&lt;";
            } else if (i == 38) {
                printer = this._printer;
                str = "&amp;";
            } else if (i == 62) {
                printer = this._printer;
                str = "&gt;";
            } else {
                char c = (char) i;
                if (this._encodingInfo.isPrintable(c) && XML11Char.isXML11ValidLiteral(i)) {
                    this._printer.printText(c);
                    return;
                }
            }
            printer.printText(str);
            return;
        }
        m70658b(i);
    }

    @Override // org.apache.xml.serialize.XMLSerializer, org.apache.xml.serialize.BaseMarkupSerializer
    public boolean reset() {
        super.reset();
        return true;
    }

    @Override // org.apache.xml.serialize.BaseMarkupSerializer
    public final void surrogates(int i, int i2, boolean z) throws IOException {
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
            if (XML11Char.isXML11Valid(i)) {
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

    public XML11Serializer(OutputStream outputStream, OutputFormat outputFormat) {
        super(outputStream, outputFormat == null ? new OutputFormat("xml", (String) null, false) : outputFormat);
        this.fDOML1 = false;
        this.fNamespaceCounter = 1;
        this.fNamespaces = false;
        this._format.setVersion(SerializerConstants.XMLVERSION11);
    }

    @Override // org.apache.xml.serialize.XMLSerializer, org.apache.xml.serialize.BaseMarkupSerializer
    public void printText(char[] cArr, int i, int i2, boolean z, boolean z2) throws IOException {
        if (z) {
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    return;
                }
                int i4 = i + 1;
                char c = cArr[i];
                if (XML11Char.isXML11Valid(c)) {
                    if (z2 && XML11Char.isXML11ValidLiteral(c)) {
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
                if (XML11Char.isXML11Valid(c2)) {
                    if (z2 && XML11Char.isXML11ValidLiteral(c2)) {
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

    public XML11Serializer(Writer writer, OutputFormat outputFormat) {
        super(writer, outputFormat);
        this.fDOML1 = false;
        this.fNamespaceCounter = 1;
        this.fNamespaces = false;
        this._format.setVersion(SerializerConstants.XMLVERSION11);
    }

    public XML11Serializer(OutputFormat outputFormat) {
        super(outputFormat);
        this.fDOML1 = false;
        this.fNamespaceCounter = 1;
        this.fNamespaces = false;
        this._format.setVersion(SerializerConstants.XMLVERSION11);
    }
}
