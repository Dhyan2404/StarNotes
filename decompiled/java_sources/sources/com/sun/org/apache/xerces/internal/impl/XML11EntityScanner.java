package com.sun.org.apache.xerces.internal.impl;

import com.sun.xml.internal.stream.Entity;
import java.io.IOException;

/* loaded from: classes10.dex */
public class XML11EntityScanner extends XMLEntityScanner {
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    public int peekChar() throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            load(0, true);
        }
        Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char c = scannedEntity2.f64126ch[scannedEntity2.position];
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
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanChar() throws java.io.IOException {
        /*
            r10 = this;
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r10.fCurrentEntity
            int r1 = r0.position
            int r0 = r0.count
            r2 = 0
            r3 = 1
            if (r1 != r0) goto Ld
            r10.load(r2, r3)
        Ld:
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r10.fCurrentEntity
            char[] r1 = r0.f64126ch
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
            com.sun.xml.internal.stream.Entity$ScannedEntity r7 = r10.fCurrentEntity
            int r8 = r7.lineNumber
            int r8 = r8 + r3
            r7.lineNumber = r8
            r7.columnNumber = r3
            int r8 = r7.position
            int r9 = r7.count
            if (r8 != r9) goto L48
            char[] r7 = r7.f64126ch
            char r8 = (char) r1
            r7[r2] = r8
            r10.load(r3, r2)
        L48:
            if (r1 != r5) goto L5f
            if (r0 == 0) goto L5f
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r10.fCurrentEntity
            char[] r1 = r0.f64126ch
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
            com.sun.xml.internal.stream.Entity$ScannedEntity r10 = r10.fCurrentEntity
            int r0 = r10.columnNumber
            int r0 = r0 + r3
            r10.columnNumber = r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.scanChar():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x00e1, code lost:
    
        r2 = r14.fCurrentEntity;
        r10 = r2.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x00e7, code lost:
    
        if (r10 >= r2.count) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00e9, code lost:
    
        r11 = r2.f64126ch;
        r2.position = r10 + 1;
        r2 = r11[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00f5, code lost:
    
        if (com.sun.org.apache.xerces.internal.util.XML11Char.isXML11Content(r2) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f7, code lost:
    
        if (r2 == 133) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00f9, code lost:
    
        if (r2 != 8232) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00fb, code lost:
    
        r14.fCurrentEntity.position--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0120, code lost:
    
        r2 = r14.fCurrentEntity;
        r4 = r2.position - r1;
        r2.columnNumber += r4 - r3;
        r15.setValues(r2.f64126ch, r1, r4);
        r14 = r14.fCurrentEntity;
        r15 = r14.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0137, code lost:
    
        if (r15 == r14.count) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0139, code lost:
    
        r5 = r14.f64126ch[r15];
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x013d, code lost:
    
        if (r5 == '\r') goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x013f, code lost:
    
        if (r5 == 133) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0141, code lost:
    
        if (r5 != 8232) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:?, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0143, code lost:
    
        if (r0 == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0146, code lost:
    
        return 10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0103, code lost:
    
        r2 = r14.fCurrentEntity;
        r10 = r2.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0109, code lost:
    
        if (r10 >= r2.count) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010b, code lost:
    
        r11 = r2.f64126ch;
        r2.position = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0117, code lost:
    
        if (com.sun.org.apache.xerces.internal.util.XML11Char.isXML11InternalEntityContent(r11[r10]) != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0119, code lost:
    
        r14.fCurrentEntity.position--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00df, code lost:
    
        if (r0 != false) goto L55;
     */
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanContent(com.sun.org.apache.xerces.internal.xni.XMLString r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.scanContent(com.sun.org.apache.xerces.internal.xni.XMLString):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x017a, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v13 */
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanData(java.lang.String r17, com.sun.org.apache.xerces.internal.util.XMLStringBuffer r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 577
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.scanData(java.lang.String, com.sun.org.apache.xerces.internal.util.XMLStringBuffer):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00ec, code lost:
    
        if (r3 != false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00ee, code lost:
    
        r3 = r16.fCurrentEntity;
        r8 = r3.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00f4, code lost:
    
        if (r8 >= r3.count) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f6, code lost:
    
        r12 = r3.f64126ch;
        r3.position = r8 + 1;
        r3 = r12[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00fe, code lost:
    
        if (r3 == r17) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0100, code lost:
    
        if (r3 == '%') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0106, code lost:
    
        if (com.sun.org.apache.xerces.internal.util.XML11Char.isXML11Content(r3) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0108, code lost:
    
        if (r3 == 133) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x010a, code lost:
    
        if (r3 != 8232) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x010c, code lost:
    
        r16.fCurrentEntity.position--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0139, code lost:
    
        r3 = r16.fCurrentEntity;
        r5 = r3.position - r4;
        r3.columnNumber += r5 - r6;
        r18.setValues(r3.f64126ch, r4, r5);
        r0 = r16.fCurrentEntity;
        r2 = r0.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0150, code lost:
    
        if (r2 == r0.count) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0152, code lost:
    
        r2 = r0.f64126ch[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0156, code lost:
    
        if (r2 != r17) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x015a, code lost:
    
        if (r0.literal == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x015e, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0114, code lost:
    
        r3 = r16.fCurrentEntity;
        r8 = r3.position;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x011a, code lost:
    
        if (r8 >= r3.count) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x011c, code lost:
    
        r10 = r3.f64126ch;
        r3.position = r8 + 1;
        r8 = r10[r8];
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0124, code lost:
    
        if (r8 != r17) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0128, code lost:
    
        if (r3.literal == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0132, code lost:
    
        r16.fCurrentEntity.position--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x012a, code lost:
    
        if (r8 == '%') goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0130, code lost:
    
        if (com.sun.org.apache.xerces.internal.util.XML11Char.isXML11InternalEntityContent(r8) != false) goto L98;
     */
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanLiteral(int r17, com.sun.org.apache.xerces.internal.xni.XMLString r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.scanLiteral(int, com.sun.org.apache.xerces.internal.xni.XMLString):int");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00e0 -> B:13:0x0041). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x015b -> B:13:0x0041). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String scanNCName() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.scanNCName():java.lang.String");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00e0 -> B:13:0x0041). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x015b -> B:13:0x0041). Please report as a decompilation issue!!! */
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String scanName() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.scanName():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c3, code lost:
    
        r7.fCurrentEntity.position--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ca, code lost:
    
        r3 = r0;
     */
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String scanNmtoken() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.scanNmtoken():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0182, code lost:
    
        r11.fCurrentEntity.position--;
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x018b, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01e5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00c4 A[SYNTHETIC] */
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanQName(com.sun.org.apache.xerces.internal.xni.QName r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.scanQName(com.sun.org.apache.xerces.internal.xni.QName):boolean");
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    public boolean skipChar(int i) throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            load(0, true);
        }
        Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char[] cArr = scannedEntity2.f64126ch;
        int i2 = scannedEntity2.position;
        char c = cArr[i2];
        if (c == i) {
            scannedEntity2.position = i2 + 1;
            if (i == 10) {
                scannedEntity2.lineNumber++;
                scannedEntity2.columnNumber = 1;
            } else {
                scannedEntity2.columnNumber++;
            }
            return true;
        }
        if (i == 10 && ((c == 8232 || c == 133) && scannedEntity2.isExternal())) {
            Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
            scannedEntity3.position++;
            scannedEntity3.lineNumber++;
            scannedEntity3.columnNumber = 1;
            return true;
        }
        if (i != 10 || c != '\r' || !this.fCurrentEntity.isExternal()) {
            return false;
        }
        Entity.ScannedEntity scannedEntity4 = this.fCurrentEntity;
        if (scannedEntity4.position == scannedEntity4.count) {
            scannedEntity4.f64126ch[0] = c;
            load(1, false);
        }
        Entity.ScannedEntity scannedEntity5 = this.fCurrentEntity;
        char[] cArr2 = scannedEntity5.f64126ch;
        int i3 = scannedEntity5.position + 1;
        scannedEntity5.position = i3;
        char c2 = cArr2[i3];
        if (c2 == '\n' || c2 == 133) {
            scannedEntity5.position = i3 + 1;
        }
        scannedEntity5.lineNumber++;
        scannedEntity5.columnNumber = 1;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
    
        if (com.sun.org.apache.xerces.internal.util.XML11Char.isXML11Space(r1) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
    
        if (r1 == '\n') goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
    
        if (r1 == '\r') goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if (r1 == 133) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
    
        if (r1 != 8232) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
    
        r9.fCurrentEntity.columnNumber++;
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
    
        if (r6 != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007d, code lost:
    
        r9.fCurrentEntity.position++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0084, code lost:
    
        r0 = r9.fCurrentEntity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008a, code lost:
    
        if (r0.position != r0.count) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008c, code lost:
    
        load(0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0091, code lost:
    
        if (r9.fCurrentEntity != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0093, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0094, code lost:
    
        r0 = r9.fCurrentEntity;
        r1 = r0.f64126ch[r0.position];
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
    
        if (com.sun.org.apache.xerces.internal.util.XML11Char.isXML11Space(r1) != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a2, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x003e, code lost:
    
        r6 = r9.fCurrentEntity;
        r6.lineNumber++;
        r6.columnNumber = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004c, code lost:
    
        if (r6.position != (r6.count - 1)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x004e, code lost:
    
        r6.f64126ch[0] = r1;
        r6 = load(1, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0057, code lost:
    
        if (r6 != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0059, code lost:
    
        r7 = r9.fCurrentEntity;
        r7.startPosition = 0;
        r7.position = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0066, code lost:
    
        if (r1 != '\r') goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0068, code lost:
    
        r1 = r9.fCurrentEntity;
        r5 = r1.f64126ch;
        r7 = r1.position + 1;
        r1.position = r7;
        r5 = r5[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0073, code lost:
    
        if (r5 == '\n') goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
    
        if (r5 == 133) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0077, code lost:
    
        r1.position = r7 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0062, code lost:
    
        if (r9.fCurrentEntity != null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0064, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0065, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a7, code lost:
    
        if (com.sun.org.apache.xerces.internal.util.XMLChar.isSpace(r1) != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a9, code lost:
    
        if (r1 != '\n') goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ab, code lost:
    
        r0 = r9.fCurrentEntity;
        r0.lineNumber++;
        r0.columnNumber = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b9, code lost:
    
        if (r0.position != (r0.count - 1)) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00bb, code lost:
    
        r0.f64126ch[0] = r1;
        r0 = load(1, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c4, code lost:
    
        if (r0 != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c6, code lost:
    
        r1 = r9.fCurrentEntity;
        r1.startPosition = 0;
        r1.position = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00da, code lost:
    
        if (r0 != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00dc, code lost:
    
        r9.fCurrentEntity.position++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e3, code lost:
    
        r0 = r9.fCurrentEntity;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e9, code lost:
    
        if (r0.position != r0.count) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00eb, code lost:
    
        load(0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f0, code lost:
    
        if (r9.fCurrentEntity != null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f2, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f3, code lost:
    
        r0 = r9.fCurrentEntity;
        r1 = r0.f64126ch[r0.position];
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ff, code lost:
    
        if (com.sun.org.apache.xerces.internal.util.XMLChar.isSpace(r1) != false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0101, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00cf, code lost:
    
        if (r9.fCurrentEntity != null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00d1, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00d9, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00d2, code lost:
    
        r9.fCurrentEntity.columnNumber++;
     */
    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean skipSpaces() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XML11EntityScanner.skipSpaces():boolean");
    }

    @Override // com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
    public boolean skipString(String str) throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            load(0, true);
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
            char[] cArr = scannedEntity2.f64126ch;
            int i2 = scannedEntity2.position;
            scannedEntity2.position = i2 + 1;
            if (cArr[i2] != str.charAt(i)) {
                this.fCurrentEntity.position -= i + 1;
                return false;
            }
            if (i < length - 1) {
                Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
                int i3 = scannedEntity3.position;
                int i4 = scannedEntity3.count;
                if (i3 == i4) {
                    char[] cArr2 = scannedEntity3.f64126ch;
                    int i5 = i + 1;
                    System.arraycopy(cArr2, (i4 - i) - 1, cArr2, 0, i5);
                    if (load(i5, false)) {
                        Entity.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                        scannedEntity4.startPosition -= i5;
                        scannedEntity4.position -= i5;
                        return false;
                    }
                } else {
                    continue;
                }
            }
        }
        this.fCurrentEntity.columnNumber += length;
        return true;
    }
}
