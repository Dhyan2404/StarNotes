package net.p110sf.saxon.ma.json;

import com.google.android.material.motion.MotionUtils;
import java.util.Map;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.StringToDouble;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes11.dex */
public class JsonParser {
    public static final int ALLOW_ANY_TOP_LEVEL = 2;
    public static final int DEBUG = 16;
    public static final int DUPLICATES_FIRST = 128;
    public static final int DUPLICATES_LAST = 64;
    public static final int DUPLICATES_REJECTED = 256;
    public static final int DUPLICATES_RETAINED = 32;
    public static final int DUPLICATES_SPECIFIED = 480;
    public static final int ESCAPE = 1;
    public static final int LIBERAL = 4;
    public static final int NESTING_LIMIT = 10000;
    public static final int VALIDATE = 8;

    /* renamed from: c */
    public static final String f100643c = "FOJS0001";

    /* renamed from: d */
    public static final String f100644d = "FOJS0003";

    /* renamed from: e */
    public static final String f100645e = "FOJS0004";

    /* renamed from: f */
    public static final String f100646f = "FOJS0005";

    /* renamed from: g */
    public static final String f100647g = "FOJS0001";

    /* renamed from: a */
    public Function f100648a = null;

    /* renamed from: b */
    public int f100649b = 0;

    /* loaded from: classes11.dex */
    public enum JsonToken {
        LSQB,
        RSQB,
        LCURLY,
        RCURLY,
        STRING_LITERAL,
        NUMERIC_LITERAL,
        TRUE,
        FALSE,
        NULL,
        COLON,
        COMMA,
        UNQUOTED_STRING,
        EOF
    }

    /* renamed from: net.sf.saxon.ma.json.JsonParser$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18400a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100650a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f100650a = iArr;
            try {
                iArr[JsonToken.LCURLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100650a[JsonToken.LSQB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100650a[JsonToken.NUMERIC_LITERAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100650a[JsonToken.TRUE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100650a[JsonToken.FALSE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f100650a[JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f100650a[JsonToken.STRING_LITERAL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f100650a[JsonToken.RSQB.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f100650a[JsonToken.RCURLY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f100650a[JsonToken.COLON.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f100650a[JsonToken.COMMA.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f100650a[JsonToken.EOF.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* renamed from: net.sf.saxon.ma.json.JsonParser$b */
    /* loaded from: classes11.dex */
    public static class C18401b {

        /* renamed from: a */
        public final String f100651a;

        /* renamed from: d */
        public JsonToken f100654d;

        /* renamed from: c */
        public int f100653c = 1;

        /* renamed from: e */
        public StringBuilder f100655e = new StringBuilder(64);

        /* renamed from: b */
        public int f100652b = 0;

        public C18401b(String str) {
            this.f100651a = str;
            if (str.isEmpty() || str.charAt(0) != 65279) {
                return;
            }
            this.f100652b++;
        }

