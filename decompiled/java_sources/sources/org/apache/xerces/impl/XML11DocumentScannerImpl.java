package org.apache.xerces.impl;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.util.XMLStringBuffer;
import org.apache.xerces.xni.XMLString;

/* loaded from: classes13.dex */
public class XML11DocumentScannerImpl extends XMLDocumentScannerImpl {

    /* renamed from: k0 */
    public final XMLString f111948k0 = new XMLString();

    /* renamed from: q0 */
    public final XMLStringBuffer f111949q0 = new XMLStringBuffer();

    /* renamed from: t0 */
    public final XMLStringBuffer f111950t0 = new XMLStringBuffer();

    /* renamed from: u0 */
    public final XMLStringBuffer f111951u0 = new XMLStringBuffer();

    @Override // org.apache.xerces.impl.XMLScanner
    public String getVersionNotSupportedKey() {
        return "VersionNotSupported11";
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean isInvalid(int i) {
        return XML11Char.isXML11Invalid(i);
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

    /* JADX WARN: Removed duplicated region for block: B:30:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0218 A[ADDED_TO_REGION, SYNTHETIC] */
    @Override // org.apache.xerces.impl.XMLScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanAttributeValue(org.apache.xerces.xni.XMLString r17, org.apache.xerces.xni.XMLString r18, java.lang.String r19, boolean r20, java.lang.String r21) throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11DocumentScannerImpl.scanAttributeValue(org.apache.xerces.xni.XMLString, org.apache.xerces.xni.XMLString, java.lang.String, boolean, java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
    
        if (r6.fEntityScanner.skipChar(93) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
    
        r6.f111949q0.append(']');
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
    
        if (r6.fEntityScanner.skipChar(93) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
    
        if (r6.fEntityScanner.skipChar(62) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0078, code lost:
    
        reportFatalError("CDEndInContent", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007d, code lost:
    
        r0 = r6.fDocumentHandler;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        if (r0 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        r1 = r6.f111949q0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
    
        if (r1.length == 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0087, code lost:
    
        r0.characters(r1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        r6.fInScanContent = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return -1;
     */
    @Override // org.apache.xerces.impl.XMLDocumentFragmentScannerImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanContent() throws java.io.IOException, org.apache.xerces.xni.XNIException {
        /*
            r6 = this;
            org.apache.xerces.xni.XMLString r0 = r6.f111948k0
            org.apache.xerces.impl.XMLEntityScanner r1 = r6.fEntityScanner
            int r1 = r1.scanContent(r0)
            r2 = 13
            r3 = -1
            if (r1 == r2) goto L15
            r2 = 133(0x85, float:1.86E-43)
            if (r1 == r2) goto L15
            r2 = 8232(0x2028, float:1.1535E-41)
            if (r1 != r2) goto L2f
        L15:
            org.apache.xerces.impl.XMLEntityScanner r0 = r6.fEntityScanner
            r0.scanChar()
            org.apache.xerces.util.XMLStringBuffer r0 = r6.f111949q0
            r0.clear()
            org.apache.xerces.util.XMLStringBuffer r0 = r6.f111949q0
            org.apache.xerces.xni.XMLString r2 = r6.f111948k0
            r0.append(r2)
            org.apache.xerces.util.XMLStringBuffer r0 = r6.f111949q0
            char r1 = (char) r1
            r0.append(r1)
            org.apache.xerces.util.XMLStringBuffer r0 = r6.f111949q0
            r1 = r3
        L2f:
            org.apache.xerces.xni.XMLDocumentHandler r2 = r6.fDocumentHandler
            r4 = 0
            if (r2 == 0) goto L3b
            int r5 = r0.length
            if (r5 <= 0) goto L3b
            r2.characters(r0, r4)
        L3b:
            r0 = 93
            if (r1 != r0) goto L8e
            org.apache.xerces.xni.XMLString r2 = r6.f111948k0
            int r2 = r2.length
            if (r2 != 0) goto L8e
            org.apache.xerces.util.XMLStringBuffer r1 = r6.f111949q0
            r1.clear()
            org.apache.xerces.util.XMLStringBuffer r1 = r6.f111949q0
            org.apache.xerces.impl.XMLEntityScanner r2 = r6.fEntityScanner
            int r2 = r2.scanChar()
            char r2 = (char) r2
            r1.append(r2)
            r1 = 1
            r6.fInScanContent = r1
            org.apache.xerces.impl.XMLEntityScanner r1 = r6.fEntityScanner
            boolean r1 = r1.skipChar(r0)
            if (r1 == 0) goto L7d
        L61:
            org.apache.xerces.util.XMLStringBuffer r1 = r6.f111949q0
            r1.append(r0)
            org.apache.xerces.impl.XMLEntityScanner r1 = r6.fEntityScanner
            boolean r1 = r1.skipChar(r0)
            if (r1 != 0) goto L61
            org.apache.xerces.impl.XMLEntityScanner r0 = r6.fEntityScanner
            r1 = 62
            boolean r0 = r0.skipChar(r1)
            if (r0 == 0) goto L7d
            java.lang.String r0 = "CDEndInContent"
            r6.reportFatalError(r0, r4)
        L7d:
            org.apache.xerces.xni.XMLDocumentHandler r0 = r6.fDocumentHandler
            if (r0 == 0) goto L8a
            org.apache.xerces.util.XMLStringBuffer r1 = r6.f111949q0
            int r2 = r1.length
            if (r2 == 0) goto L8a
            r0.characters(r1, r4)
        L8a:
            r0 = 0
            r6.fInScanContent = r0
            goto L8f
        L8e:
            r3 = r1
        L8f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11DocumentScannerImpl.scanContent():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        r9.f111949q0.append(' ');
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
            org.apache.xerces.util.XMLStringBuffer r1 = r9.f111949q0
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
            org.apache.xerces.util.XMLStringBuffer r0 = r9.f111949q0
            int r2 = r0.length
            int r2 = r2 - r1
            r0.length = r2
        L44:
            org.apache.xerces.util.XMLStringBuffer r9 = r9.f111949q0
            r10.setValues(r9)
            return r5
        L4a:
            boolean r7 = org.apache.xerces.util.XMLChar.isPubid(r6)
            if (r7 == 0) goto L58
            org.apache.xerces.util.XMLStringBuffer r4 = r9.f111949q0
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
            org.apache.xerces.util.XMLStringBuffer r4 = r9.f111949q0
            r4.append(r7)
            r4 = r1
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11DocumentScannerImpl.scanPubidLiteral(org.apache.xerces.xni.XMLString):boolean");
    }

    @Override // org.apache.xerces.impl.XMLScanner
    public boolean versionSupported(String str) {
        return str.equals(SerializerConstants.XMLVERSION11) || str.equals("1.0");
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
