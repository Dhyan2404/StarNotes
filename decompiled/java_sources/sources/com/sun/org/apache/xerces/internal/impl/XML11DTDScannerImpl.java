package com.sun.org.apache.xerces.internal.impl;

import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XML11Char;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.util.XMLStringBuffer;
import com.sun.org.apache.xerces.internal.xni.XMLString;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;

/* loaded from: classes10.dex */
public class XML11DTDScannerImpl extends XMLDTDScannerImpl {
    private XMLString fString;
    private XMLStringBuffer fStringBuffer;
    private XMLStringBuffer fStringBuffer2;
    private XMLStringBuffer fStringBuffer3;
    private String[] fStrings;

    public XML11DTDScannerImpl() {
        this.fStrings = new String[3];
        this.fString = new XMLString();
        this.fStringBuffer = new XMLStringBuffer();
        this.fStringBuffer2 = new XMLStringBuffer();
        this.fStringBuffer3 = new XMLStringBuffer();
    }

    public String getVersionNotSupportedKey() {
        return "VersionNotSupported11";
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public boolean isInvalid(int i) {
        return !XML11Char.isXML11Valid(i);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public boolean isInvalidLiteral(int i) {
        return !XML11Char.isXML11ValidLiteral(i);
    }

    public int isUnchangedByNormalization(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        while (i < i2) {
            if (XMLChar.isSpace(xMLString.f64120ch[i])) {
                return i - xMLString.offset;
            }
            i++;
        }
        return -1;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public boolean isValidNCName(int i) {
        return XML11Char.isXML11NCName(i);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public boolean isValidNameChar(int i) {
        return XML11Char.isXML11Name(i);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public boolean isValidNameStartChar(int i) {
        return XML11Char.isXML11NameStart(i);
    }

    public boolean isValidNameStartHighSurrogate(int i) {
        return XML11Char.isXML11NameHighSurrogate(i);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public void normalizeWhitespace(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        while (i < i2) {
            if (XMLChar.isSpace(xMLString.f64120ch[i])) {
                xMLString.f64120ch[i] = ' ';
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
    
        r9.fStringBuffer.append(' ');
        r4 = true;
     */
    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanPubidLiteral(com.sun.org.apache.xerces.internal.xni.XMLString r10) throws java.io.IOException, com.sun.org.apache.xerces.internal.xni.XNIException {
        /*
            r9 = this;
            com.sun.org.apache.xerces.internal.impl.XMLEntityScanner r0 = r9.fEntityScanner
            int r0 = r0.scanChar()
            r1 = 39
            r2 = 0
            r3 = 0
            if (r0 == r1) goto L16
            r1 = 34
            if (r0 == r1) goto L16
            java.lang.String r10 = "QuoteRequiredInPublicID"
            r9.reportFatalError(r10, r2)
            return r3
        L16:
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r1 = r9.fStringBuffer
            r1.clear()
            r1 = 1
            r4 = r1
            r5 = r4
        L1e:
            com.sun.org.apache.xerces.internal.impl.XMLEntityScanner r6 = r9.fEntityScanner
            int r6 = r6.scanChar()
            r7 = 32
            if (r6 == r7) goto L70
            r8 = 10
            if (r6 == r8) goto L70
            r8 = 13
            if (r6 == r8) goto L70
            r8 = 133(0x85, float:1.86E-43)
            if (r6 == r8) goto L70
            r8 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r8) goto L39
            goto L70
        L39:
            if (r6 != r0) goto L4a
            if (r4 == 0) goto L44
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r0 = r9.fStringBuffer
            int r2 = r0.length
            int r2 = r2 - r1
            r0.length = r2
        L44:
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r9 = r9.fStringBuffer
            r10.setValues(r9)
            return r5
        L4a:
            boolean r7 = com.sun.org.apache.xerces.internal.util.XMLChar.isPubid(r6)
            if (r7 == 0) goto L58
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r4 = r9.fStringBuffer
            char r6 = (char) r6
            r4.append(r6)
            r4 = r3
            goto L1e
        L58:
            r5 = -1
            if (r6 != r5) goto L61
            java.lang.String r10 = "PublicIDUnterminated"
            r9.reportFatalError(r10, r2)
            return r3
        L61:
            java.lang.String r5 = java.lang.Integer.toHexString(r6)
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            java.lang.String r6 = "InvalidCharInPublicID"
            r9.reportFatalError(r6, r5)
            r5 = r3
            goto L1e
        L70:
            if (r4 != 0) goto L1e
            com.sun.org.apache.xerces.internal.util.XMLStringBuffer r4 = r9.fStringBuffer
            r4.append(r7)
            r4 = r1
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11DTDScannerImpl.scanPubidLiteral(com.sun.org.apache.xerces.internal.xni.XMLString):boolean");
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLScanner
    public boolean versionSupported(String str) {
        return str.equals(SerializerConstants.XMLVERSION11) || str.equals("1.0");
    }

    public void normalizeWhitespace(XMLString xMLString, int i) {
        int i2 = xMLString.offset;
        int i3 = xMLString.length + i2;
        for (int i4 = i2 + i; i4 < i3; i4++) {
            if (XMLChar.isSpace(xMLString.f64120ch[i4])) {
                xMLString.f64120ch[i4] = ' ';
            }
        }
    }

    public XML11DTDScannerImpl(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager) {
        super(symbolTable, xMLErrorReporter, xMLEntityManager);
        this.fStrings = new String[3];
        this.fString = new XMLString();
        this.fStringBuffer = new XMLStringBuffer();
        this.fStringBuffer2 = new XMLStringBuffer();
        this.fStringBuffer3 = new XMLStringBuffer();
    }
}
