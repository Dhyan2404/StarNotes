package org.apache.xerces.impl;

import java.io.EOFException;
import java.io.IOException;
import java.util.Locale;
import org.apache.xerces.impl.XMLEntityManager;
import org.apache.xerces.impl.io.UCSReader;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLLocator;
import org.apache.xerces.xni.XMLResourceIdentifier;

/* loaded from: classes13.dex */
public class XMLEntityScanner implements XMLLocator {

    /* renamed from: b */
    public static final boolean f112071b = false;

    /* renamed from: c */
    public static final boolean f112072c = false;

    /* renamed from: d */
    public static final EOFException f112073d = new EOFException() { // from class: org.apache.xerces.impl.XMLEntityScanner.1
        private static final long serialVersionUID = 980337771224675268L;

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            return this;
        }
    };
    protected XMLErrorReporter fErrorReporter;

    /* renamed from: a */
    public XMLEntityManager f112074a = null;
    protected XMLEntityManager.ScannedEntity fCurrentEntity = null;
    protected SymbolTable fSymbolTable = null;
    protected int fBufferSize = 2048;

    /* renamed from: a */
    public final boolean m69856a(int i, boolean z) throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        scannedEntity.baseCharOffset += scannedEntity.position - scannedEntity.startPosition;
        char[] cArr = scannedEntity.f112040ch;
        int length = cArr.length - i;
        if (!scannedEntity.mayReadChunks && length > 64) {
            length = 64;
        }
        int read = scannedEntity.reader.read(cArr, i, length);
        if (read != -1) {
            if (read == 0) {
                return false;
            }
            XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
            scannedEntity2.count = read + i;
            scannedEntity2.position = i;
            scannedEntity2.startPosition = i;
            return false;
        }
        XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
        scannedEntity3.count = i;
        scannedEntity3.position = i;
        scannedEntity3.startPosition = i;
        if (z) {
            this.f112074a.m69841h();
            XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
            if (scannedEntity4 == null) {
                throw f112073d;
            }
            if (scannedEntity4.position == scannedEntity4.count) {
                m69856a(0, true);
            }
        }
        return true;
    }

    /* renamed from: b */
    public final void m69857b(int i, int i2) {
        char[] cArr = this.fCurrentEntity.f112040ch;
        char[] cArr2 = new char[cArr.length << 1];
        System.arraycopy(cArr, i, cArr2, 0, i2);
        this.fCurrentEntity.f112040ch = cArr2;
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final String getBaseSystemId() {
        XMLResourceIdentifier xMLResourceIdentifier;
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null || (xMLResourceIdentifier = scannedEntity.entityLocation) == null) {
            return null;
        }
        return xMLResourceIdentifier.getExpandedSystemId();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final int getCharacterOffset() {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return -1;
        }
        boolean isExternal = scannedEntity.isExternal();
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        return isExternal ? scannedEntity2.baseCharOffset + (scannedEntity2.position - scannedEntity2.startPosition) : scannedEntity2.getCharacterOffset();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final int getColumnNumber() {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return -1;
        }
        boolean isExternal = scannedEntity.isExternal();
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        return isExternal ? scannedEntity2.columnNumber : scannedEntity2.getColumnNumber();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final String getEncoding() {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return null;
        }
        boolean isExternal = scannedEntity.isExternal();
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        return isExternal ? scannedEntity2.encoding : scannedEntity2.getEncoding();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final String getExpandedSystemId() {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return null;
        }
        XMLResourceIdentifier xMLResourceIdentifier = scannedEntity.entityLocation;
        return (xMLResourceIdentifier == null || xMLResourceIdentifier.getExpandedSystemId() == null) ? this.fCurrentEntity.getExpandedSystemId() : this.fCurrentEntity.entityLocation.getExpandedSystemId();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final int getLineNumber() {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return -1;
        }
        boolean isExternal = scannedEntity.isExternal();
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        return isExternal ? scannedEntity2.lineNumber : scannedEntity2.getLineNumber();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final String getLiteralSystemId() {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return null;
        }
        XMLResourceIdentifier xMLResourceIdentifier = scannedEntity.entityLocation;
        return (xMLResourceIdentifier == null || xMLResourceIdentifier.getLiteralSystemId() == null) ? this.fCurrentEntity.getLiteralSystemId() : this.fCurrentEntity.entityLocation.getLiteralSystemId();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final String getPublicId() {
        XMLResourceIdentifier xMLResourceIdentifier;
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null || (xMLResourceIdentifier = scannedEntity.entityLocation) == null) {
            return null;
        }
        return xMLResourceIdentifier.getPublicId();
    }

    @Override // org.apache.xerces.xni.XMLLocator
    public final String getXMLVersion() {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null) {
            return null;
        }
        boolean isExternal = scannedEntity.isExternal();
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        return isExternal ? scannedEntity2.xmlVersion : scannedEntity2.getXMLVersion();
    }

    public final boolean isExternal() {
        return this.fCurrentEntity.isExternal();
    }

    public int peekChar() throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char c = scannedEntity2.f112040ch[scannedEntity2.position];
        if (scannedEntity2.isExternal() && c == '\r') {
            return 10;
        }
        return c;
    }

    public final void reset(SymbolTable symbolTable, XMLEntityManager xMLEntityManager, XMLErrorReporter xMLErrorReporter) {
        this.fCurrentEntity = null;
        this.fSymbolTable = symbolTable;
        this.f112074a = xMLEntityManager;
        this.fErrorReporter = xMLErrorReporter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
    
        if (r0 != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanChar() throws java.io.IOException {
        /*
            r9 = this;
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r0 = r9.fCurrentEntity
            int r1 = r0.position
            int r0 = r0.count
            r2 = 0
            r3 = 1
            if (r1 != r0) goto Ld
            r9.m69856a(r2, r3)
        Ld:
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r0 = r9.fCurrentEntity
            char[] r1 = r0.f112040ch
            int r4 = r0.position
            int r5 = r4 + 1
            r0.position = r5
            char r1 = r1[r4]
            r4 = 13
            r5 = 10
            if (r1 == r5) goto L28
            if (r1 != r4) goto L56
            boolean r0 = r0.isExternal()
            if (r0 == 0) goto L56
            goto L29
        L28:
            r0 = r2
        L29:
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r6 = r9.fCurrentEntity
            int r7 = r6.lineNumber
            int r7 = r7 + r3
            r6.lineNumber = r7
            r6.columnNumber = r3
            int r7 = r6.position
            int r8 = r6.count
            if (r7 != r8) goto L40
            char[] r6 = r6.f112040ch
            char r7 = (char) r1
            r6[r2] = r7
            r9.m69856a(r3, r2)
        L40:
            if (r1 != r4) goto L56
            if (r0 == 0) goto L56
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r0 = r9.fCurrentEntity
            char[] r1 = r0.f112040ch
            int r2 = r0.position
            int r4 = r2 + 1
            r0.position = r4
            char r1 = r1[r2]
            if (r1 == r5) goto L55
            int r4 = r4 - r3
            r0.position = r4
        L55:
            r1 = r5
        L56:
            org.apache.xerces.impl.XMLEntityManager$ScannedEntity r9 = r9.fCurrentEntity
            int r0 = r9.columnNumber
            int r0 = r0 + r3
            r9.columnNumber = r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLEntityScanner.scanChar():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00af A[EDGE_INSN: B:53:0x00af->B:54:0x00af BREAK  A[LOOP:1: B:29:0x003a->B:55:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[LOOP:1: B:29:0x003a->B:55:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanContent(org.apache.xerces.xni.XMLString r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLEntityScanner.scanContent(org.apache.xerces.xni.XMLString):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x017f, code lost:
    
        r12.position = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e7, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00f7 A[EDGE_INSN: B:89:0x00f7->B:75:0x00f7 BREAK  A[LOOP:3: B:65:0x007f->B:90:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:? A[LOOP:3: B:65:0x007f->B:90:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanData(java.lang.String r17, org.apache.xerces.util.XMLStringBuffer r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLEntityScanner.scanData(java.lang.String, org.apache.xerces.util.XMLStringBuffer):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00af A[EDGE_INSN: B:63:0x00af->B:64:0x00af BREAK  A[LOOP:1: B:39:0x003a->B:65:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[LOOP:1: B:39:0x003a->B:65:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanLiteral(int r13, org.apache.xerces.xni.XMLString r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xerces.impl.XMLEntityScanner.scanLiteral(int, org.apache.xerces.xni.XMLString):int");
    }

    public String scanNCName() throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        int i = 0;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        int i2 = scannedEntity2.position;
        if (XMLChar.isNCNameStart(scannedEntity2.f112040ch[i2])) {
            XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
            int i3 = scannedEntity3.position + 1;
            scannedEntity3.position = i3;
            if (i3 == scannedEntity3.count) {
                char[] cArr = scannedEntity3.f112040ch;
                cArr[0] = cArr[i2];
                if (m69856a(1, false)) {
                    XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                    scannedEntity4.columnNumber++;
                    return this.fSymbolTable.addSymbol(scannedEntity4.f112040ch, 0, 1);
                }
                i2 = 0;
            }
            while (true) {
                XMLEntityManager.ScannedEntity scannedEntity5 = this.fCurrentEntity;
                if (!XMLChar.isNCName(scannedEntity5.f112040ch[scannedEntity5.position])) {
                    break;
                }
                XMLEntityManager.ScannedEntity scannedEntity6 = this.fCurrentEntity;
                int i4 = scannedEntity6.position + 1;
                scannedEntity6.position = i4;
                if (i4 == scannedEntity6.count) {
                    int i5 = i4 - i2;
                    char[] cArr2 = scannedEntity6.f112040ch;
                    if (i5 == cArr2.length) {
                        m69857b(i2, i5);
                    } else {
                        System.arraycopy(cArr2, i2, cArr2, 0, i5);
                    }
                    if (m69856a(i5, false)) {
                        break;
                    }
                    i2 = 0;
                }
            }
        }
        i = i2;
        XMLEntityManager.ScannedEntity scannedEntity7 = this.fCurrentEntity;
        int i6 = scannedEntity7.position - i;
        scannedEntity7.columnNumber += i6;
        if (i6 > 0) {
            return this.fSymbolTable.addSymbol(scannedEntity7.f112040ch, i, i6);
        }
        return null;
    }

    public String scanName() throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        int i = 0;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        int i2 = scannedEntity2.position;
        if (XMLChar.isNameStart(scannedEntity2.f112040ch[i2])) {
            XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
            int i3 = scannedEntity3.position + 1;
            scannedEntity3.position = i3;
            if (i3 == scannedEntity3.count) {
                char[] cArr = scannedEntity3.f112040ch;
                cArr[0] = cArr[i2];
                if (m69856a(1, false)) {
                    XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                    scannedEntity4.columnNumber++;
                    return this.fSymbolTable.addSymbol(scannedEntity4.f112040ch, 0, 1);
                }
                i2 = 0;
            }
            while (true) {
                XMLEntityManager.ScannedEntity scannedEntity5 = this.fCurrentEntity;
                if (!XMLChar.isName(scannedEntity5.f112040ch[scannedEntity5.position])) {
                    break;
                }
                XMLEntityManager.ScannedEntity scannedEntity6 = this.fCurrentEntity;
                int i4 = scannedEntity6.position + 1;
                scannedEntity6.position = i4;
                if (i4 == scannedEntity6.count) {
                    int i5 = i4 - i2;
                    char[] cArr2 = scannedEntity6.f112040ch;
                    if (i5 == cArr2.length) {
                        m69857b(i2, i5);
                    } else {
                        System.arraycopy(cArr2, i2, cArr2, 0, i5);
                    }
                    if (m69856a(i5, false)) {
                        break;
                    }
                    i2 = 0;
                }
            }
        }
        i = i2;
        XMLEntityManager.ScannedEntity scannedEntity7 = this.fCurrentEntity;
        int i6 = scannedEntity7.position - i;
        scannedEntity7.columnNumber += i6;
        if (i6 > 0) {
            return this.fSymbolTable.addSymbol(scannedEntity7.f112040ch, i, i6);
        }
        return null;
    }

    public String scanNmtoken() throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        int i = 0;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        int i2 = this.fCurrentEntity.position;
        while (true) {
            XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
            if (!XMLChar.isName(scannedEntity2.f112040ch[scannedEntity2.position])) {
                i = i2;
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
                    break;
                }
                i2 = 0;
            }
        }
        XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
        int i5 = scannedEntity4.position - i;
        scannedEntity4.columnNumber += i5;
        if (i5 > 0) {
            return this.fSymbolTable.addSymbol(scannedEntity4.f112040ch, i, i5);
        }
        return null;
    }

    public boolean scanQName(QName qName) throws IOException {
        String str;
        String str2;
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        int i = scannedEntity2.position;
        if (XMLChar.isNCNameStart(scannedEntity2.f112040ch[i])) {
            XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
            int i2 = scannedEntity3.position + 1;
            scannedEntity3.position = i2;
            if (i2 == scannedEntity3.count) {
                char[] cArr = scannedEntity3.f112040ch;
                cArr[0] = cArr[i];
                if (m69856a(1, false)) {
                    XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                    scannedEntity4.columnNumber++;
                    String addSymbol = this.fSymbolTable.addSymbol(scannedEntity4.f112040ch, 0, 1);
                    qName.setValues(null, addSymbol, addSymbol, null);
                    return true;
                }
                i = 0;
            }
            int i3 = -1;
            while (true) {
                XMLEntityManager.ScannedEntity scannedEntity5 = this.fCurrentEntity;
                if (!XMLChar.isName(scannedEntity5.f112040ch[scannedEntity5.position])) {
                    break;
                }
                XMLEntityManager.ScannedEntity scannedEntity6 = this.fCurrentEntity;
                char[] cArr2 = scannedEntity6.f112040ch;
                int i4 = scannedEntity6.position;
                if (cArr2[i4] == ':') {
                    if (i3 != -1) {
                        break;
                    }
                    i3 = i4;
                }
                int i5 = i4 + 1;
                scannedEntity6.position = i5;
                if (i5 == scannedEntity6.count) {
                    int i6 = i5 - i;
                    if (i6 == cArr2.length) {
                        m69857b(i, i6);
                    } else {
                        System.arraycopy(cArr2, i, cArr2, 0, i6);
                    }
                    if (i3 != -1) {
                        i3 -= i;
                    }
                    if (m69856a(i6, false)) {
                        i = 0;
                        break;
                    }
                    i = 0;
                }
            }
            XMLEntityManager.ScannedEntity scannedEntity7 = this.fCurrentEntity;
            int i7 = scannedEntity7.position - i;
            scannedEntity7.columnNumber += i7;
            if (i7 > 0) {
                String addSymbol2 = this.fSymbolTable.addSymbol(scannedEntity7.f112040ch, i, i7);
                if (i3 != -1) {
                    int i8 = i3 - i;
                    str2 = this.fSymbolTable.addSymbol(this.fCurrentEntity.f112040ch, i, i8);
                    int i9 = (i7 - i8) - 1;
                    int i10 = i3 + 1;
                    if (!XMLChar.isNCNameStart(this.fCurrentEntity.f112040ch[i10])) {
                        this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "IllegalQName", null, (short) 2);
                    }
                    str = this.fSymbolTable.addSymbol(this.fCurrentEntity.f112040ch, i10, i9);
                } else {
                    str = addSymbol2;
                    str2 = null;
                }
                qName.setValues(str2, str, addSymbol2, null);
                return true;
            }
        }
        return false;
    }

    public final void setBufferSize(int i) {
        this.fBufferSize = i;
    }

    public final void setCurrentEntity(XMLEntityManager.ScannedEntity scannedEntity) {
        this.fCurrentEntity = scannedEntity;
    }

    public final void setEncoding(String str) throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity;
        UCSReader uCSReader;
        XMLEntityManager.ScannedEntity scannedEntity2;
        UCSReader uCSReader2;
        XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
        if (scannedEntity3.stream != null) {
            String str2 = scannedEntity3.encoding;
            if (str2 == null || !str2.equals(str)) {
                String str3 = this.fCurrentEntity.encoding;
                if (str3 != null && str3.startsWith("UTF-16")) {
                    String upperCase = str.toUpperCase(Locale.ENGLISH);
                    if (upperCase.equals("UTF-16")) {
                        return;
                    }
                    if (upperCase.equals("ISO-10646-UCS-4")) {
                        if (this.fCurrentEntity.encoding.equals("UTF-16BE")) {
                            scannedEntity2 = this.fCurrentEntity;
                            uCSReader2 = new UCSReader(this.fCurrentEntity.stream, (short) 8);
                        } else {
                            scannedEntity2 = this.fCurrentEntity;
                            uCSReader2 = new UCSReader(this.fCurrentEntity.stream, (short) 4);
                        }
                        scannedEntity2.reader = uCSReader2;
                        return;
                    }
                    if (upperCase.equals("ISO-10646-UCS-2")) {
                        if (this.fCurrentEntity.encoding.equals("UTF-16BE")) {
                            scannedEntity = this.fCurrentEntity;
                            uCSReader = new UCSReader(this.fCurrentEntity.stream, (short) 2);
                        } else {
                            scannedEntity = this.fCurrentEntity;
                            uCSReader = new UCSReader(this.fCurrentEntity.stream, (short) 1);
                        }
                        scannedEntity.reader = uCSReader;
                        return;
                    }
                }
                XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                scannedEntity4.setReader(scannedEntity4.stream, str, null);
                this.fCurrentEntity.encoding = str;
            }
        }
    }

    public final void setXMLVersion(String str) {
        this.fCurrentEntity.xmlVersion = str;
    }

    public boolean skipChar(int i) throws IOException {
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char[] cArr = scannedEntity2.f112040ch;
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
        if (i != 10 || c != '\r' || !scannedEntity2.isExternal()) {
            return false;
        }
        XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
        if (scannedEntity3.position == scannedEntity3.count) {
            scannedEntity3.f112040ch[0] = c;
            m69856a(1, false);
        }
        XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
        int i3 = scannedEntity4.position + 1;
        scannedEntity4.position = i3;
        if (scannedEntity4.f112040ch[i3] == '\n') {
            scannedEntity4.position = i3 + 1;
        }
        scannedEntity4.lineNumber++;
        scannedEntity4.columnNumber = 1;
        return true;
    }

    public final boolean skipDeclSpaces() throws IOException {
        boolean z;
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char c = scannedEntity2.f112040ch[scannedEntity2.position];
        if (!XMLChar.isSpace(c)) {
            return false;
        }
        boolean isExternal = this.fCurrentEntity.isExternal();
        do {
            if (c == '\n' || (isExternal && c == '\r')) {
                XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
                scannedEntity3.lineNumber++;
                scannedEntity3.columnNumber = 1;
                if (scannedEntity3.position == scannedEntity3.count - 1) {
                    scannedEntity3.f112040ch[0] = c;
                    z = m69856a(1, true);
                    if (!z) {
                        XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                        scannedEntity4.position = 0;
                        scannedEntity4.startPosition = 0;
                    }
                } else {
                    z = false;
                }
                if (c == '\r' && isExternal) {
                    XMLEntityManager.ScannedEntity scannedEntity5 = this.fCurrentEntity;
                    char[] cArr = scannedEntity5.f112040ch;
                    int i = scannedEntity5.position + 1;
                    scannedEntity5.position = i;
                    if (cArr[i] != '\n') {
                        scannedEntity5.position = i - 1;
                    }
                }
            } else {
                this.fCurrentEntity.columnNumber++;
                z = false;
            }
            if (!z) {
                this.fCurrentEntity.position++;
            }
            XMLEntityManager.ScannedEntity scannedEntity6 = this.fCurrentEntity;
            if (scannedEntity6.position == scannedEntity6.count) {
                m69856a(0, true);
            }
            XMLEntityManager.ScannedEntity scannedEntity7 = this.fCurrentEntity;
            c = scannedEntity7.f112040ch[scannedEntity7.position];
        } while (XMLChar.isSpace(c));
        return true;
    }

    public boolean skipSpaces() throws IOException {
        boolean z;
        XMLEntityManager.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            m69856a(0, true);
        }
        XMLEntityManager.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char c = scannedEntity2.f112040ch[scannedEntity2.position];
        if (!XMLChar.isSpace(c)) {
            return false;
        }
        boolean isExternal = this.fCurrentEntity.isExternal();
        do {
            if (c == '\n' || (isExternal && c == '\r')) {
                XMLEntityManager.ScannedEntity scannedEntity3 = this.fCurrentEntity;
                scannedEntity3.lineNumber++;
                scannedEntity3.columnNumber = 1;
                if (scannedEntity3.position == scannedEntity3.count - 1) {
                    scannedEntity3.f112040ch[0] = c;
                    z = m69856a(1, true);
                    if (!z) {
                        XMLEntityManager.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                        scannedEntity4.position = 0;
                        scannedEntity4.startPosition = 0;
                    }
                } else {
                    z = false;
                }
                if (c == '\r' && isExternal) {
                    XMLEntityManager.ScannedEntity scannedEntity5 = this.fCurrentEntity;
                    char[] cArr = scannedEntity5.f112040ch;
                    int i = scannedEntity5.position + 1;
                    scannedEntity5.position = i;
                    if (cArr[i] != '\n') {
                        scannedEntity5.position = i - 1;
                    }
                }
            } else {
                this.fCurrentEntity.columnNumber++;
                z = false;
            }
            if (!z) {
                this.fCurrentEntity.position++;
            }
            XMLEntityManager.ScannedEntity scannedEntity6 = this.fCurrentEntity;
            if (scannedEntity6.position == scannedEntity6.count) {
                m69856a(0, true);
            }
            XMLEntityManager.ScannedEntity scannedEntity7 = this.fCurrentEntity;
            c = scannedEntity7.f112040ch[scannedEntity7.position];
        } while (XMLChar.isSpace(c));
        return true;
    }

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
