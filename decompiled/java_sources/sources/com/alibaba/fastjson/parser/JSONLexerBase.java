package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.fasterxml.jackson.core.base.ParserBase;
import com.google.android.exoplayer2.C4649C;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes3.dex */
public abstract class JSONLexerBase implements JSONLexer, Closeable {
    protected static final int INT_MULTMIN_RADIX_TEN = -214748364;
    protected static final long MULTMIN_RADIX_TEN = -922337203685477580L;

    /* renamed from: bp */
    protected int f12208bp;

    /* renamed from: ch */
    protected char f12209ch;
    protected int eofPos;
    protected int features;
    protected boolean hasSpecial;

    /* renamed from: np */
    protected int f12210np;
    protected int pos;
    protected char[] sbuf;

    /* renamed from: sp */
    protected int f12211sp;
    protected String stringDefaultValue;
    protected int token;
    private static final ThreadLocal<char[]> SBUF_LOCAL = new ThreadLocal<>();
    protected static final char[] typeFieldName = ("\"" + JSON.DEFAULT_TYPE_KEY + "\":\"").toCharArray();
    protected static final int[] digits = new int[103];
    protected Calendar calendar = null;
    protected TimeZone timeZone = JSON.defaultTimeZone;
    protected Locale locale = JSON.defaultLocale;
    public int matchStat = 0;
    protected int nanos = 0;

    static {
        for (int i = 48; i <= 57; i++) {
            digits[i] = i - 48;
        }
        for (int i2 = 97; i2 <= 102; i2++) {
            digits[i2] = (i2 - 97) + 10;
        }
        for (int i3 = 65; i3 <= 70; i3++) {
            digits[i3] = (i3 - 65) + 10;
        }
    }