        /* renamed from: a */
        public JsonToken m63330a() throws XPathException {
            JsonToken m63331b = m63331b();
            this.f100654d = m63331b;
            return m63331b;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00de, code lost:
        
            if (r10.equals("null") == false) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0161, code lost:
        
            if (r10.f100652b < r10.f100651a.length()) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x0163, code lost:
        
            r0 = r10.f100651a.charAt(r10.f100652b);
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x016d, code lost:
        
            if (r0 < '0') goto L86;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0171, code lost:
        
            if (r0 <= '9') goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0187, code lost:
        
            r10.f100655e.append(r0);
            r0 = r10.f100652b + 1;
            r10.f100652b = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0197, code lost:
        
            if (r0 < r10.f100651a.length()) goto L141;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0175, code lost:
        
            if (r0 == '-') goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0179, code lost:
        
            if (r0 == '+') goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x017d, code lost:
        
            if (r0 == '.') goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0181, code lost:
        
            if (r0 == 'e') goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0185, code lost:
        
            if (r0 != 'E') goto L139;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x019b, code lost:
        
            return net.sf.saxon.ma.json.JsonParser.JsonToken.NUMERIC_LITERAL;
         */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00ed  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00cd  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00d8  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final net.sf.saxon.ma.json.JsonParser.JsonToken m63331b() throws net.p110sf.saxon.trans.XPathException {
            /*
                Method dump skipped, instructions count: 604
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.ma.json.JsonParser.C18401b.m63331b():net.sf.saxon.ma.json.JsonParser$JsonToken");
        }
    }

    /* renamed from: b */
    public static void m63324b(String str, String str2) throws XPathException {
        throw new XPathException(str, str2);
    }

    /* renamed from: c */
    public static void m63325c(String str, String str2, int i) throws XPathException {
        m63324b("Invalid JSON input on line " + i + ": " + str, str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b1, code lost:
    
        if (r6.equals("use-first") == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getFlags(java.util.Map<java.lang.String, net.p110sf.saxon.om.Sequence> r6, boolean r7, boolean r8) throws net.p110sf.saxon.trans.XPathException {
        /*
            java.lang.String r0 = "debug"
            java.lang.Object r0 = r6.get(r0)
            net.sf.saxon.value.BooleanValue r0 = (net.p110sf.saxon.value.BooleanValue) r0
            r1 = 0
            if (r0 == 0) goto L14
            boolean r0 = r0.getBooleanValue()
            if (r0 == 0) goto L14
            r0 = 16
            goto L15
        L14:
            r0 = r1
        L15:
            java.lang.String r2 = "escape"
            java.lang.Object r2 = r6.get(r2)
            net.sf.saxon.value.BooleanValue r2 = (net.p110sf.saxon.value.BooleanValue) r2
            java.lang.String r3 = "FOJS0005"
            if (r2 == 0) goto L3a
            boolean r2 = r2.getBooleanValue()
            if (r2 == 0) goto L3a
            r0 = r0 | 1
            java.lang.String r2 = "fallback"
            java.lang.Object r2 = r6.get(r2)
            if (r2 != 0) goto L32
            goto L3a
        L32:
            net.sf.saxon.trans.XPathException r6 = new net.sf.saxon.trans.XPathException
            java.lang.String r7 = "Cannot specify a fallback function when escape=true"
            r6.<init>(r7, r3)
            throw r6
        L3a:
            java.lang.String r2 = "liberal"
            java.lang.Object r2 = r6.get(r2)
            net.sf.saxon.value.BooleanValue r2 = (net.p110sf.saxon.value.BooleanValue) r2
            r4 = 2
            if (r2 == 0) goto L4e
            boolean r2 = r2.getBooleanValue()
            if (r2 == 0) goto L4e
            r0 = r0 | 4
            r0 = r0 | r4
        L4e:
            if (r7 == 0) goto L6a
            java.lang.String r7 = "validate"
            java.lang.Object r7 = r6.get(r7)
            net.sf.saxon.value.BooleanValue r7 = (net.p110sf.saxon.value.BooleanValue) r7
            boolean r7 = r7.getBooleanValue()
            if (r7 == 0) goto L6b
            if (r8 != 0) goto L67
            java.lang.String r8 = "Requiring validation on non-schema-aware processor"
            java.lang.String r2 = "FOJS0004"
            m63324b(r8, r2)
        L67:
            r0 = r0 | 8
            goto L6b
        L6a:
            r7 = r1
        L6b:
            java.lang.String r8 = "duplicates"
            boolean r2 = r6.containsKey(r8)
            if (r2 == 0) goto Ld5
            java.lang.Object r6 = r6.get(r8)
            net.sf.saxon.value.StringValue r6 = (net.p110sf.saxon.value.StringValue) r6
            java.lang.String r6 = r6.getStringValue()
            r6.hashCode()
            int r8 = r6.hashCode()
            java.lang.String r2 = "retain"
            r5 = -1
            switch(r8) {
                case -1629738262: goto Lab;
                case -934710369: goto La0;
                case -934416123: goto L97;
                case -329495780: goto L8c;
                default: goto L8a;
            }
        L8a:
            r1 = r5
            goto Lb4
        L8c:
            java.lang.String r8 = "use-last"
            boolean r8 = r6.equals(r8)
            if (r8 != 0) goto L95
            goto L8a
        L95:
            r1 = 3
            goto Lb4
        L97:
            boolean r8 = r6.equals(r2)
            if (r8 != 0) goto L9e
            goto L8a
        L9e:
            r1 = r4
            goto Lb4
        La0:
            java.lang.String r8 = "reject"
            boolean r8 = r6.equals(r8)
            if (r8 != 0) goto La9
            goto L8a
        La9:
            r1 = 1
            goto Lb4
        Lab:
            java.lang.String r8 = "use-first"
            boolean r8 = r6.equals(r8)
            if (r8 != 0) goto Lb4
            goto L8a
        Lb4:
            switch(r1) {
                case 0: goto Lc6;
                case 1: goto Lc3;
                case 2: goto Lc0;
                case 3: goto Lbd;
                default: goto Lb7;
            }
        Lb7:
            java.lang.String r8 = "Invalid value for 'duplicates' option"
            m63324b(r8, r3)
            goto Lc8
        Lbd:
            r0 = r0 | 64
            goto Lc8
        Lc0:
            r0 = r0 | 32
            goto Lc8
        Lc3:
            r0 = r0 | 256(0x100, float:3.59E-43)
            goto Lc8
        Lc6:
            r0 = r0 | 128(0x80, float:1.794E-43)
        Lc8:
            if (r7 == 0) goto Ld5
            boolean r6 = r2.equals(r6)
            if (r6 == 0) goto Ld5
            java.lang.String r6 = "The options validate:true and duplicates:retain cannot be used together"
            m63324b(r6, r3)
        Ld5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.ma.json.JsonParser.getFlags(java.util.Map, boolean, boolean):int");
    }

    public static String showToken(JsonToken jsonToken, String str) {
        switch (C18400a.f100650a[jsonToken.ordinal()]) {
            case 1:
                return "{";
            case 2:
                return IteratorUtils.f104923a;
            case 3:
                return "number (" + str + MotionUtils.f31762d;
            case 4:
                return "true";
            case 5:
                return "false";
            case 6:
                return "null";
            case 7:
                return "string (\"" + str + "\")";
            case 8:
                return IteratorUtils.f104924b;
            case 9:
                return "}";
            case 10:
                return ":";
            case 11:
                return ",";
            case 12:
                return "<eof>";
            default:
                return "<" + jsonToken + ">";
        }
    }

    public static String unescape(String str, int i, String str2, int i2) throws XPathException {
        StringBuilder sb;
        String hexString;
        if (str.indexOf(92) < 0) {
            return str;
        }
        int i3 = 0;
        boolean z = (i & 4) != 0;
        StringBuilder sb2 = new StringBuilder(str.length());
        while (i3 < str.length()) {
            char charAt = str.charAt(i3);
            if (charAt == '\\') {
                int i4 = i3 + 1;
                if (i3 == str.length() - 1) {
                    throw new XPathException("Invalid JSON escape: String " + Err.wrap(str) + " ends in backslash", str2);
                }
                char charAt2 = str.charAt(i4);
                if (charAt2 == '\"') {
                    sb2.append('\"');
                } else if (charAt2 == '/') {
                    sb2.append('/');
                } else if (charAt2 == '\\') {
                    sb2.append('\\');
                } else if (charAt2 == 'b') {
                    sb2.append('\b');
                } else if (charAt2 == 'f') {
                    sb2.append('\f');
                } else if (charAt2 == 'n') {
                    sb2.append('\n');
                } else if (charAt2 == 'r') {
                    sb2.append('\r');
                } else if (charAt2 == 't') {
                    sb2.append('\t');
                } else if (charAt2 == 'u') {
                    try {
                        sb2.append((char) Integer.parseInt(str.substring(i4 + 1, i4 + 5), 16));
                        i3 = i4 + 4;
                    } catch (Exception unused) {
                        if (!z) {
                            throw new XPathException("Invalid JSON escape: \\u must be followed by four hex characters", str2);
                        }
                        sb2.append("\\u");
                    }
                } else {
                    if (!z) {
                        char charAt3 = str.charAt(i4);
                        if (charAt3 < 256) {
                            sb = new StringBuilder();
                            sb.append(charAt3);
                            hexString = "";
                        } else {
                            sb = new StringBuilder();
                            sb.append("x");
                            hexString = Integer.toHexString(charAt3);
                        }
                        sb.append(hexString);
                        throw new XPathException("Unknown escape sequence \\" + sb.toString(), str2);
                    }
                    sb2.append(str.charAt(i4));
                }
                i3 = i4;
            } else {
                sb2.append(charAt);
            }
            i3++;
        }
        return sb2.toString();
    }

    /* renamed from: d */
    public final void m63326d(JsonHandler jsonHandler, C18401b c18401b, int i, XPathContext xPathContext) throws XPathException {
        boolean z = (i & 4) != 0;
        jsonHandler.startArray();
        if (c18401b.m63330a() == JsonToken.RSQB) {
            jsonHandler.endArray();
            return;
        }
        while (true) {
            try {
                m63327e(jsonHandler, c18401b, i, xPathContext);
            } catch (StackOverflowError unused) {
                m63325c("Arrays are too deeply nested", "FOJS0001", c18401b.f100653c);
            }
            JsonToken m63330a = c18401b.m63330a();
            if (m63330a == JsonToken.COMMA) {
                if (c18401b.m63330a() != JsonToken.RSQB) {
                    continue;
                } else if (z) {
                    break;
                } else {
                    m63325c("Trailing comma after entry in array", "FOJS0001", c18401b.f100653c);
                }
            } else {
                if (m63330a == JsonToken.RSQB) {
                    break;
                }
                m63325c("Unexpected token (" + showToken(m63330a, c18401b.f100655e.toString()) + ") after entry in array", "FOJS0001", c18401b.f100653c);
            }
        }
        jsonHandler.endArray();
    }

    /* renamed from: e */
    public final void m63327e(JsonHandler jsonHandler, C18401b c18401b, int i, XPathContext xPathContext) throws XPathException {
        if ((i & 16) != 0) {
            System.err.println("token:" + c18401b.f100654d + " :" + ((Object) c18401b.f100655e));
        }
        if (this.f100649b > 10000) {
            m63325c("Objects are too deeply nested", "FOJS0001", c18401b.f100653c);
        }
        switch (C18400a.f100650a[c18401b.f100654d.ordinal()]) {
            case 1:
                this.f100649b++;
                m63329g(jsonHandler, c18401b, i, xPathContext);
                this.f100649b--;
                return;
            case 2:
                this.f100649b++;
                m63326d(jsonHandler, c18401b, i, xPathContext);
                this.f100649b--;
                return;
            case 3:
                String sb = c18401b.f100655e.toString();
                jsonHandler.writeNumeric(sb, m63328f(sb, i, c18401b.f100653c, xPathContext));
                return;
            case 4:
                jsonHandler.writeBoolean(true);
                return;
            case 5:
                jsonHandler.writeBoolean(false);
                return;
            case 6:
                jsonHandler.writeNull();
                return;
            case 7:
                jsonHandler.writeString(unescape(c18401b.f100655e.toString(), i, "FOJS0001", c18401b.f100653c));
                return;
            default:
                m63325c("Unexpected symbol: " + ((Object) c18401b.f100655e), "FOJS0001", c18401b.f100653c);
                return;
        }
    }

    /* renamed from: f */
    public final AtomicValue m63328f(String str, int i, int i2, XPathContext xPathContext) throws XPathException {
        if ((i & 4) == 0) {
            try {
                if (str.startsWith("+")) {
                    m63325c("Leading + sign not allowed: " + str, "FOJS0001", i2);
                } else {
                    String substring = str.startsWith("-") ? str.substring(1) : str;
                    if (substring.startsWith("0") && !substring.equals("0") && !substring.startsWith("0.") && !substring.startsWith("0e") && !substring.startsWith("0E")) {
                        m63325c("Redundant leading zeroes not allowed: " + str, "FOJS0001", i2);
                    }
                    if (substring.endsWith(".") || substring.contains(".e") || substring.contains(".E")) {
                        m63325c("Empty fractional part not allowed", "FOJS0001", i2);
                    }
                    if (substring.startsWith(".")) {
                        m63325c("Empty integer part not allowed", "FOJS0001", i2);
                    }
                }
            } catch (NumberFormatException e) {
                m63325c("Invalid numeric literal: " + e.getMessage(), "FOJS0001", i2);
                return DoubleValue.NaN;
            }
        }
        return this.f100648a != null ? (AtomicValue) SystemFunction.dynamicCall(this.f100648a, xPathContext, new Sequence[]{new StringValue(str)}).head().head() : new DoubleValue(StringToDouble.getInstance().stringToNumber(StringView.tidy(str)));
    }

    /* renamed from: g */
    public final void m63329g(JsonHandler jsonHandler, C18401b c18401b, int i, XPathContext xPathContext) throws XPathException {
        boolean z = (i & 4) != 0;
        jsonHandler.startMap();
        JsonToken m63330a = c18401b.m63330a();
        while (m63330a != JsonToken.RCURLY) {
            if (m63330a != JsonToken.STRING_LITERAL && (m63330a != JsonToken.UNQUOTED_STRING || !z)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Property name must be a string literal (found ");
                sb.append(showToken(m63330a, c18401b.f100655e.toString() + MotionUtils.f31762d));
                m63325c(sb.toString(), "FOJS0001", c18401b.f100653c);
            }
            String unescape = unescape(c18401b.f100655e.toString(), i, "FOJS0001", c18401b.f100653c);
            String reEscape = jsonHandler.reEscape(unescape);
            if (c18401b.m63330a() != JsonToken.COLON) {
                m63325c("Missing colon after \"" + Err.wrap(unescape) + "\"", "FOJS0001", c18401b.f100653c);
            }
            c18401b.m63330a();
            boolean key = jsonHandler.setKey(unescape, reEscape);
            if (key && (i & 256) != 0) {
                m63325c("Duplicate key value \"" + Err.wrap(unescape) + "\"", f100644d, c18401b.f100653c);
            }
            if (key && (i & 96) == 0) {
                try {
                    JsonHandler jsonHandler2 = new JsonHandler();
                    jsonHandler2.setContext(xPathContext);
                    m63327e(jsonHandler2, c18401b, i, xPathContext);
                } catch (StackOverflowError unused) {
                    m63325c("Objects are too deeply nested", "FOJS0001", c18401b.f100653c);
                }
            } else {
                m63327e(jsonHandler, c18401b, i, xPathContext);
            }
            JsonToken m63330a2 = c18401b.m63330a();
            if (m63330a2 == JsonToken.COMMA) {
                m63330a = c18401b.m63330a();
                if (m63330a != JsonToken.RCURLY) {
                    continue;
                } else if (z) {
                    break;
                } else {
                    m63325c("Trailing comma after entry in object", "FOJS0001", c18401b.f100653c);
                }
            } else {
                if (m63330a2 == JsonToken.RCURLY) {
                    break;
                }
                m63325c("Unexpected token after value of \"" + Err.wrap(unescape) + "\" property", "FOJS0001", c18401b.f100653c);
                m63330a = m63330a2;
            }
        }
        jsonHandler.endMap();
    }

    public void parse(String str, int i, JsonHandler jsonHandler, XPathContext xPathContext) throws XPathException {
        if (str.isEmpty()) {
            m63325c("An empty string is not valid JSON", "FOJS0001", 1);
        }
        C18401b c18401b = new C18401b(str);
        c18401b.m63330a();
        try {
            m63327e(jsonHandler, c18401b, i, xPathContext);
        } catch (IllegalStateException e) {
            m63325c(e.getMessage(), "FOJS0001", c18401b.f100653c);
        }
        if (c18401b.m63330a() != JsonToken.EOF) {
            m63325c("Unexpected token beyond end of JSON input", "FOJS0001", c18401b.f100653c);
        }
    }

    public void setNumberParser(Map<String, Sequence> map, XPathContext xPathContext) throws XPathException {
        Sequence sequence = map.get("number-parser");
        if (sequence != null) {
            Item head = sequence.head();
            if (!(head instanceof Function)) {
                throw new XPathException("Value of option 'number-parser' is not a function", f100646f);
            }
            Function function = (Function) head;
            this.f100648a = function;
            if (function.getArity() != 1) {
                throw new XPathException("Number-parser function must have arity=1", f100646f);
            }
            if (!new SpecificFunctionType(new SequenceType[]{SequenceType.SINGLE_STRING}, SequenceType.SINGLE_ATOMIC).matches(this.f100648a, xPathContext.getConfiguration().getTypeHierarchy())) {
                throw new XPathException("Number-parser function does not match the required type", f100646f);
            }
        }
    }
}
