package com.google.gson.stream;

import com.google.gson.Strictness;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.TroubleshootingGuide;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes6.dex */
public class JsonReader implements Closeable {

    /* renamed from: A0 */
    public static final int f36299A0 = 1;

    /* renamed from: B0 */
    public static final int f36300B0 = 2;

    /* renamed from: C0 */
    public static final int f36301C0 = 3;

    /* renamed from: D0 */
    public static final int f36302D0 = 4;

    /* renamed from: E0 */
    public static final int f36303E0 = 5;

    /* renamed from: F0 */
    public static final int f36304F0 = 6;

    /* renamed from: G0 */
    public static final int f36305G0 = 7;

    /* renamed from: H0 */
    public static final int f36306H0 = 1024;

    /* renamed from: J */
    public static final int f36307J = 6;

    /* renamed from: O */
    public static final int f36308O = 7;

    /* renamed from: Q */
    public static final int f36309Q = 8;

    /* renamed from: Z */
    public static final int f36310Z = 9;

    /* renamed from: k0 */
    public static final int f36311k0 = 10;

    /* renamed from: q0 */
    public static final int f36312q0 = 11;

    /* renamed from: t */
    public static final long f36313t = -922337203685477580L;

    /* renamed from: t0 */
    public static final int f36314t0 = 12;

    /* renamed from: u */
    public static final int f36315u = 0;

    /* renamed from: u0 */
    public static final int f36316u0 = 13;

    /* renamed from: v */
    public static final int f36317v = 1;

    /* renamed from: v0 */
    public static final int f36318v0 = 14;

    /* renamed from: w */
    public static final int f36319w = 2;

    /* renamed from: w0 */
    public static final int f36320w0 = 15;

    /* renamed from: x */
    public static final int f36321x = 3;

    /* renamed from: x0 */
    public static final int f36322x0 = 16;

    /* renamed from: y */
    public static final int f36323y = 4;

    /* renamed from: y0 */
    public static final int f36324y0 = 17;

    /* renamed from: z */
    public static final int f36325z = 5;

    /* renamed from: z0 */
    public static final int f36326z0 = 0;

    /* renamed from: e */
    public final Reader f36327e;

    /* renamed from: m */
    public long f36335m;

    /* renamed from: n */
    public int f36336n;

    /* renamed from: o */
    public String f36337o;

    /* renamed from: p */
    public int[] f36338p;

    /* renamed from: r */
    public String[] f36340r;

    /* renamed from: s */
    public int[] f36341s;

    /* renamed from: f */
    public Strictness f36328f = Strictness.LEGACY_STRICT;

    /* renamed from: g */
    public final char[] f36329g = new char[1024];

    /* renamed from: h */
    public int f36330h = 0;

    /* renamed from: i */
    public int f36331i = 0;

    /* renamed from: j */
    public int f36332j = 0;

    /* renamed from: k */
    public int f36333k = 0;

    /* renamed from: l */
    public int f36334l = 0;

    /* renamed from: q */
    public int f36339q = 0 + 1;

    /* renamed from: com.google.gson.stream.JsonReader$a */
    /* loaded from: classes6.dex */
    public class C6606a extends JsonReaderInternalAccess {
        @Override // com.google.gson.internal.JsonReaderInternalAccess
        public void promoteNameToValue(JsonReader jsonReader) throws IOException {
            if (jsonReader instanceof JsonTreeReader) {
                ((JsonTreeReader) jsonReader).promoteNameToValue();
                return;
            }
            int i = jsonReader.f36334l;
            if (i == 0) {
                i = jsonReader.m28380H();
            }
            if (i == 13) {
                jsonReader.f36334l = 9;
            } else if (i == 12) {
                jsonReader.f36334l = 8;
            } else {
                if (i != 14) {
                    throw jsonReader.m28398s0("a name");
                }
                jsonReader.f36334l = 10;
            }
        }
    }

