package org.apache.xerces.impl;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.xni.XMLString;

/* loaded from: classes13.dex */
public class XML11DTDScannerImpl extends XMLDTDScannerImpl {

    /* renamed from: q0 */
    public final XMLStringBuffer f111947q0;

    public XML11DTDScannerImpl() {
        this.f111947q0 = new XMLStringBuffer();
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public String getVersionNotSupportedKey() {
        return "VersionNotSupported11";
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean isInvalid(int i) {
        return !XML11Char.isXML11Valid(i);
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean isInvalidLiteral(int i) {
        return !XML11Char.isXML11ValidLiteral(i);
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public int isUnchangedByNormalization(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        while (i < i2) {
            if (XMLChar.isSpace(xMLString.f113585ch[i])) {
                return i - xMLString.offset;
            }
            i++;
        }
        return -1;
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean isValidNCName(int i) {
        return XML11Char.isXML11NCName(i);
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean isValidNameChar(int i) {
        return XML11Char.isXML11Name(i);
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean isValidNameStartChar(int i) {
        return XML11Char.isXML11NameStart(i);
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean isValidNameStartHighSurrogate(int i) {
        return XML11Char.isXML11NameHighSurrogate(i);
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public void normalizeWhitespace(XMLString xMLString) {
        int i = xMLString.offset;
        int i2 = xMLString.length + i;
        while (i < i2) {
            if (XMLChar.isSpace(xMLString.f113585ch[i])) {
                xMLString.f113585ch[i] = ' ';
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        r9.f111947q0.append(' ');
        r4 = true;
     */
    @Override // org.apache.xerces.impl.XMLScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanPubidLiteral(org.apache.xerces.xni.XMLString r10) throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            r9 = this;
            org.apache.xerces.impl.XMLEntityScanner r0 = r9.fEntityScanner
            int r0 = r0.scanChar()
            r1 = 39
            r2 = 0
            r3 = 0
            if (r0 == r1) goto L16
            r1 = 34
            if (r0 == r1) goto L16
            java.lang.String r10 = "QuoteRequiredInPublicID"
        L12:
            r9.reportFatalError(r10, r2)
            return r3
        L16:
            org.apache.xerces.util.XMLStringBuffer r1 = r9.f111947q0
            r1.clear()
            r1 = 1
            r4 = r1
            r5 = r4
        L1e:
            org.apache.xerces.impl.XMLEntityScanner r6 = r9.fEntityScanner
            int r6 = r6.scanChar()
            r7 = 32
            if (r6 == r7) goto L6d
            r8 = 10
            if (r6 == r8) goto L6d
            r8 = 13
            if (r6 == r8) goto L6d
            r8 = 133(0x85, float:1.86E-43)
            if (r6 == r8) goto L6d
            r8 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r8) goto L39
            goto L6d
        L39:
            if (r6 != r0) goto L4a
            if (r4 == 0) goto L44
            org.apache.xerces.util.XMLStringBuffer r0 = r9.f111947q0
            int r2 = r0.length
            int r2 = r2 - r1
            r0.length = r2
        L44:
            org.apache.xerces.util.XMLStringBuffer r9 = r9.f111947q0
            r10.setValues(r9)
            return r5
        L4a:
            boolean r7 = org.apache.xerces.util.XMLChar.isPubid(r6)
            if (r7 == 0) goto L58
            org.apache.xerces.util.XMLStringBuffer r4 = r9.f111947q0
            char r6 = (char) r6
            r4.append(r6)
            r4 = r3
            goto L1e
        L58:
            r5 = -1
            if (r6 != r5) goto L5e
            java.lang.String r10 = "PublicIDUnterminated"
            goto L12
        L5e:
            java.lang.String r5 = java.lang.Integer.toHexString(r6)
            java.lang.Object[] r5 = new java.lang.Object[]{r5}
            java.lang.String r6 = "InvalidCharInPublicID"
            r9.reportFatalError(r6, r5)
            r5 = r3
            goto L1e
        L6d:
            if (r4 != 0) goto L1e
            org.apache.xerces.util.XMLStringBuffer r4 = r9.f111947q0
            r4.append(r7)
            r4 = r1
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11DTDScannerImpl.scanPubidLiteral(org.apache.xerces.xni.XMLString):boolean");
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean versionSupported(String str) {
        return str.equals(SerializerConstants.XMLVERSION11) || str.equals("1.0");
    }

    public XML11DTDScannerImpl(SymbolTable symbolTable, XMLErrorReporter xMLErrorReporter, XMLEntityManager xMLEntityManager) {
        super(symbolTable, xMLErrorReporter, xMLEntityManager);
        this.f111947q0 = new XMLStringBuffer();
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public void normalizeWhitespace(XMLString xMLString, int i) {
        int i2 = xMLString.offset;
        int i3 = xMLString.length + i2;
        for (int i4 = i2 + i; i4 < i3; i4++) {
            if (XMLChar.isSpace(xMLString.f113585ch[i4])) {
                xMLString.f113585ch[i4] = ' ';
            }
        }
    }
}
