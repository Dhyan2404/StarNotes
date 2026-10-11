package org.apache.xerces.impl;

import java.io.IOException;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.util.XML11Char;
import org.apache.xerces.util.XMLChar;

/* loaded from: classes13.dex */
public class XML11EntityScanner extends XMLEntityScanner {
    @Override // org.apache.xerces.impl.XMLEntityScanner
    public int peekChar() throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char c = scannedEntity2.f112040ch[scannedEntity2.position];
        if (!scannedEntity2.isExternal()) {
            return c;
        }
        if (c == '\r' || c == 133 || c == 8232) {
            return 10;
        }
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        if (r0 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        if (r1 != 8232) goto L25;
     */
    @Override // org.apache.xerces.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanChar() throws java.io.IOException {
        /*
            r10 = this;
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r0 = r10.fCurrentEntity
            int r1 = r0.position
            int r0 = r0.count
            r2 = 0
            r3 = 1
            if (r1 != r0) goto Ld
            r10.m69856a(r2, r3)
        Ld:
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r0 = r10.fCurrentEntity
            char[] r1 = r0.f112040ch
            int r4 = r0.position
            int r5 = r4 + 1
            r0.position = r5
            char r1 = r1[r4]
            r4 = 133(0x85, float:1.86E-43)
            r5 = 13
            r6 = 10
            if (r1 == r6) goto L30
            if (r1 == r5) goto L29
            if (r1 == r4) goto L29
            r7 = 8232(0x2028, float:1.1535E-41)
            if (r1 != r7) goto L60
        L29:
            boolean r0 = r0.isExternal()
            if (r0 == 0) goto L60
            goto L31
        L30:
            r0 = r2
        L31:
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r7 = r10.fCurrentEntity
            int r8 = r7.lineNumber
            int r8 = r8 + r3
            r7.lineNumber = r8
            r7.columnNumber = r3
            int r8 = r7.position
            int r9 = r7.count
            if (r8 != r9) goto L48
            char[] r7 = r7.f112040ch
            char r8 = (char) r1
            r7[r2] = r8
            r10.m69856a(r3, r2)
        L48:
            if (r1 != r5) goto L5f
            if (r0 == 0) goto L5f
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r0 = r10.fCurrentEntity
            char[] r1 = r0.f112040ch
            int r2 = r0.position
            int r5 = r2 + 1
            r0.position = r5
            char r1 = r1[r2]
            if (r1 == r6) goto L5f
            if (r1 == r4) goto L5f
            int r5 = r5 - r3
            r0.position = r5
        L5f:
            r1 = r6
        L60:
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r10 = r10.fCurrentEntity
            int r0 = r10.columnNumber
            int r0 = r0 + r3
            r10.columnNumber = r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11EntityScanner.scanChar():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00e0, code lost:
    
        if (r0 != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x00e2, code lost:
    
        r1 = r14.fCurrentEntity;
        r2 = r1.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00e8, code lost:
    
        if (r2 < r1.count) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00eb, code lost:
    
        r10 = r1.f112040ch;
        r1.position = r2 + 1;
        r1 = r10[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f7, code lost:
    
        if (org.apache.xerces.util.XML11Char.isXML11Content(r1) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00f9, code lost:
    
        if (r1 == 133) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00fb, code lost:
    
        if (r1 != 8232) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0115, code lost:
    
        r14.fCurrentEntity.position--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x011c, code lost:
    
        r1 = r14.fCurrentEntity;
        r2 = r1.position - r3;
        r1.columnNumber += r2 - r12;
        r15.setValues(r1.f112040ch, r3, r2);
        r14 = r14.fCurrentEntity;
        r15 = r14.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0133, code lost:
    
        if (r15 == r14.count) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0135, code lost:
    
        r5 = r14.f112040ch[r15];
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0139, code lost:
    
        if (r5 == '\r') goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x013b, code lost:
    
        if (r5 == 133) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x013d, code lost:
    
        if (r5 != 8232) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x013f, code lost:
    
        if (r0 == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0142, code lost:
    
        return 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00fe, code lost:
    
        r1 = r14.fCurrentEntity;
        r2 = r1.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0104, code lost:
    
        if (r2 < r1.count) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0107, code lost:
    
        r10 = r1.f112040ch;
        r1.position = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0113, code lost:
    
        if (org.apache.xerces.util.XML11Char.isXML11InternalEntityContent(r10[r2]) != false) goto L87;
     */
    @Override // org.apache.xerces.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanContent(org.apache.xerces.xni.XMLString r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11EntityScanner.scanContent(org.apache.xerces.xni.XMLString):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x01f5, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v15 */
    @Override // org.apache.xerces.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanData(java.lang.String r18, org.apache.xerces.util.XMLStringBuffer r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11EntityScanner.scanData(java.lang.String, org.apache.xerces.util.XMLStringBuffer):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00e8, code lost:
    
        if (r3 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00ea, code lost:
    
        r3 = r16.fCurrentEntity;
        r8 = r3.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00f0, code lost:
    
        if (r8 < r3.count) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f3, code lost:
    
        r9 = r3.f112040ch;
        r3.position = r8 + 1;
        r3 = r9[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00fb, code lost:
    
        if (r3 == r17) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00fd, code lost:
    
        if (r3 == '%') goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0103, code lost:
    
        if (org.apache.xerces.util.XML11Char.isXML11Content(r3) == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0105, code lost:
    
        if (r3 == 133) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0107, code lost:
    
        if (r3 != 8232) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0129, code lost:
    
        r16.fCurrentEntity.position--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0130, code lost:
    
        r3 = r16.fCurrentEntity;
        r5 = r3.position - r4;
        r3.columnNumber += r5 - r6;
        r18.setValues(r3.f112040ch, r4, r5);
        r0 = r16.fCurrentEntity;
        r2 = r0.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0147, code lost:
    
        if (r2 == r0.count) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0149, code lost:
    
        r2 = r0.f112040ch[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x014d, code lost:
    
        if (r2 != r17) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0151, code lost:
    
        if (r0.literal == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0157, code lost:
    
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x010a, code lost:
    
        r3 = r16.fCurrentEntity;
        r8 = r3.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0110, code lost:
    
        if (r8 < r3.count) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0113, code lost:
    
        r9 = r3.f112040ch;
        r3.position = r8 + 1;
        r8 = r9[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x011b, code lost:
    
        if (r8 != r17) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011f, code lost:
    
        if (r3.literal == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0121, code lost:
    
        if (r8 == '%') goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0127, code lost:
    
        if (org.apache.xerces.util.XML11Char.isXML11InternalEntityContent(r8) != false) goto L101;
     */
    @Override // org.apache.xerces.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanLiteral(int r17, org.apache.xerces.xni.XMLString r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11EntityScanner.scanLiteral(int, org.apache.xerces.xni.XMLString):int");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00d8 -> B:13:0x0041). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0143 -> B:13:0x0041). Please report as a decompilation issue!!! */
    @Override // org.apache.xerces.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String scanNCName() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11EntityScanner.scanNCName():java.lang.String");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00d8 -> B:13:0x0041). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0143 -> B:13:0x0041). Please report as a decompilation issue!!! */
    @Override // org.apache.xerces.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String scanName() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11EntityScanner.scanName():java.lang.String");
    }

    @Override // org.apache.xerces.impl.XMLEntityScanner
    public String scanNmtoken() throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        int i = 0;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        int i2 = this.fCurrentEntity.position;
        while (true) {
            XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
            char c = scannedEntity2.f112040ch[scannedEntity2.position];
            if (!XML11Char.isXML11Name(c)) {
                if (!XML11Char.isXML11NameHighSurrogate(c)) {
                    break;
                }
                XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
                int i3 = scannedEntity3.position + 1;
                scannedEntity3.position = i3;
                if (i3 == scannedEntity3.count) {
                    int i4 = i3 - i2;
                    char[] cArr = scannedEntity3.f112040ch;
                    if (i4 == cArr.length) {
                        m69857b(i2, i4);
                    } else {
                        System.arraycopy(cArr, i2, cArr, 0, i4);
                    }
                    if (m69856a(i4, false)) {
                        XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                        scannedEntity4.startPosition--;
                        scannedEntity4.position--;
                        break;
                    }
                    i2 = 0;
                }
                XMLEntityManager.ScannedEntity scannedEntity5 = this.fCurrentEntity;
                char c2 = scannedEntity5.f112040ch[scannedEntity5.position];
                if (!XMLChar.isLowSurrogate(c2) || !XML11Char.isXML11Name(XMLChar.supplemental(c, c2))) {
                    break;
                }
                XMLEntityManager.ScannedEntity scannedEntity6 = this.fCurrentEntity;
                int i5 = scannedEntity6.position + 1;
                scannedEntity6.position = i5;
                if (i5 == scannedEntity6.count) {
                    int i6 = i5 - i2;
                    char[] cArr2 = scannedEntity6.f112040ch;
                    if (i6 == cArr2.length) {
                        m69857b(i2, i6);
                    } else {
                        System.arraycopy(cArr2, i2, cArr2, 0, i6);
                    }
                    if (m69856a(i6, false)) {
                        break;
                    }
                    i2 = 0;
                } else {
                    continue;
                }
            } else {
                XMLEntityManager.ScannedEntity scannedEntity7 = this.fCurrentEntity;
                int i7 = scannedEntity7.position + 1;
                scannedEntity7.position = i7;
                if (i7 == scannedEntity7.count) {
                    int i8 = i7 - i2;
                    char[] cArr3 = scannedEntity7.f112040ch;
                    if (i8 == cArr3.length) {
                        m69857b(i2, i8);
                    } else {
                        System.arraycopy(cArr3, i2, cArr3, 0, i8);
                    }
                    if (m69856a(i8, false)) {
                        break;
                    }
                    i2 = 0;
                } else {
                    continue;
                }
            }
        }
        this.fCurrentEntity.position--;
        i = i2;
        XMLEntityManager.ScannedEntity scannedEntity8 = this.fCurrentEntity;
        int i9 = scannedEntity8.position - i;
        scannedEntity8.columnNumber += i9;
        if (i9 > 0) {
            return this.fSymbolTable.addSymbol(scannedEntity8.f112040ch, i, i9);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ee, code lost:
    
        r1 = 0;
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0166, code lost:
    
        r11.fCurrentEntity.position--;
        r7 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00f4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00c1 A[SYNTHETIC] */
    @Override // org.apache.xerces.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanQName(org.apache.xerces.xni.QName r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11EntityScanner.scanQName(org.apache.xerces.xni.QName):boolean");
    }

    @Override // org.apache.xerces.impl.XMLEntityScanner
    public boolean skipChar(int i) throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity;
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        if (scannedEntity2.position == scannedEntity2.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
        char[] cArr = scannedEntity3.f112040ch;
        int i2 = scannedEntity3.position;
        char c = cArr[i2];
        if (c == i) {
            scannedEntity3.position = i2 + 1;
            if (i == 10) {
                scannedEntity3.lineNumber++;
                scannedEntity3.columnNumber = 1;
            } else {
                scannedEntity3.columnNumber++;
            }
            return true;
        }
        if (i == 10 && ((c == 8232 || c == 133) && scannedEntity3.isExternal())) {
            scannedEntity = this.fCurrentEntity;
            scannedEntity.position++;
        } else {
            if (i != 10 || c != '\r' || !this.fCurrentEntity.isExternal()) {
                return false;
            }
            XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
            if (scannedEntity4.position == scannedEntity4.count) {
                scannedEntity4.f112040ch[0] = c;
                m69856a(1, false);
            }
            scannedEntity = this.fCurrentEntity;
            char[] cArr2 = scannedEntity.f112040ch;
            int i3 = scannedEntity.position + 1;
            scannedEntity.position = i3;
            char c2 = cArr2[i3];
            if (c2 == '\n' || c2 == 133) {
                scannedEntity.position = i3 + 1;
            }
        }
        scannedEntity.lineNumber++;
        scannedEntity.columnNumber = 1;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        if (r1 == '\r') goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        if (r1 == 133) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
    
        if (r1 != 8232) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0032, code lost:
    
        r9.fCurrentEntity.columnNumber++;
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0073, code lost:
    
        if (r6 != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0075, code lost:
    
        r9.fCurrentEntity.position++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007c, code lost:
    
        r0 = r9.fCurrentEntity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0082, code lost:
    
        if (r0.position != r0.count) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0084, code lost:
    
        m69856a(0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0087, code lost:
    
        r0 = r9.fCurrentEntity;
        r1 = r0.f112040ch[r0.position];
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0093, code lost:
    
        if (org.apache.xerces.util.XML11Char.isXML11Space(r1) != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0095, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003b, code lost:
    
        r6 = r9.fCurrentEntity;
        r6.lineNumber++;
        r6.columnNumber = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0049, code lost:
    
        if (r6.position != (r6.count - 1)) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004b, code lost:
    
        r6.f112040ch[0] = r1;
        r6 = m69856a(1, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0054, code lost:
    
        if (r6 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0056, code lost:
    
        r7 = r9.fCurrentEntity;
        r7.startPosition = 0;
        r7.position = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005e, code lost:
    
        if (r1 != '\r') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0060, code lost:
    
        r1 = r9.fCurrentEntity;
        r5 = r1.f112040ch;
        r7 = r1.position + 1;
        r1.position = r7;
        r5 = r5[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006b, code lost:
    
        if (r5 == '\n') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006d, code lost:
    
        if (r5 == 133) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006f, code lost:
    
        r1.position = r7 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x005d, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009a, code lost:
    
        if (org.apache.xerces.util.XMLChar.isSpace(r1) != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x009c, code lost:
    
        r0 = r9.fCurrentEntity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009e, code lost:
    
        if (r1 != '\n') goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a0, code lost:
    
        r0.lineNumber++;
        r0.columnNumber = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ac, code lost:
    
        if (r0.position != (r0.count - 1)) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ae, code lost:
    
        r0.f112040ch[0] = r1;
        r0 = m69856a(1, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b7, code lost:
    
        if (r0 != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b9, code lost:
    
        r1 = r9.fCurrentEntity;
        r1.startPosition = 0;
        r1.position = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c6, code lost:
    
        if (r0 != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c8, code lost:
    
        r9.fCurrentEntity.position++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cf, code lost:
    
        r0 = r9.fCurrentEntity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d5, code lost:
    
        if (r0.position != r0.count) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d7, code lost:
    
        m69856a(0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00da, code lost:
    
        r0 = r9.fCurrentEntity;
        r1 = r0.f112040ch[r0.position];
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e6, code lost:
    
        if (org.apache.xerces.util.XMLChar.isSpace(r1) != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e8, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c5, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c0, code lost:
    
        r0.columnNumber++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0021, code lost:
    
        if (org.apache.xerces.util.XML11Char.isXML11Space(r1) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        if (r1 == '\n') goto L17;
     */
    @Override // org.apache.xerces.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean skipSpaces() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XML11EntityScanner.skipSpaces():boolean");
    }

    @Override // org.apache.xerces.impl.XMLEntityScanner
    public boolean skipString(String str) throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity;
        int i;
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        if (scannedEntity2.position == scannedEntity2.count) {
            m69856a(0, true);
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
            char[] cArr = scannedEntity3.f112040ch;
            int i3 = scannedEntity3.position;
            scannedEntity3.position = i3 + 1;
            if (cArr[i3] != str.charAt(i2)) {
                scannedEntity = this.fCurrentEntity;
                i = scannedEntity.position - (i2 + 1);
            } else {
                if (i2 < length - 1) {
                    XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                    int i4 = scannedEntity4.position;
                    int i5 = scannedEntity4.count;
                    if (i4 == i5) {
                        char[] cArr2 = scannedEntity4.f112040ch;
                        int i6 = i2 + 1;
                        System.arraycopy(cArr2, (i5 - i2) - 1, cArr2, 0, i6);
                        if (m69856a(i6, false)) {
                            scannedEntity = this.fCurrentEntity;
                            scannedEntity.startPosition -= i6;
                            i = scannedEntity.position - i6;
                        }
                    } else {
                        continue;
                    }
                }
            }
            scannedEntity.position = i;
            return false;
        }
        this.fCurrentEntity.columnNumber += length;
        return true;
    }
}
