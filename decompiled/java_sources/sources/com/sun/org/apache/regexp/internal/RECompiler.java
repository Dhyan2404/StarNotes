package com.sun.org.apache.regexp.internal;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Hashtable;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* loaded from: classes10.dex */
public class RECompiler {
    static final int ESC_BACKREF = 1048575;
    static final int ESC_CLASS = 1048573;
    static final int ESC_COMPLEX = 1048574;
    static final int ESC_MASK = 1048560;
    static final int NODE_NORMAL = 0;
    static final int NODE_NULLABLE = 1;
    static final int NODE_TOPLEVEL = 2;
    static final int bracketUnbounded = -1;
    static Hashtable hashPOSIX;
    int idx;
    int len;
    int parens;
    String pattern;
    int maxBrackets = 10;
    int brackets = 0;
    int[] bracketStart = null;
    int[] bracketEnd = null;
    int[] bracketMin = null;
    int[] bracketOpt = null;
    char[] instruction = new char[128];
    int lenInstruction = 0;

    static {
        Hashtable hashtable = new Hashtable();
        hashPOSIX = hashtable;
        hashtable.put("alnum", new Character('w'));
        hashPOSIX.put("alpha", new Character('a'));
        hashPOSIX.put("blank", new Character('b'));
        hashPOSIX.put("cntrl", new Character('c'));
        hashPOSIX.put(Constants.ATTRNAME_DIGIT, new Character('d'));
        hashPOSIX.put("graph", new Character('g'));
        hashPOSIX.put("lower", new Character('l'));
        hashPOSIX.put("print", new Character('p'));
        hashPOSIX.put("punct", new Character(PublicSuffixDatabase.f103895g));
        hashPOSIX.put("space", new Character('s'));
        hashPOSIX.put("upper", new Character('u'));
        hashPOSIX.put("xdigit", new Character('x'));
        hashPOSIX.put("javastart", new Character('j'));
        hashPOSIX.put("javapart", new Character('k'));
    }

