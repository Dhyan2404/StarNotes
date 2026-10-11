package org.mortbay.util;

import java.util.NoSuchElementException;
import java.util.StringTokenizer;

/* loaded from: classes13.dex */
public class QuotedStringTokenizer extends StringTokenizer {

    /* renamed from: o */
    public static final String f115323o = "\t\n\r";

    /* renamed from: e */
    public String f115324e;

    /* renamed from: f */
    public String f115325f;

    /* renamed from: g */
    public boolean f115326g;

    /* renamed from: h */
    public boolean f115327h;

    /* renamed from: i */
    public StringBuffer f115328i;

    /* renamed from: j */
    public boolean f115329j;

    /* renamed from: k */
    public int f115330k;

    /* renamed from: l */
    public int f115331l;

    /* renamed from: m */
    public boolean f115332m;

    /* renamed from: n */
    public boolean f115333n;

    public QuotedStringTokenizer(String str, String str2, boolean z, boolean z2) {
        super("");
        this.f115325f = f115323o;
        this.f115326g = false;
        this.f115327h = false;
        this.f115329j = false;
        this.f115330k = 0;
        this.f115331l = 0;
        this.f115332m = true;
        this.f115333n = true;
        this.f115324e = str;
        if (str2 != null) {
            this.f115325f = str2;
        }
        this.f115327h = z;
        this.f115326g = z2;
        if (this.f115325f.indexOf(39) < 0 && this.f115325f.indexOf(34) < 0) {
            this.f115328i = new StringBuffer(this.f115324e.length() > 1024 ? 512 : this.f115324e.length() / 2);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Can't use quotes as delimiters: ");
        stringBuffer.append(this.f115325f);
        throw new Error(stringBuffer.toString());
    }

    public static String quote(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '\\' || charAt == '\"' || charAt == '\'' || Character.isWhitespace(charAt) || str2.indexOf(charAt) >= 0) {
                StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
                quote(stringBuffer, str);
                return stringBuffer.toString();
            }
        }
        return str;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0031. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0049 A[Catch: all -> 0x0098, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0011, B:21:0x0031, B:22:0x0034, B:24:0x0037, B:26:0x003c, B:29:0x0049, B:30:0x004c, B:33:0x004e, B:35:0x0054, B:40:0x0060, B:41:0x0063, B:43:0x0090, B:44:0x0067, B:46:0x006d, B:48:0x0073, B:50:0x0079, B:52:0x007f, B:54:0x0085, B:56:0x008b, B:59:0x0093, B:60:0x0096), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004e A[Catch: all -> 0x0098, LOOP:2: B:33:0x004e->B:43:0x0090, LOOP_START, PHI: r1
      0x004e: PHI (r1v4 int) = (r1v3 int), (r1v5 int) binds: [B:28:0x0047, B:43:0x0090] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0011, B:21:0x0031, B:22:0x0034, B:24:0x0037, B:26:0x003c, B:29:0x0049, B:30:0x004c, B:33:0x004e, B:35:0x0054, B:40:0x0060, B:41:0x0063, B:43:0x0090, B:44:0x0067, B:46:0x006d, B:48:0x0073, B:50:0x0079, B:52:0x007f, B:54:0x0085, B:56:0x008b, B:59:0x0093, B:60:0x0096), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void quoteIfNeeded(java.lang.StringBuffer r8, java.lang.String r9) {
        /*
            monitor-enter(r8)
            r0 = 0
            r1 = r0
        L3:
            int r2 = r9.length()     // Catch: java.lang.Throwable -> L98
            r3 = 92
            r4 = 13
            r5 = 12
            r6 = 34
            if (r1 >= r2) goto L46
            char r2 = r9.charAt(r1)     // Catch: java.lang.Throwable -> L98
            if (r2 == r5) goto L37
            if (r2 == r4) goto L37
            r7 = 32
            if (r2 == r7) goto L37
            if (r2 == r6) goto L37
            r7 = 37
            if (r2 == r7) goto L37
            r7 = 43
            if (r2 == r7) goto L37
            r7 = 59
            if (r2 == r7) goto L37
            r7 = 61
            if (r2 == r7) goto L37
            if (r2 == r3) goto L37
            switch(r2) {
                case 8: goto L37;
                case 9: goto L37;
                case 10: goto L37;
                default: goto L34;
            }     // Catch: java.lang.Throwable -> L98
        L34:
            int r1 = r1 + 1
            goto L3
        L37:
            r8.append(r6)     // Catch: java.lang.Throwable -> L98
        L3a:
            if (r0 >= r1) goto L47
            char r2 = r9.charAt(r0)     // Catch: java.lang.Throwable -> L98
            r8.append(r2)     // Catch: java.lang.Throwable -> L98
            int r0 = r0 + 1
            goto L3a
        L46:
            r1 = -1
        L47:
            if (r1 >= 0) goto L4e
            r8.append(r9)     // Catch: java.lang.Throwable -> L98
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L98
            return
        L4e:
            int r0 = r9.length()     // Catch: java.lang.Throwable -> L98
            if (r1 >= r0) goto L93
            char r0 = r9.charAt(r1)     // Catch: java.lang.Throwable -> L98
            if (r0 == r5) goto L8b
            if (r0 == r4) goto L85
            if (r0 == r6) goto L7f
            if (r0 == r3) goto L79
            switch(r0) {
                case 8: goto L73;
                case 9: goto L6d;
                case 10: goto L67;
                default: goto L63;
            }     // Catch: java.lang.Throwable -> L98
        L63:
            r8.append(r0)     // Catch: java.lang.Throwable -> L98
            goto L90
        L67:
            java.lang.String r0 = "\\n"
            r8.append(r0)     // Catch: java.lang.Throwable -> L98
            goto L90
        L6d:
            java.lang.String r0 = "\\t"
            r8.append(r0)     // Catch: java.lang.Throwable -> L98
            goto L90
        L73:
            java.lang.String r0 = "\\b"
            r8.append(r0)     // Catch: java.lang.Throwable -> L98
            goto L90
        L79:
            java.lang.String r0 = "\\\\"
            r8.append(r0)     // Catch: java.lang.Throwable -> L98
            goto L90
        L7f:
            java.lang.String r0 = "\\\""
            r8.append(r0)     // Catch: java.lang.Throwable -> L98
            goto L90
        L85:
            java.lang.String r0 = "\\r"
            r8.append(r0)     // Catch: java.lang.Throwable -> L98
            goto L90
        L8b:
            java.lang.String r0 = "\\f"
            r8.append(r0)     // Catch: java.lang.Throwable -> L98
        L90:
            int r1 = r1 + 1
            goto L4e
        L93:
            r8.append(r6)     // Catch: java.lang.Throwable -> L98
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L98
            return
        L98:
            r9 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L98
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.QuotedStringTokenizer.quoteIfNeeded(java.lang.StringBuffer, java.lang.String):void");
    }

    public static String unquote(String str) {
        char charAt;
        String stringBuffer;
        if (str == null) {
            return null;
        }
        if (str.length() < 2 || (charAt = str.charAt(0)) != str.charAt(str.length() - 1) || (charAt != '\"' && charAt != '\'')) {
            return str;
        }
        StringBuffer stringBuffer2 = new StringBuffer(str.length() - 2);
        synchronized (stringBuffer2) {
            boolean z = false;
            int i = 1;
            while (i < str.length() - 1) {
                char charAt2 = str.charAt(i);
                if (z) {
                    if (charAt2 == 'b') {
                        stringBuffer2.append('\b');
                    } else if (charAt2 == 'f') {
                        stringBuffer2.append('\f');
                    } else if (charAt2 == 'n') {
                        stringBuffer2.append('\n');
                    } else if (charAt2 == 'r') {
                        stringBuffer2.append('\r');
                    } else if (charAt2 == 't') {
                        stringBuffer2.append('\t');
                    } else if (charAt2 != 'u') {
                        stringBuffer2.append(charAt2);
                    } else {
                        int i2 = i + 1;
                        int i3 = i2 + 1;
                        int convertHexDigit = (TypeUtil.convertHexDigit((byte) str.charAt(i)) << 24) + (TypeUtil.convertHexDigit((byte) str.charAt(i2)) << 16);
                        int i4 = i3 + 1;
                        int convertHexDigit2 = convertHexDigit + (TypeUtil.convertHexDigit((byte) str.charAt(i3)) << 8);
                        int i5 = i4 + 1;
                        stringBuffer2.append((char) (convertHexDigit2 + TypeUtil.convertHexDigit((byte) str.charAt(i4))));
                        z = false;
                        i = i5;
                    }
                    z = false;
                } else if (charAt2 == '\\') {
                    z = true;
                } else {
                    stringBuffer2.append(charAt2);
                }
                i++;
            }
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }

    @Override // java.util.StringTokenizer
    public int countTokens() {
        return -1;
    }

    public boolean getDouble() {
        return this.f115332m;
    }

    public boolean getSingle() {
        return this.f115333n;
    }

    @Override // java.util.StringTokenizer, java.util.Enumeration
    public boolean hasMoreElements() {
        return hasMoreTokens();
    }

    @Override // java.util.StringTokenizer
    public boolean hasMoreTokens() {
        if (this.f115329j) {
            return true;
        }
        this.f115331l = this.f115330k;
        char c = 0;
        boolean z = false;
        while (this.f115330k < this.f115324e.length()) {
            String str = this.f115324e;
            int i = this.f115330k;
            this.f115330k = i + 1;
            char charAt = str.charAt(i);
            if (c != 0) {
                if (c == 1) {
                    this.f115329j = true;
                    if (this.f115325f.indexOf(charAt) >= 0) {
                        if (this.f115327h) {
                            this.f115330k--;
                        }
                        return this.f115329j;
                    }
                    if (charAt == '\'' && this.f115333n) {
                        if (this.f115326g) {
                            this.f115328i.append(charAt);
                        }
                        c = 2;
                    } else if (charAt == '\"' && this.f115332m) {
                        if (this.f115326g) {
                            this.f115328i.append(charAt);
                        }
                        c = 3;
                    } else {
                        this.f115328i.append(charAt);
                    }
                } else if (c == 2) {
                    this.f115329j = true;
                    if (z) {
                        this.f115328i.append(charAt);
                        z = false;
                    } else if (charAt == '\'') {
                        if (this.f115326g) {
                            this.f115328i.append(charAt);
                        }
                        c = 1;
                    } else if (charAt == '\\') {
                        if (this.f115326g) {
                            this.f115328i.append(charAt);
                        }
                        z = true;
                    } else {
                        this.f115328i.append(charAt);
                    }
                } else if (c == 3) {
                    this.f115329j = true;
                    if (z) {
                        this.f115328i.append(charAt);
                        z = false;
                    } else if (charAt == '\"') {
                        if (this.f115326g) {
                            this.f115328i.append(charAt);
                        }
                        c = 1;
                    } else if (charAt == '\\') {
                        if (this.f115326g) {
                            this.f115328i.append(charAt);
                        }
                        z = true;
                    } else {
                        this.f115328i.append(charAt);
                    }
                }
            } else if (this.f115325f.indexOf(charAt) >= 0) {
                if (this.f115327h) {
                    this.f115328i.append(charAt);
                    this.f115329j = true;
                    return true;
                }
            } else if (charAt == '\'' && this.f115333n) {
                if (this.f115326g) {
                    this.f115328i.append(charAt);
                }
                c = 2;
            } else if (charAt == '\"' && this.f115332m) {
                if (this.f115326g) {
                    this.f115328i.append(charAt);
                }
                c = 3;
            } else {
                this.f115328i.append(charAt);
                this.f115329j = true;
                c = 1;
            }
        }
        return this.f115329j;
    }

    @Override // java.util.StringTokenizer, java.util.Enumeration
    public Object nextElement() throws NoSuchElementException {
        return nextToken();
    }

    @Override // java.util.StringTokenizer
    public String nextToken() throws NoSuchElementException {
        StringBuffer stringBuffer;
        if (hasMoreTokens() && (stringBuffer = this.f115328i) != null) {
            String stringBuffer2 = stringBuffer.toString();
            this.f115328i.setLength(0);
            this.f115329j = false;
            return stringBuffer2;
        }
        throw new NoSuchElementException();
    }

    public void setDouble(boolean z) {
        this.f115332m = z;
    }

    public void setSingle(boolean z) {
        this.f115333n = z;
    }

    @Override // java.util.StringTokenizer
    public String nextToken(String str) throws NoSuchElementException {
        this.f115325f = str;
        this.f115330k = this.f115331l;
        this.f115328i.setLength(0);
        this.f115329j = false;
        return nextToken();
    }

    public static String quote(String str) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return "\"\"";
        }
        StringBuffer stringBuffer = new StringBuffer(str.length() + 8);
        quote(stringBuffer, str);
        return stringBuffer.toString();
    }

    public static void quote(StringBuffer stringBuffer, String str) {
        char[] cArr;
        synchronized (stringBuffer) {
            stringBuffer.append('\"');
            int i = 0;
            while (true) {
                if (i < str.length()) {
                    char charAt = str.charAt(i);
                    if (charAt == '\f') {
                        cArr = str.toCharArray();
                        stringBuffer.append(cArr, 0, i);
                        stringBuffer.append("\\f");
                    } else if (charAt == '\r') {
                        cArr = str.toCharArray();
                        stringBuffer.append(cArr, 0, i);
                        stringBuffer.append("\\r");
                    } else if (charAt == '\"') {
                        cArr = str.toCharArray();
                        stringBuffer.append(cArr, 0, i);
                        stringBuffer.append("\\\"");
                    } else if (charAt != '\\') {
                        switch (charAt) {
                            case '\b':
                                cArr = str.toCharArray();
                                stringBuffer.append(cArr, 0, i);
                                stringBuffer.append("\\b");
                                break;
                            case '\t':
                                cArr = str.toCharArray();
                                stringBuffer.append(cArr, 0, i);
                                stringBuffer.append("\\t");
                                break;
                            case '\n':
                                cArr = str.toCharArray();
                                stringBuffer.append(cArr, 0, i);
                                stringBuffer.append("\\n");
                                break;
                            default:
                                i++;
                        }
                    } else {
                        cArr = str.toCharArray();
                        stringBuffer.append(cArr, 0, i);
                        stringBuffer.append("\\\\");
                    }
                } else {
                    cArr = null;
                }
            }
            if (cArr == null) {
                stringBuffer.append(str);
            } else {
                while (true) {
                    i++;
                    if (i < str.length()) {
                        char charAt2 = str.charAt(i);
                        if (charAt2 == '\f') {
                            stringBuffer.append("\\f");
                        } else if (charAt2 == '\r') {
                            stringBuffer.append("\\r");
                        } else if (charAt2 == '\"') {
                            stringBuffer.append("\\\"");
                        } else if (charAt2 != '\\') {
                            switch (charAt2) {
                                case '\b':
                                    stringBuffer.append("\\b");
                                    break;
                                case '\t':
                                    stringBuffer.append("\\t");
                                    break;
                                case '\n':
                                    stringBuffer.append("\\n");
                                    break;
                                default:
                                    stringBuffer.append(charAt2);
                                    break;
                            }
                        } else {
                            stringBuffer.append("\\\\");
                        }
                    }
                }
            }
            stringBuffer.append('\"');
        }
    }

    public QuotedStringTokenizer(String str, String str2, boolean z) {
        this(str, str2, z, false);
    }

    public QuotedStringTokenizer(String str, String str2) {
        this(str, str2, false, false);
    }

    public QuotedStringTokenizer(String str) {
        this(str, null, false, false);
    }
}
