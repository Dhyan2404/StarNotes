package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson2.util.Fnv;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;

/* loaded from: classes3.dex */
public final class JSONScanner extends JSONLexerBase {
    private final int len;
    private final String text;

    public JSONScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    public static boolean charArrayCompare(String str, int i, char[] cArr) {
        int length = cArr.length;
        if (length + i > str.length()) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (cArr[i2] != str.charAt(i + i2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkDate(char c, char c2, char c3, char c4, char c5, char c6, int i, int i2) {
        if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            if (c5 == '0') {
                if (c6 < '1' || c6 > '9') {
                    return false;
                }
            } else if (c5 != '1' || (c6 != '0' && c6 != '1' && c6 != '2')) {
                return false;
            }
            if (i == 48) {
                return i2 >= 49 && i2 <= 57;
            }
            if (i != 49 && i != 50) {
                return i == 51 && (i2 == 48 || i2 == 49);
            }
            if (i2 >= 48 && i2 <= 57) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x001d, code lost:
    
        if (r5 <= '4') goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean checkTime(char r4, char r5, char r6, char r7, char r8, char r9) {
        /*
            r3 = this;
            r3 = 57
            r0 = 0
            r1 = 48
            if (r4 != r1) goto Lc
            if (r5 < r1) goto Lb
            if (r5 <= r3) goto L20
        Lb:
            return r0
        Lc:
            r2 = 49
            if (r4 != r2) goto L15
            if (r5 < r1) goto L14
            if (r5 <= r3) goto L20
        L14:
            return r0
        L15:
            r2 = 50
            if (r4 != r2) goto L42
            if (r5 < r1) goto L42
            r4 = 52
            if (r5 <= r4) goto L20
            goto L42
        L20:
            r4 = 53
            r5 = 54
            if (r6 < r1) goto L2d
            if (r6 > r4) goto L2d
            if (r7 < r1) goto L2c
            if (r7 <= r3) goto L32
        L2c:
            return r0
        L2d:
            if (r6 != r5) goto L42
            if (r7 == r1) goto L32
            return r0
        L32:
            if (r8 < r1) goto L3b
            if (r8 > r4) goto L3b
            if (r9 < r1) goto L3a
            if (r9 <= r3) goto L40
        L3a:
            return r0
        L3b:
            if (r8 != r5) goto L42
            if (r9 == r1) goto L40
            return r0
        L40:
            r3 = 1
            return r3
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.checkTime(char, char, char, char, char, char):boolean");
    }

    private void setCalendar(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8) {
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        this.calendar = calendar;
        calendar.set(1, ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(2, (((c5 - '0') * 10) + (c6 - '0')) - 1);
        this.calendar.set(5, ((c7 - '0') * 10) + (c8 - '0'));
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int i, int i2, int i3, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, i, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i, char[] cArr, int i2, int i3) {
        this.text.getChars(i, i3 + i, cArr, i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return !this.hasSpecial ? IOUtils.decodeBase64(this.text, this.f12210np + 1, this.f12211sp) : IOUtils.decodeBase64(new String(this.sbuf, 0, this.f12211sp));
        }
        int i = this.f12210np + 1;
        int i2 = this.f12211sp;
        if (i2 % 2 != 0) {
            throw new JSONException("illegal state. " + i2);
        }
        int i3 = i2 / 2;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 2) + i;
            char charAt = this.text.charAt(i5);
            char charAt2 = this.text.charAt(i5 + 1);
            char c = '0';
            int i6 = charAt - (charAt <= '9' ? '0' : '7');
            if (charAt2 > '9') {
                c = '7';
            }
            bArr[i4] = (byte) ((i6 << 4) | (charAt2 - c));
        }
        return bArr;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i) {
        if (i >= this.len) {
            return (char) 26;
        }
        return this.text.charAt(i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i, int i2, char[] cArr) {
        this.text.getChars(i, i2 + i, cArr, 0);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final BigDecimal decimalValue() {
        char charAt = charAt((this.f12210np + this.f12211sp) - 1);
        int i = this.f12211sp;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i--;
        }
        if (i > 65535) {
            throw new JSONException("decimal overflow");
        }
        int i2 = this.f12210np;
        char[] cArr = this.sbuf;
        if (i < cArr.length) {
            this.text.getChars(i2, i2 + i, cArr, 0);
            return new BigDecimal(this.sbuf, 0, i, MathContext.UNLIMITED);
        }
        char[] cArr2 = new char[i];
        this.text.getChars(i2, i2 + i, cArr2, 0);
        return new BigDecimal(cArr2, 0, i, MathContext.UNLIMITED);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c, int i) {
        return this.text.indexOf(c, i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        StringBuilder sb = new StringBuilder();
        int i = 1;
        int i2 = 1;
        int i3 = 0;
        while (i3 < this.f12208bp) {
            if (this.text.charAt(i3) == '\n') {
                i++;
                i2 = 1;
            }
            i3++;
            i2++;
        }
        sb.append("pos ");
        sb.append(this.f12208bp);
        sb.append(", line ");
        sb.append(i);
        sb.append(", column ");
        sb.append(i2);
        if (this.text.length() < 65535) {
            sb.append(this.text);
        } else {
            sb.append(this.text.substring(0, 65535));
        }
        return sb.toString();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        int i = this.f12208bp;
        int i2 = this.len;
        if (i != i2) {
            return this.f12209ch == 26 && i + 1 >= i2;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean matchField2(char[] cArr) {
        while (JSONLexerBase.isWhitespace(this.f12209ch)) {
            next();
        }
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = this.f12208bp + cArr.length;
        int i = length + 1;
        char charAt = this.text.charAt(length);
        while (JSONLexerBase.isWhitespace(charAt)) {
            charAt = this.text.charAt(i);
            i++;
        }
        if (charAt != ':') {
            this.matchStat = -2;
            return false;
        }
        this.f12208bp = i;
        this.f12209ch = charAt(i);
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int i = this.f12208bp + 1;
        this.f12208bp = i;
        char charAt = i >= this.len ? (char) 26 : this.text.charAt(i);
        this.f12209ch = charAt;
        return charAt;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() {
        char charAt = charAt((this.f12210np + this.f12211sp) - 1);
        int i = this.f12211sp;
        if (charAt == 'L' || charAt == 'S' || charAt == 'B' || charAt == 'F' || charAt == 'D') {
            i--;
        }
        return subString(this.f12210np, i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Date scanDate(char c) {
        char c2;
        long j;
        Date date;
        int i;
        boolean z = false;
        this.matchStat = 0;
        int i2 = this.f12208bp;
        char c3 = this.f12209ch;
        int i3 = i2 + 1;
        char charAt = charAt(i2);
        if (charAt == '\"') {
            int indexOf = indexOf('\"', i3);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            this.f12208bp = i3;
            if (!scanISO8601DateIfMatch(false, indexOf - i3)) {
                this.f12208bp = i2;
                this.f12209ch = c3;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            c2 = charAt(indexOf + 1);
            this.f12208bp = i2;
            while (c2 != ',' && c2 != ']') {
                if (!JSONLexerBase.isWhitespace(c2)) {
                    this.f12208bp = i2;
                    this.f12209ch = c3;
                    this.matchStat = -1;
                    return null;
                }
                indexOf++;
                c2 = charAt(indexOf + 1);
            }
            this.f12208bp = indexOf + 1;
            this.f12209ch = c2;
        } else {
            char c4 = '9';
            if (charAt != '-' && (charAt < '0' || charAt > '9')) {
                if (charAt == 'n') {
                    int i4 = i3 + 1;
                    if (charAt(i3) == 'u') {
                        int i5 = i4 + 1;
                        if (charAt(i4) == 'l') {
                            int i6 = i5 + 1;
                            if (charAt(i5) == 'l') {
                                c2 = charAt(i6);
                                this.f12208bp = i6;
                                date = null;
                            }
                        }
                    }
                }
                this.f12208bp = i2;
                this.f12209ch = c3;
                this.matchStat = -1;
                return null;
            }
            if (charAt == '-') {
                charAt = charAt(i3);
                i3++;
                z = true;
            }
            if (charAt < '0' || charAt > '9') {
                c2 = charAt;
                j = 0;
            } else {
                j = charAt - '0';
                while (true) {
                    i = i3 + 1;
                    c2 = charAt(i3);
                    if (c2 < '0' || c2 > c4) {
                        break;
                    }
                    j = (j * 10) + (c2 - '0');
                    i3 = i;
                    c4 = '9';
                }
                if (c2 == ',' || c2 == ']') {
                    this.f12208bp = i - 1;
                }
            }
            if (j < 0) {
                this.f12208bp = i2;
                this.f12209ch = c3;
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new Date(j);
        }
        if (c2 == ',') {
            int i7 = this.f12208bp + 1;
            this.f12208bp = i7;
            this.f12209ch = charAt(i7);
            this.matchStat = 3;
            return date;
        }
        int i8 = this.f12208bp + 1;
        this.f12208bp = i8;
        char charAt2 = charAt(i8);
        if (charAt2 == ',') {
            this.token = 16;
            int i9 = this.f12208bp + 1;
            this.f12208bp = i9;
            this.f12209ch = charAt(i9);
        } else if (charAt2 == ']') {
            this.token = 15;
            int i10 = this.f12208bp + 1;
            this.f12208bp = i10;
            this.f12209ch = charAt(i10);
        } else if (charAt2 == '}') {
            this.token = 13;
            int i11 = this.f12208bp + 1;
            this.f12208bp = i11;
            this.f12209ch = charAt(i11);
        } else {
            if (charAt2 != 26) {
                this.f12208bp = i2;
                this.f12209ch = c3;
                this.matchStat = -1;
                return null;
            }
            this.f12209ch = (char) 26;
            this.token = 20;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00c0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c4 -> B:42:0x00b4). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double scanDouble(char r22) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanDouble(char):double");
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0152, code lost:
    
        return r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f3 A[SYNTHETIC] */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanFieldBoolean(char[] r11) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldBoolean(char[]):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Date scanFieldDate(char[] cArr) {
        char c;
        long j;
        char c2;
        Date date;
        int i;
        boolean z = false;
        this.matchStat = 0;
        int i2 = this.f12208bp;
        char c3 = this.f12209ch;
        if (!charArrayCompare(this.text, i2, cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = this.f12208bp + cArr.length;
        int i3 = length + 1;
        char charAt = charAt(length);
        if (charAt == '\"') {
            int indexOf = indexOf('\"', i3);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            this.f12208bp = i3;
            if (!scanISO8601DateIfMatch(false, indexOf - i3)) {
                this.f12208bp = i2;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            c2 = charAt(indexOf + 1);
            this.f12208bp = i2;
            while (c2 != ',' && c2 != '}') {
                if (!JSONLexerBase.isWhitespace(c2)) {
                    this.matchStat = -1;
                    return null;
                }
                indexOf++;
                c2 = charAt(indexOf + 1);
            }
            this.f12208bp = indexOf + 1;
            this.f12209ch = c2;
        } else {
            char c4 = '9';
            char c5 = '0';
            if (charAt != '-' && (charAt < '0' || charAt > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (charAt == '-') {
                charAt = charAt(i3);
                i3++;
                z = true;
            }
            if (charAt < '0' || charAt > '9') {
                c = charAt;
                j = 0;
            } else {
                j = charAt - '0';
                while (true) {
                    i = i3 + 1;
                    c = charAt(i3);
                    if (c < c5 || c > c4) {
                        break;
                    }
                    j = (j * 10) + (c - '0');
                    i3 = i;
                    c4 = '9';
                    c5 = '0';
                }
                if (c == ',' || c == '}') {
                    this.f12208bp = i - 1;
                }
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            c2 = c;
            date = new Date(j);
        }
        if (c2 == ',') {
            int i4 = this.f12208bp + 1;
            this.f12208bp = i4;
            this.f12209ch = charAt(i4);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        int i5 = this.f12208bp + 1;
        this.f12208bp = i5;
        char charAt2 = charAt(i5);
        if (charAt2 == ',') {
            this.token = 16;
            int i6 = this.f12208bp + 1;
            this.f12208bp = i6;
            this.f12209ch = charAt(i6);
        } else if (charAt2 == ']') {
            this.token = 15;
            int i7 = this.f12208bp + 1;
            this.f12208bp = i7;
            this.f12209ch = charAt(i7);
        } else if (charAt2 == '}') {
            this.token = 13;
            int i8 = this.f12208bp + 1;
            this.f12208bp = i8;
            this.f12209ch = charAt(i8);
        } else {
            if (charAt2 != 26) {
                this.f12208bp = i2;
                this.f12209ch = c3;
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
    
        if (r15 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0067, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006a, code lost:
    
        if (r3 >= 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006c, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006e, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006f, code lost:
    
        if (r6 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0071, code lost:
    
        if (r15 == '\"') goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0073, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0075, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0076, code lost:
    
        r15 = r11 + 1;
        r4 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
    
        r11 = r15;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0082, code lost:
    
        if (r15 == ',') goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0084, code lost:
    
        if (r15 != '}') goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008b, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r15) == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008d, code lost:
    
        r15 = r11 + 1;
        r4 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x007c, code lost:
    
        r11 = r15;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0094, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0096, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0097, code lost:
    
        r11 = r11 - 1;
        r14.f12208bp = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009c, code lost:
    
        if (r15 != ',') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009e, code lost:
    
        r11 = r11 + 1;
        r14.f12208bp = r11;
        r14.f12209ch = charAt(r11);
        r14.matchStat = 3;
        r14.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ac, code lost:
    
        if (r7 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00af, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00b0, code lost:
    
        if (r15 != '}') goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b2, code lost:
    
        r11 = r11 + 1;
        r14.f12208bp = r11;
        r15 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b9, code lost:
    
        if (r15 != ',') goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00cb, code lost:
    
        if (r15 != ']') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00dd, code lost:
    
        if (r15 != '}') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00f1, code lost:
    
        if (r15 != 26) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00ff, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r15) == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0101, code lost:
    
        r15 = r14.f12208bp + 1;
        r14.f12208bp = r15;
        r15 = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x010b, code lost:
    
        r14.f12208bp = r1;
        r14.f12209ch = r2;
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0111, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f3, code lost:
    
        r14.token = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00f7, code lost:
    
        r14.matchStat = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00df, code lost:
    
        r14.token = 13;
        r15 = r14.f12208bp + 1;
        r14.f12208bp = r15;
        r14.f12209ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00cd, code lost:
    
        r14.token = 15;
        r15 = r14.f12208bp + 1;
        r14.f12208bp = r15;
        r14.f12209ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00bb, code lost:
    
        r14.token = 16;
        r15 = r14.f12208bp + 1;
        r14.f12208bp = r15;
        r14.f12209ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0112, code lost:
    
        if (r7 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0115, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:?, code lost:
    
        return r3;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanFieldInt(char[] r15) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldInt(char[]):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0112, code lost:
    
        r20.matchStat = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0115, code lost:
    
        if (r11 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0118, code lost:
    
        return -r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return r2;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long scanFieldLong(char[] r21) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldLong(char[]):long");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        int i = this.f12208bp;
        char c = this.f12209ch;
        while (!charArrayCompare(this.text, this.f12208bp, cArr)) {
            if (!JSONLexerBase.isWhitespace(this.f12209ch)) {
                this.matchStat = -2;
                return stringDefaultValue();
            }
            next();
            while (JSONLexerBase.isWhitespace(this.f12209ch)) {
                next();
            }
        }
        int length = this.f12208bp + cArr.length;
        int i2 = length + 1;
        char charAt = charAt(length);
        int i3 = 0;
        if (charAt != '\"') {
            while (JSONLexerBase.isWhitespace(charAt)) {
                i3++;
                int i4 = i2 + 1;
                char charAt2 = charAt(i2);
                i2 = i4;
                charAt = charAt2;
            }
            if (charAt != '\"') {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int indexOf = indexOf('\"', i2);
        if (indexOf == -1) {
            throw new JSONException("unclosed str");
        }
        String subString = subString(i2, indexOf - i2);
        if (subString.indexOf(92) != -1) {
            while (true) {
                int i5 = 0;
                for (int i6 = indexOf - 1; i6 >= 0 && charAt(i6) == '\\'; i6--) {
                    i5++;
                }
                if (i5 % 2 == 0) {
                    break;
                }
                indexOf = indexOf('\"', indexOf + 1);
            }
            int i7 = this.f12208bp;
            int length2 = indexOf - (((cArr.length + i7) + 1) + i3);
            subString = JSONLexerBase.readString(sub_chars(i7 + cArr.length + 1 + i3, length2), length2);
        }
        if ((this.features & Feature.TrimStringFieldValue.mask) != 0) {
            subString = subString.trim();
        }
        char charAt3 = charAt(indexOf + 1);
        while (charAt3 != ',' && charAt3 != '}') {
            if (!JSONLexerBase.isWhitespace(charAt3)) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            indexOf++;
            charAt3 = charAt(indexOf + 1);
        }
        int i8 = indexOf + 1;
        this.f12208bp = i8;
        this.f12209ch = charAt3;
        if (charAt3 == ',') {
            int i9 = i8 + 1;
            this.f12208bp = i9;
            this.f12209ch = charAt(i9);
            this.matchStat = 3;
            return subString;
        }
        int i10 = i8 + 1;
        this.f12208bp = i10;
        char charAt4 = charAt(i10);
        if (charAt4 == ',') {
            this.token = 16;
            int i11 = this.f12208bp + 1;
            this.f12208bp = i11;
            this.f12209ch = charAt(i11);
        } else if (charAt4 == ']') {
            this.token = 15;
            int i12 = this.f12208bp + 1;
            this.f12208bp = i12;
            this.f12209ch = charAt(i12);
        } else if (charAt4 == '}') {
            this.token = 13;
            int i13 = this.f12208bp + 1;
            this.f12208bp = i13;
            this.f12209ch = charAt(i13);
        } else {
            if (charAt4 != 26) {
                this.f12208bp = i;
                this.f12209ch = c;
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return subString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x00db, code lost:
    
        if (r9 != ']') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00e1, code lost:
    
        if (r3.size() != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00e3, code lost:
    
        r2 = r1 + 1;
        r1 = charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x00ed, code lost:
    
        r17.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00f0, code lost:
    
        return null;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r18, java.lang.Class<?> r19) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        while (!charArrayCompare(this.text, this.f12208bp, cArr)) {
            if (!JSONLexerBase.isWhitespace(this.f12209ch)) {
                this.matchStat = -2;
                return 0L;
            }
            next();
            while (JSONLexerBase.isWhitespace(this.f12209ch)) {
                next();
            }
        }
        int length = this.f12208bp + cArr.length;
        int i = length + 1;
        char charAt = charAt(length);
        if (charAt != '\"') {
            while (JSONLexerBase.isWhitespace(charAt)) {
                charAt = charAt(i);
                i++;
            }
            if (charAt != '\"') {
                this.matchStat = -1;
                return 0L;
            }
        }
        long j = Fnv.MAGIC_HASH_CODE;
        while (true) {
            int i2 = i + 1;
            char charAt2 = charAt(i);
            if (charAt2 == '\"') {
                this.f12208bp = i2;
                char charAt3 = charAt(i2);
                this.f12209ch = charAt3;
                while (charAt3 != ',') {
                    if (charAt3 == '}') {
                        next();
                        skipWhitespace();
                        char current = getCurrent();
                        if (current == ',') {
                            this.token = 16;
                            int i3 = this.f12208bp + 1;
                            this.f12208bp = i3;
                            this.f12209ch = charAt(i3);
                        } else if (current == ']') {
                            this.token = 15;
                            int i4 = this.f12208bp + 1;
                            this.f12208bp = i4;
                            this.f12209ch = charAt(i4);
                        } else if (current == '}') {
                            this.token = 13;
                            int i5 = this.f12208bp + 1;
                            this.f12208bp = i5;
                            this.f12209ch = charAt(i5);
                        } else {
                            if (current != 26) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            this.token = 20;
                        }
                        this.matchStat = 4;
                        return j;
                    }
                    if (!JSONLexerBase.isWhitespace(charAt3)) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i6 = this.f12208bp + 1;
                    this.f12208bp = i6;
                    charAt3 = charAt(i6);
                }
                int i7 = this.f12208bp + 1;
                this.f12208bp = i7;
                this.f12209ch = charAt(i7);
                this.matchStat = 3;
                return j;
            }
            if (i2 > this.len) {
                this.matchStat = -1;
                return 0L;
            }
            j = (j ^ charAt2) * Fnv.MAGIC_PRIME;
            i = i2;
        }
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0080, code lost:
    
        if (r3 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0082, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0084, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0085, code lost:
    
        if (r7 == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0087, code lost:
    
        if (r3 == '\"') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0089, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008b, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008c, code lost:
    
        r3 = charAt(r13);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0093, code lost:
    
        if (r4 >= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0095, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0097, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009a, code lost:
    
        if (r3 != r17) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b1, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r3) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b3, code lost:
    
        r3 = charAt(r13);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bb, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bd, code lost:
    
        if (r8 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c0, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x009c, code lost:
    
        r16.f12208bp = r13;
        r16.f12209ch = charAt(r13);
        r16.matchStat = 3;
        r16.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a9, code lost:
    
        if (r8 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ac, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return r4;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int scanInt(char r17) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanInt(char):int");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c) {
        int i;
        char charAt;
        boolean z = false;
        this.matchStat = 0;
        int i2 = this.f12208bp;
        int i3 = i2 + 1;
        char charAt2 = charAt(i2);
        boolean z2 = charAt2 == '\"';
        if (z2) {
            int i4 = i3 + 1;
            char charAt3 = charAt(i3);
            i3 = i4;
            charAt2 = charAt3;
        }
        boolean z3 = charAt2 == '-';
        if (z3) {
            int i5 = i3 + 1;
            char charAt4 = charAt(i3);
            i3 = i5;
            charAt2 = charAt4;
        }
        char c2 = '0';
        if (charAt2 >= '0' && charAt2 <= '9') {
            long j = charAt2 - '0';
            while (true) {
                i = i3 + 1;
                charAt = charAt(i3);
                if (charAt < c2 || charAt > '9') {
                    break;
                }
                j = (j * 10) + (charAt - '0');
                i3 = i;
                c2 = '0';
            }
            if (charAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (z2) {
                if (charAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                charAt = charAt(i);
                i++;
            }
            if (j >= 0 || (j == Long.MIN_VALUE && z3)) {
                z = true;
            }
            if (!z) {
                this.matchStat = -1;
                return 0L;
            }
            while (charAt != c) {
                if (!JSONLexerBase.isWhitespace(charAt)) {
                    this.matchStat = -1;
                    return j;
                }
                charAt = charAt(i);
                i++;
            }
            this.f12208bp = i;
            this.f12209ch = charAt(i);
            this.matchStat = 3;
            this.token = 16;
            return z3 ? -j : j;
        }
        if (charAt2 == 'n') {
            int i6 = i3 + 1;
            if (charAt(i3) == 'u') {
                int i7 = i6 + 1;
                if (charAt(i6) == 'l') {
                    int i8 = i7 + 1;
                    if (charAt(i7) == 'l') {
                        this.matchStat = 5;
                        int i9 = i8 + 1;
                        char charAt5 = charAt(i8);
                        if (z2 && charAt5 == '\"') {
                            int i10 = i9 + 1;
                            char charAt6 = charAt(i9);
                            i9 = i10;
                            charAt5 = charAt6;
                        }
                        while (charAt5 != ',') {
                            if (charAt5 == ']') {
                                this.f12208bp = i9;
                                this.f12209ch = charAt(i9);
                                this.matchStat = 5;
                                this.token = 15;
                                return 0L;
                            }
                            if (!JSONLexerBase.isWhitespace(charAt5)) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            int i11 = i9 + 1;
                            char charAt7 = charAt(i9);
                            i9 = i11;
                            charAt5 = charAt7;
                        }
                        this.f12208bp = i9;
                        this.f12209ch = charAt(i9);
                        this.matchStat = 5;
                        this.token = 16;
                        return 0L;
                    }
                }
            }
        }
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String scanTypeName(SymbolTable symbolTable) {
        int indexOf;
        if (!this.text.startsWith("\"@type\":\"", this.f12208bp) || (indexOf = this.text.indexOf(34, this.f12208bp + 9)) == -1) {
            return null;
        }
        int i = this.f12208bp + 9;
        this.f12208bp = i;
        int i2 = 0;
        while (i < indexOf) {
            i2 = (i2 * 31) + this.text.charAt(i);
            i++;
        }
        int i3 = this.f12208bp;
        String addSymbol = addSymbol(i3, indexOf - i3, i2, symbolTable);
        char charAt = this.text.charAt(indexOf + 1);
        if (charAt != ',' && charAt != ']') {
            return null;
        }
        int i4 = indexOf + 2;
        this.f12208bp = i4;
        this.f12209ch = this.text.charAt(i4);
        return addSymbol;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean seekArrayToItem(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("index must > 0, but " + i);
        }
        int i2 = this.token;
        if (i2 == 20) {
            return false;
        }
        if (i2 != 14) {
            throw new UnsupportedOperationException();
        }
        int i3 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= i) {
                nextToken();
                return true;
            }
            skipWhitespace();
            char c = this.f12209ch;
            if (c == '\"' || c == '\'') {
                skipString();
                char c2 = this.f12209ch;
                if (c2 != ',') {
                    if (c2 != ']') {
                        throw new JSONException("illegal json.");
                    }
                    next();
                    nextToken(16);
                    return false;
                }
                next();
            } else {
                if (c == '{') {
                    next();
                    this.token = 12;
                    skipObject(false);
                } else if (c == '[') {
                    next();
                    this.token = 14;
                    skipArray(false);
                } else {
                    int i4 = this.f12208bp + 1;
                    while (true) {
                        if (i4 >= this.text.length()) {
                            z = false;
                            break;
                        }
                        char charAt = this.text.charAt(i4);
                        if (charAt == ',') {
                            int i5 = i4 + 1;
                            this.f12208bp = i5;
                            this.f12209ch = charAt(i5);
                            break;
                        }
                        if (charAt == ']') {
                            int i6 = i4 + 1;
                            this.f12208bp = i6;
                            this.f12209ch = charAt(i6);
                            nextToken();
                            return false;
                        }
                        i4++;
                    }
                    if (!z) {
                        throw new JSONException("illegal json.");
                    }
                }
                int i7 = this.token;
                if (i7 != 16) {
                    if (i7 == 15) {
                        return false;
                    }
                    throw new UnsupportedOperationException();
                }
            }
            i3++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long j, boolean z) {
        char c;
        int i = this.token;
        int i2 = -1;
        if (i == 20) {
            return -1;
        }
        if (i != 13) {
            int i3 = 15;
            if (i != 15) {
                int i4 = 16;
                if (i != 12 && i != 16) {
                    throw new UnsupportedOperationException(JSONToken.name(this.token));
                }
                while (true) {
                    char c2 = this.f12209ch;
                    if (c2 == '}') {
                        next();
                        nextToken();
                        return i2;
                    }
                    if (c2 == 26) {
                        return i2;
                    }
                    if (c2 != '\"') {
                        skipWhitespace();
                    }
                    if (this.f12209ch == '\"') {
                        int i5 = this.f12208bp + 1;
                        long j2 = Fnv.MAGIC_HASH_CODE;
                        while (true) {
                            if (i5 >= this.text.length()) {
                                break;
                            }
                            char charAt = this.text.charAt(i5);
                            if (charAt == '\\') {
                                i5++;
                                if (i5 != this.text.length()) {
                                    charAt = this.text.charAt(i5);
                                } else {
                                    throw new JSONException("unclosed str, " + info());
                                }
                            }
                            if (charAt == '\"') {
                                int i6 = i5 + 1;
                                this.f12208bp = i6;
                                this.f12209ch = i6 >= this.text.length() ? (char) 26 : this.text.charAt(this.f12208bp);
                            } else {
                                j2 = (j2 ^ charAt) * Fnv.MAGIC_PRIME;
                                i5++;
                            }
                        }
                        if (j2 == j) {
                            if (this.f12209ch != ':') {
                                skipWhitespace();
                            }
                            if (this.f12209ch != ':') {
                                return 3;
                            }
                            int i7 = this.f12208bp + 1;
                            this.f12208bp = i7;
                            char charAt2 = i7 >= this.text.length() ? (char) 26 : this.text.charAt(i7);
                            this.f12209ch = charAt2;
                            if (charAt2 == ',') {
                                int i8 = this.f12208bp + 1;
                                this.f12208bp = i8;
                                this.f12209ch = i8 >= this.text.length() ? (char) 26 : this.text.charAt(i8);
                                this.token = i4;
                                return 3;
                            }
                            if (charAt2 == ']') {
                                int i9 = this.f12208bp + 1;
                                this.f12208bp = i9;
                                this.f12209ch = i9 >= this.text.length() ? (char) 26 : this.text.charAt(i9);
                                this.token = i3;
                                return 3;
                            }
                            if (charAt2 == '}') {
                                int i10 = this.f12208bp + 1;
                                this.f12208bp = i10;
                                this.f12209ch = i10 >= this.text.length() ? (char) 26 : this.text.charAt(i10);
                                this.token = 13;
                                return 3;
                            }
                            if (charAt2 >= '0' && charAt2 <= '9') {
                                this.f12211sp = 0;
                                this.pos = this.f12208bp;
                                scanNumber();
                                return 3;
                            }
                            nextToken(2);
                            return 3;
                        }
                        if (this.f12209ch != ':') {
                            skipWhitespace();
                        }
                        if (this.f12209ch == ':') {
                            int i11 = this.f12208bp + 1;
                            this.f12208bp = i11;
                            char charAt3 = i11 >= this.text.length() ? (char) 26 : this.text.charAt(i11);
                            this.f12209ch = charAt3;
                            if (charAt3 != '\"' && charAt3 != '\'' && charAt3 != '{' && charAt3 != '[' && charAt3 != '0' && charAt3 != '1' && charAt3 != '2' && charAt3 != '3' && charAt3 != '4' && charAt3 != '5' && charAt3 != '6' && charAt3 != '7' && charAt3 != '8' && charAt3 != '9' && charAt3 != '+' && charAt3 != '-') {
                                skipWhitespace();
                            }
                            char c3 = this.f12209ch;
                            if (c3 == '-' || c3 == '+' || (c3 >= '0' && c3 <= '9')) {
                                next();
                                while (true) {
                                    c = this.f12209ch;
                                    if (c < '0' || c > '9') {
                                        break;
                                    }
                                    next();
                                }
                                if (c == '.') {
                                    next();
                                    while (true) {
                                        char c4 = this.f12209ch;
                                        if (c4 < '0' || c4 > '9') {
                                            break;
                                        }
                                        next();
                                    }
                                }
                                char c5 = this.f12209ch;
                                if (c5 == 'E' || c5 == 'e') {
                                    next();
                                    char c6 = this.f12209ch;
                                    if (c6 == '-' || c6 == '+') {
                                        next();
                                    }
                                    while (true) {
                                        char c7 = this.f12209ch;
                                        if (c7 < '0' || c7 > '9') {
                                            break;
                                        }
                                        next();
                                    }
                                }
                                if (this.f12209ch != ',') {
                                    skipWhitespace();
                                }
                                if (this.f12209ch == ',') {
                                    next();
                                }
                            } else if (c3 == '\"') {
                                skipString();
                                char c8 = this.f12209ch;
                                if (c8 != ',' && c8 != '}') {
                                    skipWhitespace();
                                }
                                if (this.f12209ch == ',') {
                                    next();
                                }
                            } else if (c3 == 't') {
                                next();
                                if (this.f12209ch == 'r') {
                                    next();
                                    if (this.f12209ch == 'u') {
                                        next();
                                        if (this.f12209ch == 'e') {
                                            next();
                                        }
                                    }
                                }
                                char c9 = this.f12209ch;
                                if (c9 != ',' && c9 != '}') {
                                    skipWhitespace();
                                }
                                if (this.f12209ch == ',') {
                                    next();
                                }
                            } else if (c3 == 'n') {
                                next();
                                if (this.f12209ch == 'u') {
                                    next();
                                    if (this.f12209ch == 'l') {
                                        next();
                                        if (this.f12209ch == 'l') {
                                            next();
                                        }
                                    }
                                }
                                char c10 = this.f12209ch;
                                if (c10 != ',' && c10 != '}') {
                                    skipWhitespace();
                                }
                                if (this.f12209ch == ',') {
                                    next();
                                }
                            } else if (c3 == 'f') {
                                next();
                                if (this.f12209ch == 'a') {
                                    next();
                                    if (this.f12209ch == 'l') {
                                        next();
                                        if (this.f12209ch == 's') {
                                            next();
                                            if (this.f12209ch == 'e') {
                                                next();
                                            }
                                        }
                                    }
                                }
                                char c11 = this.f12209ch;
                                if (c11 != ',' && c11 != '}') {
                                    skipWhitespace();
                                }
                                if (this.f12209ch == ',') {
                                    next();
                                }
                            } else if (c3 == '{') {
                                int i12 = this.f12208bp + 1;
                                this.f12208bp = i12;
                                this.f12209ch = i12 >= this.text.length() ? (char) 26 : this.text.charAt(i12);
                                if (z) {
                                    this.token = 12;
                                    return 1;
                                }
                                skipObject(false);
                                if (this.token == 13) {
                                    return -1;
                                }
                            } else if (c3 == '[') {
                                next();
                                if (z) {
                                    this.token = 14;
                                    return 2;
                                }
                                skipArray(false);
                                if (this.token == 13) {
                                    return -1;
                                }
                            } else {
                                throw new UnsupportedOperationException();
                            }
                            i2 = -1;
                            i3 = 15;
                            i4 = 16;
                        } else {
                            throw new JSONException("illegal json, " + info());
                        }
                    } else {
                        throw new UnsupportedOperationException();
                    }
                }
            }
        }
        nextToken();
        return -1;
    }

    public void setTime(char c, char c2, char c3, char c4, char c5, char c6) {
        this.calendar.set(11, ((c - '0') * 10) + (c2 - '0'));
        this.calendar.set(12, ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(13, ((c5 - '0') * 10) + (c6 - '0'));
    }

    public void setTimeZone(char c, char c2, char c3) {
        setTimeZone(c, c2, c3, '0', '0');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipArray() {
        skipArray(false);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject() {
        skipObject(false);
    }

    public final void skipString() {
        if (this.f12209ch != '\"') {
            throw new UnsupportedOperationException();
        }
        int i = this.f12208bp;
        while (true) {
            i++;
            if (i >= this.text.length()) {
                throw new JSONException("unclosed str");
            }
            char charAt = this.text.charAt(i);
            if (charAt == '\\') {
                if (i < this.len - 1) {
                    i++;
                }
            } else if (charAt == '\"') {
                String str = this.text;
                int i2 = i + 1;
                this.f12208bp = i2;
                this.f12209ch = str.charAt(i2);
                return;
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        return !this.hasSpecial ? subString(this.f12210np + 1, this.f12211sp) : new String(this.sbuf, 0, this.f12211sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int i, int i2) {
        if (!ASMUtils.IS_ANDROID) {
            return this.text.substring(i, i2 + i);
        }
        char[] cArr = this.sbuf;
        if (i2 < cArr.length) {
            this.text.getChars(i, i + i2, cArr, 0);
            return new String(this.sbuf, 0, i2);
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return new String(cArr2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i, int i2) {
        if (ASMUtils.IS_ANDROID) {
            char[] cArr = this.sbuf;
            if (i2 < cArr.length) {
                this.text.getChars(i, i2 + i, cArr, 0);
                return this.sbuf;
            }
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return cArr2;
    }

    public JSONScanner(String str, int i) {
        super(i);
        this.text = str;
        this.len = str.length();
        this.f12208bp = -1;
        next();
        if (this.f12209ch == 65279) {
            next();
        }
    }

    public boolean scanISO8601DateIfMatch(boolean z) {
        return scanISO8601DateIfMatch(z, this.len - this.f12208bp);
    }

    public void setTimeZone(char c, char c2, char c3, char c4, char c5) {
        int i = ((((c2 - '0') * 10) + (c3 - '0')) * 3600 * 1000) + ((((c4 - '0') * 10) + (c5 - '0')) * 60 * 1000);
        if (c == '-') {
            i = -i;
        }
        if (this.calendar.getTimeZone().getRawOffset() != i) {
            this.calendar.setTimeZone(new SimpleTimeZone(i, Integer.toString(i)));
        }
    }

    public final void skipArray(boolean z) {
        int i = this.f12208bp;
        boolean z2 = false;
        int i2 = 0;
        while (i < this.text.length()) {
            char charAt = this.text.charAt(i);
            if (charAt == '\\') {
                if (i >= this.len - 1) {
                    this.f12209ch = charAt;
                    this.f12208bp = i;
                    throw new JSONException("illegal str, " + info());
                }
                i++;
            } else if (charAt == '\"') {
                z2 = !z2;
            } else if (charAt != '[') {
                if (charAt == '{' && z) {
                    int i3 = this.f12208bp + 1;
                    this.f12208bp = i3;
                    this.f12209ch = i3 < this.text.length() ? this.text.charAt(i3) : (char) 26;
                    skipObject(z);
                } else if (charAt == ']' && !z2 && i2 - 1 == -1) {
                    int i4 = i + 1;
                    this.f12208bp = i4;
                    if (i4 == this.text.length()) {
                        this.f12209ch = (char) 26;
                        this.token = 20;
                        return;
                    } else {
                        this.f12209ch = this.text.charAt(this.f12208bp);
                        nextToken(16);
                        return;
                    }
                }
            } else if (!z2) {
                i2++;
            }
            i++;
        }
        if (i != this.text.length()) {
            return;
        }
        throw new JSONException("illegal str, " + info());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject(boolean z) {
        int i = this.f12208bp;
        boolean z2 = false;
        int i2 = 0;
        while (i < this.text.length()) {
            char charAt = this.text.charAt(i);
            if (charAt == '\\') {
                if (i >= this.len - 1) {
                    this.f12209ch = charAt;
                    this.f12208bp = i;
                    throw new JSONException("illegal str, " + info());
                }
                i++;
            } else if (charAt == '\"') {
                z2 = !z2;
            } else if (charAt == '{') {
                if (!z2) {
                    i2++;
                }
            } else if (charAt == '}' && !z2 && i2 - 1 == -1) {
                int i3 = i + 1;
                this.f12208bp = i3;
                if (i3 == this.text.length()) {
                    this.f12209ch = (char) 26;
                    this.token = 20;
                    return;
                }
                char charAt2 = this.text.charAt(this.f12208bp);
                this.f12209ch = charAt2;
                if (charAt2 == ',') {
                    this.token = 16;
                    int i4 = this.f12208bp + 1;
                    this.f12208bp = i4;
                    this.f12209ch = i4 < this.text.length() ? this.text.charAt(i4) : (char) 26;
                    return;
                }
                if (charAt2 == '}') {
                    this.token = 13;
                    next();
                    return;
                } else if (charAt2 == ']') {
                    this.token = 15;
                    next();
                    return;
                } else {
                    nextToken(16);
                    return;
                }
            }
            i++;
        }
        for (int i5 = 0; i5 < this.f12208bp; i5++) {
            if (i5 < this.text.length() && this.text.charAt(i5) == ' ') {
                i++;
            }
        }
        if (i != this.text.length()) {
            return;
        }
        throw new JSONException("illegal str, " + info());
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x0217 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0219  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean scanISO8601DateIfMatch(boolean r35, int r36) {
        /*
            Method dump skipped, instructions count: 1816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanISO8601DateIfMatch(boolean, int):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        return charArrayCompare(this.text, this.f12208bp, cArr);
    }

    public JSONScanner(char[] cArr, int i) {
        this(cArr, i, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int i, int i2) {
        this(new String(cArr, 0, i), i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String[] scanFieldStringArray(char[] cArr, int i, SymbolTable symbolTable) {
        int i2;
        char c;
        int i3 = this.f12208bp;
        char c2 = this.f12209ch;
        while (JSONLexerBase.isWhitespace(this.f12209ch)) {
            next();
        }
        if (cArr != null) {
            this.matchStat = 0;
            if (!charArrayCompare(cArr)) {
                this.matchStat = -2;
                return null;
            }
            int length = this.f12208bp + cArr.length;
            int i4 = length + 1;
            char charAt = this.text.charAt(length);
            while (JSONLexerBase.isWhitespace(charAt)) {
                charAt = this.text.charAt(i4);
                i4++;
            }
            if (charAt == ':') {
                i2 = i4 + 1;
                c = this.text.charAt(i4);
                while (JSONLexerBase.isWhitespace(c)) {
                    c = this.text.charAt(i2);
                    i2++;
                }
            } else {
                this.matchStat = -1;
                return null;
            }
        } else {
            i2 = this.f12208bp + 1;
            c = this.f12209ch;
        }
        if (c == '[') {
            this.f12208bp = i2;
            this.f12209ch = this.text.charAt(i2);
            String[] strArr = i >= 0 ? new String[i] : new String[4];
            int i5 = 0;
            while (true) {
                if (JSONLexerBase.isWhitespace(this.f12209ch)) {
                    next();
                } else {
                    if (this.f12209ch != '\"') {
                        this.f12208bp = i3;
                        this.f12209ch = c2;
                        this.matchStat = -1;
                        return null;
                    }
                    String scanSymbol = scanSymbol(symbolTable, '\"');
                    if (i5 == strArr.length) {
                        String[] strArr2 = new String[strArr.length + (strArr.length >> 1) + 1];
                        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                        strArr = strArr2;
                    }
                    int i6 = i5 + 1;
                    strArr[i5] = scanSymbol;
                    while (JSONLexerBase.isWhitespace(this.f12209ch)) {
                        next();
                    }
                    if (this.f12209ch == ',') {
                        next();
                        i5 = i6;
                    } else {
                        if (strArr.length != i6) {
                            String[] strArr3 = new String[i6];
                            System.arraycopy(strArr, 0, strArr3, 0, i6);
                            strArr = strArr3;
                        }
                        while (JSONLexerBase.isWhitespace(this.f12209ch)) {
                            next();
                        }
                        if (this.f12209ch == ']') {
                            next();
                            return strArr;
                        }
                        this.f12208bp = i3;
                        this.f12209ch = c2;
                        this.matchStat = -1;
                        return null;
                    }
                }
            }
        } else {
            if (c == 'n' && this.text.startsWith("ull", this.f12208bp + 1)) {
                int i7 = this.f12208bp + 4;
                this.f12208bp = i7;
                this.f12209ch = this.text.charAt(i7);
                return null;
            }
            this.matchStat = -1;
            return null;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long[] jArr) {
        char c;
        int i = this.token;
        if (i != 12 && i != 16) {
            throw new UnsupportedOperationException();
        }
        while (true) {
            char c2 = this.f12209ch;
            if (c2 == '}') {
                next();
                nextToken();
                this.matchStat = -1;
                return -1;
            }
            if (c2 == 26) {
                this.matchStat = -1;
                return -1;
            }
            if (c2 != '\"') {
                skipWhitespace();
            }
            if (this.f12209ch == '\"') {
                int i2 = this.f12208bp + 1;
                long j = Fnv.MAGIC_HASH_CODE;
                while (true) {
                    if (i2 >= this.text.length()) {
                        break;
                    }
                    char charAt = this.text.charAt(i2);
                    if (charAt == '\\') {
                        i2++;
                        if (i2 != this.text.length()) {
                            charAt = this.text.charAt(i2);
                        } else {
                            throw new JSONException("unclosed str, " + info());
                        }
                    }
                    if (charAt == '\"') {
                        int i3 = i2 + 1;
                        this.f12208bp = i3;
                        this.f12209ch = i3 >= this.text.length() ? (char) 26 : this.text.charAt(this.f12208bp);
                    } else {
                        j = (j ^ charAt) * Fnv.MAGIC_PRIME;
                        i2++;
                    }
                }
                int i4 = 0;
                while (true) {
                    if (i4 >= jArr.length) {
                        i4 = -1;
                        break;
                    }
                    if (j == jArr[i4]) {
                        break;
                    }
                    i4++;
                }
                if (i4 != -1) {
                    if (this.f12209ch != ':') {
                        skipWhitespace();
                    }
                    if (this.f12209ch == ':') {
                        int i5 = this.f12208bp + 1;
                        this.f12208bp = i5;
                        char charAt2 = i5 >= this.text.length() ? (char) 26 : this.text.charAt(i5);
                        this.f12209ch = charAt2;
                        if (charAt2 == ',') {
                            int i6 = this.f12208bp + 1;
                            this.f12208bp = i6;
                            this.f12209ch = i6 < this.text.length() ? this.text.charAt(i6) : (char) 26;
                            this.token = 16;
                        } else if (charAt2 == ']') {
                            int i7 = this.f12208bp + 1;
                            this.f12208bp = i7;
                            this.f12209ch = i7 < this.text.length() ? this.text.charAt(i7) : (char) 26;
                            this.token = 15;
                        } else if (charAt2 == '}') {
                            int i8 = this.f12208bp + 1;
                            this.f12208bp = i8;
                            this.f12209ch = i8 < this.text.length() ? this.text.charAt(i8) : (char) 26;
                            this.token = 13;
                        } else if (charAt2 >= '0' && charAt2 <= '9') {
                            this.f12211sp = 0;
                            this.pos = this.f12208bp;
                            scanNumber();
                        } else {
                            nextToken(2);
                        }
                    }
                    this.matchStat = 3;
                    return i4;
                }
                if (this.f12209ch != ':') {
                    skipWhitespace();
                }
                if (this.f12209ch == ':') {
                    int i9 = this.f12208bp + 1;
                    this.f12208bp = i9;
                    char charAt3 = i9 >= this.text.length() ? (char) 26 : this.text.charAt(i9);
                    this.f12209ch = charAt3;
                    if (charAt3 != '\"' && charAt3 != '\'' && charAt3 != '{' && charAt3 != '[' && charAt3 != '0' && charAt3 != '1' && charAt3 != '2' && charAt3 != '3' && charAt3 != '4' && charAt3 != '5' && charAt3 != '6' && charAt3 != '7' && charAt3 != '8' && charAt3 != '9' && charAt3 != '+' && charAt3 != '-') {
                        skipWhitespace();
                    }
                    char c3 = this.f12209ch;
                    if (c3 == '-' || c3 == '+' || (c3 >= '0' && c3 <= '9')) {
                        next();
                        while (true) {
                            c = this.f12209ch;
                            if (c < '0' || c > '9') {
                                break;
                            }
                            next();
                        }
                        if (c == '.') {
                            next();
                            while (true) {
                                char c4 = this.f12209ch;
                                if (c4 < '0' || c4 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        char c5 = this.f12209ch;
                        if (c5 == 'E' || c5 == 'e') {
                            next();
                            char c6 = this.f12209ch;
                            if (c6 == '-' || c6 == '+') {
                                next();
                            }
                            while (true) {
                                char c7 = this.f12209ch;
                                if (c7 < '0' || c7 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        if (this.f12209ch != ',') {
                            skipWhitespace();
                        }
                        if (this.f12209ch == ',') {
                            next();
                        }
                    } else if (c3 == '\"') {
                        skipString();
                        char c8 = this.f12209ch;
                        if (c8 != ',' && c8 != '}') {
                            skipWhitespace();
                        }
                        if (this.f12209ch == ',') {
                            next();
                        }
                    } else if (c3 == '{') {
                        int i10 = this.f12208bp + 1;
                        this.f12208bp = i10;
                        this.f12209ch = i10 < this.text.length() ? this.text.charAt(i10) : (char) 26;
                        skipObject(false);
                    } else if (c3 == '[') {
                        next();
                        skipArray(false);
                    } else {
                        throw new UnsupportedOperationException();
                    }
                } else {
                    throw new JSONException("illegal json, " + info());
                }
            } else {
                throw new UnsupportedOperationException();
            }
        }
    }
}