    public void allocBrackets() {
        if (this.bracketStart == null) {
            int i = this.maxBrackets;
            this.bracketStart = new int[i];
            this.bracketEnd = new int[i];
            this.bracketMin = new int[i];
            this.bracketOpt = new int[i];
            for (int i2 = 0; i2 < this.maxBrackets; i2++) {
                int[] iArr = this.bracketStart;
                int[] iArr2 = this.bracketEnd;
                int[] iArr3 = this.bracketMin;
                this.bracketOpt[i2] = -1;
                iArr3[i2] = -1;
                iArr2[i2] = -1;
                iArr[i2] = -1;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0091, code lost:
    
        if (r1 != 0) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0093, code lost:
    
        syntaxError("Missing operand to closure");
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x0064. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int atom() throws com.sun.org.apache.regexp.internal.RESyntaxException {
        /*
            r8 = this;
            r0 = 65
            r1 = 0
            int r0 = r8.node(r0, r1)
        L7:
            int r2 = r8.idx
            int r3 = r8.len
            if (r2 >= r3) goto L98
            int r4 = r2 + 1
            r5 = 123(0x7b, float:1.72E-43)
            r6 = 63
            if (r4 >= r3) goto L4c
            java.lang.String r3 = r8.pattern
            int r2 = r2 + 1
            char r2 = r3.charAt(r2)
            java.lang.String r3 = r8.pattern
            int r4 = r8.idx
            char r3 = r3.charAt(r4)
            r4 = 92
            if (r3 != r4) goto L3c
            int r3 = r8.idx
            r8.escape()
            int r4 = r8.idx
            int r7 = r8.len
            if (r4 >= r7) goto L3a
            java.lang.String r2 = r8.pattern
            char r2 = r2.charAt(r4)
        L3a:
            r8.idx = r3
        L3c:
            r3 = 42
            if (r2 == r3) goto L49
            r3 = 43
            if (r2 == r3) goto L49
            if (r2 == r6) goto L49
            if (r2 == r5) goto L49
            goto L4c
        L49:
            if (r1 == 0) goto L4c
            goto L98
        L4c:
            java.lang.String r2 = r8.pattern
            int r3 = r8.idx
            char r2 = r2.charAt(r3)
            r3 = 36
            if (r2 == r3) goto L98
            r3 = 46
            if (r2 == r3) goto L98
            if (r2 == r6) goto L91
            if (r2 == r5) goto L91
            r3 = 124(0x7c, float:1.74E-43)
            if (r2 == r3) goto L98
            switch(r2) {
                case 40: goto L98;
                case 41: goto L98;
                case 42: goto L91;
                case 43: goto L91;
                default: goto L67;
            }
        L67:
            switch(r2) {
                case 91: goto L98;
                case 92: goto L7c;
                case 93: goto L98;
                case 94: goto L98;
                default: goto L6a;
            }
        L6a:
            java.lang.String r2 = r8.pattern
            int r3 = r8.idx
            int r4 = r3 + 1
            r8.idx = r4
            char r2 = r2.charAt(r3)
            r8.emit(r2)
        L79:
            int r1 = r1 + 1
            goto L7
        L7c:
            int r2 = r8.idx
            int r3 = r8.escape()
            r4 = 1048560(0xffff0, float:1.469346E-39)
            r5 = r3 & r4
            if (r5 != r4) goto L8c
            r8.idx = r2
            goto L98
        L8c:
            char r2 = (char) r3
            r8.emit(r2)
            goto L79
        L91:
            if (r1 != 0) goto L98
            java.lang.String r2 = "Missing operand to closure"
            r8.syntaxError(r2)
        L98:
            if (r1 != 0) goto L9d
            r8.internalError()
        L9d:
            char[] r8 = r8.instruction
            int r2 = r0 + 1
            char r1 = (char) r1
            r8[r2] = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.regexp.internal.RECompiler.atom():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a0, code lost:
    
        if (r7.charAt(r2) != ',') goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0014, code lost:
    
        if (r2.charAt(r1) != '{') goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bracket() throws com.sun.org.apache.regexp.internal.RESyntaxException {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.regexp.internal.RECompiler.bracket():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
    
        node('N', 0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int branch(int[] r11) throws com.sun.org.apache.regexp.internal.RESyntaxException {
        /*
            r10 = this;
            r0 = 124(0x7c, float:1.74E-43)
            r1 = 0
            int r2 = r10.node(r0, r1)
            r3 = 1
            int[] r4 = new int[r3]
            r5 = -1
            r7 = r3
            r6 = r5
        Ld:
            int r8 = r10.idx
            int r9 = r10.len
            if (r8 >= r9) goto L39
            java.lang.String r9 = r10.pattern
            char r8 = r9.charAt(r8)
            if (r8 == r0) goto L39
            java.lang.String r8 = r10.pattern
            int r9 = r10.idx
            char r8 = r8.charAt(r9)
            r9 = 41
            if (r8 == r9) goto L39
            r4[r1] = r1
            int r8 = r10.closure(r4)
            r9 = r4[r1]
            if (r9 != 0) goto L32
            r7 = r1
        L32:
            if (r6 == r5) goto L37
            r10.setNextOfEnd(r6, r8)
        L37:
            r6 = r8
            goto Ld
        L39:
            if (r6 != r5) goto L40
            r0 = 78
            r10.node(r0, r1)
        L40:
            if (r7 == 0) goto L47
            r10 = r11[r1]
            r10 = r10 | r3
            r11[r1] = r10
        L47:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.regexp.internal.RECompiler.branch(int[]):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0025, code lost:
    
        if (r3.charAt(r1) == ']') goto L9;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:70:0x011b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int characterClass() throws com.sun.org.apache.regexp.internal.RESyntaxException {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.regexp.internal.RECompiler.characterClass():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
    
        if (r4 != '{') goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0192  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int closure(int[] r14) throws com.sun.org.apache.regexp.internal.RESyntaxException {
        /*
            Method dump skipped, instructions count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.regexp.internal.RECompiler.closure(int[]):int");
    }

    public REProgram compile(String str) throws RESyntaxException {
        this.pattern = str;
        this.len = str.length();
        this.idx = 0;
        this.lenInstruction = 0;
        this.parens = 1;
        this.brackets = 0;
        expr(new int[]{2});
        int i = this.idx;
        if (i != this.len) {
            if (str.charAt(i) == ')') {
                syntaxError("Unmatched close paren");
            }
            syntaxError("Unexpected input remains");
        }
        int i2 = this.lenInstruction;
        char[] cArr = new char[i2];
        System.arraycopy(this.instruction, 0, cArr, 0, i2);
        return new REProgram(this.parens, cArr);
    }

    public void emit(char c) {
        ensure(1);
        char[] cArr = this.instruction;
        int i = this.lenInstruction;
        this.lenInstruction = i + 1;
        cArr[i] = c;
    }

    public void ensure(int i) {
        int length = this.instruction.length;
        if (this.lenInstruction + i < length) {
            return;
        }
        while (true) {
            int i2 = this.lenInstruction;
            if (i2 + i < length) {
                char[] cArr = new char[length];
                System.arraycopy(this.instruction, 0, cArr, 0, i2);
                this.instruction = cArr;
                return;
            }
            length *= 2;
        }
    }

    public int escape() throws RESyntaxException {
        if (this.pattern.charAt(this.idx) != '\\') {
            internalError();
        }
        if (this.idx + 1 == this.len) {
            syntaxError("Escape terminates string");
        }
        int i = this.idx + 2;
        this.idx = i;
        char charAt = this.pattern.charAt(i - 1);
        if (charAt == 'B') {
            return ESC_COMPLEX;
        }
        if (charAt == 'D' || charAt == 'S' || charAt == 'W') {
            return ESC_CLASS;
        }
        if (charAt == 'b') {
            return ESC_COMPLEX;
        }
        if (charAt == 'd') {
            return ESC_CLASS;
        }
        if (charAt == 'f') {
            return 12;
        }
        if (charAt == 'n') {
            return 10;
        }
        if (charAt == 'w') {
            return ESC_CLASS;
        }
        if (charAt != 'x') {
            switch (charAt) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    int i2 = this.idx;
                    if ((i2 >= this.len || !Character.isDigit(this.pattern.charAt(i2))) && charAt != '0') {
                        return 1048575;
                    }
                    int i3 = charAt - '0';
                    int i4 = this.idx;
                    if (i4 >= this.len || !Character.isDigit(this.pattern.charAt(i4))) {
                        return i3;
                    }
                    String str = this.pattern;
                    int i5 = this.idx;
                    this.idx = i5 + 1;
                    int charAt2 = (i3 << 3) + (str.charAt(i5) - '0');
                    int i6 = this.idx;
                    if (i6 >= this.len || !Character.isDigit(this.pattern.charAt(i6))) {
                        return charAt2;
                    }
                    String str2 = this.pattern;
                    int i7 = this.idx;
                    this.idx = i7 + 1;
                    return (charAt2 << 3) + (str2.charAt(i7) - '0');
                default:
                    switch (charAt) {
                        case 'r':
                            return 13;
                        case 's':
                            return ESC_CLASS;
                        case 't':
                            return 9;
                        case 'u':
                            break;
                        default:
                            return charAt;
                    }
            }
        }
        int i8 = charAt == 'u' ? 4 : 2;
        int i9 = 0;
        while (true) {
            int i10 = this.idx;
            if (i10 < this.len) {
                int i11 = i8 - 1;
                if (i8 > 0) {
                    char charAt3 = this.pattern.charAt(i10);
                    if (charAt3 < '0' || charAt3 > '9') {
                        char lowerCase = Character.toLowerCase(charAt3);
                        if (lowerCase < 'a' || lowerCase > 'f') {
                            syntaxError("Expected " + i11 + " hexadecimal digits after \\" + charAt);
                        } else {
                            i9 = (i9 << 4) + (lowerCase - 'a') + 10;
                        }
                    } else {
                        i9 = ((i9 << 4) + charAt3) - 48;
                    }
                    this.idx++;
                    i8 = i11;
                }
            }
        }
        return i9;
    }

    public int expr(int[] iArr) throws RESyntaxException {
        int i;
        int node;
        int i2 = this.parens;
        char c = 2;
        if ((iArr[0] & 2) == 0 && this.pattern.charAt(this.idx) == '(') {
            int i3 = this.idx;
            if (i3 + 2 < this.len && this.pattern.charAt(i3 + 1) == '?' && this.pattern.charAt(this.idx + 2) == ':') {
                this.idx += 3;
                i = node('<', 0);
            } else {
                this.idx++;
                int i4 = this.parens;
                this.parens = i4 + 1;
                i = node('(', i4);
                c = 1;
            }
        } else {
            i = -1;
            c = 65535;
        }
        iArr[0] = iArr[0] & (-3);
        int branch = branch(iArr);
        if (i == -1) {
            i = branch;
        } else {
            setNextOfEnd(i, branch);
        }
        while (true) {
            int i5 = this.idx;
            if (i5 >= this.len || this.pattern.charAt(i5) != '|') {
                break;
            }
            this.idx++;
            setNextOfEnd(i, branch(iArr));
        }
        if (c > 0) {
            int i6 = this.idx;
            if (i6 >= this.len || this.pattern.charAt(i6) != ')') {
                syntaxError("Missing close paren");
            } else {
                this.idx++;
            }
            node = c == 1 ? node(')', i2) : node('>', 0);
        } else {
            node = node('E', 0);
        }
        setNextOfEnd(i, node);
        char c2 = this.instruction[i + 2];
        int i7 = i;
        while (c2 != 0 && i7 < this.lenInstruction) {
            if (this.instruction[i7 + 0] == '|') {
                setNextOfEnd(i7 + 3, node);
            }
            c2 = this.instruction[i7 + 2];
            i7 += c2;
        }
        return i;
    }

    public void internalError() throws Error {
        throw new Error("Internal error!");
    }

    public int node(char c, int i) {
        ensure(3);
        char[] cArr = this.instruction;
        int i2 = this.lenInstruction;
        cArr[i2 + 0] = c;
        cArr[i2 + 1] = (char) i;
        cArr[i2 + 2] = 0;
        int i3 = i2 + 3;
        this.lenInstruction = i3;
        return i3 - 3;
    }

    public void nodeInsert(char c, int i, int i2) {
        ensure(3);
        char[] cArr = this.instruction;
        System.arraycopy(cArr, i2, cArr, i2 + 3, this.lenInstruction - i2);
        char[] cArr2 = this.instruction;
        cArr2[i2 + 0] = c;
        cArr2[i2 + 1] = (char) i;
        cArr2[i2 + 2] = 0;
        this.lenInstruction += 3;
    }

    public synchronized void reallocBrackets() {
        if (this.bracketStart == null) {
            allocBrackets();
        }
        int i = this.maxBrackets * 2;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        int[] iArr3 = new int[i];
        int[] iArr4 = new int[i];
        for (int i2 = this.brackets; i2 < i; i2++) {
            iArr4[i2] = -1;
            iArr3[i2] = -1;
            iArr2[i2] = -1;
            iArr[i2] = -1;
        }
        System.arraycopy(this.bracketStart, 0, iArr, 0, this.brackets);
        System.arraycopy(this.bracketEnd, 0, iArr2, 0, this.brackets);
        System.arraycopy(this.bracketMin, 0, iArr3, 0, this.brackets);
        System.arraycopy(this.bracketOpt, 0, iArr4, 0, this.brackets);
        this.bracketStart = iArr;
        this.bracketEnd = iArr2;
        this.bracketMin = iArr3;
        this.bracketOpt = iArr4;
        this.maxBrackets = i;
    }

    public void setNextOfEnd(int i, int i2) {
        char c = this.instruction[i + 2];
        while (c != 0) {
            int i3 = this.lenInstruction;
            if (i >= i3) {
                break;
            }
            if (i == i2) {
                i2 = i3;
            }
            i += c;
            c = this.instruction[i + 2];
        }
        if (i < this.lenInstruction) {
            this.instruction[i + 2] = (char) ((short) (i2 - i));
        }
    }

    public void syntaxError(String str) throws RESyntaxException {
        throw new RESyntaxException(str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x001f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0022. Please report as an issue. */
    public int terminal(int[] r4) throws com.sun.org.apache.regexp.internal.RESyntaxException {
        /*
            r3 = this;
            java.lang.String r0 = r3.pattern
            int r1 = r3.idx
            char r0 = r0.charAt(r1)
            r1 = 0
            if (r0 == 0) goto L51
            r2 = 36
            if (r0 == r2) goto L40
            r2 = 46
            if (r0 == r2) goto L40
            r2 = 63
            if (r0 == r2) goto L56
            r2 = 123(0x7b, float:1.72E-43)
            if (r0 == r2) goto L56
            r2 = 124(0x7c, float:1.74E-43)
            if (r0 == r2) goto L37
            switch(r0) {
                case 40: goto L32;
                case 41: goto L2c;
                case 42: goto L56;
                case 43: goto L56;
                default: goto L22;
            }
        L22:
            switch(r0) {
                case 91: goto L27;
                case 92: goto L5b;
                case 93: goto L3a;
                case 94: goto L40;
                default: goto L25;
            }
        L25:
            goto La7
        L27:
            int r3 = r3.characterClass()
            return r3
        L2c:
            java.lang.String r0 = "Unexpected close paren"
            r3.syntaxError(r0)
            goto L37
        L32:
            int r3 = r3.expr(r4)
            return r3
        L37:
            r3.internalError()
        L3a:
            java.lang.String r0 = "Mismatched class"
            r3.syntaxError(r0)
            goto L51
        L40:
            java.lang.String r4 = r3.pattern
            int r0 = r3.idx
            int r2 = r0 + 1
            r3.idx = r2
            char r4 = r4.charAt(r0)
            int r3 = r3.node(r4, r1)
            return r3
        L51:
            java.lang.String r0 = "Unexpected end of input"
            r3.syntaxError(r0)
        L56:
            java.lang.String r0 = "Missing operand to closure"
            r3.syntaxError(r0)
        L5b:
            int r0 = r3.idx
            int r2 = r3.escape()
            switch(r2) {
                case 1048573: goto L90;
                case 1048574: goto L90;
                case 1048575: goto L6d;
                default: goto L64;
            }
        L64:
            r3.idx = r0
            r0 = r4[r1]
            r0 = r0 & (-2)
            r4[r1] = r0
            goto La7
        L6d:
            java.lang.String r0 = r3.pattern
            int r2 = r3.idx
            int r2 = r2 + (-1)
            char r0 = r0.charAt(r2)
            int r0 = r0 + (-48)
            char r0 = (char) r0
            int r2 = r3.parens
            if (r2 > r0) goto L83
            java.lang.String r2 = "Bad backreference"
            r3.syntaxError(r2)
        L83:
            r2 = r4[r1]
            r2 = r2 | 1
            r4[r1] = r2
            r4 = 35
            int r3 = r3.node(r4, r0)
            return r3
        L90:
            r0 = r4[r1]
            r0 = r0 & (-2)
            r4[r1] = r0
            java.lang.String r4 = r3.pattern
            int r0 = r3.idx
            int r0 = r0 + (-1)
            char r4 = r4.charAt(r0)
            r0 = 92
            int r3 = r3.node(r0, r4)
            return r3
        La7:
            r0 = r4[r1]
            r0 = r0 & (-2)
            r4[r1] = r0
            int r3 = r3.atom()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.regexp.internal.RECompiler.terminal(int[]):int");
    }

    /* loaded from: classes10.dex */
    public class RERange {
        int size = 16;
        int[] minRange = new int[16];
        int[] maxRange = new int[16];
        int num = 0;

        public RERange() {
        }

        public void delete(int i) {
            int i2 = this.num;
            if (i2 == 0 || i >= i2) {
                return;
            }
            while (true) {
                i++;
                int i3 = this.num;
                if (i >= i3) {
                    this.num = i3 - 1;
                    return;
                }
                int i4 = i - 1;
                if (i4 >= 0) {
                    int[] iArr = this.minRange;
                    iArr[i4] = iArr[i];
                    int[] iArr2 = this.maxRange;
                    iArr2[i4] = iArr2[i];
                }
            }
        }

        public void include(int i, int i2, boolean z) {
            if (z) {
                merge(i, i2);
            } else {
                remove(i, i2);
            }
        }

        public void merge(int i, int i2) {
            int i3 = 0;
            while (true) {
                int i4 = this.num;
                if (i3 >= i4) {
                    int i5 = this.size;
                    if (i4 >= i5) {
                        int i6 = i5 * 2;
                        this.size = i6;
                        int[] iArr = new int[i6];
                        int[] iArr2 = new int[i6];
                        System.arraycopy(this.minRange, 0, iArr, 0, i4);
                        System.arraycopy(this.maxRange, 0, iArr2, 0, this.num);
                        this.minRange = iArr;
                        this.maxRange = iArr2;
                    }
                    int[] iArr3 = this.minRange;
                    int i7 = this.num;
                    iArr3[i7] = i;
                    this.maxRange[i7] = i2;
                    this.num = i7 + 1;
                    return;
                }
                int i8 = this.minRange[i3];
                if (i >= i8 && i2 <= this.maxRange[i3]) {
                    return;
                }
                if (i <= i8 && i2 >= this.maxRange[i3]) {
                    delete(i3);
                    merge(i, i2);
                    return;
                } else if (i >= i8 && i <= this.maxRange[i3]) {
                    delete(i3);
                    merge(this.minRange[i3], i2);
                    return;
                } else {
                    if (i2 >= i8 && i2 <= this.maxRange[i3]) {
                        delete(i3);
                        merge(i, this.maxRange[i3]);
                        return;
                    }
                    i3++;
                }
            }
        }

        public void remove(int i, int i2) {
            int i3;
            for (int i4 = 0; i4 < this.num; i4++) {
                int[] iArr = this.minRange;
                int i5 = iArr[i4];
                if (i5 >= i && this.maxRange[i4] <= i2) {
                    delete(i4);
                    return;
                }
                if (i >= i5 && i2 <= (i3 = this.maxRange[i4])) {
                    delete(i4);
                    if (i5 < i) {
                        merge(i5, i - 1);
                    }
                    if (i2 < i3) {
                        merge(i2 + 1, i3);
                        return;
                    }
                    return;
                }
                if (i5 >= i && i5 <= i2) {
                    iArr[i4] = i2 + 1;
                    return;
                }
                int[] iArr2 = this.maxRange;
                int i6 = iArr2[i4];
                if (i6 >= i && i6 <= i2) {
                    iArr2[i4] = i - 1;
                    return;
                }
            }
        }

        public void include(char c, boolean z) {
            include(c, c, z);
        }
    }
}
