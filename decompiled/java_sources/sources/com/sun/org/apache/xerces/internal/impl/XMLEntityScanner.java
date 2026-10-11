package com.sun.org.apache.xerces.internal.impl;

import com.google.zxing.common.StringUtils;
import com.sun.org.apache.xerces.internal.impl.io.ASCIIReader;
import com.sun.org.apache.xerces.internal.impl.io.UCSReader;
import com.sun.org.apache.xerces.internal.impl.io.UTF8Reader;
import com.sun.org.apache.xerces.internal.util.EncodingMap;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import com.sun.org.apache.xerces.internal.xni.QName;
import com.sun.org.apache.xerces.internal.xni.XMLLocator;
import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager;
import com.sun.org.apache.xerces.internal.xni.parser.XMLConfigurationException;
import com.sun.xml.internal.stream.Entity;
import com.sun.xml.internal.stream.XMLBufferListener;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Locale;
import java.util.Vector;

/* loaded from: classes10.dex */
public class XMLEntityScanner implements XMLLocator {
    protected static final String ALLOW_JAVA_ENCODINGS = "http://apache.org/xml/features/allow-java-encodings";
    private static final boolean DEBUG_BUFFER = false;
    private static final boolean DEBUG_ENCODINGS = false;
    private static final boolean DEBUG_SKIP_STRING = false;
    protected static final String ERROR_REPORTER = "http://apache.org/xml/properties/internal/error-reporter";
    protected static final String SYMBOL_TABLE = "http://apache.org/xml/properties/internal/symbol-table";
    public static final boolean[] VALID_NAMES = new boolean[127];
    protected boolean fAllowJavaEncodings;
    protected int fBufferSize;
    protected Entity.ScannedEntity fCurrentEntity;
    protected XMLEntityManager fEntityManager;
    protected XMLErrorReporter fErrorReporter;
    protected PropertyManager fPropertyManager;
    protected SymbolTable fSymbolTable;
    boolean isExternal;
    private Vector listeners;
    boolean whiteSpaceInfoNeeded;
    int whiteSpaceLen;
    int[] whiteSpaceLookup;

    static {
        for (int i = 65; i <= 90; i++) {
            VALID_NAMES[i] = true;
        }
        for (int i2 = 97; i2 <= 122; i2++) {
            VALID_NAMES[i2] = true;
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            VALID_NAMES[i3] = true;
        }
        boolean[] zArr = VALID_NAMES;
        zArr[45] = true;
        zArr[46] = true;
        zArr[58] = true;
        zArr[95] = true;
    }

    public XMLEntityScanner() {
        this.fCurrentEntity = null;
        this.fBufferSize = 8192;
        this.listeners = new Vector();
        this.fSymbolTable = null;
        this.fErrorReporter = null;
        this.whiteSpaceLookup = new int[100];
        this.whiteSpaceLen = 0;
        this.whiteSpaceInfoNeeded = true;
        this.fPropertyManager = null;
        this.isExternal = false;
    }

    private void invokeListeners(int i) {
        for (int i2 = 0; i2 < this.listeners.size(); i2++) {
            ((XMLBufferListener) this.listeners.get(i2)).refresh(i);
        }
    }

    public boolean arrangeCapacity(int i) throws IOException {
        return arrangeCapacity(i, false);
    }

