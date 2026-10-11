package com.sun.org.apache.xml.internal.serialize;

import com.sun.org.apache.xerces.internal.dom.DOMMessageFormatter;
import com.sun.org.apache.xerces.internal.util.NamespaceSupport;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XML11Char;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class XML11Serializer extends XMLSerializer {
    protected static final boolean DEBUG = false;
    protected static final String PREFIX = "NS";
    protected boolean fDOML1;
    protected NamespaceSupport fLocalNSBinder;
    protected NamespaceSupport fNSBinder;
    protected int fNamespaceCounter;
    protected boolean fNamespaces;
    private boolean fPreserveSpace;
    protected SymbolTable fSymbolTable;

    public XML11Serializer() {
        this.fDOML1 = false;
        this.fNamespaceCounter = 1;
        this.fNamespaces = false;
        this._format.setVersion(SerializerConstants.XMLVERSION11);
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer, org.xml.sax.ContentHandler
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
                        surrogates(c, cArr[i]);
                    } else {
                        fatalError("The character '" + c + "' is an invalid XML character");
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

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
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
                    surrogates(charAt, str.charAt(i2));
                } else {
                    fatalError("The character '" + charAt + "' is an invalid XML character");
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

    @Override // com.sun.org.apache.xml.internal.serialize.XMLSerializer, com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public void printEscaped(String str) throws IOException {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (!XML11Char.isXML11Valid(charAt)) {
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
            } else if (charAt == '\n' || charAt == '\r' || charAt == '\t' || charAt == 133 || charAt == 8232) {
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

    @Override // com.sun.org.apache.xml.internal.serialize.XMLSerializer, com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public void printText(String str, boolean z, boolean z2) throws IOException {
        int length = str.length();
        int i = 0;
        if (z) {
            while (i < length) {
                char charAt = str.charAt(i);
                if (!XML11Char.isXML11Valid(charAt)) {
                    i++;
                    if (i < length) {
                        surrogates(charAt, str.charAt(i));
                    } else {
                        fatalError("The character '" + charAt + "' is an invalid XML character");
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
                    surrogates(charAt2, str.charAt(i));
                } else {
                    fatalError("The character '" + charAt2 + "' is an invalid XML character");
                }
            } else if (z2 && XML11Char.isXML11ValidLiteral(charAt2)) {
                this._printer.printText(charAt2);
            } else {
                printXMLChar(charAt2);
            }
            i++;
        }
    }

    @Override // com.sun.org.apache.xml.internal.serialize.XMLSerializer
    public final void printXMLChar(int i) throws IOException {
        if (i == 13 || i == 133 || i == 8232) {
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
        char c = (char) i;
        if (this._encodingInfo.isPrintable(c) && XML11Char.isXML11ValidLiteral(i)) {
            this._printer.printText(c);
        } else {
            printHex(i);
        }
    }

    @Override // com.sun.org.apache.xml.internal.serialize.XMLSerializer, com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public boolean reset() {
        super.reset();
        return true;
    }

    @Override // com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
    public final void surrogates(int i, int i2) throws IOException {
        if (!XMLChar.isHighSurrogate(i)) {
            fatalError("The character '" + ((char) i) + "' is an invalid XML character");
            return;
        }
        if (!XMLChar.isLowSurrogate(i2)) {
            fatalError("The character '" + ((char) i2) + "' is an invalid XML character");
            return;
        }
        int supplemental = XMLChar.supplemental((char) i, (char) i2);
        if (!XML11Char.isXML11Valid(supplemental)) {
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

    public XML11Serializer(OutputFormat outputFormat) {
        super(outputFormat);
        this.fDOML1 = false;
        this.fNamespaceCounter = 1;
        this.fNamespaces = false;
        this._format.setVersion(SerializerConstants.XMLVERSION11);
    }

    public XML11Serializer(Writer writer, OutputFormat outputFormat) {
        super(writer, outputFormat);
        this.fDOML1 = false;
        this.fNamespaceCounter = 1;
        this.fNamespaces = false;
        this._format.setVersion(SerializerConstants.XMLVERSION11);
    }

    public XML11Serializer(OutputStream outputStream, OutputFormat outputFormat) {
        super(outputStream, outputFormat == null ? new OutputFormat("xml", (String) null, false) : outputFormat);
        this.fDOML1 = false;
        this.fNamespaceCounter = 1;
        this.fNamespaces = false;
        this._format.setVersion(SerializerConstants.XMLVERSION11);
    }

    @Override // com.sun.org.apache.xml.internal.serialize.XMLSerializer, com.sun.org.apache.xml.internal.serialize.BaseMarkupSerializer
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
}