    static {
        JsonReaderInternalAccess.INSTANCE = new C6606a();
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.f36338p = iArr;
        iArr[0] = 6;
        this.f36340r = new String[32];
        this.f36341s = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f36327e = reader;
    }

    /* renamed from: H */
    public int m28380H() throws IOException {
        int m28385g0;
        int[] iArr = this.f36338p;
        int i = this.f36339q;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int m28385g02 = m28385g0(true);
            if (m28385g02 != 44) {
                if (m28385g02 != 59) {
                    if (m28385g02 != 93) {
                        throw m28397r0("Unterminated array");
                    }
                    this.f36334l = 4;
                    return 4;
                }
                m28388j();
            }
        } else {
            if (i2 == 3 || i2 == 5) {
                iArr[i - 1] = 4;
                if (i2 == 5 && (m28385g0 = m28385g0(true)) != 44) {
                    if (m28385g0 != 59) {
                        if (m28385g0 != 125) {
                            throw m28397r0("Unterminated object");
                        }
                        this.f36334l = 2;
                        return 2;
                    }
                    m28388j();
                }
                int m28385g03 = m28385g0(true);
                if (m28385g03 == 34) {
                    this.f36334l = 13;
                    return 13;
                }
                if (m28385g03 == 39) {
                    m28388j();
                    this.f36334l = 12;
                    return 12;
                }
                if (m28385g03 == 125) {
                    if (i2 == 5) {
                        throw m28397r0("Expected name");
                    }
                    this.f36334l = 2;
                    return 2;
                }
                m28388j();
                this.f36330h--;
                if (!m28383e0((char) m28385g03)) {
                    throw m28397r0("Expected name");
                }
                this.f36334l = 14;
                return 14;
            }
            if (i2 == 4) {
                iArr[i - 1] = 5;
                int m28385g04 = m28385g0(true);
                if (m28385g04 != 58) {
                    if (m28385g04 != 61) {
                        throw m28397r0("Expected ':'");
                    }
                    m28388j();
                    if (this.f36330h < this.f36331i || m28381I(1)) {
                        char[] cArr = this.f36329g;
                        int i3 = this.f36330h;
                        if (cArr[i3] == '>') {
                            this.f36330h = i3 + 1;
                        }
                    }
                }
            } else if (i2 == 6) {
                if (this.f36328f == Strictness.LENIENT) {
                    m28399w();
                }
                this.f36338p[this.f36339q - 1] = 7;
            } else if (i2 == 7) {
                if (m28385g0(false) == -1) {
                    this.f36334l = 17;
                    return 17;
                }
                m28388j();
                this.f36330h--;
            } else if (i2 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int m28385g05 = m28385g0(true);
        if (m28385g05 == 34) {
            this.f36334l = 9;
            return 9;
        }
        if (m28385g05 == 39) {
            m28388j();
            this.f36334l = 8;
            return 8;
        }
        if (m28385g05 != 44 && m28385g05 != 59) {
            if (m28385g05 == 91) {
                this.f36334l = 3;
                return 3;
            }
            if (m28385g05 != 93) {
                if (m28385g05 == 123) {
                    this.f36334l = 1;
                    return 1;
                }
                this.f36330h--;
                int m28389j0 = m28389j0();
                if (m28389j0 != 0) {
                    return m28389j0;
                }
                int m28390k0 = m28390k0();
                if (m28390k0 != 0) {
                    return m28390k0;
                }
                if (!m28383e0(this.f36329g[this.f36330h])) {
                    throw m28397r0("Expected value");
                }
                m28388j();
                this.f36334l = 10;
                return 10;
            }
            if (i2 == 1) {
                this.f36334l = 4;
                return 4;
            }
        }
        if (i2 != 1 && i2 != 2) {
            throw m28397r0("Unexpected value");
        }
        m28388j();
        this.f36330h--;
        this.f36334l = 7;
        return 7;
    }

    /* renamed from: I */
    public final boolean m28381I(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.f36329g;
        int i4 = this.f36333k;
        int i5 = this.f36330h;
        this.f36333k = i4 - i5;
        int i6 = this.f36331i;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.f36331i = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.f36331i = 0;
        }
        this.f36330h = 0;
        do {
            Reader reader = this.f36327e;
            int i8 = this.f36331i;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.f36331i + read;
            this.f36331i = i2;
            if (this.f36332j == 0 && (i3 = this.f36333k) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.f36330h++;
                this.f36333k = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    /* renamed from: M */
    public final String m28382M(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = 0;
        while (true) {
            int i2 = this.f36339q;
            if (i >= i2) {
                return sb.toString();
            }
            int i3 = this.f36338p[i];
            switch (i3) {
                case 1:
                case 2:
                    int i4 = this.f36341s[i];
                    if (z && i4 > 0 && i == i2 - 1) {
                        i4--;
                    }
                    sb.append('[');
                    sb.append(i4);
                    sb.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sb.append('.');
                    String str = this.f36340r[i];
                    if (str == null) {
                        break;
                    } else {
                        sb.append(str);
                        break;
                    }
                case 6:
                case 7:
                case 8:
                    break;
                default:
                    throw new AssertionError("Unknown scope value: " + i3);
            }
            i++;
        }
    }

    public void beginArray() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i != 3) {
            throw m28398s0("BEGIN_ARRAY");
        }
        m28391l0(1);
        this.f36341s[this.f36339q - 1] = 0;
        this.f36334l = 0;
    }

    public void beginObject() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i != 1) {
            throw m28398s0("BEGIN_OBJECT");
        }
        m28391l0(3);
        this.f36334l = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36334l = 0;
        this.f36338p[0] = 8;
        this.f36339q = 1;
        this.f36327e.close();
    }

    /* renamed from: e0 */
    public final boolean m28383e0(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m28388j();
        return false;
    }

    public void endArray() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i != 4) {
            throw m28398s0("END_ARRAY");
        }
        int i2 = this.f36339q - 1;
        this.f36339q = i2;
        int[] iArr = this.f36341s;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.f36334l = 0;
    }

    public void endObject() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i != 2) {
            throw m28398s0("END_OBJECT");
        }
        int i2 = this.f36339q - 1;
        this.f36339q = i2;
        this.f36340r[i2] = null;
        int[] iArr = this.f36341s;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.f36334l = 0;
    }

    /* renamed from: f0 */
    public String m28384f0() {
        return " at line " + (this.f36332j + 1) + " column " + ((this.f36330h - this.f36333k) + 1) + " path " + getPath();
    }

    /* renamed from: g0 */
    public final int m28385g0(boolean z) throws IOException {
        char[] cArr = this.f36329g;
        int i = this.f36330h;
        int i2 = this.f36331i;
        while (true) {
            if (i == i2) {
                this.f36330h = i;
                if (!m28381I(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + m28384f0());
                }
                i = this.f36330h;
                i2 = this.f36331i;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.f36332j++;
                this.f36333k = i3;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.f36330h = i3;
                    if (i3 == i2) {
                        this.f36330h = i3 - 1;
                        boolean m28381I = m28381I(2);
                        this.f36330h++;
                        if (!m28381I) {
                            return c;
                        }
                    }
                    m28388j();
                    int i4 = this.f36330h;
                    char c2 = cArr[i4];
                    if (c2 == '*') {
                        this.f36330h = i4 + 1;
                        if (!m28394o0("*/")) {
                            throw m28397r0("Unterminated comment");
                        }
                        i = this.f36330h + 2;
                        i2 = this.f36331i;
                    } else {
                        if (c2 != '/') {
                            return c;
                        }
                        this.f36330h = i4 + 1;
                        m28395p0();
                        i = this.f36330h;
                        i2 = this.f36331i;
                    }
                } else {
                    if (c != '#') {
                        this.f36330h = i3;
                        return c;
                    }
                    this.f36330h = i3;
                    m28388j();
                    m28395p0();
                    i = this.f36330h;
                    i2 = this.f36331i;
                }
            }
            i = i3;
        }
    }

    public String getPath() {
        return m28382M(false);
    }

    public String getPreviousPath() {
        return m28382M(true);
    }

    public final Strictness getStrictness() {
        return this.f36328f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x006e, code lost:
    
        if (r1 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0070, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007e, code lost:
    
        r1.append(r0, r3, r2 - r3);
        r10.f36330h = r2;
     */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m28386h0(char r11) throws java.io.IOException {
        /*
            r10 = this;
            char[] r0 = r10.f36329g
            r1 = 0
        L3:
            int r2 = r10.f36330h
            int r3 = r10.f36331i
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L6e
            int r7 = r2 + 1
            char r2 = r0[r2]
            com.google.gson.Strictness r8 = r10.f36328f
            com.google.gson.Strictness r9 = com.google.gson.Strictness.STRICT
            if (r8 != r9) goto L24
            r8 = 32
            if (r2 < r8) goto L1d
            goto L24
        L1d:
            java.lang.String r11 = "Unescaped control characters (\\u0000-\\u001F) are not allowed in strict mode"
            com.google.gson.stream.MalformedJsonException r10 = r10.m28397r0(r11)
            throw r10
        L24:
            if (r2 != r11) goto L3a
            r10.f36330h = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L32
            java.lang.String r10 = new java.lang.String
            r10.<init>(r0, r3, r7)
            return r10
        L32:
            r1.append(r0, r3, r7)
            java.lang.String r10 = r1.toString()
            return r10
        L3a:
            r8 = 92
            if (r2 != r8) goto L61
            r10.f36330h = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L52
            int r1 = r7 + 1
            int r1 = r1 * 2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r2.<init>(r1)
            r1 = r2
        L52:
            r1.append(r0, r3, r7)
            char r2 = r10.m28392m0()
            r1.append(r2)
            int r2 = r10.f36330h
            int r3 = r10.f36331i
            goto L7
        L61:
            r5 = 10
            if (r2 != r5) goto L6c
            int r2 = r10.f36332j
            int r2 = r2 + r6
            r10.f36332j = r2
            r10.f36333k = r7
        L6c:
            r2 = r7
            goto L9
        L6e:
            if (r1 != 0) goto L7e
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L7e:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r10.f36330h = r2
            boolean r2 = r10.m28381I(r6)
            if (r2 == 0) goto L8d
            goto L3
        L8d:
            java.lang.String r11 = "Unterminated string"
            com.google.gson.stream.MalformedJsonException r10 = r10.m28397r0(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.m28386h0(char):java.lang.String");
    }

    public boolean hasNext() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        return (i == 2 || i == 4 || i == 17) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x004a, code lost:
    
        m28388j();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /* renamed from: i0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m28387i0() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r1
        L3:
            int r3 = r6.f36330h
            int r4 = r3 + r2
            int r5 = r6.f36331i
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f36329g
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.m28388j()
            goto L5c
        L4e:
            char[] r3 = r6.f36329g
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.m28381I(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r1 = r2
            goto L7e
        L5e:
            if (r0 != 0) goto L6b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L6b:
            char[] r3 = r6.f36329g
            int r4 = r6.f36330h
            r0.append(r3, r4, r2)
            int r3 = r6.f36330h
            int r3 = r3 + r2
            r6.f36330h = r3
            r2 = 1
            boolean r2 = r6.m28381I(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r0 != 0) goto L8a
            java.lang.String r0 = new java.lang.String
            char[] r2 = r6.f36329g
            int r3 = r6.f36330h
            r0.<init>(r2, r3, r1)
            goto L95
        L8a:
            char[] r2 = r6.f36329g
            int r3 = r6.f36330h
            r0.append(r2, r3, r1)
            java.lang.String r0 = r0.toString()
        L95:
            int r2 = r6.f36330h
            int r2 = r2 + r1
            r6.f36330h = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.m28387i0():java.lang.String");
    }

    public final boolean isLenient() {
        return this.f36328f == Strictness.LENIENT;
    }

    /* renamed from: j */
    public final void m28388j() throws MalformedJsonException {
        if (this.f36328f != Strictness.LENIENT) {
            throw m28397r0("Use JsonReader.setStrictness(Strictness.LENIENT) to accept malformed JSON");
        }
    }

    /* renamed from: j0 */
    public final int m28389j0() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.f36329g[this.f36330h];
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c == 'f' || c == 'F') {
            str = "false";
            str2 = "FALSE";
            i = 6;
        } else {
            if (c != 'n' && c != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        boolean z = this.f36328f != Strictness.STRICT;
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (this.f36330h + i2 >= this.f36331i && !m28381I(i2 + 1)) {
                return 0;
            }
            char c2 = this.f36329g[this.f36330h + i2];
            if (!(c2 == str.charAt(i2) || (z && c2 == str2.charAt(i2)))) {
                return 0;
            }
        }
        if ((this.f36330h + length < this.f36331i || m28381I(length + 1)) && m28383e0(this.f36329g[this.f36330h + length])) {
            return 0;
        }
        this.f36330h += length;
        this.f36334l = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0093, code lost:
    
        if (r9 != 2) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0095, code lost:
    
        if (r10 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x009b, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x009d, code lost:
    
        if (r13 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a3, code lost:
    
        if (r11 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a5, code lost:
    
        if (r13 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a7, code lost:
    
        if (r13 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00aa, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ab, code lost:
    
        r18.f36335m = r11;
        r18.f36330h += r8;
        r18.f36334l = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b6, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b7, code lost:
    
        if (r9 == 2) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ba, code lost:
    
        if (r9 == 4) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00bd, code lost:
    
        if (r9 != 7) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c0, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c2, code lost:
    
        r18.f36336n = r8;
        r18.f36334l = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c8, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0091, code lost:
    
        if (m28383e0(r14) != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c9, code lost:
    
        return 0;
     */
    /* renamed from: k0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m28390k0() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.m28390k0():int");
    }

    /* renamed from: l0 */
    public final void m28391l0(int i) {
        int i2 = this.f36339q;
        int[] iArr = this.f36338p;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.f36338p = Arrays.copyOf(iArr, i3);
            this.f36341s = Arrays.copyOf(this.f36341s, i3);
            this.f36340r = (String[]) Arrays.copyOf(this.f36340r, i3);
        }
        int[] iArr2 = this.f36338p;
        int i4 = this.f36339q;
        this.f36339q = i4 + 1;
        iArr2[i4] = i;
    }

    /* renamed from: m0 */
    public final char m28392m0() throws IOException {
        int i;
        int i2;
        if (this.f36330h == this.f36331i && !m28381I(1)) {
            throw m28397r0("Unterminated escape sequence");
        }
        char[] cArr = this.f36329g;
        int i3 = this.f36330h;
        int i4 = i3 + 1;
        this.f36330h = i4;
        char c = cArr[i3];
        if (c != '\n') {
            if (c != '\"') {
                if (c != '\'') {
                    if (c != '/' && c != '\\') {
                        if (c == 'b') {
                            return '\b';
                        }
                        if (c == 'f') {
                            return '\f';
                        }
                        if (c == 'n') {
                            return '\n';
                        }
                        if (c == 'r') {
                            return '\r';
                        }
                        if (c == 't') {
                            return '\t';
                        }
                        if (c != 'u') {
                            throw m28397r0("Invalid escape sequence");
                        }
                        if (i4 + 4 > this.f36331i && !m28381I(4)) {
                            throw m28397r0("Unterminated escape sequence");
                        }
                        int i5 = this.f36330h;
                        int i6 = i5 + 4;
                        int i7 = 0;
                        while (i5 < i6) {
                            char c2 = this.f36329g[i5];
                            int i8 = i7 << 4;
                            if (c2 < '0' || c2 > '9') {
                                if (c2 >= 'a' && c2 <= 'f') {
                                    i = c2 - 'a';
                                } else {
                                    if (c2 < 'A' || c2 > 'F') {
                                        throw m28397r0("Malformed Unicode escape \\u" + new String(this.f36329g, this.f36330h, 4));
                                    }
                                    i = c2 - 'A';
                                }
                                i2 = i + 10;
                            } else {
                                i2 = c2 - '0';
                            }
                            i7 = i8 + i2;
                            i5++;
                        }
                        this.f36330h += 4;
                        return (char) i7;
                    }
                }
            }
            return c;
        }
        if (this.f36328f == Strictness.STRICT) {
            throw m28397r0("Cannot escape a newline character in strict mode");
        }
        this.f36332j++;
        this.f36333k = i4;
        if (this.f36328f == Strictness.STRICT) {
            throw m28397r0("Invalid escaped character \"'\" in strict mode");
        }
        return c;
    }

    /* renamed from: n0 */
    public final void m28393n0(char c) throws IOException {
        char[] cArr = this.f36329g;
        do {
            int i = this.f36330h;
            int i2 = this.f36331i;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.f36330h = i3;
                    return;
                }
                if (c2 == '\\') {
                    this.f36330h = i3;
                    m28392m0();
                    i = this.f36330h;
                    i2 = this.f36331i;
                } else {
                    if (c2 == '\n') {
                        this.f36332j++;
                        this.f36333k = i3;
                    }
                    i = i3;
                }
            }
            this.f36330h = i;
        } while (m28381I(1));
        throw m28397r0("Unterminated string");
    }

    public boolean nextBoolean() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i == 5) {
            this.f36334l = 0;
            int[] iArr = this.f36341s;
            int i2 = this.f36339q - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (i != 6) {
            throw m28398s0("a boolean");
        }
        this.f36334l = 0;
        int[] iArr2 = this.f36341s;
        int i3 = this.f36339q - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return false;
    }

    public double nextDouble() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i == 15) {
            this.f36334l = 0;
            int[] iArr = this.f36341s;
            int i2 = this.f36339q - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f36335m;
        }
        if (i == 16) {
            this.f36337o = new String(this.f36329g, this.f36330h, this.f36336n);
            this.f36330h += this.f36336n;
        } else if (i == 8 || i == 9) {
            this.f36337o = m28386h0(i == 8 ? Chars.QUOTE : '\"');
        } else if (i == 10) {
            this.f36337o = m28387i0();
        } else if (i != 11) {
            throw m28398s0("a double");
        }
        this.f36334l = 11;
        double parseDouble = Double.parseDouble(this.f36337o);
        if (this.f36328f != Strictness.LENIENT && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw m28397r0("JSON forbids NaN and infinities: " + parseDouble);
        }
        this.f36337o = null;
        this.f36334l = 0;
        int[] iArr2 = this.f36341s;
        int i3 = this.f36339q - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public int nextInt() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i == 15) {
            long j = this.f36335m;
            int i2 = (int) j;
            if (j == i2) {
                this.f36334l = 0;
                int[] iArr = this.f36341s;
                int i3 = this.f36339q - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new NumberFormatException("Expected an int but was " + this.f36335m + m28384f0());
        }
        if (i == 16) {
            this.f36337o = new String(this.f36329g, this.f36330h, this.f36336n);
            this.f36330h += this.f36336n;
        } else {
            if (i != 8 && i != 9 && i != 10) {
                throw m28398s0("an int");
            }
            if (i == 10) {
                this.f36337o = m28387i0();
            } else {
                this.f36337o = m28386h0(i == 8 ? Chars.QUOTE : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f36337o);
                this.f36334l = 0;
                int[] iArr2 = this.f36341s;
                int i4 = this.f36339q - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.f36334l = 11;
        double parseDouble = Double.parseDouble(this.f36337o);
        int i5 = (int) parseDouble;
        if (i5 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.f36337o + m28384f0());
        }
        this.f36337o = null;
        this.f36334l = 0;
        int[] iArr3 = this.f36341s;
        int i6 = this.f36339q - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    public long nextLong() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i == 15) {
            this.f36334l = 0;
            int[] iArr = this.f36341s;
            int i2 = this.f36339q - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f36335m;
        }
        if (i == 16) {
            this.f36337o = new String(this.f36329g, this.f36330h, this.f36336n);
            this.f36330h += this.f36336n;
        } else {
            if (i != 8 && i != 9 && i != 10) {
                throw m28398s0("a long");
            }
            if (i == 10) {
                this.f36337o = m28387i0();
            } else {
                this.f36337o = m28386h0(i == 8 ? Chars.QUOTE : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f36337o);
                this.f36334l = 0;
                int[] iArr2 = this.f36341s;
                int i3 = this.f36339q - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.f36334l = 11;
        double parseDouble = Double.parseDouble(this.f36337o);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.f36337o + m28384f0());
        }
        this.f36337o = null;
        this.f36334l = 0;
        int[] iArr3 = this.f36341s;
        int i4 = this.f36339q - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j;
    }

    public String nextName() throws IOException {
        String m28386h0;
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i == 14) {
            m28386h0 = m28387i0();
        } else if (i == 12) {
            m28386h0 = m28386h0(Chars.QUOTE);
        } else {
            if (i != 13) {
                throw m28398s0("a name");
            }
            m28386h0 = m28386h0('\"');
        }
        this.f36334l = 0;
        this.f36340r[this.f36339q - 1] = m28386h0;
        return m28386h0;
    }

    public void nextNull() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i != 7) {
            throw m28398s0("null");
        }
        this.f36334l = 0;
        int[] iArr = this.f36341s;
        int i2 = this.f36339q - 1;
        iArr[i2] = iArr[i2] + 1;
    }

    public String nextString() throws IOException {
        String str;
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        if (i == 10) {
            str = m28387i0();
        } else if (i == 8) {
            str = m28386h0(Chars.QUOTE);
        } else if (i == 9) {
            str = m28386h0('\"');
        } else if (i == 11) {
            str = this.f36337o;
            this.f36337o = null;
        } else if (i == 15) {
            str = Long.toString(this.f36335m);
        } else {
            if (i != 16) {
                throw m28398s0("a string");
            }
            str = new String(this.f36329g, this.f36330h, this.f36336n);
            this.f36330h += this.f36336n;
        }
        this.f36334l = 0;
        int[] iArr = this.f36341s;
        int i2 = this.f36339q - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    /* renamed from: o0 */
    public final boolean m28394o0(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f36330h + length > this.f36331i && !m28381I(length)) {
                return false;
            }
            char[] cArr = this.f36329g;
            int i = this.f36330h;
            if (cArr[i] != '\n') {
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.f36329g[this.f36330h + i2] != str.charAt(i2)) {
                        break;
                    }
                }
                return true;
            }
            this.f36332j++;
            this.f36333k = i + 1;
            this.f36330h++;
        }
    }

    /* renamed from: p0 */
    public final void m28395p0() throws IOException {
        char c;
        do {
            if (this.f36330h >= this.f36331i && !m28381I(1)) {
                return;
            }
            char[] cArr = this.f36329g;
            int i = this.f36330h;
            int i2 = i + 1;
            this.f36330h = i2;
            c = cArr[i];
            if (c == '\n') {
                this.f36332j++;
                this.f36333k = i2;
                return;
            }
        } while (c != '\r');
    }

    public JsonToken peek() throws IOException {
        int i = this.f36334l;
        if (i == 0) {
            i = m28380H();
        }
        switch (i) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
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
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:242)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* renamed from: q0 */
    public final void m28396q0() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.f36330h
            int r2 = r1 + r0
            int r3 = r4.f36331i
            if (r2 >= r3) goto L51
            char[] r2 = r4.f36329g
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.m28388j()
        L4b:
            int r1 = r4.f36330h
            int r1 = r1 + r0
            r4.f36330h = r1
            return
        L51:
            int r1 = r1 + r0
            r4.f36330h = r1
            r0 = 1
            boolean r0 = r4.m28381I(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.m28396q0():void");
    }

    /* renamed from: r0 */
    public final MalformedJsonException m28397r0(String str) throws MalformedJsonException {
        throw new MalformedJsonException(str + m28384f0() + "\nSee " + TroubleshootingGuide.createUrl("malformed-json"));
    }

    /* renamed from: s0 */
    public final IllegalStateException m28398s0(String str) throws IOException {
        return new IllegalStateException("Expected " + str + " but was " + peek() + m28384f0() + "\nSee " + TroubleshootingGuide.createUrl(peek() == JsonToken.NULL ? "adapter-not-null-safe" : "unexpected-json-structure"));
    }

    @Deprecated
    public final void setLenient(boolean z) {
        setStrictness(z ? Strictness.LENIENT : Strictness.LEGACY_STRICT);
    }

    public final void setStrictness(Strictness strictness) {
        Objects.requireNonNull(strictness);
        this.f36328f = strictness;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0011. Please report as an issue. */
    public void skipValue() throws IOException {
        int i = 0;
        do {
            int i2 = this.f36334l;
            if (i2 == 0) {
                i2 = m28380H();
            }
            switch (i2) {
                case 1:
                    m28391l0(3);
                    i++;
                    this.f36334l = 0;
                    break;
                case 2:
                    if (i == 0) {
                        this.f36340r[this.f36339q - 1] = null;
                    }
                    this.f36339q--;
                    i--;
                    this.f36334l = 0;
                    break;
                case 3:
                    m28391l0(1);
                    i++;
                    this.f36334l = 0;
                    break;
                case 4:
                    this.f36339q--;
                    i--;
                    this.f36334l = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.f36334l = 0;
                    break;
                case 8:
                    m28393n0(Chars.QUOTE);
                    this.f36334l = 0;
                    break;
                case 9:
                    m28393n0('\"');
                    this.f36334l = 0;
                    break;
                case 10:
                    m28396q0();
                    this.f36334l = 0;
                    break;
                case 12:
                    m28393n0(Chars.QUOTE);
                    if (i == 0) {
                        this.f36340r[this.f36339q - 1] = "<skipped>";
                    }
                    this.f36334l = 0;
                    break;
                case 13:
                    m28393n0('\"');
                    if (i == 0) {
                        this.f36340r[this.f36339q - 1] = "<skipped>";
                    }
                    this.f36334l = 0;
                    break;
                case 14:
                    m28396q0();
                    if (i == 0) {
                        this.f36340r[this.f36339q - 1] = "<skipped>";
                    }
                    this.f36334l = 0;
                    break;
                case 16:
                    this.f36330h += this.f36336n;
                    this.f36334l = 0;
                    break;
                case 17:
                    return;
            }
        } while (i > 0);
        int[] iArr = this.f36341s;
        int i3 = this.f36339q - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    public String toString() {
        return getClass().getSimpleName() + m28384f0();
    }

    /* renamed from: w */
    public final void m28399w() throws IOException {
        m28385g0(true);
        int i = this.f36330h - 1;
        this.f36330h = i;
        if (i + 5 <= this.f36331i || m28381I(5)) {
            int i2 = this.f36330h;
            char[] cArr = this.f36329g;
            if (cArr[i2] == ')' && cArr[i2 + 1] == ']' && cArr[i2 + 2] == '}' && cArr[i2 + 3] == '\'' && cArr[i2 + 4] == '\n') {
                this.f36330h = i2 + 5;
            }
        }
    }
}