    public JSONLexerBase(int i) {
        this.stringDefaultValue = null;
        this.features = i;
        if ((i & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
        char[] cArr = SBUF_LOCAL.get();
        this.sbuf = cArr;
        if (cArr == null) {
            this.sbuf = new char[512];
        }
    }

    public static boolean isWhitespace(char c) {
        return c <= ' ' && (c == ' ' || c == '\n' || c == '\r' || c == '\t' || c == '\f' || c == '\b');
    }

    public static String readString(char[] cArr, int i) {
        int i2;
        char[] cArr2 = new char[i];
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            char c = cArr[i3];
            if (c != '\\') {
                cArr2[i4] = c;
                i4++;
            } else {
                i3++;
                char c2 = cArr[i3];
                if (c2 == '\"') {
                    i2 = i4 + 1;
                    cArr2[i4] = '\"';
                } else if (c2 != '\'') {
                    if (c2 != 'F') {
                        if (c2 == '\\') {
                            i2 = i4 + 1;
                            cArr2[i4] = '\\';
                        } else if (c2 == 'b') {
                            i2 = i4 + 1;
                            cArr2[i4] = '\b';
                        } else if (c2 != 'f') {
                            if (c2 == 'n') {
                                i2 = i4 + 1;
                                cArr2[i4] = '\n';
                            } else if (c2 == 'r') {
                                i2 = i4 + 1;
                                cArr2[i4] = '\r';
                            } else if (c2 != 'x') {
                                switch (c2) {
                                    case '/':
                                        i2 = i4 + 1;
                                        cArr2[i4] = '/';
                                        break;
                                    case '0':
                                        i2 = i4 + 1;
                                        cArr2[i4] = 0;
                                        break;
                                    case '1':
                                        i2 = i4 + 1;
                                        cArr2[i4] = 1;
                                        break;
                                    case '2':
                                        i2 = i4 + 1;
                                        cArr2[i4] = 2;
                                        break;
                                    case '3':
                                        i2 = i4 + 1;
                                        cArr2[i4] = 3;
                                        break;
                                    case '4':
                                        i2 = i4 + 1;
                                        cArr2[i4] = 4;
                                        break;
                                    case '5':
                                        i2 = i4 + 1;
                                        cArr2[i4] = 5;
                                        break;
                                    case '6':
                                        i2 = i4 + 1;
                                        cArr2[i4] = 6;
                                        break;
                                    case '7':
                                        i2 = i4 + 1;
                                        cArr2[i4] = 7;
                                        break;
                                    default:
                                        switch (c2) {
                                            case 't':
                                                i2 = i4 + 1;
                                                cArr2[i4] = '\t';
                                                break;
                                            case 'u':
                                                i2 = i4 + 1;
                                                int i5 = i3 + 1;
                                                int i6 = i5 + 1;
                                                int i7 = i6 + 1;
                                                i3 = i7 + 1;
                                                cArr2[i4] = (char) Integer.parseInt(new String(new char[]{cArr[i5], cArr[i6], cArr[i7], cArr[i3]}), 16);
                                                break;
                                            case 'v':
                                                i2 = i4 + 1;
                                                cArr2[i4] = 11;
                                                break;
                                            default:
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                }
                            } else {
                                i2 = i4 + 1;
                                int[] iArr = digits;
                                int i8 = i3 + 1;
                                int i9 = iArr[cArr[i8]] * 16;
                                i3 = i8 + 1;
                                cArr2[i4] = (char) (i9 + iArr[cArr[i3]]);
                            }
                        }
                    }
                    i2 = i4 + 1;
                    cArr2[i4] = '\f';
                } else {
                    i2 = i4 + 1;
                    cArr2[i4] = Chars.QUOTE;
                }
                i4 = i2;
            }
            i3++;
        }
        return new String(cArr2, 0, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0149, code lost:
    
        throw new com.alibaba.fastjson.JSONException("invalid escape character \\x" + r1 + r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void scanStringSingleQuote() {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanStringSingleQuote():void");
    }

    public abstract String addSymbol(int i, int i2, int i3, SymbolTable symbolTable);

    public abstract void arrayCopy(int i, char[] cArr, int i2, int i3);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract byte[] bytesValue();

    public abstract boolean charArrayCompare(char[] cArr);

    public abstract char charAt(int i);

    @Override // com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] cArr = this.sbuf;
        if (cArr.length <= 8192) {
            SBUF_LOCAL.set(cArr);
        }
        this.sbuf = null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void config(Feature feature, boolean z) {
        int config = Feature.config(this.features, feature, z);
        this.features = config;
        if ((config & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
    }

    public abstract void copyTo(int i, int i2, char[] cArr);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final Number decimalValue(boolean z) {
        char charAt = charAt((this.f12210np + this.f12211sp) - 1);
        try {
            if (charAt == 'F') {
                return Float.valueOf(Float.parseFloat(numberString()));
            }
            if (charAt == 'D') {
                return Double.valueOf(Double.parseDouble(numberString()));
            }
            if (z) {
                return decimalValue();
            }
            return Double.valueOf(doubleValue());
        } catch (NumberFormatException e) {
            throw new JSONException(e.getMessage() + ", " + info());
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract BigDecimal decimalValue();

    public double doubleValue() {
        return Double.parseDouble(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public float floatValue() {
        char charAt;
        String numberString = numberString();
        float parseFloat = Float.parseFloat(numberString);
        if ((parseFloat != 0.0f && parseFloat != Float.POSITIVE_INFINITY) || (charAt = numberString.charAt(0)) <= '0' || charAt > '9') {
            return parseFloat;
        }
        throw new JSONException("float overflow : " + numberString);
    }

    public Calendar getCalendar() {
        return this.calendar;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final char getCurrent() {
        return this.f12209ch;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int getFeatures() {
        return this.features;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Locale getLocale() {
        return this.locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    public abstract int indexOf(char c, int i);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        return "";
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int intValue() {
        int i;
        boolean z;
        int i2 = 0;
        if (this.f12210np == -1) {
            this.f12210np = 0;
        }
        int i3 = this.f12210np;
        int i4 = this.f12211sp + i3;
        if (charAt(i3) == '-') {
            i3++;
            i = Integer.MIN_VALUE;
            z = true;
        } else {
            i = -2147483647;
            z = false;
        }
        if (i3 < i4) {
            i2 = -(charAt(i3) - '0');
            i3++;
        }
        while (i3 < i4) {
            int i5 = i3 + 1;
            char charAt = charAt(i3);
            if (charAt == 'L' || charAt == 'S' || charAt == 'B') {
                i3 = i5;
                break;
            }
            int i6 = charAt - '0';
            if (i2 < -214748364) {
                throw new NumberFormatException(numberString());
            }
            int i7 = i2 * 10;
            if (i7 < i + i6) {
                throw new NumberFormatException(numberString());
            }
            i2 = i7 - i6;
            i3 = i5;
        }
        if (!z) {
            return -i2;
        }
        if (i3 > this.f12210np + 1) {
            return i2;
        }
        throw new NumberFormatException(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final Number integerValue() throws NumberFormatException {
        char c;
        long j;
        long j2;
        boolean z = false;
        if (this.f12210np == -1) {
            this.f12210np = 0;
        }
        int i = this.f12210np;
        int i2 = this.f12211sp + i;
        char charAt = charAt(i2 - 1);
        if (charAt == 'B') {
            i2--;
            c = 'B';
        } else if (charAt == 'L') {
            i2--;
            c = 'L';
        } else if (charAt != 'S') {
            c = ' ';
        } else {
            i2--;
            c = 'S';
        }
        if (charAt(this.f12210np) == '-') {
            i++;
            j = Long.MIN_VALUE;
            z = true;
        } else {
            j = C4649C.TIME_UNSET;
        }
        if (i < i2) {
            j2 = -(charAt(i) - '0');
            i++;
        } else {
            j2 = 0;
        }
        while (i < i2) {
            int i3 = i + 1;
            int charAt2 = charAt(i) - '0';
            if (j2 < -922337203685477580L) {
                return new BigInteger(numberString(), 10);
            }
            long j3 = j2 * 10;
            long j4 = charAt2;
            if (j3 < j + j4) {
                return new BigInteger(numberString(), 10);
            }
            j2 = j3 - j4;
            i = i3;
        }
        if (!z) {
            long j5 = -j2;
            return (j5 > 2147483647L || c == 'L') ? Long.valueOf(j5) : c == 'S' ? Short.valueOf((short) j5) : c == 'B' ? Byte.valueOf((byte) j5) : Integer.valueOf((int) j5);
        }
        if (i > this.f12210np + 1) {
            return (j2 < ParserBase.f21225q || c == 'L') ? Long.valueOf(j2) : c == 'S' ? Short.valueOf((short) j2) : c == 'B' ? Byte.valueOf((byte) j2) : Integer.valueOf((int) j2);
        }
        throw new NumberFormatException(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean isBlankInput() {
        int i = 0;
        while (true) {
            char charAt = charAt(i);
            if (charAt == 26) {
                this.token = 20;
                return true;
            }
            if (!isWhitespace(charAt)) {
                return false;
            }
            i++;
        }
    }

    public abstract boolean isEOF();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(Feature feature) {
        return isEnabled(feature.mask);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isRef() {
        return this.f12211sp == 4 && charAt(this.f12210np + 1) == '$' && charAt(this.f12210np + 2) == 'r' && charAt(this.f12210np + 3) == 'e' && charAt(this.f12210np + 4) == 'f';
    }

    public void lexError(String str, Object... objArr) {
        this.token = 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x005c -> B:9:0x002e). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long longValue() throws java.lang.NumberFormatException {
        /*
            r13 = this;
            int r0 = r13.f12210np
            r1 = -1
            r2 = 0
            if (r0 != r1) goto L8
            r13.f12210np = r2
        L8:
            int r0 = r13.f12210np
            int r1 = r13.f12211sp
            int r1 = r1 + r0
            char r3 = r13.charAt(r0)
            r4 = 45
            r5 = 1
            if (r3 != r4) goto L1d
            int r0 = r0 + 1
            r2 = -9223372036854775808
            r3 = r2
            r2 = r5
            goto L22
        L1d:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L22:
            if (r0 >= r1) goto L30
            int r6 = r0 + 1
            char r0 = r13.charAt(r0)
            int r0 = r0 + (-48)
            int r0 = -r0
            long r7 = (long) r0
        L2e:
            r0 = r6
            goto L32
        L30:
            r7 = 0
        L32:
            if (r0 >= r1) goto L73
            int r6 = r0 + 1
            char r0 = r13.charAt(r0)
            r9 = 76
            if (r0 == r9) goto L72
            r9 = 83
            if (r0 == r9) goto L72
            r9 = 66
            if (r0 != r9) goto L47
            goto L72
        L47:
            int r0 = r0 + (-48)
            r9 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r9 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r9 < 0) goto L68
            r9 = 10
            long r7 = r7 * r9
            long r9 = (long) r0
            long r11 = r3 + r9
            int r0 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r0 < 0) goto L5e
            long r7 = r7 - r9
            goto L2e
        L5e:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r13 = r13.numberString()
            r0.<init>(r13)
            throw r0
        L68:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r13 = r13.numberString()
            r0.<init>(r13)
            throw r0
        L72:
            r0 = r6
        L73:
            if (r2 == 0) goto L85
            int r1 = r13.f12210np
            int r1 = r1 + r5
            if (r0 <= r1) goto L7b
            return r7
        L7b:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r13 = r13.numberString()
            r0.<init>(r13)
            throw r0
        L85:
            long r0 = -r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.longValue():long");
    }

    public final boolean matchField(char[] cArr) {
        while (!charArrayCompare(cArr)) {
            if (!isWhitespace(this.f12209ch)) {
                return false;
            }
            next();
        }
        int length = this.f12208bp + cArr.length;
        this.f12208bp = length;
        char charAt = charAt(length);
        this.f12209ch = charAt;
        if (charAt == '{') {
            next();
            this.token = 12;
        } else if (charAt == '[') {
            next();
            this.token = 14;
        } else if (charAt == 'S' && charAt(this.f12208bp + 1) == 'e' && charAt(this.f12208bp + 2) == 't' && charAt(this.f12208bp + 3) == '[') {
            int i = this.f12208bp + 3;
            this.f12208bp = i;
            this.f12209ch = charAt(i);
            this.token = 21;
        } else {
            nextToken();
        }
        return true;
    }

    public boolean matchField2(char[] cArr) {
        throw new UnsupportedOperationException();
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public Collection<String> newCollectionByType(Class<?> cls) {
        if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        if (cls.isAssignableFrom(LinkedList.class)) {
            return new LinkedList();
        }
        try {
            return (Collection) cls.newInstance();
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract char next();

    public final void nextIdent() {
        while (isWhitespace(this.f12209ch)) {
            next();
        }
        char c = this.f12209ch;
        if (c == '_' || c == '$' || Character.isLetter(c)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken() {
        this.f12211sp = 0;
        while (true) {
            this.pos = this.f12208bp;
            char c = this.f12209ch;
            if (c == '/') {
                skipComment();
            } else {
                if (c == '\"') {
                    scanString();
                    return;
                }
                if (c == ',') {
                    next();
                    this.token = 16;
                    return;
                }
                if (c >= '0' && c <= '9') {
                    scanNumber();
                    return;
                }
                if (c == '-') {
                    scanNumber();
                    return;
                }
                switch (c) {
                    case '\b':
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                        next();
                        break;
                    case '\'':
                        if (isEnabled(Feature.AllowSingleQuotes)) {
                            scanStringSingleQuote();
                            return;
                        }
                        throw new JSONException("Feature.AllowSingleQuotes is false");
                    case '(':
                        next();
                        this.token = 10;
                        return;
                    case ')':
                        next();
                        this.token = 11;
                        return;
                    case '+':
                        next();
                        scanNumber();
                        return;
                    case '.':
                        next();
                        this.token = 25;
                        return;
                    case ':':
                        next();
                        this.token = 17;
                        return;
                    case ';':
                        next();
                        this.token = 24;
                        return;
                    case 'N':
                    case 'S':
                    case 'T':
                    case 'u':
                        scanIdent();
                        return;
                    case '[':
                        next();
                        this.token = 14;
                        return;
                    case ']':
                        next();
                        this.token = 15;
                        return;
                    case 'f':
                        scanFalse();
                        return;
                    case 'n':
                        scanNullOrNew();
                        return;
                    case 't':
                        scanTrue();
                        return;
                    case 'x':
                        scanHex();
                        return;
                    case '{':
                        next();
                        this.token = 12;
                        return;
                    case '}':
                        next();
                        this.token = 13;
                        return;
                    default:
                        if (isEOF()) {
                            if (this.token != 20) {
                                this.token = 20;
                                int i = this.f12208bp;
                                this.pos = i;
                                this.eofPos = i;
                                return;
                            }
                            throw new JSONException("EOF error");
                        }
                        char c2 = this.f12209ch;
                        if (c2 > 31 && c2 != 127) {
                            lexError("illegal.char", String.valueOf((int) c2));
                            next();
                            return;
                        } else {
                            next();
                            break;
                        }
                }
            }
        }
    }

    public final void nextTokenWithChar(char c) {
        this.f12211sp = 0;
        while (true) {
            char c2 = this.f12209ch;
            if (c2 == c) {
                next();
                nextToken();
                return;
            }
            if (c2 != ' ' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != '\f' && c2 != '\b') {
                throw new JSONException("not match " + c + " - " + this.f12209ch + ", info : " + info());
            }
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon() {
        nextTokenWithChar(':');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String numberString();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int pos() {
        return this.pos;
    }

    public final void putChar(char c) {
        int i = this.f12211sp;
        char[] cArr = this.sbuf;
        if (i == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.sbuf = cArr2;
        }
        char[] cArr3 = this.sbuf;
        int i2 = this.f12211sp;
        this.f12211sp = i2 + 1;
        cArr3[i2] = c;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void resetStringPosition() {
        this.f12211sp = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00ab  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanBoolean(char r10) {
        /*
            r9 = this;
            r0 = 0
            r9.matchStat = r0
            int r1 = r9.f12208bp
            int r1 = r1 + r0
            char r1 = r9.charAt(r1)
            r2 = 116(0x74, float:1.63E-43)
            r3 = 3
            r4 = 5
            r5 = 101(0x65, float:1.42E-43)
            r6 = -1
            r7 = 2
            r8 = 1
            if (r1 != r2) goto L42
            int r1 = r9.f12208bp
            int r1 = r1 + r8
            char r1 = r9.charAt(r1)
            r2 = 114(0x72, float:1.6E-43)
            if (r1 != r2) goto L3f
            int r1 = r9.f12208bp
            int r1 = r1 + r8
            int r1 = r1 + r8
            char r1 = r9.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L3f
            int r1 = r9.f12208bp
            int r1 = r1 + r8
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            if (r1 != r5) goto L3f
            int r0 = r9.f12208bp
            int r0 = r0 + 4
            char r1 = r9.charAt(r0)
            goto L8b
        L3f:
            r9.matchStat = r6
            return r0
        L42:
            r2 = 102(0x66, float:1.43E-43)
            if (r1 != r2) goto L7f
            int r1 = r9.f12208bp
            int r1 = r1 + r8
            char r1 = r9.charAt(r1)
            r2 = 97
            if (r1 != r2) goto L7c
            int r1 = r9.f12208bp
            int r1 = r1 + r8
            int r1 = r1 + r8
            char r1 = r9.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L7c
            int r1 = r9.f12208bp
            int r1 = r1 + r8
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r2 = 115(0x73, float:1.61E-43)
            if (r1 != r2) goto L7c
            int r1 = r9.f12208bp
            int r1 = r1 + r8
            int r1 = r1 + r3
            char r1 = r9.charAt(r1)
            if (r1 != r5) goto L7c
            int r1 = r9.f12208bp
            int r1 = r1 + r4
            char r1 = r9.charAt(r1)
            r4 = 6
            goto L9b
        L7c:
            r9.matchStat = r6
            return r0
        L7f:
            r2 = 49
            if (r1 != r2) goto L8d
            int r0 = r9.f12208bp
            int r0 = r0 + r8
            char r1 = r9.charAt(r0)
            r4 = r7
        L8b:
            r0 = r8
            goto L9b
        L8d:
            r2 = 48
            if (r1 != r2) goto L9a
            int r1 = r9.f12208bp
            int r1 = r1 + r8
            char r1 = r9.charAt(r1)
            r4 = r7
            goto L9b
        L9a:
            r4 = r8
        L9b:
            if (r1 != r10) goto Lab
            int r10 = r9.f12208bp
            int r10 = r10 + r4
            r9.f12208bp = r10
            char r10 = r9.charAt(r10)
            r9.f12209ch = r10
            r9.matchStat = r3
            return r0
        Lab:
            boolean r1 = isWhitespace(r1)
            if (r1 == 0) goto Lbc
            int r1 = r9.f12208bp
            int r2 = r4 + 1
            int r1 = r1 + r4
            char r1 = r9.charAt(r1)
            r4 = r2
            goto L9b
        Lbc:
            r9.matchStat = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanBoolean(char):boolean");
    }

    public Date scanDate(char c) {
        int i;
        long j;
        Date date;
        int i2;
        boolean z = false;
        this.matchStat = 0;
        char charAt = charAt(this.f12208bp + 0);
        if (charAt == '\"') {
            int indexOf = indexOf('\"', this.f12208bp + 1);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int i3 = this.f12208bp + 1;
            String subString = subString(i3, indexOf - i3);
            if (subString.indexOf(92) != -1) {
                while (true) {
                    int i4 = 0;
                    for (int i5 = indexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                        i4++;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    indexOf = indexOf('\"', indexOf + 1);
                }
                int i6 = this.f12208bp;
                int i7 = indexOf - (i6 + 1);
                subString = readString(sub_chars(i6 + 1, i7), i7);
            }
            int i8 = this.f12208bp;
            int i9 = (indexOf - (i8 + 1)) + 1 + 1;
            i = i9 + 1;
            charAt = charAt(i8 + i9);
            JSONScanner jSONScanner = new JSONScanner(subString);
            try {
                if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                    this.matchStat = -1;
                    return null;
                }
                date = jSONScanner.getCalendar().getTime();
            } finally {
                jSONScanner.close();
            }
        } else {
            char c2 = '9';
            i = 2;
            if (charAt == '-' || (charAt >= '0' && charAt <= '9')) {
                if (charAt == '-') {
                    charAt = charAt(this.f12208bp + 1);
                    z = true;
                } else {
                    i = 1;
                }
                if (charAt < '0' || charAt > '9') {
                    j = 0;
                } else {
                    j = charAt - '0';
                    while (true) {
                        i2 = i + 1;
                        charAt = charAt(this.f12208bp + i);
                        if (charAt < '0' || charAt > c2) {
                            break;
                        }
                        j = (j * 10) + (charAt - '0');
                        i = i2;
                        c2 = '9';
                    }
                    i = i2;
                }
                if (j < 0) {
                    this.matchStat = -1;
                    return null;
                }
                if (z) {
                    j = -j;
                }
                date = new Date(j);
            } else {
                if (charAt != 'n' || charAt(this.f12208bp + 1) != 'u' || charAt(this.f12208bp + 1 + 1) != 'l' || charAt(this.f12208bp + 1 + 2) != 'l') {
                    this.matchStat = -1;
                    return null;
                }
                i = 5;
                this.matchStat = 5;
                charAt = charAt(this.f12208bp + 4);
                date = null;
            }
        }
        if (charAt == ',') {
            int i10 = this.f12208bp + i;
            this.f12208bp = i10;
            this.f12209ch = charAt(i10);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        if (charAt != ']') {
            this.matchStat = -1;
            return null;
        }
        int i11 = i + 1;
        char charAt2 = charAt(this.f12208bp + i);
        if (charAt2 == ',') {
            this.token = 16;
            int i12 = this.f12208bp + i11;
            this.f12208bp = i12;
            this.f12209ch = charAt(i12);
        } else if (charAt2 == ']') {
            this.token = 15;
            int i13 = this.f12208bp + i11;
            this.f12208bp = i13;
            this.f12209ch = charAt(i13);
        } else if (charAt2 == '}') {
            this.token = 13;
            int i14 = this.f12208bp + i11;
            this.f12208bp = i14;
            this.f12209ch = charAt(i14);
        } else {
            if (charAt2 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.f12208bp += i11 - 1;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00ad A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00af -> B:43:0x009d). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigDecimal scanDecimal(char r19) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDecimal(char):java.math.BigDecimal");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ca A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00cc -> B:42:0x00ba). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double scanDouble(char r23) {
        /*
            Method dump skipped, instructions count: 440
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDouble(char):double");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Enum<?> scanEnum(Class<?> cls, SymbolTable symbolTable, char c) {
        String scanSymbolWithSeperator = scanSymbolWithSeperator(symbolTable, c);
        if (scanSymbolWithSeperator == null) {
            return null;
        }
        return Enum.valueOf(cls, scanSymbolWithSeperator);
    }

    public long scanEnumSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.f12208bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = Fnv.MAGIC_HASH_CODE;
        while (true) {
            int i2 = i + 1;
            char charAt = charAt(this.f12208bp + i);
            if (charAt == '\"') {
                int i3 = i2 + 1;
                char charAt2 = charAt(this.f12208bp + i2);
                if (charAt2 == ',') {
                    int i4 = this.f12208bp + i3;
                    this.f12208bp = i4;
                    this.f12209ch = charAt(i4);
                    this.matchStat = 3;
                    return j;
                }
                if (charAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i5 = i3 + 1;
                char charAt3 = charAt(this.f12208bp + i3);
                if (charAt3 == ',') {
                    this.token = 16;
                    int i6 = this.f12208bp + i5;
                    this.f12208bp = i6;
                    this.f12209ch = charAt(i6);
                } else if (charAt3 == ']') {
                    this.token = 15;
                    int i7 = this.f12208bp + i5;
                    this.f12208bp = i7;
                    this.f12209ch = charAt(i7);
                } else if (charAt3 == '}') {
                    this.token = 13;
                    int i8 = this.f12208bp + i5;
                    this.f12208bp = i8;
                    this.f12209ch = charAt(i8);
                } else {
                    if (charAt3 != 26) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.token = 20;
                    this.f12208bp += i5 - 1;
                    this.f12209ch = (char) 26;
                }
                this.matchStat = 4;
                return j;
            }
            j = (j ^ ((charAt < 'A' || charAt > 'Z') ? charAt : charAt + ' ')) * Fnv.MAGIC_PRIME;
            if (charAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i = i2;
        }
    }

    public final void scanFalse() {
        if (this.f12209ch != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f12209ch != 'a') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f12209ch != 'l') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f12209ch != 's') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f12209ch != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        char c = this.f12209ch;
        if (c != ' ' && c != ',' && c != '}' && c != ']' && c != '\n' && c != '\r' && c != '\t' && c != 26 && c != '\f' && c != '\b' && c != ':' && c != '/') {
            throw new JSONException("scan false error");
        }
        this.token = 7;
    }

    public BigInteger scanFieldBigInteger(char[] cArr) {
        int i;
        char charAt;
        boolean z;
        int length;
        int i2;
        BigInteger bigInteger;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length2 = cArr.length;
        int i3 = length2 + 1;
        char charAt2 = charAt(this.f12208bp + length2);
        boolean z2 = charAt2 == '\"';
        if (z2) {
            charAt2 = charAt(this.f12208bp + i3);
            i3++;
        }
        boolean z3 = charAt2 == '-';
        if (z3) {
            charAt2 = charAt(this.f12208bp + i3);
            i3++;
        }
        if (charAt2 >= '0') {
            char c = '9';
            if (charAt2 <= '9') {
                long j = charAt2 - '0';
                while (true) {
                    i = i3 + 1;
                    charAt = charAt(this.f12208bp + i3);
                    if (charAt < '0' || charAt > c) {
                        break;
                    }
                    long j2 = (10 * j) + (charAt - '0');
                    if (j2 < j) {
                        z = true;
                        break;
                    }
                    j = j2;
                    i3 = i;
                    c = '9';
                }
                z = false;
                if (!z2) {
                    int i4 = this.f12208bp;
                    length = cArr.length + i4;
                    i2 = ((i4 + i) - length) - 1;
                } else {
                    if (charAt != '\"') {
                        this.matchStat = -1;
                        return null;
                    }
                    int i5 = i + 1;
                    charAt = charAt(this.f12208bp + i);
                    int i6 = this.f12208bp;
                    length = cArr.length + i6 + 1;
                    i2 = ((i6 + i5) - length) - 2;
                    i = i5;
                }
                if (!z && (i2 < 20 || (z3 && i2 < 21))) {
                    if (z3) {
                        j = -j;
                    }
                    bigInteger = BigInteger.valueOf(j);
                } else {
                    if (i2 > 65535) {
                        throw new JSONException("scanInteger overflow");
                    }
                    bigInteger = new BigInteger(subString(length, i2), 10);
                }
                if (charAt == ',') {
                    int i7 = this.f12208bp + i;
                    this.f12208bp = i7;
                    this.f12209ch = charAt(i7);
                    this.matchStat = 3;
                    this.token = 16;
                    return bigInteger;
                }
                if (charAt != '}') {
                    this.matchStat = -1;
                    return null;
                }
                int i8 = i + 1;
                char charAt3 = charAt(this.f12208bp + i);
                if (charAt3 == ',') {
                    this.token = 16;
                    int i9 = this.f12208bp + i8;
                    this.f12208bp = i9;
                    this.f12209ch = charAt(i9);
                } else if (charAt3 == ']') {
                    this.token = 15;
                    int i10 = this.f12208bp + i8;
                    this.f12208bp = i10;
                    this.f12209ch = charAt(i10);
                } else if (charAt3 == '}') {
                    this.token = 13;
                    int i11 = this.f12208bp + i8;
                    this.f12208bp = i11;
                    this.f12209ch = charAt(i11);
                } else {
                    if (charAt3 != 26) {
                        this.matchStat = -1;
                        return null;
                    }
                    this.token = 20;
                    this.f12208bp += i8 - 1;
                    this.f12209ch = (char) 26;
                }
                this.matchStat = 4;
                return bigInteger;
            }
        }
        if (charAt2 != 'n' || charAt(this.f12208bp + i3) != 'u' || charAt(this.f12208bp + i3 + 1) != 'l' || charAt(this.f12208bp + i3 + 2) != 'l') {
            this.matchStat = -1;
            return null;
        }
        this.matchStat = 5;
        int i12 = i3 + 3;
        int i13 = i12 + 1;
        char charAt4 = charAt(this.f12208bp + i12);
        if (z2 && charAt4 == '\"') {
            charAt4 = charAt(this.f12208bp + i13);
            i13++;
        }
        while (charAt4 != ',') {
            if (charAt4 == '}') {
                int i14 = this.f12208bp + i13;
                this.f12208bp = i14;
                this.f12209ch = charAt(i14);
                this.matchStat = 5;
                this.token = 13;
                return null;
            }
            if (!isWhitespace(charAt4)) {
                this.matchStat = -1;
                return null;
            }
            charAt4 = charAt(this.f12208bp + i13);
            i13++;
        }
        int i15 = this.f12208bp + i13;
        this.f12208bp = i15;
        this.f12209ch = charAt(i15);
        this.matchStat = 5;
        this.token = 16;
        return null;
    }

    public boolean scanFieldBoolean(char[] cArr) {
        boolean z;
        int i;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char charAt = charAt(this.f12208bp + length);
        if (charAt == 't') {
            int i3 = i2 + 1;
            if (charAt(this.f12208bp + i2) != 'r') {
                this.matchStat = -1;
                return false;
            }
            int i4 = i3 + 1;
            if (charAt(this.f12208bp + i3) != 'u') {
                this.matchStat = -1;
                return false;
            }
            i = i4 + 1;
            if (charAt(this.f12208bp + i4) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = true;
        } else {
            if (charAt != 'f') {
                this.matchStat = -1;
                return false;
            }
            int i5 = i2 + 1;
            if (charAt(this.f12208bp + i2) != 'a') {
                this.matchStat = -1;
                return false;
            }
            int i6 = i5 + 1;
            if (charAt(this.f12208bp + i5) != 'l') {
                this.matchStat = -1;
                return false;
            }
            int i7 = i6 + 1;
            if (charAt(this.f12208bp + i6) != 's') {
                this.matchStat = -1;
                return false;
            }
            int i8 = i7 + 1;
            if (charAt(this.f12208bp + i7) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = false;
            i = i8;
        }
        int i9 = i + 1;
        char charAt2 = charAt(this.f12208bp + i);
        if (charAt2 == ',') {
            int i10 = this.f12208bp + i9;
            this.f12208bp = i10;
            this.f12209ch = charAt(i10);
            this.matchStat = 3;
            this.token = 16;
            return z;
        }
        if (charAt2 != '}') {
            this.matchStat = -1;
            return false;
        }
        int i11 = i9 + 1;
        char charAt3 = charAt(this.f12208bp + i9);
        if (charAt3 == ',') {
            this.token = 16;
            int i12 = this.f12208bp + i11;
            this.f12208bp = i12;
            this.f12209ch = charAt(i12);
        } else if (charAt3 == ']') {
            this.token = 15;
            int i13 = this.f12208bp + i11;
            this.f12208bp = i13;
            this.f12209ch = charAt(i13);
        } else if (charAt3 == '}') {
            this.token = 13;
            int i14 = this.f12208bp + i11;
            this.f12208bp = i14;
            this.f12209ch = charAt(i14);
        } else {
            if (charAt3 != 26) {
                this.matchStat = -1;
                return false;
            }
            this.token = 20;
            this.f12208bp += i11 - 1;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return z;
    }

    public Date scanFieldDate(char[] cArr) {
        int i;
        long j;
        Date date;
        int i2;
        char charAt;
        boolean z = false;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i3 = length + 1;
        char charAt2 = charAt(this.f12208bp + length);
        if (charAt2 == '\"') {
            int indexOf = indexOf('\"', this.f12208bp + cArr.length + 1);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int length2 = this.f12208bp + cArr.length + 1;
            String subString = subString(length2, indexOf - length2);
            if (subString.indexOf(92) != -1) {
                while (true) {
                    int i4 = 0;
                    for (int i5 = indexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                        i4++;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    indexOf = indexOf('\"', indexOf + 1);
                }
                int i6 = this.f12208bp;
                int length3 = indexOf - ((cArr.length + i6) + 1);
                subString = readString(sub_chars(i6 + cArr.length + 1, length3), length3);
            }
            int i7 = this.f12208bp;
            int length4 = i3 + (indexOf - ((cArr.length + i7) + 1)) + 1;
            i = length4 + 1;
            charAt2 = charAt(i7 + length4);
            JSONScanner jSONScanner = new JSONScanner(subString);
            try {
                if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                    this.matchStat = -1;
                    return null;
                }
                date = jSONScanner.getCalendar().getTime();
            } finally {
                jSONScanner.close();
            }
        } else {
            if (charAt2 != '-' && (charAt2 < '0' || charAt2 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (charAt2 == '-') {
                charAt2 = charAt(this.f12208bp + i3);
                i3++;
                z = true;
            }
            if (charAt2 < '0' || charAt2 > '9') {
                i = i3;
                j = 0;
            } else {
                j = charAt2 - '0';
                while (true) {
                    i2 = i3 + 1;
                    charAt = charAt(this.f12208bp + i3);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    j = (j * 10) + (charAt - '0');
                    i3 = i2;
                }
                charAt2 = charAt;
                i = i2;
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new Date(j);
        }
        if (charAt2 == ',') {
            int i8 = this.f12208bp + i;
            this.f12208bp = i8;
            this.f12209ch = charAt(i8);
            this.matchStat = 3;
            return date;
        }
        if (charAt2 != '}') {
            this.matchStat = -1;
            return null;
        }
        int i9 = i + 1;
        char charAt3 = charAt(this.f12208bp + i);
        if (charAt3 == ',') {
            this.token = 16;
            int i10 = this.f12208bp + i9;
            this.f12208bp = i10;
            this.f12209ch = charAt(i10);
        } else if (charAt3 == ']') {
            this.token = 15;
            int i11 = this.f12208bp + i9;
            this.f12208bp = i11;
            this.f12209ch = charAt(i11);
        } else if (charAt3 == '}') {
            this.token = 13;
            int i12 = this.f12208bp + i9;
            this.f12208bp = i12;
            this.f12209ch = charAt(i12);
        } else {
            if (charAt3 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.f12208bp += i9 - 1;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00b8 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00ba -> B:46:0x00a8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigDecimal scanFieldDecimal(char[] r18) {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDecimal(char[]):java.math.BigDecimal");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00da A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00dc -> B:46:0x00c8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double scanFieldDouble(char[] r22) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDouble(char[]):double");
    }

    public final float scanFieldFloat(char[] cArr) {
        int i;
        char charAt;
        boolean z;
        long j;
        int length;
        int i2;
        float parseFloat;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0.0f;
        }
        int length2 = cArr.length;
        int i3 = length2 + 1;
        char charAt2 = charAt(this.f12208bp + length2);
        boolean z2 = charAt2 == '\"';
        if (z2) {
            charAt2 = charAt(this.f12208bp + i3);
            i3++;
        }
        boolean z3 = charAt2 == '-';
        if (z3) {
            charAt2 = charAt(this.f12208bp + i3);
            i3++;
        }
        if (charAt2 >= '0') {
            char c = '9';
            if (charAt2 <= '9') {
                long j2 = charAt2 - '0';
                while (true) {
                    i = i3 + 1;
                    charAt = charAt(this.f12208bp + i3);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    j2 = (j2 * 10) + (charAt - '0');
                    i3 = i;
                }
                if (charAt == '.') {
                    int i4 = i + 1;
                    char charAt3 = charAt(this.f12208bp + i);
                    if (charAt3 >= '0' && charAt3 <= '9') {
                        z = z2;
                        j2 = (j2 * 10) + (charAt3 - '0');
                        j = 10;
                        while (true) {
                            i = i4 + 1;
                            charAt = charAt(this.f12208bp + i4);
                            if (charAt < '0' || charAt > c) {
                                break;
                            }
                            j2 = (j2 * 10) + (charAt - '0');
                            j *= 10;
                            i4 = i;
                            c = '9';
                        }
                    } else {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                } else {
                    z = z2;
                    j = 1;
                }
                boolean z4 = charAt == 'e' || charAt == 'E';
                if (z4) {
                    int i5 = i + 1;
                    charAt = charAt(this.f12208bp + i);
                    if (charAt == '+' || charAt == '-') {
                        int i6 = i5 + 1;
                        charAt = charAt(this.f12208bp + i5);
                        i = i6;
                    } else {
                        i = i5;
                    }
                    while (charAt >= '0' && charAt <= '9') {
                        int i7 = i + 1;
                        charAt = charAt(this.f12208bp + i);
                        i = i7;
                    }
                }
                if (!z) {
                    int i8 = this.f12208bp;
                    length = cArr.length + i8;
                    i2 = ((i8 + i) - length) - 1;
                } else {
                    if (charAt != '\"') {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    int i9 = i + 1;
                    charAt = charAt(this.f12208bp + i);
                    int i10 = this.f12208bp;
                    length = cArr.length + i10 + 1;
                    i2 = ((i10 + i9) - length) - 2;
                    i = i9;
                }
                if (z4 || i2 >= 17) {
                    parseFloat = Float.parseFloat(subString(length, i2));
                } else {
                    parseFloat = (float) (j2 / j);
                    if (z3) {
                        parseFloat = -parseFloat;
                    }
                }
                if (charAt == ',') {
                    int i11 = this.f12208bp + i;
                    this.f12208bp = i11;
                    this.f12209ch = charAt(i11);
                    this.matchStat = 3;
                    this.token = 16;
                    return parseFloat;
                }
                if (charAt != '}') {
                    this.matchStat = -1;
                    return 0.0f;
                }
                int i12 = i + 1;
                char charAt4 = charAt(this.f12208bp + i);
                if (charAt4 == ',') {
                    this.token = 16;
                    int i13 = this.f12208bp + i12;
                    this.f12208bp = i13;
                    this.f12209ch = charAt(i13);
                } else if (charAt4 == ']') {
                    this.token = 15;
                    int i14 = this.f12208bp + i12;
                    this.f12208bp = i14;
                    this.f12209ch = charAt(i14);
                } else if (charAt4 == '}') {
                    this.token = 13;
                    int i15 = this.f12208bp + i12;
                    this.f12208bp = i15;
                    this.f12209ch = charAt(i15);
                } else {
                    if (charAt4 != 26) {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    this.f12208bp += i12 - 1;
                    this.token = 20;
                    this.f12209ch = (char) 26;
                }
                this.matchStat = 4;
                return parseFloat;
            }
        }
        boolean z5 = z2;
        if (charAt2 != 'n' || charAt(this.f12208bp + i3) != 'u' || charAt(this.f12208bp + i3 + 1) != 'l' || charAt(this.f12208bp + i3 + 2) != 'l') {
            this.matchStat = -1;
            return 0.0f;
        }
        this.matchStat = 5;
        int i16 = i3 + 3;
        int i17 = i16 + 1;
        char charAt5 = charAt(this.f12208bp + i16);
        if (z5 && charAt5 == '\"') {
            charAt5 = charAt(this.f12208bp + i17);
            i17++;
        }
        while (charAt5 != ',') {
            if (charAt5 == '}') {
                int i18 = this.f12208bp + i17;
                this.f12208bp = i18;
                this.f12209ch = charAt(i18);
                this.matchStat = 5;
                this.token = 13;
                return 0.0f;
            }
            if (!isWhitespace(charAt5)) {
                this.matchStat = -1;
                return 0.0f;
            }
            charAt5 = charAt(this.f12208bp + i17);
            i17++;
        }
        int i19 = this.f12208bp + i17;
        this.f12208bp = i19;
        this.f12209ch = charAt(i19);
        this.matchStat = 5;
        this.token = 16;
        return 0.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x00a8, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00aa, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] scanFieldFloatArray(char[] r20) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray(char[]):float[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x014a, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x00b1, code lost:
    
        r21.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x00b3, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0191, code lost:
    
        r21.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0194, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0135, code lost:
    
        r4 = r18 + 1;
        r1 = charAt(r21.f12208bp + r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0140, code lost:
    
        if (r2 == r3.length) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0142, code lost:
    
        r5 = new float[r2];
        r6 = 0;
        java.lang.System.arraycopy(r3, 0, r5, 0, r2);
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x014c, code lost:
    
        if (r8 < r7.length) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x014e, code lost:
    
        r5 = new float[(r7.length * 3) / 2];
        java.lang.System.arraycopy(r3, r6, r5, r6, r2);
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0159, code lost:
    
        r5 = r8 + 1;
        r7[r8] = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x015f, code lost:
    
        if (r1 != ',') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0161, code lost:
    
        r3 = r4 + 1;
        r2 = charAt(r21.f12208bp + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x016f, code lost:
    
        if (r1 != ']') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x017c, code lost:
    
        r2 = r1;
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0171, code lost:
    
        r3 = r4 + 1;
        r2 = charAt(r21.f12208bp + r4);
        r8 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[][] scanFieldFloatArray2(char[] r22) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray2(char[]):float[][]");
    }

    public int scanFieldInt(char[] cArr) {
        int i;
        char charAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char charAt2 = charAt(this.f12208bp + length);
        boolean z = charAt2 == '-';
        if (z) {
            charAt2 = charAt(this.f12208bp + i2);
            i2++;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i3 = charAt2 - '0';
        while (true) {
            i = i2 + 1;
            charAt = charAt(this.f12208bp + i2);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            i3 = (i3 * 10) + (charAt - '0');
            i2 = i;
        }
        if (charAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if ((i3 < 0 || i > cArr.length + 14) && !(i3 == Integer.MIN_VALUE && i == 17 && z)) {
            this.matchStat = -1;
            return 0;
        }
        if (charAt == ',') {
            int i4 = this.f12208bp + i;
            this.f12208bp = i4;
            this.f12209ch = charAt(i4);
            this.matchStat = 3;
            this.token = 16;
            return z ? -i3 : i3;
        }
        if (charAt != '}') {
            this.matchStat = -1;
            return 0;
        }
        int i5 = i + 1;
        char charAt3 = charAt(this.f12208bp + i);
        if (charAt3 == ',') {
            this.token = 16;
            int i6 = this.f12208bp + i5;
            this.f12208bp = i6;
            this.f12209ch = charAt(i6);
        } else if (charAt3 == ']') {
            this.token = 15;
            int i7 = this.f12208bp + i5;
            this.f12208bp = i7;
            this.f12209ch = charAt(i7);
        } else if (charAt3 == '}') {
            this.token = 13;
            int i8 = this.f12208bp + i5;
            this.f12208bp = i8;
            this.f12209ch = charAt(i8);
        } else {
            if (charAt3 != 26) {
                this.matchStat = -1;
                return 0;
            }
            this.token = 20;
            this.f12208bp += i5 - 1;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return z ? -i3 : i3;
    }

    public final int[] scanFieldIntArray(char[] cArr) {
        boolean z;
        int i;
        char charAt;
        int i2;
        int i3;
        char charAt2;
        this.matchStat = 0;
        int[] iArr = null;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i4 = length + 1;
        if (charAt(this.f12208bp + length) != '[') {
            this.matchStat = -2;
            return null;
        }
        int i5 = i4 + 1;
        char charAt3 = charAt(this.f12208bp + i4);
        int[] iArr2 = new int[16];
        if (charAt3 != ']') {
            int i6 = 0;
            while (true) {
                if (charAt3 == '-') {
                    charAt3 = charAt(this.f12208bp + i5);
                    i5++;
                    z = true;
                } else {
                    z = false;
                }
                if (charAt3 < '0' || charAt3 > '9') {
                    break;
                }
                int i7 = charAt3 - '0';
                while (true) {
                    i = i5 + 1;
                    charAt = charAt(this.f12208bp + i5);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    i7 = (i7 * 10) + (charAt - '0');
                    i5 = i;
                }
                if (i6 >= iArr2.length) {
                    int[] iArr3 = new int[(iArr2.length * 3) / 2];
                    System.arraycopy(iArr2, 0, iArr3, 0, i6);
                    iArr2 = iArr3;
                }
                i2 = i6 + 1;
                if (z) {
                    i7 = -i7;
                }
                iArr2[i6] = i7;
                if (charAt == ',') {
                    char charAt4 = charAt(this.f12208bp + i);
                    i++;
                    charAt = charAt4;
                } else if (charAt == ']') {
                    i3 = i + 1;
                    charAt2 = charAt(this.f12208bp + i);
                    break;
                }
                i6 = i2;
                iArr = null;
                charAt3 = charAt;
                i5 = i;
            }
            int[] iArr4 = iArr;
            this.matchStat = -1;
            return iArr4;
        }
        i3 = i5 + 1;
        charAt2 = charAt(this.f12208bp + i5);
        i2 = 0;
        if (i2 != iArr2.length) {
            int[] iArr5 = new int[i2];
            System.arraycopy(iArr2, 0, iArr5, 0, i2);
            iArr2 = iArr5;
        }
        if (charAt2 == ',') {
            this.f12208bp += i3 - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return iArr2;
        }
        if (charAt2 != '}') {
            this.matchStat = -1;
            return null;
        }
        int i8 = i3 + 1;
        char charAt5 = charAt(this.f12208bp + i3);
        if (charAt5 == ',') {
            this.token = 16;
            this.f12208bp += i8 - 1;
            next();
        } else if (charAt5 == ']') {
            this.token = 15;
            this.f12208bp += i8 - 1;
            next();
        } else if (charAt5 == '}') {
            this.token = 13;
            this.f12208bp += i8 - 1;
            next();
        } else {
            if (charAt5 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.f12208bp += i8 - 1;
            this.token = 20;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return iArr2;
    }

    public long scanFieldLong(char[] cArr) {
        boolean z;
        int i;
        char charAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char charAt2 = charAt(this.f12208bp + length);
        if (charAt2 == '-') {
            charAt2 = charAt(this.f12208bp + i2);
            i2++;
            z = true;
        } else {
            z = false;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.matchStat = -1;
            return 0L;
        }
        long j = charAt2 - '0';
        while (true) {
            i = i2 + 1;
            charAt = charAt(this.f12208bp + i2);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            j = (j * 10) + (charAt - '0');
            i2 = i;
        }
        if (charAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (!(i - cArr.length < 21 && (j >= 0 || (j == Long.MIN_VALUE && z)))) {
            this.matchStat = -1;
            return 0L;
        }
        if (charAt == ',') {
            int i3 = this.f12208bp + i;
            this.f12208bp = i3;
            this.f12209ch = charAt(i3);
            this.matchStat = 3;
            this.token = 16;
            return z ? -j : j;
        }
        if (charAt != '}') {
            this.matchStat = -1;
            return 0L;
        }
        int i4 = i + 1;
        char charAt3 = charAt(this.f12208bp + i);
        if (charAt3 == ',') {
            this.token = 16;
            int i5 = this.f12208bp + i4;
            this.f12208bp = i5;
            this.f12209ch = charAt(i5);
        } else if (charAt3 == ']') {
            this.token = 15;
            int i6 = this.f12208bp + i4;
            this.f12208bp = i6;
            this.f12209ch = charAt(i6);
        } else if (charAt3 == '}') {
            this.token = 13;
            int i7 = this.f12208bp + i4;
            this.f12208bp = i7;
            this.f12209ch = charAt(i7);
        } else {
            if (charAt3 != 26) {
                this.matchStat = -1;
                return 0L;
            }
            this.token = 20;
            this.f12208bp += i4 - 1;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return z ? -j : j;
    }

    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return stringDefaultValue();
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.f12208bp + length) != '\"') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int indexOf = indexOf('\"', this.f12208bp + cArr.length + 1);
        if (indexOf == -1) {
            throw new JSONException("unclosed str");
        }
        int length2 = this.f12208bp + cArr.length + 1;
        String subString = subString(length2, indexOf - length2);
        if (subString.indexOf(92) != -1) {
            while (true) {
                int i2 = 0;
                for (int i3 = indexOf - 1; i3 >= 0 && charAt(i3) == '\\'; i3--) {
                    i2++;
                }
                if (i2 % 2 == 0) {
                    break;
                }
                indexOf = indexOf('\"', indexOf + 1);
            }
            int i4 = this.f12208bp;
            int length3 = indexOf - ((cArr.length + i4) + 1);
            subString = readString(sub_chars(i4 + cArr.length + 1, length3), length3);
        }
        int i5 = this.f12208bp;
        int length4 = i + (indexOf - ((cArr.length + i5) + 1)) + 1;
        int i6 = length4 + 1;
        char charAt = charAt(i5 + length4);
        if (charAt == ',') {
            int i7 = this.f12208bp + i6;
            this.f12208bp = i7;
            this.f12209ch = charAt(i7);
            this.matchStat = 3;
            return subString;
        }
        if (charAt != '}') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int i8 = i6 + 1;
        char charAt2 = charAt(this.f12208bp + i6);
        if (charAt2 == ',') {
            this.token = 16;
            int i9 = this.f12208bp + i8;
            this.f12208bp = i9;
            this.f12209ch = charAt(i9);
        } else if (charAt2 == ']') {
            this.token = 15;
            int i10 = this.f12208bp + i8;
            this.f12208bp = i10;
            this.f12209ch = charAt(i10);
        } else if (charAt2 == '}') {
            this.token = 13;
            int i11 = this.f12208bp + i8;
            this.f12208bp = i11;
            this.f12209ch = charAt(i11);
        } else {
            if (charAt2 != 26) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.token = 20;
            this.f12208bp += i8 - 1;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return subString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fa, code lost:
    
        if (r12 != ',') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00fc, code lost:
    
        r12 = r11.f12208bp + r1;
        r11.f12208bp = r12;
        r11.f12209ch = charAt(r12);
        r11.matchStat = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010a, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x010d, code lost:
    
        if (r12 != '}') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x010f, code lost:
    
        r6 = r1 + 1;
        r12 = charAt(r11.f12208bp + r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0118, code lost:
    
        if (r12 != ',') goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x011a, code lost:
    
        r11.token = 16;
        r12 = r11.f12208bp + r6;
        r11.f12208bp = r12;
        r11.f12209ch = charAt(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x015f, code lost:
    
        r11.matchStat = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0162, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012a, code lost:
    
        if (r12 != ']') goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x012c, code lost:
    
        r11.token = 15;
        r12 = r11.f12208bp + r6;
        r11.f12208bp = r12;
        r11.f12209ch = charAt(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x013c, code lost:
    
        if (r12 != '}') goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013e, code lost:
    
        r11.token = 13;
        r12 = r11.f12208bp + r6;
        r11.f12208bp = r12;
        r11.f12209ch = charAt(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0150, code lost:
    
        if (r12 != 26) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0152, code lost:
    
        r11.f12208bp += r6 - 1;
        r11.token = 20;
        r11.f12209ch = 26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0163, code lost:
    
        r11.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0165, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0166, code lost:
    
        r11.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0168, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00ee, code lost:
    
        if (r13.size() != 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00f0, code lost:
    
        r12 = charAt(r11.f12208bp + r1);
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0170, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illega str");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r12, java.lang.Class<?> r13) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.f12208bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = Fnv.MAGIC_HASH_CODE;
        while (true) {
            int i2 = i + 1;
            char charAt = charAt(this.f12208bp + i);
            if (charAt == '\"') {
                int i3 = i2 + 1;
                char charAt2 = charAt(this.f12208bp + i2);
                if (charAt2 == ',') {
                    int i4 = this.f12208bp + i3;
                    this.f12208bp = i4;
                    this.f12209ch = charAt(i4);
                    this.matchStat = 3;
                    return j;
                }
                if (charAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i5 = i3 + 1;
                char charAt3 = charAt(this.f12208bp + i3);
                if (charAt3 == ',') {
                    this.token = 16;
                    int i6 = this.f12208bp + i5;
                    this.f12208bp = i6;
                    this.f12209ch = charAt(i6);
                } else if (charAt3 == ']') {
                    this.token = 15;
                    int i7 = this.f12208bp + i5;
                    this.f12208bp = i7;
                    this.f12209ch = charAt(i7);
                } else if (charAt3 == '}') {
                    this.token = 13;
                    int i8 = this.f12208bp + i5;
                    this.f12208bp = i8;
                    this.f12209ch = charAt(i8);
                } else {
                    if (charAt3 != 26) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.token = 20;
                    this.f12208bp += i5 - 1;
                    this.f12209ch = (char) 26;
                }
                this.matchStat = 4;
                return j;
            }
            j = (j ^ charAt) * Fnv.MAGIC_PRIME;
            if (charAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i = i2;
        }
    }

    public UUID scanFieldUUID(char[] cArr) {
        char charAt;
        int i;
        UUID uuid;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i15 = length + 1;
        char charAt2 = charAt(this.f12208bp + length);
        char c = 4;
        if (charAt2 != '\"') {
            if (charAt2 == 'n') {
                int i16 = i15 + 1;
                if (charAt(this.f12208bp + i15) == 'u') {
                    int i17 = i16 + 1;
                    if (charAt(this.f12208bp + i16) == 'l') {
                        int i18 = i17 + 1;
                        if (charAt(this.f12208bp + i17) == 'l') {
                            charAt = charAt(this.f12208bp + i18);
                            i = i18 + 1;
                            uuid = null;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return null;
        }
        int indexOf = indexOf('\"', this.f12208bp + cArr.length + 1);
        if (indexOf == -1) {
            throw new JSONException("unclosed str");
        }
        int length2 = this.f12208bp + cArr.length + 1;
        int i19 = indexOf - length2;
        char c2 = 'F';
        char c3 = 'f';
        char c4 = 'A';
        char c5 = '0';
        if (i19 == 36) {
            int i20 = 0;
            long j = 0;
            while (i20 < 8) {
                char charAt3 = charAt(length2 + i20);
                if (charAt3 < '0' || charAt3 > '9') {
                    if (charAt3 >= 'a' && charAt3 <= 'f') {
                        i13 = charAt3 - 'a';
                    } else {
                        if (charAt3 < 'A' || charAt3 > c2) {
                            this.matchStat = -2;
                            return null;
                        }
                        i13 = charAt3 - 'A';
                    }
                    i14 = i13 + 10;
                } else {
                    i14 = charAt3 - '0';
                }
                j = (j << 4) | i14;
                i20++;
                indexOf = indexOf;
                c2 = 'F';
            }
            int i21 = indexOf;
            int i22 = 9;
            int i23 = 13;
            while (i22 < i23) {
                char charAt4 = charAt(length2 + i22);
                if (charAt4 < '0' || charAt4 > '9') {
                    if (charAt4 >= 'a' && charAt4 <= 'f') {
                        i11 = charAt4 - 'a';
                    } else {
                        if (charAt4 < c4 || charAt4 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i11 = charAt4 - 'A';
                    }
                    i12 = i11 + 10;
                } else {
                    i12 = charAt4 - '0';
                }
                j = (j << c) | i12;
                i22++;
                i23 = 13;
                c4 = 'A';
                c = 4;
            }
            long j2 = j;
            for (int i24 = 14; i24 < 18; i24++) {
                char charAt5 = charAt(length2 + i24);
                if (charAt5 < '0' || charAt5 > '9') {
                    if (charAt5 >= 'a' && charAt5 <= 'f') {
                        i9 = charAt5 - 'a';
                    } else {
                        if (charAt5 < 'A' || charAt5 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i9 = charAt5 - 'A';
                    }
                    i10 = i9 + 10;
                } else {
                    i10 = charAt5 - '0';
                }
                j2 = (j2 << 4) | i10;
            }
            long j3 = 0;
            for (int i25 = 19; i25 < 23; i25++) {
                char charAt6 = charAt(length2 + i25);
                if (charAt6 < '0' || charAt6 > '9') {
                    if (charAt6 >= 'a' && charAt6 <= 'f') {
                        i7 = charAt6 - 'a';
                    } else {
                        if (charAt6 < 'A' || charAt6 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i7 = charAt6 - 'A';
                    }
                    i8 = i7 + 10;
                } else {
                    i8 = charAt6 - '0';
                }
                j3 = (j3 << 4) | i8;
            }
            int i26 = 24;
            long j4 = j3;
            int i27 = 36;
            while (i26 < i27) {
                char charAt7 = charAt(length2 + i26);
                if (charAt7 < c5 || charAt7 > '9') {
                    if (charAt7 >= 'a' && charAt7 <= c3) {
                        i5 = charAt7 - 'a';
                    } else {
                        if (charAt7 < 'A' || charAt7 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i5 = charAt7 - 'A';
                    }
                    i6 = i5 + 10;
                } else {
                    i6 = charAt7 - '0';
                }
                j4 = (j4 << 4) | i6;
                i26++;
                i15 = i15;
                i27 = 36;
                c5 = '0';
                c3 = 'f';
            }
            uuid = new UUID(j2, j4);
            int i28 = this.f12208bp;
            int length3 = i15 + (i21 - ((cArr.length + i28) + 1)) + 1;
            i = length3 + 1;
            charAt = charAt(i28 + length3);
        } else {
            if (i19 != 32) {
                this.matchStat = -1;
                return null;
            }
            long j5 = 0;
            for (int i29 = 0; i29 < 16; i29++) {
                char charAt8 = charAt(length2 + i29);
                if (charAt8 < '0' || charAt8 > '9') {
                    if (charAt8 >= 'a' && charAt8 <= 'f') {
                        i3 = charAt8 - 'a';
                    } else {
                        if (charAt8 < 'A' || charAt8 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i3 = charAt8 - 'A';
                    }
                    i4 = i3 + 10;
                } else {
                    i4 = charAt8 - '0';
                }
                j5 = (j5 << 4) | i4;
            }
            int i30 = 16;
            long j6 = 0;
            for (int i31 = 32; i30 < i31; i31 = 32) {
                char charAt9 = charAt(length2 + i30);
                if (charAt9 >= '0' && charAt9 <= '9') {
                    i2 = charAt9 - '0';
                } else if (charAt9 >= 'a' && charAt9 <= 'f') {
                    i2 = (charAt9 - 'a') + 10;
                } else {
                    if (charAt9 < 'A' || charAt9 > 'F') {
                        this.matchStat = -2;
                        return null;
                    }
                    i2 = (charAt9 - 'A') + 10;
                    j6 = (j6 << 4) | i2;
                    i30++;
                }
                j6 = (j6 << 4) | i2;
                i30++;
            }
            uuid = new UUID(j5, j6);
            int i32 = this.f12208bp;
            int length4 = i15 + (indexOf - ((cArr.length + i32) + 1)) + 1;
            i = length4 + 1;
            charAt = charAt(i32 + length4);
        }
        if (charAt == ',') {
            int i33 = this.f12208bp + i;
            this.f12208bp = i33;
            this.f12209ch = charAt(i33);
            this.matchStat = 3;
            return uuid;
        }
        if (charAt != '}') {
            this.matchStat = -1;
            return null;
        }
        int i34 = i + 1;
        char charAt10 = charAt(this.f12208bp + i);
        if (charAt10 == ',') {
            this.token = 16;
            int i35 = this.f12208bp + i34;
            this.f12208bp = i35;
            this.f12209ch = charAt(i35);
        } else if (charAt10 == ']') {
            this.token = 15;
            int i36 = this.f12208bp + i34;
            this.f12208bp = i36;
            this.f12209ch = charAt(i36);
        } else if (charAt10 == '}') {
            this.token = 13;
            int i37 = this.f12208bp + i34;
            this.f12208bp = i37;
            this.f12209ch = charAt(i37);
        } else {
            if (charAt10 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.f12208bp += i34 - 1;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return uuid;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final float scanFloat(char c) {
        int i;
        int i2;
        char charAt;
        long j;
        int i3;
        int i4;
        float parseFloat;
        this.matchStat = 0;
        char charAt2 = charAt(this.f12208bp + 0);
        boolean z = charAt2 == '\"';
        if (z) {
            charAt2 = charAt(this.f12208bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z2 = charAt2 == '-';
        if (z2) {
            charAt2 = charAt(this.f12208bp + i);
            i++;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            if (charAt2 != 'n' || charAt(this.f12208bp + i) != 'u' || charAt(this.f12208bp + i + 1) != 'l' || charAt(this.f12208bp + i + 2) != 'l') {
                this.matchStat = -1;
                return 0.0f;
            }
            this.matchStat = 5;
            int i5 = i + 3;
            int i6 = i5 + 1;
            char charAt3 = charAt(this.f12208bp + i5);
            if (z && charAt3 == '\"') {
                charAt3 = charAt(this.f12208bp + i6);
                i6++;
            }
            while (charAt3 != ',') {
                if (charAt3 == ']') {
                    int i7 = this.f12208bp + i6;
                    this.f12208bp = i7;
                    this.f12209ch = charAt(i7);
                    this.matchStat = 5;
                    this.token = 15;
                    return 0.0f;
                }
                if (!isWhitespace(charAt3)) {
                    this.matchStat = -1;
                    return 0.0f;
                }
                charAt3 = charAt(this.f12208bp + i6);
                i6++;
            }
            int i8 = this.f12208bp + i6;
            this.f12208bp = i8;
            this.f12209ch = charAt(i8);
            this.matchStat = 5;
            this.token = 16;
            return 0.0f;
        }
        long j2 = charAt2 - '0';
        while (true) {
            i2 = i + 1;
            charAt = charAt(this.f12208bp + i);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            j2 = (j2 * 10) + (charAt - '0');
            i = i2;
        }
        if (charAt == '.') {
            int i9 = i2 + 1;
            char charAt4 = charAt(this.f12208bp + i2);
            if (charAt4 >= '0' && charAt4 <= '9') {
                j2 = (j2 * 10) + (charAt4 - '0');
                j = 10;
                while (true) {
                    i2 = i9 + 1;
                    charAt = charAt(this.f12208bp + i9);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    j2 = (j2 * 10) + (charAt - '0');
                    j *= 10;
                    i9 = i2;
                }
            } else {
                this.matchStat = -1;
                return 0.0f;
            }
        } else {
            j = 1;
        }
        boolean z3 = charAt == 'e' || charAt == 'E';
        if (z3) {
            int i10 = i2 + 1;
            char charAt5 = charAt(this.f12208bp + i2);
            if (charAt5 == '+' || charAt5 == '-') {
                int i11 = i10 + 1;
                charAt = charAt(this.f12208bp + i10);
                i2 = i11;
            } else {
                i2 = i10;
                charAt = charAt5;
            }
            while (charAt >= '0' && charAt <= '9') {
                int i12 = i2 + 1;
                charAt = charAt(this.f12208bp + i2);
                i2 = i12;
            }
        }
        if (!z) {
            i3 = this.f12208bp;
            i4 = ((i3 + i2) - i3) - 1;
        } else {
            if (charAt != '\"') {
                this.matchStat = -1;
                return 0.0f;
            }
            int i13 = i2 + 1;
            charAt = charAt(this.f12208bp + i2);
            int i14 = this.f12208bp;
            i3 = i14 + 1;
            i4 = ((i14 + i13) - i3) - 2;
            i2 = i13;
        }
        if (z3 || i4 >= 17) {
            parseFloat = Float.parseFloat(subString(i3, i4));
        } else {
            parseFloat = (float) (j2 / j);
            if (z2) {
                parseFloat = -parseFloat;
            }
        }
        if (charAt != c) {
            this.matchStat = -1;
            return parseFloat;
        }
        int i15 = this.f12208bp + i2;
        this.f12208bp = i15;
        this.f12209ch = charAt(i15);
        this.matchStat = 3;
        this.token = 16;
        return parseFloat;
    }

    public final void scanHex() {
        char next;
        if (this.f12209ch != 'x') {
            throw new JSONException("illegal state. " + this.f12209ch);
        }
        next();
        if (this.f12209ch != '\'') {
            throw new JSONException("illegal state. " + this.f12209ch);
        }
        this.f12210np = this.f12208bp;
        next();
        if (this.f12209ch == '\'') {
            next();
            this.token = 26;
            return;
        }
        while (true) {
            next = next();
            if ((next < '0' || next > '9') && (next < 'A' || next > 'F')) {
                break;
            } else {
                this.f12211sp++;
            }
        }
        if (next == '\'') {
            this.f12211sp++;
            next();
            this.token = 26;
        } else {
            throw new JSONException("illegal state. " + next);
        }
    }

    public final void scanIdent() {
        this.f12210np = this.f12208bp - 1;
        this.hasSpecial = false;
        do {
            this.f12211sp++;
            next();
        } while (Character.isLetterOrDigit(this.f12209ch));
        String stringVal = stringVal();
        if ("null".equalsIgnoreCase(stringVal)) {
            this.token = 8;
            return;
        }
        if ("new".equals(stringVal)) {
            this.token = 9;
            return;
        }
        if ("true".equals(stringVal)) {
            this.token = 6;
            return;
        }
        if ("false".equals(stringVal)) {
            this.token = 7;
            return;
        }
        if (OcrValues.ENGINE_UNDEFINED.equals(stringVal)) {
            this.token = 23;
            return;
        }
        if ("Set".equals(stringVal)) {
            this.token = 21;
        } else if ("TreeSet".equals(stringVal)) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int scanInt(char c) {
        int i;
        int i2;
        char charAt;
        this.matchStat = 0;
        char charAt2 = charAt(this.f12208bp + 0);
        boolean z = charAt2 == '\"';
        if (z) {
            charAt2 = charAt(this.f12208bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z2 = charAt2 == '-';
        if (z2) {
            charAt2 = charAt(this.f12208bp + i);
            i++;
        }
        if (charAt2 >= '0' && charAt2 <= '9') {
            int i3 = charAt2 - '0';
            while (true) {
                i2 = i + 1;
                charAt = charAt(this.f12208bp + i);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                i3 = (i3 * 10) + (charAt - '0');
                i = i2;
            }
            if (charAt == '.') {
                this.matchStat = -1;
                return 0;
            }
            if (i3 < 0) {
                this.matchStat = -1;
                return 0;
            }
            while (charAt != c) {
                if (!isWhitespace(charAt)) {
                    this.matchStat = -1;
                    return z2 ? -i3 : i3;
                }
                char charAt3 = charAt(this.f12208bp + i2);
                i2++;
                charAt = charAt3;
            }
            int i4 = this.f12208bp + i2;
            this.f12208bp = i4;
            this.f12209ch = charAt(i4);
            this.matchStat = 3;
            this.token = 16;
            return z2 ? -i3 : i3;
        }
        if (charAt2 != 'n' || charAt(this.f12208bp + i) != 'u' || charAt(this.f12208bp + i + 1) != 'l' || charAt(this.f12208bp + i + 2) != 'l') {
            this.matchStat = -1;
            return 0;
        }
        this.matchStat = 5;
        int i5 = i + 3;
        int i6 = i5 + 1;
        char charAt4 = charAt(this.f12208bp + i5);
        if (z && charAt4 == '\"') {
            int i7 = i6 + 1;
            charAt4 = charAt(this.f12208bp + i6);
            i6 = i7;
        }
        while (charAt4 != ',') {
            if (charAt4 == ']') {
                int i8 = this.f12208bp + i6;
                this.f12208bp = i8;
                this.f12209ch = charAt(i8);
                this.matchStat = 5;
                this.token = 15;
                return 0;
            }
            if (!isWhitespace(charAt4)) {
                this.matchStat = -1;
                return 0;
            }
            int i9 = i6 + 1;
            charAt4 = charAt(this.f12208bp + i6);
            i6 = i9;
        }
        int i10 = this.f12208bp + i6;
        this.f12208bp = i10;
        this.f12209ch = charAt(i10);
        this.matchStat = 5;
        this.token = 16;
        return 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c) {
        int i;
        int i2;
        char charAt;
        char c2;
        this.matchStat = 0;
        char charAt2 = charAt(this.f12208bp + 0);
        boolean z = charAt2 == '\"';
        if (z) {
            charAt2 = charAt(this.f12208bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z2 = charAt2 == '-';
        if (z2) {
            charAt2 = charAt(this.f12208bp + i);
            i++;
        }
        if (charAt2 >= '0' && charAt2 <= '9') {
            long j = charAt2 - '0';
            while (true) {
                i2 = i + 1;
                charAt = charAt(this.f12208bp + i);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                j = (j * 10) + (charAt - '0');
                i = i2;
            }
            if (charAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (!(j >= 0 || (j == Long.MIN_VALUE && z2))) {
                throw new NumberFormatException(subString(this.f12208bp, i2 - 1));
            }
            if (!z) {
                c2 = c;
            } else {
                if (charAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                charAt = charAt(this.f12208bp + i2);
                c2 = c;
                i2++;
            }
            while (charAt != c2) {
                if (!isWhitespace(charAt)) {
                    this.matchStat = -1;
                    return j;
                }
                charAt = charAt(this.f12208bp + i2);
                i2++;
            }
            int i3 = this.f12208bp + i2;
            this.f12208bp = i3;
            this.f12209ch = charAt(i3);
            this.matchStat = 3;
            this.token = 16;
            return z2 ? -j : j;
        }
        if (charAt2 != 'n' || charAt(this.f12208bp + i) != 'u' || charAt(this.f12208bp + i + 1) != 'l' || charAt(this.f12208bp + i + 2) != 'l') {
            this.matchStat = -1;
            return 0L;
        }
        this.matchStat = 5;
        int i4 = i + 3;
        int i5 = i4 + 1;
        char charAt3 = charAt(this.f12208bp + i4);
        if (z && charAt3 == '\"') {
            int i6 = i5 + 1;
            charAt3 = charAt(this.f12208bp + i5);
            i5 = i6;
        }
        while (charAt3 != ',') {
            if (charAt3 == ']') {
                int i7 = this.f12208bp + i5;
                this.f12208bp = i7;
                this.f12209ch = charAt(i7);
                this.matchStat = 5;
                this.token = 15;
                return 0L;
            }
            if (!isWhitespace(charAt3)) {
                this.matchStat = -1;
                return 0L;
            }
            int i8 = i5 + 1;
            charAt3 = charAt(this.f12208bp + i5);
            i5 = i8;
        }
        int i9 = this.f12208bp + i5;
        this.f12208bp = i9;
        this.f12209ch = charAt(i9);
        this.matchStat = 5;
        this.token = 16;
        return 0L;
    }

    public final void scanNullOrNew() {
        scanNullOrNew(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c6  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void scanNumber() {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanNumber():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x016e, code lost:
    
        throw new com.alibaba.fastjson.JSONException("invalid escape character \\x" + r1 + r2);
     */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void scanString() {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanString():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x012b, code lost:
    
        if (r1 != r18) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x012d, code lost:
    
        r1 = r16.f12208bp + r3;
        r16.f12208bp = r1;
        r16.f12209ch = charAt(r1);
        r16.matchStat = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x013a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x013b, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x013d, code lost:
    
        return;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scanStringArray(java.util.Collection<java.lang.String> r17, char r18) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanStringArray(java.util.Collection, char):void");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable symbolTable) {
        skipWhitespace();
        char c = this.f12209ch;
        if (c == '\"') {
            return scanSymbol(symbolTable, '\"');
        }
        if (c == '\'') {
            if (isEnabled(Feature.AllowSingleQuotes)) {
                return scanSymbol(symbolTable, Chars.QUOTE);
            }
            throw new JSONException("syntax error");
        }
        if (c == '}') {
            next();
            this.token = 13;
            return null;
        }
        if (c == ',') {
            next();
            this.token = 16;
            return null;
        }
        if (c == 26) {
            this.token = 20;
            return null;
        }
        if (isEnabled(Feature.AllowUnQuotedFieldNames)) {
            return scanSymbolUnQuoted(symbolTable);
        }
        throw new JSONException("syntax error");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbolUnQuoted(SymbolTable symbolTable) {
        if (this.token == 1 && this.pos == 0 && this.f12208bp == 1) {
            this.f12208bp = 0;
        }
        boolean[] zArr = IOUtils.firstIdentifierFlags;
        int i = this.f12209ch;
        if (!(i >= zArr.length || zArr[i])) {
            throw new JSONException("illegal identifier : " + this.f12209ch + info());
        }
        boolean[] zArr2 = IOUtils.identifierFlags;
        this.f12210np = this.f12208bp;
        this.f12211sp = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i = (i * 31) + next;
            this.f12211sp++;
        }
        this.f12209ch = charAt(this.f12208bp);
        this.token = 18;
        if (this.f12211sp == 4 && i == 3392903 && charAt(this.f12210np) == 'n' && charAt(this.f12210np + 1) == 'u' && charAt(this.f12210np + 2) == 'l' && charAt(this.f12210np + 3) == 'l') {
            return null;
        }
        return symbolTable == null ? subString(this.f12210np, this.f12211sp) : addSymbol(this.f12210np, this.f12211sp, i, symbolTable);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanSymbolWithSeperator(SymbolTable symbolTable, char c) {
        int i = 0;
        this.matchStat = 0;
        char charAt = charAt(this.f12208bp + 0);
        if (charAt == 'n') {
            if (charAt(this.f12208bp + 1) != 'u' || charAt(this.f12208bp + 1 + 1) != 'l' || charAt(this.f12208bp + 1 + 2) != 'l') {
                this.matchStat = -1;
                return null;
            }
            if (charAt(this.f12208bp + 4) != c) {
                this.matchStat = -1;
                return null;
            }
            int i2 = this.f12208bp + 5;
            this.f12208bp = i2;
            this.f12209ch = charAt(i2);
            this.matchStat = 3;
            return null;
        }
        if (charAt != '\"') {
            this.matchStat = -1;
            return null;
        }
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = charAt(this.f12208bp + i3);
            if (charAt2 == '\"') {
                int i5 = this.f12208bp;
                int i6 = i5 + 0 + 1;
                String addSymbol = addSymbol(i6, ((i5 + i4) - i6) - 1, i, symbolTable);
                int i7 = i4 + 1;
                char charAt3 = charAt(this.f12208bp + i4);
                while (charAt3 != c) {
                    if (!isWhitespace(charAt3)) {
                        this.matchStat = -1;
                        return addSymbol;
                    }
                    charAt3 = charAt(this.f12208bp + i7);
                    i7++;
                }
                int i8 = this.f12208bp + i7;
                this.f12208bp = i8;
                this.f12209ch = charAt(i8);
                this.matchStat = 3;
                return addSymbol;
            }
            i = (i * 31) + charAt2;
            if (charAt2 == '\\') {
                this.matchStat = -1;
                return null;
            }
            i3 = i4;
        }
    }

    public final void scanTrue() {
        if (this.f12209ch != 't') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f12209ch != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f12209ch != 'u') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f12209ch != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        char c = this.f12209ch;
        if (c != ' ' && c != ',' && c != '}' && c != ']' && c != '\n' && c != '\r' && c != '\t' && c != 26 && c != '\f' && c != '\b' && c != ':' && c != '/') {
            throw new JSONException("scan true error");
        }
        this.token = 6;
    }

    public final int scanType(String str) {
        this.matchStat = 0;
        char[] cArr = typeFieldName;
        if (!charArrayCompare(cArr)) {
            return -2;
        }
        int length = this.f12208bp + cArr.length;
        int length2 = str.length();
        for (int i = 0; i < length2; i++) {
            if (str.charAt(i) != charAt(length + i)) {
                return -1;
            }
        }
        int i2 = length + length2;
        if (charAt(i2) != '\"') {
            return -1;
        }
        int i3 = i2 + 1;
        char charAt = charAt(i3);
        this.f12209ch = charAt;
        if (charAt == ',') {
            int i4 = i3 + 1;
            this.f12209ch = charAt(i4);
            this.f12208bp = i4;
            this.token = 16;
            return 3;
        }
        if (charAt == '}') {
            i3++;
            char charAt2 = charAt(i3);
            this.f12209ch = charAt2;
            if (charAt2 == ',') {
                this.token = 16;
                i3++;
                this.f12209ch = charAt(i3);
            } else if (charAt2 == ']') {
                this.token = 15;
                i3++;
                this.f12209ch = charAt(i3);
            } else if (charAt2 == '}') {
                this.token = 13;
                i3++;
                this.f12209ch = charAt(i3);
            } else {
                if (charAt2 != 26) {
                    return -1;
                }
                this.token = 20;
            }
            this.matchStat = 4;
        }
        this.f12208bp = i3;
        return this.matchStat;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanTypeName(SymbolTable symbolTable) {
        return null;
    }

    public UUID scanUUID(char c) {
        char charAt;
        int i;
        UUID uuid;
        int i2;
        char c2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        this.matchStat = 0;
        char charAt2 = charAt(this.f12208bp + 0);
        int i15 = 13;
        char c3 = 4;
        if (charAt2 == '\"') {
            int indexOf = indexOf('\"', this.f12208bp + 1);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int i16 = this.f12208bp + 1;
            int i17 = indexOf - i16;
            char c4 = 'f';
            char c5 = '9';
            char c6 = 'A';
            char c7 = 'a';
            if (i17 == 36) {
                int i18 = 0;
                long j = 0;
                while (i18 < 8) {
                    char charAt3 = charAt(i16 + i18);
                    if (charAt3 < '0' || charAt3 > '9') {
                        if (charAt3 >= 'a' && charAt3 <= c4) {
                            i13 = charAt3 - 'a';
                        } else {
                            if (charAt3 < 'A' || charAt3 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i13 = charAt3 - 'A';
                        }
                        i14 = i13 + 10;
                    } else {
                        i14 = charAt3 - '0';
                    }
                    j = (j << 4) | i14;
                    i18++;
                    c4 = 'f';
                }
                int i19 = 9;
                while (i19 < i15) {
                    char charAt4 = charAt(i16 + i19);
                    if (charAt4 < '0' || charAt4 > '9') {
                        if (charAt4 >= 'a' && charAt4 <= 'f') {
                            i11 = charAt4 - 'a';
                        } else {
                            if (charAt4 < c6 || charAt4 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i11 = charAt4 - 'A';
                        }
                        i12 = i11 + 10;
                    } else {
                        i12 = charAt4 - '0';
                    }
                    j = (j << 4) | i12;
                    i19++;
                    i15 = 13;
                    c6 = 'A';
                }
                int i20 = 14;
                long j2 = j;
                while (i20 < 18) {
                    char charAt5 = charAt(i16 + i20);
                    if (charAt5 < '0' || charAt5 > '9') {
                        if (charAt5 >= c7 && charAt5 <= 'f') {
                            i9 = charAt5 - 'a';
                        } else {
                            if (charAt5 < 'A' || charAt5 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i9 = charAt5 - 'A';
                        }
                        i10 = i9 + 10;
                    } else {
                        i10 = charAt5 - '0';
                    }
                    j2 = (j2 << c3) | i10;
                    i20++;
                    c7 = 'a';
                    c3 = 4;
                }
                long j3 = 0;
                for (int i21 = 19; i21 < 23; i21++) {
                    char charAt6 = charAt(i16 + i21);
                    if (charAt6 < '0' || charAt6 > '9') {
                        if (charAt6 >= 'a' && charAt6 <= 'f') {
                            i7 = charAt6 - 'a';
                        } else {
                            if (charAt6 < 'A' || charAt6 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i7 = charAt6 - 'A';
                        }
                        i8 = i7 + 10;
                    } else {
                        i8 = charAt6 - '0';
                    }
                    j3 = (j3 << 4) | i8;
                }
                int i22 = 24;
                long j4 = j3;
                int i23 = 36;
                while (i22 < i23) {
                    char charAt7 = charAt(i16 + i22);
                    if (charAt7 < '0' || charAt7 > c5) {
                        if (charAt7 >= 'a' && charAt7 <= 'f') {
                            i5 = charAt7 - 'a';
                        } else {
                            if (charAt7 < 'A' || charAt7 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i5 = charAt7 - 'A';
                        }
                        i6 = i5 + 10;
                    } else {
                        i6 = charAt7 - '0';
                    }
                    j4 = (j4 << 4) | i6;
                    i22++;
                    i23 = 36;
                    c5 = '9';
                }
                uuid = new UUID(j2, j4);
                int i24 = this.f12208bp;
                int i25 = (indexOf - (i24 + 1)) + 1 + 1;
                i = i25 + 1;
                charAt = charAt(i24 + i25);
            } else {
                if (i17 != 32) {
                    this.matchStat = -1;
                    return null;
                }
                long j5 = 0;
                for (int i26 = 0; i26 < 16; i26++) {
                    char charAt8 = charAt(i16 + i26);
                    if (charAt8 < '0' || charAt8 > '9') {
                        if (charAt8 >= 'a' && charAt8 <= 'f') {
                            i3 = charAt8 - 'a';
                        } else {
                            if (charAt8 < 'A' || charAt8 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i3 = charAt8 - 'A';
                        }
                        i4 = i3 + 10;
                    } else {
                        i4 = charAt8 - '0';
                    }
                    j5 = (j5 << 4) | i4;
                }
                int i27 = 16;
                long j6 = 0;
                for (int i28 = 32; i27 < i28; i28 = 32) {
                    char charAt9 = charAt(i16 + i27);
                    if (charAt9 < '0' || charAt9 > '9') {
                        if (charAt9 >= 'a' && charAt9 <= 'f') {
                            i2 = (charAt9 - 'a') + 10;
                        } else {
                            if (charAt9 < 'A' || charAt9 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i2 = (charAt9 - 'A') + 10;
                        }
                        c2 = 4;
                    } else {
                        i2 = charAt9 - '0';
                        c2 = 4;
                    }
                    j6 = (j6 << c2) | i2;
                    i27++;
                }
                uuid = new UUID(j5, j6);
                int i29 = this.f12208bp;
                int i30 = (indexOf - (i29 + 1)) + 1 + 1;
                i = i30 + 1;
                charAt = charAt(i29 + i30);
            }
        } else {
            if (charAt2 != 'n' || charAt(this.f12208bp + 1) != 'u' || charAt(this.f12208bp + 2) != 'l' || charAt(this.f12208bp + 3) != 'l') {
                this.matchStat = -1;
                return null;
            }
            charAt = charAt(this.f12208bp + 4);
            i = 5;
            uuid = null;
        }
        if (charAt == ',') {
            int i31 = this.f12208bp + i;
            this.f12208bp = i31;
            this.f12209ch = charAt(i31);
            this.matchStat = 3;
            return uuid;
        }
        if (charAt != ']') {
            this.matchStat = -1;
            return null;
        }
        int i32 = i + 1;
        char charAt10 = charAt(this.f12208bp + i);
        if (charAt10 == ',') {
            this.token = 16;
            int i33 = this.f12208bp + i32;
            this.f12208bp = i33;
            this.f12209ch = charAt(i33);
        } else if (charAt10 == ']') {
            this.token = 15;
            int i34 = this.f12208bp + i32;
            this.f12208bp = i34;
            this.f12209ch = charAt(i34);
        } else if (charAt10 == '}') {
            this.token = 13;
            int i35 = this.f12208bp + i32;
            this.f12208bp = i35;
            this.f12209ch = charAt(i35);
        } else {
            if (charAt10 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.f12208bp += i32 - 1;
            this.f12209ch = (char) 26;
        }
        this.matchStat = 4;
        return uuid;
    }

    public boolean seekArrayToItem(int i) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToField(long j, boolean z) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToFieldDeepScan(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setFeatures(int i) {
        this.features = i;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setTimeZone(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public void setToken(int i) {
        this.token = i;
    }

    public void skipArray() {
        throw new UnsupportedOperationException();
    }

    public void skipComment() {
        char c;
        next();
        char c2 = this.f12209ch;
        if (c2 != '/') {
            if (c2 != '*') {
                throw new JSONException("invalid comment");
            }
            next();
            while (true) {
                char c3 = this.f12209ch;
                if (c3 == 26) {
                    return;
                }
                if (c3 == '*') {
                    next();
                    if (this.f12209ch == '/') {
                        next();
                        return;
                    }
                } else {
                    next();
                }
            }
        }
        do {
            next();
            c = this.f12209ch;
            if (c == '\n') {
                next();
                return;
            }
        } while (c != 26);
    }

    public void skipObject() {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void skipWhitespace() {
        while (true) {
            char c = this.f12209ch;
            if (c > '/') {
                return;
            }
            if (c == ' ' || c == '\r' || c == '\n' || c == '\t' || c == '\f' || c == '\b') {
                next();
            } else if (c != '/') {
                return;
            } else {
                skipComment();
            }
        }
    }

    public final String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String stringVal();

    public abstract String subString(int i, int i2);

    public abstract char[] sub_chars(int i, int i2);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int token() {
        return this.token;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String tokenName() {
        return JSONToken.name(this.token);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(int i) {
        return (this.features & i) != 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon(int i) {
        nextTokenWithChar(':');
    }

    public final void scanNullOrNew(boolean z) {
        if (this.f12209ch == 'n') {
            next();
            char c = this.f12209ch;
            if (c != 'u') {
                if (c == 'e') {
                    next();
                    if (this.f12209ch == 'w') {
                        next();
                        char c2 = this.f12209ch;
                        if (c2 != ' ' && c2 != ',' && c2 != '}' && c2 != ']' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != 26 && c2 != '\f' && c2 != '\b') {
                            throw new JSONException("scan new error");
                        }
                        this.token = 9;
                        return;
                    }
                    throw new JSONException("error parse new");
                }
                throw new JSONException("error parse new");
            }
            next();
            if (this.f12209ch == 'l') {
                next();
                if (this.f12209ch == 'l') {
                    next();
                    char c3 = this.f12209ch;
                    if (c3 != ' ' && c3 != ',' && c3 != '}' && c3 != ']' && c3 != '\n' && c3 != '\r' && c3 != '\t' && c3 != 26 && ((c3 != ':' || !z) && c3 != '\f' && c3 != '\b')) {
                        throw new JSONException("scan null error");
                    }
                    this.token = 8;
                    return;
                }
                throw new JSONException("error parse null");
            }
            throw new JSONException("error parse null");
        }
        throw new JSONException("error parse null or new");
    }

    public int seekObjectToField(long[] jArr) {
        throw new UnsupportedOperationException();
    }

    public void skipObject(boolean z) {
        throw new UnsupportedOperationException();
    }

    public final boolean isEnabled(int i, int i2) {
        return ((this.features & i2) == 0 && (i & i2) == 0) ? false : true;
    }

    public int matchField(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable symbolTable, char c) {
        String addSymbol;
        this.f12210np = this.f12208bp;
        this.f12211sp = 0;
        boolean z = false;
        int i = 0;
        while (true) {
            char next = next();
            if (next == c) {
                this.token = 4;
                if (!z) {
                    int i2 = this.f12210np;
                    addSymbol = addSymbol(i2 == -1 ? 0 : i2 + 1, this.f12211sp, i, symbolTable);
                } else {
                    addSymbol = symbolTable.addSymbol(this.sbuf, 0, this.f12211sp, i);
                }
                this.f12211sp = 0;
                next();
                return addSymbol;
            }
            if (next == 26) {
                throw new JSONException("unclosed.str");
            }
            if (next == '\\') {
                if (!z) {
                    int i3 = this.f12211sp;
                    char[] cArr = this.sbuf;
                    if (i3 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i3 <= length) {
                            i3 = length;
                        }
                        char[] cArr2 = new char[i3];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.sbuf = cArr2;
                    }
                    arrayCopy(this.f12210np + 1, this.sbuf, 0, this.f12211sp);
                    z = true;
                }
                char next2 = next();
                if (next2 == '\"') {
                    i = (i * 31) + 34;
                    putChar('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            i = (i * 31) + 92;
                            putChar('\\');
                        } else if (next2 == 'b') {
                            i = (i * 31) + 8;
                            putChar('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                i = (i * 31) + 10;
                                putChar('\n');
                            } else if (next2 == 'r') {
                                i = (i * 31) + 13;
                                putChar('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        i = (i * 31) + 47;
                                        putChar('/');
                                        break;
                                    case '0':
                                        i = (i * 31) + next2;
                                        putChar((char) 0);
                                        break;
                                    case '1':
                                        i = (i * 31) + next2;
                                        putChar((char) 1);
                                        break;
                                    case '2':
                                        i = (i * 31) + next2;
                                        putChar((char) 2);
                                        break;
                                    case '3':
                                        i = (i * 31) + next2;
                                        putChar((char) 3);
                                        break;
                                    case '4':
                                        i = (i * 31) + next2;
                                        putChar((char) 4);
                                        break;
                                    case '5':
                                        i = (i * 31) + next2;
                                        putChar((char) 5);
                                        break;
                                    case '6':
                                        i = (i * 31) + next2;
                                        putChar((char) 6);
                                        break;
                                    case '7':
                                        i = (i * 31) + next2;
                                        putChar((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                i = (i * 31) + 9;
                                                putChar('\t');
                                                break;
                                            case 'u':
                                                int parseInt = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
                                                i = (i * 31) + parseInt;
                                                putChar((char) parseInt);
                                                break;
                                            case 'v':
                                                i = (i * 31) + 11;
                                                putChar((char) 11);
                                                break;
                                            default:
                                                this.f12209ch = next2;
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                }
                            } else {
                                char next3 = next();
                                this.f12209ch = next3;
                                char next4 = next();
                                this.f12209ch = next4;
                                int[] iArr = digits;
                                char c2 = (char) ((iArr[next3] * 16) + iArr[next4]);
                                i = (i * 31) + c2;
                                putChar(c2);
                            }
                        }
                    }
                    i = (i * 31) + 12;
                    putChar('\f');
                } else {
                    i = (i * 31) + 39;
                    putChar(Chars.QUOTE);
                }
            } else {
                i = (i * 31) + next;
                if (!z) {
                    this.f12211sp++;
                } else {
                    int i4 = this.f12211sp;
                    char[] cArr3 = this.sbuf;
                    if (i4 == cArr3.length) {
                        putChar(next);
                    } else {
                        this.f12211sp = i4 + 1;
                        cArr3[i4] = next;
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0029. Please report as an issue. */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken(int i) {
        this.f12211sp = 0;
        while (true) {
            if (i == 2) {
                char c = this.f12209ch;
                if (c >= '0' && c <= '9') {
                    this.pos = this.f12208bp;
                    scanNumber();
                    return;
                }
                if (c == '\"') {
                    this.pos = this.f12208bp;
                    scanString();
                    return;
                } else if (c == '[') {
                    this.token = 14;
                    next();
                    return;
                } else if (c == '{') {
                    this.token = 12;
                    next();
                    return;
                }
            } else if (i == 4) {
                char c2 = this.f12209ch;
                if (c2 == '\"') {
                    this.pos = this.f12208bp;
                    scanString();
                    return;
                }
                if (c2 >= '0' && c2 <= '9') {
                    this.pos = this.f12208bp;
                    scanNumber();
                    return;
                } else if (c2 == '[') {
                    this.token = 14;
                    next();
                    return;
                } else if (c2 == '{') {
                    this.token = 12;
                    next();
                    return;
                }
            } else if (i == 12) {
                char c3 = this.f12209ch;
                if (c3 == '{') {
                    this.token = 12;
                    next();
                    return;
                } else if (c3 == '[') {
                    this.token = 14;
                    next();
                    return;
                }
            } else if (i != 18) {
                if (i != 20) {
                    switch (i) {
                        case 14:
                            char c4 = this.f12209ch;
                            if (c4 == '[') {
                                this.token = 14;
                                next();
                                return;
                            } else if (c4 == '{') {
                                this.token = 12;
                                next();
                                return;
                            }
                            break;
                        case 15:
                            if (this.f12209ch == ']') {
                                this.token = 15;
                                next();
                                return;
                            }
                            break;
                        case 16:
                            char c5 = this.f12209ch;
                            if (c5 == ',') {
                                this.token = 16;
                                next();
                                return;
                            }
                            if (c5 == '}') {
                                this.token = 13;
                                next();
                                return;
                            } else if (c5 == ']') {
                                this.token = 15;
                                next();
                                return;
                            } else if (c5 == 26) {
                                this.token = 20;
                                return;
                            } else if (c5 == 'n') {
                                scanNullOrNew(false);
                                return;
                            }
                            break;
                    }
                }
                if (this.f12209ch == 26) {
                    this.token = 20;
                    return;
                }
            } else {
                nextIdent();
                return;
            }
            char c6 = this.f12209ch;
            if (c6 != ' ' && c6 != '\n' && c6 != '\r' && c6 != '\t' && c6 != '\f' && c6 != '\b') {
                nextToken();
                return;
            }
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanString(char c) {
        this.matchStat = 0;
        char charAt = charAt(this.f12208bp + 0);
        if (charAt == 'n') {
            if (charAt(this.f12208bp + 1) == 'u' && charAt(this.f12208bp + 1 + 1) == 'l' && charAt(this.f12208bp + 1 + 2) == 'l') {
                if (charAt(this.f12208bp + 4) == c) {
                    int i = this.f12208bp + 5;
                    this.f12208bp = i;
                    this.f12209ch = charAt(i);
                    this.matchStat = 3;
                    return null;
                }
                this.matchStat = -1;
                return null;
            }
            this.matchStat = -1;
            return null;
        }
        int i2 = 1;
        while (charAt != '\"') {
            if (isWhitespace(charAt)) {
                charAt = charAt(this.f12208bp + i2);
                i2++;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int i3 = this.f12208bp + i2;
        int indexOf = indexOf('\"', i3);
        if (indexOf != -1) {
            String subString = subString(this.f12208bp + i2, indexOf - i3);
            if (subString.indexOf(92) != -1) {
                while (true) {
                    int i4 = 0;
                    for (int i5 = indexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                        i4++;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    indexOf = indexOf('\"', indexOf + 1);
                }
                int i6 = indexOf - i3;
                subString = readString(sub_chars(this.f12208bp + 1, i6), i6);
            }
            int i7 = i2 + (indexOf - i3) + 1;
            int i8 = i7 + 1;
            char charAt2 = charAt(this.f12208bp + i7);
            while (charAt2 != c) {
                if (!isWhitespace(charAt2)) {
                    if (charAt2 == ']') {
                        int i9 = this.f12208bp + i8;
                        this.f12208bp = i9;
                        this.f12209ch = charAt(i9);
                        this.matchStat = -1;
                    }
                    return subString;
                }
                charAt2 = charAt(this.f12208bp + i8);
                i8++;
            }
            int i10 = this.f12208bp + i8;
            this.f12208bp = i10;
            this.f12209ch = charAt(i10);
            this.matchStat = 3;
            this.token = 16;
            return subString;
        }
        throw new JSONException("unclosed str");
    }

    public String[] scanFieldStringArray(char[] cArr, int i, SymbolTable symbolTable) {
        throw new UnsupportedOperationException();
    }
}