    public Reader createReader(InputStream inputStream, String str, Boolean bool) throws IOException {
        if (str == null) {
            str = "UTF-8";
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        if (upperCase.equals("UTF-8")) {
            return new UTF8Reader(inputStream, this.fCurrentEntity.fBufferSize, this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.fErrorReporter.getLocale());
        }
        if (upperCase.equals("US-ASCII")) {
            return new ASCIIReader(inputStream, this.fCurrentEntity.fBufferSize, this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.fErrorReporter.getLocale());
        }
        if (upperCase.equals("ISO-10646-UCS-4")) {
            if (bool != null) {
                return bool.booleanValue() ? new UCSReader(inputStream, (short) 8) : new UCSReader(inputStream, (short) 4);
            }
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingByteOrderUnsupported", new Object[]{str}, (short) 2);
        }
        if (upperCase.equals("ISO-10646-UCS-2")) {
            if (bool != null) {
                return bool.booleanValue() ? new UCSReader(inputStream, (short) 2) : new UCSReader(inputStream, (short) 1);
            }
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingByteOrderUnsupported", new Object[]{str}, (short) 2);
        }
        boolean isValidIANAEncoding = XMLChar.isValidIANAEncoding(str);
        boolean isValidJavaEncoding = XMLChar.isValidJavaEncoding(str);
        if (!isValidIANAEncoding || (this.fAllowJavaEncodings && !isValidJavaEncoding)) {
            this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingDeclInvalid", new Object[]{str}, (short) 2);
            str = "ISO-8859-1";
        }
        String iANA2JavaMapping = EncodingMap.getIANA2JavaMapping(upperCase);
        if (iANA2JavaMapping == null) {
            if (!this.fAllowJavaEncodings) {
                this.fErrorReporter.reportError("http://www.w3.org/TR/1998/REC-xml-19980210", "EncodingDeclInvalid", new Object[]{str}, (short) 2);
                str = StringUtils.f38416d;
            }
        } else {
            if (iANA2JavaMapping.equals("ASCII")) {
                return new ASCIIReader(inputStream, this.fBufferSize, this.fErrorReporter.getMessageFormatter("http://www.w3.org/TR/1998/REC-xml-19980210"), this.fErrorReporter.getLocale());
            }
            str = iANA2JavaMapping;
        }
        return new InputStreamReader(inputStream, str);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public String getBaseSystemId() {
        XMLResourceIdentifier xMLResourceIdentifier;
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null || (xMLResourceIdentifier = scannedEntity.entityLocation) == null) {
            return null;
        }
        return xMLResourceIdentifier.getExpandedSystemId();
    }

    public int getChar(int i) throws IOException {
        if (!arrangeCapacity(i + 1, false)) {
            return -1;
        }
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        return scannedEntity.f64126ch[scannedEntity.position + i];
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public int getCharacterOffset() {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity != null) {
            return scannedEntity.fTotalCountTillLastLoad + scannedEntity.position;
        }
        return -1;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public int getColumnNumber() {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity != null) {
            return scannedEntity.columnNumber;
        }
        return -1;
    }

    public Entity.ScannedEntity getCurrentEntity() {
        return this.fCurrentEntity;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public String getEncoding() {
        return this.fCurrentEntity.encoding;
    }

    public Object[] getEncodingName(byte[] bArr, int i) {
        if (i < 2) {
            return new Object[]{"UTF-8", null};
        }
        int i2 = bArr[0] & 255;
        int i3 = bArr[1] & 255;
        if (i2 == 254 && i3 == 255) {
            return new Object[]{"UTF-16BE", new Boolean(true)};
        }
        if (i2 == 255 && i3 == 254) {
            return new Object[]{"UTF-16LE", new Boolean(false)};
        }
        if (i < 3) {
            return new Object[]{"UTF-8", null};
        }
        int i4 = bArr[2] & 255;
        if ((i2 != 239 || i3 != 187 || i4 != 191) && i >= 4) {
            int i5 = bArr[3] & 255;
            return (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 60) ? new Object[]{"ISO-10646-UCS-4", new Boolean(true)} : (i2 == 60 && i3 == 0 && i4 == 0 && i5 == 0) ? new Object[]{"ISO-10646-UCS-4", new Boolean(false)} : (i2 == 0 && i3 == 0 && i4 == 60 && i5 == 0) ? new Object[]{"ISO-10646-UCS-4", null} : (i2 == 0 && i3 == 60 && i4 == 0 && i5 == 0) ? new Object[]{"ISO-10646-UCS-4", null} : (i2 == 0 && i3 == 60 && i4 == 0 && i5 == 63) ? new Object[]{"UTF-16BE", new Boolean(true)} : (i2 == 60 && i3 == 0 && i4 == 63 && i5 == 0) ? new Object[]{"UTF-16LE", new Boolean(false)} : (i2 == 76 && i3 == 111 && i4 == 167 && i5 == 148) ? new Object[]{"CP037", null} : new Object[]{"UTF-8", null};
        }
        return new Object[]{"UTF-8", null};
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public String getExpandedSystemId() {
        XMLResourceIdentifier xMLResourceIdentifier;
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null || (xMLResourceIdentifier = scannedEntity.entityLocation) == null) {
            return null;
        }
        return xMLResourceIdentifier.getExpandedSystemId();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public int getLineNumber() {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity != null) {
            return scannedEntity.lineNumber;
        }
        return -1;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public String getLiteralSystemId() {
        XMLResourceIdentifier xMLResourceIdentifier;
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null || (xMLResourceIdentifier = scannedEntity.entityLocation) == null) {
            return null;
        }
        return xMLResourceIdentifier.getLiteralSystemId();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public String getPublicId() {
        XMLResourceIdentifier xMLResourceIdentifier;
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity == null || (xMLResourceIdentifier = scannedEntity.entityLocation) == null) {
            return null;
        }
        return xMLResourceIdentifier.getPublicId();
    }

    public String getVersion() {
        return this.fCurrentEntity.version;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.XMLLocator
    public String getXMLVersion() {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity != null) {
            return scannedEntity.xmlVersion;
        }
        return null;
    }

    public boolean isExternal() {
        return this.fCurrentEntity.isExternal();
    }

    public boolean isSpace(char c) {
        return c == ' ' || c == '\n' || c == '\t' || c == '\r';
    }

    public final boolean load(int i, boolean z) throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        scannedEntity.fTotalCountTillLastLoad += scannedEntity.fLastCount;
        int read = scannedEntity.reader.read(scannedEntity.f64126ch, i, scannedEntity.mayReadChunks ? scannedEntity.f64126ch.length - i : 28);
        if (read != -1) {
            if (read == 0) {
                return false;
            }
            Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
            scannedEntity2.fLastCount = read;
            scannedEntity2.count = read + i;
            scannedEntity2.position = i;
            return false;
        }
        Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
        scannedEntity3.count = i;
        scannedEntity3.position = i;
        if (z) {
            this.fEntityManager.endEntity();
            Entity.ScannedEntity scannedEntity4 = this.fCurrentEntity;
            if (scannedEntity4 == null) {
                return true;
            }
            if (scannedEntity4.position == scannedEntity4.count) {
                load(0, true);
            }
        }
        return true;
    }

    public int peekChar() throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            invokeListeners(0);
            load(0, true);
        }
        Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char c = scannedEntity2.f64126ch[scannedEntity2.position];
        if (this.isExternal && c == '\r') {
            return 10;
        }
        return c;
    }

    public final void print() {
    }

    public void registerListener(XMLBufferListener xMLBufferListener) {
        if (this.listeners.contains(xMLBufferListener)) {
            return;
        }
        this.listeners.add(xMLBufferListener);
    }

    public void reset(PropertyManager propertyManager) {
        this.fSymbolTable = (SymbolTable) propertyManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) propertyManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fCurrentEntity = null;
        this.whiteSpaceLen = 0;
        this.whiteSpaceInfoNeeded = true;
        this.listeners.clear();
    }

    public int scanChar() throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            invokeListeners(0);
            load(0, true);
        }
        Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char[] cArr = scannedEntity2.f64126ch;
        int i = scannedEntity2.position;
        int i2 = i + 1;
        scannedEntity2.position = i2;
        char c = cArr[i];
        if (c == '\n' || (c == '\r' && this.isExternal)) {
            scannedEntity2.lineNumber++;
            scannedEntity2.columnNumber = 1;
            if (i2 == scannedEntity2.count) {
                invokeListeners(1);
                this.fCurrentEntity.f64126ch[0] = c;
                load(1, false);
            }
            if (c == '\r' && this.isExternal) {
                Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
                char[] cArr2 = scannedEntity3.f64126ch;
                int i3 = scannedEntity3.position;
                int i4 = i3 + 1;
                scannedEntity3.position = i4;
                if (cArr2[i3] != '\n') {
                    scannedEntity3.position = i4 - 1;
                }
                c = '\n';
            }
        }
        this.fCurrentEntity.columnNumber++;
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ac, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ac A[EDGE_INSN: B:56:0x00ac->B:57:0x00ac BREAK  A[LOOP:1: B:31:0x003f->B:58:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[LOOP:1: B:31:0x003f->B:58:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanContent(com.sun.org.apache.xerces.internal.xni.XMLString r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLEntityScanner.scanContent(com.sun.org.apache.xerces.internal.xni.XMLString):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0179, code lost:
    
        r12.position = r15 - 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00ef A[EDGE_INSN: B:87:0x00ef->B:72:0x00ef BREAK  A[LOOP:3: B:61:0x007e->B:88:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[LOOP:3: B:61:0x007e->B:88:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanData(java.lang.String r17, com.sun.org.apache.xerces.internal.util.XMLStringBuffer r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLEntityScanner.scanData(java.lang.String, com.sun.org.apache.xerces.internal.util.XMLStringBuffer):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x00b7 A[EDGE_INSN: B:89:0x00b7->B:75:0x00b7 BREAK  A[LOOP:1: B:64:0x0049->B:90:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:? A[LOOP:1: B:64:0x0049->B:90:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanLiteral(int r12, com.sun.org.apache.xerces.internal.xni.XMLString r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLEntityScanner.scanLiteral(int, com.sun.org.apache.xerces.internal.xni.XMLString):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ae A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String scanName() throws java.io.IOException {
        /*
            r6 = this;
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            int r1 = r0.position
            int r0 = r0.count
            r2 = 1
            r3 = 0
            if (r1 != r0) goto L10
            r6.invokeListeners(r3)
            r6.load(r3, r2)
        L10:
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            int r1 = r0.position
            char[] r0 = r0.f64126ch
            char r0 = r0[r1]
            boolean r0 = com.sun.org.apache.xerces.internal.util.XMLChar.isNameStart(r0)
            if (r0 == 0) goto L98
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            int r4 = r0.position
            int r4 = r4 + r2
            r0.position = r4
            int r0 = r0.count
            if (r4 != r0) goto L4b
            r6.invokeListeners(r2)
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            char[] r0 = r0.f64126ch
            char r1 = r0[r1]
            r0[r3] = r1
            boolean r0 = r6.load(r2, r3)
            if (r0 == 0) goto L4a
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            int r1 = r0.columnNumber
            int r1 = r1 + r2
            r0.columnNumber = r1
            com.sun.org.apache.xerces.internal.util.SymbolTable r6 = r6.fSymbolTable
            char[] r0 = r0.f64126ch
            java.lang.String r6 = r6.addSymbol(r0, r3, r2)
            return r6
        L4a:
            r1 = r3
        L4b:
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            char[] r4 = r0.f64126ch
            int r0 = r0.position
            char r0 = r4[r0]
            r4 = 127(0x7f, float:1.78E-43)
            if (r0 >= r4) goto L5c
            boolean[] r4 = com.sun.org.apache.xerces.internal.impl.XMLEntityScanner.VALID_NAMES
            boolean r0 = r4[r0]
            goto L60
        L5c:
            boolean r0 = com.sun.org.apache.xerces.internal.util.XMLChar.isName(r0)
        L60:
            if (r0 != 0) goto L63
            goto L98
        L63:
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            int r4 = r0.position
            int r4 = r4 + r2
            r0.position = r4
            int r0 = r0.count
            if (r4 != r0) goto L4b
            int r4 = r4 - r1
            r6.invokeListeners(r4)
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            int r5 = r0.fBufferSize
            if (r4 != r5) goto L8c
            int r5 = r5 * 2
            char[] r5 = new char[r5]
            char[] r0 = r0.f64126ch
            java.lang.System.arraycopy(r0, r1, r5, r3, r4)
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            r0.f64126ch = r5
            int r1 = r0.fBufferSize
            int r1 = r1 * 2
            r0.fBufferSize = r1
            goto L91
        L8c:
            char[] r0 = r0.f64126ch
            java.lang.System.arraycopy(r0, r1, r0, r3, r4)
        L91:
            boolean r0 = r6.load(r4, r3)
            if (r0 == 0) goto L4a
            goto L99
        L98:
            r3 = r1
        L99:
            com.sun.xml.internal.stream.Entity$ScannedEntity r0 = r6.fCurrentEntity
            int r1 = r0.position
            int r1 = r1 - r3
            int r2 = r0.columnNumber
            int r2 = r2 + r1
            r0.columnNumber = r2
            if (r1 <= 0) goto Lae
            com.sun.org.apache.xerces.internal.util.SymbolTable r6 = r6.fSymbolTable
            char[] r0 = r0.f64126ch
            java.lang.String r6 = r6.addSymbol(r0, r3, r1)
            goto Laf
        Lae:
            r6 = 0
        Laf:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xerces.internal.impl.XMLEntityScanner.scanName():java.lang.String");
    }

    public String scanNmtoken() throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        int i = 0;
        if (scannedEntity.position == scannedEntity.count) {
            invokeListeners(0);
            load(0, true);
        }
        int i2 = this.fCurrentEntity.position;
        while (true) {
            Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
            char c = scannedEntity2.f64126ch[scannedEntity2.position];
            if (!(c < 127 ? VALID_NAMES[c] : XMLChar.isName(c))) {
                i = i2;
                break;
            }
            Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
            int i3 = scannedEntity3.position + 1;
            scannedEntity3.position = i3;
            if (i3 == scannedEntity3.count) {
                int i4 = i3 - i2;
                invokeListeners(i4);
                Entity.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                int i5 = scannedEntity4.fBufferSize;
                if (i4 == i5) {
                    char[] cArr = new char[i5 * 2];
                    System.arraycopy(scannedEntity4.f64126ch, i2, cArr, 0, i4);
                    Entity.ScannedEntity scannedEntity5 = this.fCurrentEntity;
                    scannedEntity5.f64126ch = cArr;
                    scannedEntity5.fBufferSize *= 2;
                } else {
                    char[] cArr2 = scannedEntity4.f64126ch;
                    System.arraycopy(cArr2, i2, cArr2, 0, i4);
                }
                if (load(i4, false)) {
                    break;
                }
                i2 = 0;
            }
        }
        Entity.ScannedEntity scannedEntity6 = this.fCurrentEntity;
        int i6 = scannedEntity6.position - i;
        scannedEntity6.columnNumber += i6;
        if (i6 > 0) {
            return this.fSymbolTable.addSymbol(scannedEntity6.f64126ch, i, i6);
        }
        return null;
    }

    public boolean scanQName(QName qName) throws IOException {
        String str;
        String str2;
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            invokeListeners(0);
            load(0, true);
        }
        Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        int i = scannedEntity2.position;
        if (XMLChar.isNameStart(scannedEntity2.f64126ch[i])) {
            Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
            int i2 = scannedEntity3.position + 1;
            scannedEntity3.position = i2;
            if (i2 == scannedEntity3.count) {
                invokeListeners(1);
                char[] cArr = this.fCurrentEntity.f64126ch;
                cArr[0] = cArr[i];
                if (load(1, false)) {
                    Entity.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                    scannedEntity4.columnNumber++;
                    String addSymbol = this.fSymbolTable.addSymbol(scannedEntity4.f64126ch, 0, 1);
                    qName.setValues(null, addSymbol, addSymbol, null);
                    return true;
                }
                i = 0;
            }
            int i3 = -1;
            while (true) {
                Entity.ScannedEntity scannedEntity5 = this.fCurrentEntity;
                char c = scannedEntity5.f64126ch[scannedEntity5.position];
                if (!(c < 127 ? VALID_NAMES[c] : XMLChar.isName(c))) {
                    break;
                }
                if (c == ':') {
                    if (i3 != -1) {
                        break;
                    }
                    i3 = this.fCurrentEntity.position;
                }
                Entity.ScannedEntity scannedEntity6 = this.fCurrentEntity;
                int i4 = scannedEntity6.position + 1;
                scannedEntity6.position = i4;
                if (i4 == scannedEntity6.count) {
                    int i5 = i4 - i;
                    invokeListeners(i5);
                    Entity.ScannedEntity scannedEntity7 = this.fCurrentEntity;
                    int i6 = scannedEntity7.fBufferSize;
                    if (i5 == i6) {
                        char[] cArr2 = new char[i6 * 2];
                        System.arraycopy(scannedEntity7.f64126ch, i, cArr2, 0, i5);
                        Entity.ScannedEntity scannedEntity8 = this.fCurrentEntity;
                        scannedEntity8.f64126ch = cArr2;
                        scannedEntity8.fBufferSize *= 2;
                    } else {
                        char[] cArr3 = scannedEntity7.f64126ch;
                        System.arraycopy(cArr3, i, cArr3, 0, i5);
                    }
                    if (i3 != -1) {
                        i3 -= i;
                    }
                    if (load(i5, false)) {
                        i = 0;
                        break;
                    }
                    i = 0;
                }
            }
            Entity.ScannedEntity scannedEntity9 = this.fCurrentEntity;
            int i7 = scannedEntity9.position - i;
            scannedEntity9.columnNumber += i7;
            if (i7 > 0) {
                String addSymbol2 = this.fSymbolTable.addSymbol(scannedEntity9.f64126ch, i, i7);
                if (i3 != -1) {
                    int i8 = i3 - i;
                    str2 = this.fSymbolTable.addSymbol(this.fCurrentEntity.f64126ch, i, i8);
                    str = this.fSymbolTable.addSymbol(this.fCurrentEntity.f64126ch, i3 + 1, (i7 - i8) - 1);
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

    public void setBaseSystemId(String str) {
    }

    public void setBufferSize(int i) {
        this.fBufferSize = i;
    }

    public void setColumnNumber(int i) {
    }

    public void setCurrentEntity(Entity.ScannedEntity scannedEntity) {
        this.fCurrentEntity = scannedEntity;
        if (scannedEntity != null) {
            this.isExternal = scannedEntity.isExternal();
        }
    }

    public void setEncoding(String str) throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.stream != null) {
            String str2 = scannedEntity.encoding;
            if (str2 == null || !str2.equals(str)) {
                String str3 = this.fCurrentEntity.encoding;
                if (str3 != null && str3.startsWith("UTF-16")) {
                    String upperCase = str.toUpperCase(Locale.ENGLISH);
                    if (upperCase.equals("UTF-16")) {
                        return;
                    }
                    if (upperCase.equals("ISO-10646-UCS-4")) {
                        if (this.fCurrentEntity.encoding.equals("UTF-16BE")) {
                            this.fCurrentEntity.reader = new UCSReader(this.fCurrentEntity.stream, (short) 8);
                            return;
                        } else {
                            this.fCurrentEntity.reader = new UCSReader(this.fCurrentEntity.stream, (short) 4);
                            return;
                        }
                    }
                    if (upperCase.equals("ISO-10646-UCS-2")) {
                        if (this.fCurrentEntity.encoding.equals("UTF-16BE")) {
                            this.fCurrentEntity.reader = new UCSReader(this.fCurrentEntity.stream, (short) 2);
                            return;
                        } else {
                            this.fCurrentEntity.reader = new UCSReader(this.fCurrentEntity.stream, (short) 1);
                            return;
                        }
                    }
                }
                Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
                scannedEntity2.reader = createReader(scannedEntity2.stream, str, null);
                this.fCurrentEntity.encoding = str;
            }
        }
    }

    public void setExpandedSystemId(String str) {
    }

    public void setLineNumber(int i) {
    }

    public void setLiteralSystemId(String str) {
    }

    public void setPublicId(String str) {
    }

    public void setVersion(String str) {
        this.fCurrentEntity.version = str;
    }

    public void setXMLVersion(String str) {
        this.fCurrentEntity.xmlVersion = str;
    }

    public boolean skipChar(int i) throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            invokeListeners(0);
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
        if (i != 10 || c != '\r' || !this.isExternal) {
            return false;
        }
        if (i2 == scannedEntity2.count) {
            invokeListeners(1);
            this.fCurrentEntity.f64126ch[0] = c;
            load(1, false);
        }
        Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
        int i3 = scannedEntity3.position + 1;
        scannedEntity3.position = i3;
        if (scannedEntity3.f64126ch[i3] == '\n') {
            scannedEntity3.position = i3 + 1;
        }
        scannedEntity3.lineNumber++;
        scannedEntity3.columnNumber = 1;
        return true;
    }

    public boolean skipDeclSpaces() throws IOException {
        boolean z;
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            load(0, true);
        }
        Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        char c = scannedEntity2.f64126ch[scannedEntity2.position];
        if (!XMLChar.isSpace(c)) {
            return false;
        }
        boolean isExternal = this.fCurrentEntity.isExternal();
        do {
            if (c == '\n' || (isExternal && c == '\r')) {
                Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
                scannedEntity3.lineNumber++;
                scannedEntity3.columnNumber = 1;
                if (scannedEntity3.position == scannedEntity3.count - 1) {
                    scannedEntity3.f64126ch[0] = c;
                    z = load(1, true);
                    if (!z) {
                        this.fCurrentEntity.position = 0;
                    }
                } else {
                    z = false;
                }
                if (c == '\r' && isExternal) {
                    Entity.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                    char[] cArr = scannedEntity4.f64126ch;
                    int i = scannedEntity4.position + 1;
                    scannedEntity4.position = i;
                    if (cArr[i] != '\n') {
                        scannedEntity4.position = i - 1;
                    }
                }
            } else {
                this.fCurrentEntity.columnNumber++;
                z = false;
            }
            if (!z) {
                this.fCurrentEntity.position++;
            }
            Entity.ScannedEntity scannedEntity5 = this.fCurrentEntity;
            if (scannedEntity5.position == scannedEntity5.count) {
                load(0, true);
            }
            Entity.ScannedEntity scannedEntity6 = this.fCurrentEntity;
            c = scannedEntity6.f64126ch[scannedEntity6.position];
        } while (XMLChar.isSpace(c));
        return true;
    }

    public boolean skipSpaces() throws IOException {
        boolean z;
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.position == scannedEntity.count) {
            invokeListeners(0);
            load(0, true);
        }
        Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
        if (scannedEntity2 == null) {
            return false;
        }
        char c = scannedEntity2.f64126ch[scannedEntity2.position];
        if (!XMLChar.isSpace(c)) {
            return false;
        }
        do {
            if (c == '\n' || (this.isExternal && c == '\r')) {
                Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
                scannedEntity3.lineNumber++;
                scannedEntity3.columnNumber = 1;
                if (scannedEntity3.position == scannedEntity3.count - 1) {
                    invokeListeners(0);
                    this.fCurrentEntity.f64126ch[0] = c;
                    z = load(1, true);
                    if (!z) {
                        this.fCurrentEntity.position = 0;
                    } else if (this.fCurrentEntity == null) {
                        return true;
                    }
                } else {
                    z = false;
                }
                if (c == '\r' && this.isExternal) {
                    Entity.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                    char[] cArr = scannedEntity4.f64126ch;
                    int i = scannedEntity4.position + 1;
                    scannedEntity4.position = i;
                    if (cArr[i] != '\n') {
                        scannedEntity4.position = i - 1;
                    }
                }
            } else {
                this.fCurrentEntity.columnNumber++;
                z = false;
            }
            if (!z) {
                this.fCurrentEntity.position++;
            }
            Entity.ScannedEntity scannedEntity5 = this.fCurrentEntity;
            if (scannedEntity5.position == scannedEntity5.count) {
                invokeListeners(0);
                load(0, true);
                if (this.fCurrentEntity == null) {
                    return true;
                }
            }
            Entity.ScannedEntity scannedEntity6 = this.fCurrentEntity;
            c = scannedEntity6.f64126ch[scannedEntity6.position];
        } while (XMLChar.isSpace(c));
        return true;
    }

    public boolean skipString(String str) throws IOException {
        int length = str.length();
        if (arrangeCapacity(length, false)) {
            int i = this.fCurrentEntity.position;
            int i2 = (i + length) - 1;
            int i3 = length - 1;
            while (true) {
                int i4 = i3 - 1;
                char charAt = str.charAt(i3);
                Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
                if (charAt != scannedEntity.f64126ch[i2]) {
                    break;
                }
                int i5 = i2 - 1;
                if (i2 == i) {
                    scannedEntity.position += length;
                    scannedEntity.columnNumber += length;
                    return true;
                }
                i2 = i5;
                i3 = i4;
            }
        }
        return false;
    }

    public boolean arrangeCapacity(int i, boolean z) throws IOException {
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        if (scannedEntity.count - scannedEntity.position >= i) {
            return true;
        }
        while (true) {
            Entity.ScannedEntity scannedEntity2 = this.fCurrentEntity;
            int i2 = scannedEntity2.count;
            int i3 = scannedEntity2.position;
            if (i2 - i3 >= i) {
                break;
            }
            if (scannedEntity2.f64126ch.length - i3 < i) {
                invokeListeners(0);
                Entity.ScannedEntity scannedEntity3 = this.fCurrentEntity;
                char[] cArr = scannedEntity3.f64126ch;
                int i4 = scannedEntity3.position;
                System.arraycopy(cArr, i4, cArr, 0, scannedEntity3.count - i4);
                Entity.ScannedEntity scannedEntity4 = this.fCurrentEntity;
                scannedEntity4.count -= scannedEntity4.position;
                scannedEntity4.position = 0;
            }
            Entity.ScannedEntity scannedEntity5 = this.fCurrentEntity;
            int i5 = scannedEntity5.count;
            int i6 = scannedEntity5.position;
            if (i5 - i6 < i) {
                invokeListeners(i6);
                boolean load = load(this.fCurrentEntity.count, z);
                this.fCurrentEntity.position = i6;
                if (load) {
                    break;
                }
            }
        }
        Entity.ScannedEntity scannedEntity6 = this.fCurrentEntity;
        return scannedEntity6.count - scannedEntity6.position >= i;
    }

    public void reset(XMLComponentManager xMLComponentManager) throws XMLConfigurationException {
        try {
            this.fAllowJavaEncodings = xMLComponentManager.getFeature(ALLOW_JAVA_ENCODINGS);
        } catch (XMLConfigurationException unused) {
            this.fAllowJavaEncodings = false;
        }
        this.fSymbolTable = (SymbolTable) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/symbol-table");
        this.fErrorReporter = (XMLErrorReporter) xMLComponentManager.getProperty("http://apache.org/xml/properties/internal/error-reporter");
        this.fCurrentEntity = null;
        this.whiteSpaceLen = 0;
        this.whiteSpaceInfoNeeded = true;
        this.listeners.clear();
    }

    public boolean skipString(char[] cArr) throws IOException {
        int length = cArr.length;
        if (!arrangeCapacity(length, false)) {
            return false;
        }
        int i = this.fCurrentEntity.position;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            if (this.fCurrentEntity.f64126ch[i] != cArr[i2]) {
                return false;
            }
            i2++;
            i = i3;
        }
        Entity.ScannedEntity scannedEntity = this.fCurrentEntity;
        scannedEntity.position += length;
        scannedEntity.columnNumber += length;
        return true;
    }

    public XMLEntityScanner(PropertyManager propertyManager, XMLEntityManager xMLEntityManager) {
        this.fCurrentEntity = null;
        this.fBufferSize = 8192;
        this.listeners = new Vector();
        this.fSymbolTable = null;
        this.fErrorReporter = null;
        this.whiteSpaceLookup = new int[100];
        this.whiteSpaceLen = 0;
        this.whiteSpaceInfoNeeded = true;
        this.fPropertyManager = null;
        this.isExternal = false;
        this.fEntityManager = xMLEntityManager;
        reset(propertyManager);
    }

    public void reset(SymbolTable symbolTable, XMLEntityManager xMLEntityManager, XMLErrorReporter xMLErrorReporter) {
        this.fCurrentEntity = null;
        this.fSymbolTable = symbolTable;
        this.fEntityManager = xMLEntityManager;
        this.fErrorReporter = xMLErrorReporter;
    }
}
