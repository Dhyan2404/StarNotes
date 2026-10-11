package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.NameCacheEntry;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.time.DateTimeException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetTime;
import java.time.ZoneOffset;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import okhttp3.internal.ws.WebSocketProtocol;

/* renamed from: com.alibaba.fastjson2.h */
/* loaded from: classes3.dex */
public final class C1738h extends JSONReader {

    /* renamed from: J */
    public int f12424J;

    /* renamed from: O */
    public int f12425O;

    /* renamed from: Q */
    public int f12426Q;

    /* renamed from: Z */
    public int f12427Z;

    /* renamed from: k0 */
    public Closeable f12428k0;

    /* renamed from: q0 */
    public int f12429q0;

    /* renamed from: v */
    public final String f12430v;

    /* renamed from: w */
    public final char[] f12431w;

    /* renamed from: x */
    public final int f12432x;

    /* renamed from: y */
    public final int f12433y;

    /* renamed from: z */
    public final int f12434z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1738h(JSONReader.Context context, byte[] bArr, int i, int i2) {
        super(context, false);
        char c;
        int i3 = 0;
        this.f12429q0 = -1;
        this.f12430v = null;
        this.f12431w = new char[i2 / 2];
        int i4 = i + i2;
        int i5 = i;
        while (i5 < i4) {
            this.f12431w[i3] = (char) (((bArr[i5] & 255) << 8) | (bArr[i5 + 1] & 255));
            i5 += 2;
            i3++;
        }
        this.f12433y = i;
        this.f12432x = i3;
        this.f12434z = i3;
        int i6 = this.offset;
        if (i6 >= i3) {
            this.f12290ch = (char) 26;
            return;
        }
        this.f12290ch = this.f12431w[i6];
        while (true) {
            char c2 = this.f12290ch;
            if (c2 > ' ' || ((1 << c2) & JSONReader.f12289u) == 0) {
                break;
            }
            int i7 = this.offset + 1;
            this.offset = i7;
            if (i7 >= i2) {
                this.f12290ch = (char) 26;
                return;
            }
            this.f12290ch = this.f12431w[i7];
        }
        while (true) {
            c = this.f12290ch;
            if (c > ' ' || ((1 << c) & JSONReader.f12289u) == 0) {
                break;
            }
            int i8 = this.offset + 1;
            this.offset = i8;
            if (i8 >= i2) {
                this.f12290ch = (char) 26;
                return;
            }
            this.f12290ch = this.f12431w[i8];
        }
        this.offset++;
        if (c == 65534 || c == 65279) {
            next();
        }
        if (this.f12290ch == '/') {
            skipComment();
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        int i = this.f12429q0;
        if (i != -1) {
            char[] cArr = this.f12431w;
            if (cArr.length < 1048576) {
                JSONFactory.f12219C.lazySet(JSONFactory.f12217A[i], cArr);
            }
        }
        Closeable closeable = this.f12428k0;
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String getFieldName() {
        if (!this.nameEscape) {
            String str = this.f12430v;
            if (str != null) {
                return str.substring(this.f12424J, this.f12425O);
            }
            char[] cArr = this.f12431w;
            int i = this.f12424J;
            return new String(cArr, i, this.f12425O - i);
        }
        char[] cArr2 = new char[this.f12426Q];
        char[] cArr3 = this.f12431w;
        int i2 = this.f12424J;
        int i3 = 0;
        while (i2 < this.f12425O) {
            char c = cArr3[i2];
            if (c == '\\') {
                i2++;
                c = cArr3[i2];
                if (c != '\"' && c != ':' && c != '@' && c != '\\') {
                    if (c == 'u') {
                        char c2 = cArr3[i2 + 1];
                        char c3 = cArr3[i2 + 2];
                        char c4 = cArr3[i2 + 3];
                        i2 += 4;
                        c = JSONReader.m7284M(c2, c3, c4, cArr3[i2]);
                    } else if (c != 'x') {
                        switch (c) {
                            case '*':
                            case '+':
                            case ',':
                            case '-':
                            case '.':
                            case '/':
                                break;
                            default:
                                switch (c) {
                                    case '<':
                                    case '=':
                                    case '>':
                                        break;
                                    default:
                                        c = m7313H(c);
                                        break;
                                }
                        }
                    } else {
                        char c5 = cArr3[i2 + 1];
                        i2 += 2;
                        c = JSONReader.m7283I(c5, cArr3[i2]);
                    }
                }
            } else if (c == '\"') {
                return new String(cArr2);
            }
            cArr2[i3] = c;
            i2++;
            i3++;
        }
        return new String(cArr2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:66:0x007e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d8  */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getNameHashCodeLCase() {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.getNameHashCodeLCase():long");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String getString() {
        String str = this.stringValue;
        if (str != null) {
            return str;
        }
        int i = this.f12425O;
        int i2 = this.f12424J;
        int i3 = i - i2;
        if (!this.nameEscape) {
            return new String(this.f12431w, i2, i3);
        }
        char[] cArr = new char[this.f12426Q];
        int i4 = 0;
        while (true) {
            char[] cArr2 = this.f12431w;
            char c = cArr2[i2];
            if (c == '\\') {
                i2++;
                c = cArr2[i2];
                if (c != '\"' && c != '\\') {
                    if (c == 'u') {
                        int i5 = i2 + 1;
                        char c2 = cArr2[i5];
                        int i6 = i5 + 1;
                        char c3 = cArr2[i6];
                        int i7 = i6 + 1;
                        char c4 = cArr2[i7];
                        i2 = i7 + 1;
                        c = JSONReader.m7284M(c2, c3, c4, cArr2[i2]);
                    } else if (c != 'x') {
                        c = m7313H(c);
                    } else {
                        int i8 = i2 + 1;
                        char c5 = cArr2[i8];
                        i2 = i8 + 1;
                        c = JSONReader.m7283I(c5, cArr2[i2]);
                    }
                }
            } else if (c == '\"') {
                String str2 = new String(cArr);
                this.stringValue = str2;
                return str2;
            }
            cArr[i4] = c;
            i2++;
            i4++;
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public int getStringLength() {
        int i;
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        int i2 = this.offset;
        char[] cArr = this.f12431w;
        int i3 = i2 + 8;
        if (i3 >= this.f12434z || i3 >= cArr.length || cArr[i2] == c || cArr[i2 + 1] == c || cArr[i2 + 2] == c || cArr[i2 + 3] == c || cArr[i2 + 4] == c || cArr[i2 + 5] == c || cArr[i2 + 6] == c || cArr[i2 + 7] == c) {
            i = 0;
        } else {
            i = 8;
            i2 = i3;
        }
        while (i2 < this.f12434z && cArr[i2] != c) {
            i2++;
            i++;
        }
        return i;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String info(String str) {
        int i = 1;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (!(i2 < this.offset) || !(i2 < this.f12434z)) {
                break;
            }
            if (this.f12431w[i2] == '\n') {
                i++;
                i3 = 1;
            }
            i2++;
            i3++;
        }
        StringBuilder sb = new StringBuilder();
        if (str != null && !str.isEmpty()) {
            sb.append(str);
            sb.append(", ");
        }
        sb.append("offset ");
        sb.append(this.offset);
        sb.append(", character ");
        sb.append(this.f12290ch);
        sb.append(", line ");
        sb.append(i);
        sb.append(", column ");
        sb.append(i3);
        sb.append(", fastjson-version ");
        sb.append(JSON.VERSION);
        sb.append(i <= 1 ? ' ' : '\n');
        char[] cArr = this.f12431w;
        int i4 = this.f12433y;
        int i5 = this.f12432x;
        if (i5 >= 65535) {
            i5 = 65535;
        }
        sb.append(cArr, i4, i5);
        return sb.toString();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isArray() {
        return this.f12290ch == '[';
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isNull() {
        int i;
        return this.f12290ch == 'n' && (i = this.offset) < this.f12434z && this.f12431w[i] == 'u';
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean isReference() {
        int i;
        int i2;
        int i3;
        char[] cArr = this.f12431w;
        char c = this.f12290ch;
        int i4 = this.offset;
        if (c != '{' || i4 == this.f12434z) {
            return false;
        }
        char c2 = cArr[i4];
        while (c2 <= ' ' && ((1 << c2) & JSONReader.f12289u) != 0) {
            i4++;
            if (i4 >= this.f12434z) {
                return false;
            }
            c2 = cArr[i4];
        }
        if (c2 == '\"' || c2 == '\'') {
            int i5 = this.offset + 5;
            int i6 = this.f12434z;
            if (i5 < i6 && cArr[i4 + 1] == '$' && cArr[i4 + 2] == 'r' && cArr[i4 + 3] == 'e' && cArr[i4 + 4] == 'f' && cArr[i4 + 5] == c2 && (i = i4 + 6) < i6) {
                char c3 = cArr[i];
                while (c3 <= ' ' && ((1 << c3) & JSONReader.f12289u) != 0) {
                    i++;
                    if (i >= this.f12434z) {
                        return false;
                    }
                    c3 = cArr[i];
                }
                if (c3 == ':' && (i2 = i + 1) < this.f12434z) {
                    char c4 = cArr[i2];
                    while (c4 <= ' ' && ((1 << c4) & JSONReader.f12289u) != 0) {
                        i2++;
                        if (i2 >= this.f12434z) {
                            return false;
                        }
                        c4 = cArr[i2];
                    }
                    if (c4 == c2 && ((i3 = i2 + 1) >= this.f12434z || cArr[i3] != '#')) {
                        this.f12427Z = i2;
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: m0 */
    public void m7405m0() {
        char[] cArr;
        String str;
        char c = this.f12290ch;
        int i = this.offset;
        this.valueEscape = false;
        int i2 = i;
        int i3 = 0;
        while (true) {
            cArr = this.f12431w;
            char c2 = cArr[i2];
            if (c2 == '\\') {
                this.valueEscape = true;
                int i4 = i2 + 1;
                char c3 = cArr[i4];
                if (c3 == 'u') {
                    i4 += 4;
                } else if (c3 == 'x') {
                    i4 += 2;
                }
                i2 = i4 + 1;
            } else if (c2 == c) {
                break;
            } else {
                i2++;
            }
            i3++;
        }
        if (this.valueEscape) {
            char[] cArr2 = new char[i3];
            int i5 = 0;
            while (true) {
                char[] cArr3 = this.f12431w;
                char c4 = cArr3[i];
                if (c4 == '\\') {
                    i++;
                    c4 = cArr3[i];
                    if (c4 != '\"' && c4 != '\\') {
                        if (c4 == 'u') {
                            int i6 = i + 1;
                            char c5 = cArr3[i6];
                            int i7 = i6 + 1;
                            char c6 = cArr3[i7];
                            int i8 = i7 + 1;
                            char c7 = cArr3[i8];
                            i = i8 + 1;
                            c4 = JSONReader.m7284M(c5, c6, c7, cArr3[i]);
                        } else if (c4 != 'x') {
                            c4 = m7313H(c4);
                        } else {
                            int i9 = i + 1;
                            char c8 = cArr3[i9];
                            i = i9 + 1;
                            c4 = JSONReader.m7283I(c8, cArr3[i]);
                        }
                    }
                } else if (c4 == '\"') {
                    break;
                }
                cArr2[i5] = c4;
                i++;
                i5++;
            }
            str = new String(cArr2);
            i2 = i;
        } else {
            int i10 = this.offset;
            str = new String(cArr, i10, i2 - i10);
        }
        int i11 = i2 + 1;
        char c9 = i11 == this.f12434z ? (char) 26 : this.f12431w[i11];
        while (c9 <= ' ' && ((1 << c9) & JSONReader.f12289u) != 0) {
            i11++;
            c9 = this.f12431w[i11];
        }
        boolean z = c9 == ',';
        this.comma = z;
        if (z) {
            int i12 = i11 + 1;
            char[] cArr4 = this.f12431w;
            this.offset = i12 + 1;
            this.f12290ch = cArr4[i12];
            while (true) {
                char c10 = this.f12290ch;
                if (c10 > ' ' || ((1 << c10) & JSONReader.f12289u) == 0) {
                    break;
                }
                int i13 = this.offset;
                if (i13 >= this.f12434z) {
                    this.f12290ch = (char) 26;
                } else {
                    char[] cArr5 = this.f12431w;
                    this.offset = i13 + 1;
                    this.f12290ch = cArr5[i13];
                }
            }
        } else {
            this.offset = i11 + 1;
            this.f12290ch = c9;
        }
        this.stringValue = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x005c, code lost:
    
        r2 = 26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0068, code lost:
    
        if (r2 > ' ') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006f, code lost:
    
        if (((1 << r2) & com.alibaba.fastjson2.JSONReader.f12289u) == 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0071, code lost:
    
        r1 = r4 + 1;
        r2 = r3[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004c, code lost:
    
        r4 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0079, code lost:
    
        if (r2 != ',') goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x007b, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x007e, code lost:
    
        r17.comma = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0080, code lost:
    
        if (r12 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0084, code lost:
    
        if (r4 < r17.f12434z) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0086, code lost:
    
        r17.f12290ch = 26;
        r17.offset = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x008a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x008b, code lost:
    
        r2 = r3[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x008d, code lost:
    
        if (r2 > ' ') goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0094, code lost:
    
        if (((1 << r2) & com.alibaba.fastjson2.JSONReader.f12289u) == 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0096, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009a, code lost:
    
        if (r4 < r17.f12434z) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00a1, code lost:
    
        r2 = r3[r4];
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009c, code lost:
    
        r17.f12290ch = 26;
        r17.offset = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a0, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a4, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00a5, code lost:
    
        r17.f12290ch = r2;
        r17.offset = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00a9, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x007d, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0071 -> B:24:0x004c). Please report as a decompilation issue!!! */
    /* renamed from: n0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7406n0() {
        /*
            r17 = this;
            r0 = r17
            char r1 = r0.f12290ch
            int r2 = r0.offset
            char[] r3 = r0.f12431w
            int r4 = r2 + 1
            char r2 = r3[r2]
        Lc:
            r5 = 92
            if (r2 != r5) goto L40
            int r2 = r0.f12434z
            if (r4 >= r2) goto L34
            int r2 = r4 + 1
            char r4 = r3[r4]
            if (r4 == r5) goto L2f
            r5 = 34
            if (r4 != r5) goto L1f
            goto L2f
        L1f:
            r5 = 117(0x75, float:1.64E-43)
            if (r4 != r5) goto L2a
            int r2 = r2 + 4
            int r4 = r2 + 1
            char r2 = r3[r2]
            goto Lc
        L2a:
            char r4 = r0.m7313H(r4)
            goto L56
        L2f:
            int r4 = r2 + 1
            char r2 = r3[r2]
            goto Lc
        L34:
            com.alibaba.fastjson2.JSONException r1 = new com.alibaba.fastjson2.JSONException
            java.lang.String r2 = "illegal string, end"
            java.lang.String r0 = r0.info(r2)
            r1.<init>(r0)
            throw r1
        L40:
            r5 = 26
            if (r2 != r1) goto L4e
            int r1 = r0.f12434z
            if (r4 >= r1) goto L5c
            int r1 = r4 + 1
            char r2 = r3[r4]
        L4c:
            r4 = r1
            goto L5d
        L4e:
            int r2 = r0.f12434z
            if (r4 >= r2) goto L5c
            int r2 = r4 + 1
            char r4 = r3[r4]
        L56:
            r16 = r4
            r4 = r2
            r2 = r16
            goto Lc
        L5c:
            r2 = r5
        L5d:
            r6 = 0
            r8 = 4294981376(0x100003700, double:2.1220027474E-314)
            r10 = 1
            r1 = 32
            if (r2 > r1) goto L76
            long r12 = r10 << r2
            long r12 = r12 & r8
            int r12 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r12 == 0) goto L76
            int r1 = r4 + 1
            char r2 = r3[r4]
            goto L4c
        L76:
            r12 = 44
            r13 = 1
            if (r2 != r12) goto L7d
            r12 = r13
            goto L7e
        L7d:
            r12 = 0
        L7e:
            r0.comma = r12
            if (r12 == 0) goto La5
            int r2 = r0.f12434z
            if (r4 < r2) goto L8b
            r0.f12290ch = r5
            r0.offset = r4
            return
        L8b:
            char r2 = r3[r4]
        L8d:
            if (r2 > r1) goto La4
            long r14 = r10 << r2
            long r14 = r14 & r8
            int r12 = (r14 > r6 ? 1 : (r14 == r6 ? 0 : -1))
            if (r12 == 0) goto La4
            int r4 = r4 + 1
            int r2 = r0.f12434z
            if (r4 < r2) goto La1
            r0.f12290ch = r5
            r0.offset = r4
            return
        La1:
            char r2 = r3[r4]
            goto L8d
        La4:
            int r4 = r4 + r13
        La5:
            r0.f12290ch = r2
            r0.offset = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.m7406n0():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0038 A[LOOP:0: B:6:0x0011->B:21:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x000b A[EDGE_INSN: B:22:0x000b->B:4:0x000b BREAK  A[LOOP:0: B:6:0x0011->B:21:0x0038], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0035 -> B:4:0x000b). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void next() {
        /*
            r9 = this;
            int r0 = r9.offset
            char[] r1 = r9.f12431w
            int r2 = r9.f12434z
            r3 = 26
            if (r0 < r2) goto Ld
            r2 = r0
        Lb:
            r0 = r3
            goto L11
        Ld:
            int r2 = r0 + 1
            char r0 = r1[r0]
        L11:
            if (r0 == 0) goto L33
            r4 = 32
            if (r0 > r4) goto L27
            r4 = 1
            long r4 = r4 << r0
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L27
            goto L33
        L27:
            r9.offset = r2
            r9.f12290ch = r0
            r1 = 47
            if (r0 != r1) goto L32
            r9.skipComment()
        L32:
            return
        L33:
            int r0 = r9.f12434z
            if (r2 != r0) goto L38
            goto Lb
        L38:
            int r0 = r2 + 1
            char r2 = r1[r2]
            r8 = r2
            r2 = r0
            r0 = r8
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.next():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0070 A[LOOP:0: B:10:0x001b->B:42:0x0070, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0015 A[EDGE_INSN: B:43:0x0015->B:8:0x0015 BREAK  A[LOOP:0: B:10:0x001b->B:42:0x0070], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x006d -> B:9:0x0015). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfArrayEnd() {
        /*
            r17 = this;
            r0 = r17
            char r1 = r0.f12290ch
            r2 = 93
            if (r1 == r2) goto La
            r0 = 0
            return r0
        La:
            int r1 = r0.offset
            char[] r2 = r0.f12431w
            int r3 = r0.f12434z
            r4 = 26
            if (r1 != r3) goto L17
            r3 = r1
        L15:
            r1 = r4
            goto L1b
        L17:
            int r3 = r1 + 1
            char r1 = r2[r1]
        L1b:
            if (r1 == 0) goto L6b
            r5 = 0
            r7 = 4294981376(0x100003700, double:2.1220027474E-314)
            r9 = 1
            r11 = 32
            if (r1 > r11) goto L32
            long r12 = r9 << r1
            long r12 = r12 & r7
            int r12 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r12 == 0) goto L32
            goto L6b
        L32:
            r12 = 44
            r13 = 1
            if (r1 != r12) goto L5f
            r0.comma = r13
            int r1 = r0.f12434z
            if (r3 != r1) goto L40
            r1 = r3
            r3 = r4
            goto L44
        L40:
            int r1 = r3 + 1
            char r3 = r2[r3]
        L44:
            r16 = r3
            r3 = r1
            r1 = r16
        L49:
            if (r1 == 0) goto L54
            if (r1 > r11) goto L5f
            long r14 = r9 << r1
            long r14 = r14 & r7
            int r12 = (r14 > r5 ? 1 : (r14 == r5 ? 0 : -1))
            if (r12 == 0) goto L5f
        L54:
            int r1 = r0.f12434z
            if (r3 != r1) goto L5a
            r1 = r4
            goto L49
        L5a:
            int r1 = r3 + 1
            char r3 = r2[r3]
            goto L44
        L5f:
            r0.f12290ch = r1
            r0.offset = r3
            r2 = 47
            if (r1 != r2) goto L6a
            r17.skipComment()
        L6a:
            return r13
        L6b:
            int r1 = r0.f12434z
            if (r3 != r1) goto L70
            goto L15
        L70:
            int r1 = r3 + 1
            char r3 = r2[r3]
            r16 = r3
            r3 = r1
            r1 = r16
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfArrayEnd():boolean");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0041 A[LOOP:0: B:10:0x0019->B:24:0x0041, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0013 A[EDGE_INSN: B:25:0x0013->B:8:0x0013 BREAK  A[LOOP:0: B:10:0x0019->B:24:0x0041], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x003e -> B:9:0x0013). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfArrayStart() {
        /*
            r9 = this;
            char r0 = r9.f12290ch
            r1 = 91
            if (r0 == r1) goto L8
            r9 = 0
            return r9
        L8:
            char[] r0 = r9.f12431w
            int r1 = r9.offset
            int r2 = r9.f12434z
            r3 = 26
            if (r1 != r2) goto L15
            r2 = r1
        L13:
            r1 = r3
            goto L19
        L15:
            int r2 = r1 + 1
            char r1 = r0[r1]
        L19:
            if (r1 == 0) goto L3c
            r4 = 32
            if (r1 > r4) goto L2f
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L2f
            goto L3c
        L2f:
            r9.f12290ch = r1
            r9.offset = r2
            r0 = 47
            if (r1 != r0) goto L3a
            r9.skipComment()
        L3a:
            r9 = 1
            return r9
        L3c:
            int r1 = r9.f12434z
            if (r2 != r1) goto L41
            goto L13
        L41:
            int r1 = r2 + 1
            char r2 = r0[r2]
            r8 = r2
            r2 = r1
            r1 = r8
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfArrayStart():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0059 A[LOOP:1: B:25:0x003b->B:38:0x0059, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0035 A[EDGE_INSN: B:39:0x0035->B:23:0x0035 BREAK  A[LOOP:1: B:25:0x003b->B:38:0x0059], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0056 -> B:18:0x0035). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfComma() {
        /*
            r14 = this;
            char[] r0 = r14.f12431w
            int r1 = r14.offset
            char r2 = r14.f12290ch
        L6:
            r3 = 0
            r5 = 4294981376(0x100003700, double:2.1220027474E-314)
            r7 = 1
            r9 = 32
            r10 = 26
            if (r2 > r9) goto L2a
            long r11 = r7 << r2
            long r11 = r11 & r5
            int r11 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r11 == 0) goto L2a
            int r2 = r14.f12434z
            if (r1 != r2) goto L22
            r2 = r10
            goto L6
        L22:
            int r2 = r1 + 1
            char r1 = r0[r1]
            r13 = r2
            r2 = r1
            r1 = r13
            goto L6
        L2a:
            r11 = 44
            if (r2 == r11) goto L30
            r14 = 0
            return r14
        L30:
            int r2 = r14.f12434z
            if (r1 != r2) goto L37
            r2 = r1
        L35:
            r1 = r10
            goto L3b
        L37:
            int r2 = r1 + 1
            char r1 = r0[r1]
        L3b:
            if (r1 == 0) goto L54
            if (r1 > r9) goto L47
            long r11 = r7 << r1
            long r11 = r11 & r5
            int r11 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r11 == 0) goto L47
            goto L54
        L47:
            r14.offset = r2
            r14.f12290ch = r1
            r0 = 47
            if (r1 != r0) goto L52
            r14.skipComment()
        L52:
            r14 = 1
            return r14
        L54:
            int r1 = r14.f12434z
            if (r2 != r1) goto L59
            goto L35
        L59:
            int r1 = r2 + 1
            char r2 = r0[r2]
            r13 = r2
            r2 = r1
            r1 = r13
            goto L3b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfComma():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065 A[LOOP:0: B:24:0x004d->B:30:0x0065, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0062 -> B:22:0x0047). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfInfinity() {
        /*
            r9 = this;
            char[] r0 = r9.f12431w
            int r1 = r9.offset
            char r2 = r9.f12290ch
            r3 = 73
            if (r2 != r3) goto L73
            int r2 = r1 + 6
            int r3 = r9.f12434z
            if (r2 >= r3) goto L73
            char r4 = r0[r1]
            r5 = 110(0x6e, float:1.54E-43)
            if (r4 != r5) goto L73
            int r4 = r1 + 1
            char r4 = r0[r4]
            r6 = 102(0x66, float:1.43E-43)
            if (r4 != r6) goto L73
            int r4 = r1 + 2
            char r4 = r0[r4]
            r6 = 105(0x69, float:1.47E-43)
            if (r4 != r6) goto L73
            int r4 = r1 + 3
            char r4 = r0[r4]
            if (r4 != r5) goto L73
            int r4 = r1 + 4
            char r4 = r0[r4]
            if (r4 != r6) goto L73
            int r4 = r1 + 5
            char r4 = r0[r4]
            r5 = 116(0x74, float:1.63E-43)
            if (r4 != r5) goto L73
            char r2 = r0[r2]
            r4 = 121(0x79, float:1.7E-43)
            if (r2 != r4) goto L73
            int r1 = r1 + 7
            r2 = 26
            if (r1 != r3) goto L49
            r3 = r1
        L47:
            r1 = r2
            goto L4d
        L49:
            int r3 = r1 + 1
            char r1 = r0[r1]
        L4d:
            r4 = 32
            if (r1 > r4) goto L6d
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L6d
            int r1 = r9.f12434z
            if (r3 != r1) goto L65
            goto L47
        L65:
            int r1 = r3 + 1
            char r3 = r0[r3]
            r8 = r3
            r3 = r1
            r1 = r8
            goto L4d
        L6d:
            r9.offset = r3
            r9.f12290ch = r1
            r9 = 1
            return r9
        L73:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfInfinity():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0057 A[LOOP:1: B:24:0x0039->B:37:0x0057, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0033 A[EDGE_INSN: B:38:0x0033->B:22:0x0033 BREAK  A[LOOP:1: B:24:0x0039->B:37:0x0057], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0054 -> B:17:0x0033). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfMatch(char r15) {
        /*
            r14 = this;
            char[] r0 = r14.f12431w
            int r1 = r14.offset
            char r2 = r14.f12290ch
        L6:
            r3 = 0
            r5 = 4294981376(0x100003700, double:2.1220027474E-314)
            r7 = 1
            r9 = 32
            r10 = 26
            if (r2 > r9) goto L2a
            long r11 = r7 << r2
            long r11 = r11 & r5
            int r11 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r11 == 0) goto L2a
            int r2 = r14.f12434z
            if (r1 != r2) goto L22
            r2 = r10
            goto L6
        L22:
            int r2 = r1 + 1
            char r1 = r0[r1]
            r13 = r2
            r2 = r1
            r1 = r13
            goto L6
        L2a:
            if (r2 == r15) goto L2e
            r14 = 0
            return r14
        L2e:
            int r15 = r14.f12434z
            if (r1 != r15) goto L35
            r15 = r1
        L33:
            r1 = r10
            goto L39
        L35:
            int r15 = r1 + 1
            char r1 = r0[r1]
        L39:
            if (r1 == 0) goto L52
            if (r1 > r9) goto L45
            long r11 = r7 << r1
            long r11 = r11 & r5
            int r2 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r2 == 0) goto L45
            goto L52
        L45:
            r14.offset = r15
            r14.f12290ch = r1
            r15 = 47
            if (r1 != r15) goto L50
            r14.skipComment()
        L50:
            r14 = 1
            return r14
        L52:
            int r1 = r14.f12434z
            if (r15 != r1) goto L57
            goto L33
        L57:
            int r1 = r15 + 1
            char r15 = r0[r15]
            r13 = r1
            r1 = r15
            r15 = r13
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfMatch(char):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e A[LOOP:0: B:16:0x0026->B:22:0x003e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0020 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x003b -> B:14:0x0020). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfMatchIdent(char r9, char r10, char r11) {
        /*
            r8 = this;
            char r0 = r8.f12290ch
            r1 = 0
            if (r0 == r9) goto L6
            return r1
        L6:
            char[] r9 = r8.f12431w
            int r0 = r8.offset
            int r2 = r0 + 2
            int r3 = r8.f12434z
            if (r2 > r3) goto L6c
            char r4 = r9[r0]
            if (r4 != r10) goto L6c
            r10 = 1
            int r0 = r0 + r10
            char r0 = r9[r0]
            if (r0 == r11) goto L1b
            goto L6c
        L1b:
            r11 = 26
            if (r2 != r3) goto L22
            r0 = r2
        L20:
            r2 = r11
            goto L26
        L22:
            int r0 = r2 + 1
            char r2 = r9[r2]
        L26:
            r3 = 32
            if (r2 > r3) goto L46
            r3 = 1
            long r3 = r3 << r2
            r5 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r3 = r3 & r5
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 == 0) goto L46
            int r2 = r8.f12434z
            if (r0 != r2) goto L3e
            goto L20
        L3e:
            int r2 = r0 + 1
            char r0 = r9[r0]
            r7 = r2
            r2 = r0
            r0 = r7
            goto L26
        L46:
            int r9 = r8.offset
            int r9 = r9 + 3
            if (r0 != r9) goto L67
            if (r2 == r11) goto L67
            r9 = 40
            if (r2 == r9) goto L67
            r9 = 91
            if (r2 == r9) goto L67
            r9 = 93
            if (r2 == r9) goto L67
            r9 = 41
            if (r2 == r9) goto L67
            r9 = 58
            if (r2 == r9) goto L67
            r9 = 44
            if (r2 == r9) goto L67
            return r1
        L67:
            r8.offset = r0
            r8.f12290ch = r2
            return r10
        L6c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfMatchIdent(char, char, char):boolean");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean nextIfNull() {
        if (this.f12290ch != 'n') {
            return false;
        }
        int i = this.offset;
        if (i + 2 >= this.f12434z || this.f12431w[i] != 'u') {
            return false;
        }
        readNull();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005a A[LOOP:0: B:17:0x0043->B:22:0x005a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0057 -> B:15:0x003d). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfNullOrEmptyString() {
        /*
            r18 = this;
            r0 = r18
            char r1 = r0.f12290ch
            int r2 = r0.f12434z
            int r3 = r0.offset
            char[] r4 = r0.f12431w
            r5 = 110(0x6e, float:1.54E-43)
            r6 = 0
            r7 = 1
            if (r1 != r5) goto L29
            int r5 = r3 + 2
            if (r5 >= r2) goto L29
            char r8 = r4[r3]
            r9 = 117(0x75, float:1.64E-43)
            if (r8 != r9) goto L29
            int r8 = r3 + 1
            char r8 = r4[r8]
            r9 = 108(0x6c, float:1.51E-43)
            if (r8 != r9) goto L29
            char r5 = r4[r5]
            if (r5 != r9) goto L29
            int r3 = r3 + 3
            goto L38
        L29:
            r5 = 34
            if (r1 == r5) goto L31
            r5 = 39
            if (r1 != r5) goto L90
        L31:
            if (r3 >= r2) goto L90
            char r5 = r4[r3]
            if (r5 != r1) goto L90
            int r3 = r3 + r7
        L38:
            r1 = 26
            if (r3 != r2) goto L3f
            r5 = r3
        L3d:
            r3 = r1
            goto L43
        L3f:
            int r5 = r3 + 1
            char r3 = r4[r3]
        L43:
            r8 = 0
            r10 = 4294981376(0x100003700, double:2.1220027474E-314)
            r12 = 1
            r14 = 32
            if (r3 > r14) goto L64
            long r15 = r12 << r3
            long r15 = r15 & r10
            int r15 = (r15 > r8 ? 1 : (r15 == r8 ? 0 : -1))
            if (r15 == 0) goto L64
            if (r5 != r2) goto L5a
            goto L3d
        L5a:
            int r3 = r5 + 1
            char r5 = r4[r5]
            r17 = r5
            r5 = r3
            r3 = r17
            goto L43
        L64:
            r15 = 44
            if (r3 != r15) goto L69
            r6 = r7
        L69:
            r0.comma = r6
            if (r6 == 0) goto L7a
            if (r5 != r2) goto L71
        L6f:
            r3 = r1
            goto L7a
        L71:
            int r3 = r5 + 1
            char r5 = r4[r5]
        L75:
            r17 = r5
            r5 = r3
            r3 = r17
        L7a:
            if (r3 > r14) goto L8b
            long r15 = r12 << r3
            long r15 = r15 & r10
            int r6 = (r15 > r8 ? 1 : (r15 == r8 ? 0 : -1))
            if (r6 == 0) goto L8b
            if (r5 != r2) goto L86
            goto L6f
        L86:
            int r3 = r5 + 1
            char r5 = r4[r5]
            goto L75
        L8b:
            r0.offset = r5
            r0.f12290ch = r3
            return r7
        L90:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfNullOrEmptyString():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0070 A[LOOP:0: B:10:0x001b->B:42:0x0070, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0015 A[EDGE_INSN: B:43:0x0015->B:8:0x0015 BREAK  A[LOOP:0: B:10:0x001b->B:42:0x0070], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x006d -> B:9:0x0015). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfObjectEnd() {
        /*
            r17 = this;
            r0 = r17
            char r1 = r0.f12290ch
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto La
            r0 = 0
            return r0
        La:
            int r1 = r0.offset
            char[] r2 = r0.f12431w
            int r3 = r0.f12434z
            r4 = 26
            if (r1 != r3) goto L17
            r3 = r1
        L15:
            r1 = r4
            goto L1b
        L17:
            int r3 = r1 + 1
            char r1 = r2[r1]
        L1b:
            if (r1 == 0) goto L6b
            r5 = 0
            r7 = 4294981376(0x100003700, double:2.1220027474E-314)
            r9 = 1
            r11 = 32
            if (r1 > r11) goto L32
            long r12 = r9 << r1
            long r12 = r12 & r7
            int r12 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r12 == 0) goto L32
            goto L6b
        L32:
            r12 = 44
            r13 = 1
            if (r1 != r12) goto L5f
            r0.comma = r13
            int r1 = r0.f12434z
            if (r3 != r1) goto L40
            r1 = r3
            r3 = r4
            goto L44
        L40:
            int r1 = r3 + 1
            char r3 = r2[r3]
        L44:
            r16 = r3
            r3 = r1
            r1 = r16
        L49:
            if (r1 == 0) goto L54
            if (r1 > r11) goto L5f
            long r14 = r9 << r1
            long r14 = r14 & r7
            int r12 = (r14 > r5 ? 1 : (r14 == r5 ? 0 : -1))
            if (r12 == 0) goto L5f
        L54:
            int r1 = r0.f12434z
            if (r3 != r1) goto L5a
            r1 = r4
            goto L49
        L5a:
            int r1 = r3 + 1
            char r3 = r2[r3]
            goto L44
        L5f:
            r0.f12290ch = r1
            r0.offset = r3
            r2 = 47
            if (r1 != r2) goto L6a
            r17.skipComment()
        L6a:
            return r13
        L6b:
            int r1 = r0.f12434z
            if (r3 != r1) goto L70
            goto L15
        L70:
            int r1 = r3 + 1
            char r3 = r2[r3]
            r16 = r3
            r3 = r1
            r1 = r16
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfObjectEnd():boolean");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0041 A[LOOP:0: B:10:0x0019->B:24:0x0041, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0013 A[EDGE_INSN: B:25:0x0013->B:8:0x0013 BREAK  A[LOOP:0: B:10:0x0019->B:24:0x0041], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x003e -> B:9:0x0013). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfObjectStart() {
        /*
            r9 = this;
            char r0 = r9.f12290ch
            r1 = 123(0x7b, float:1.72E-43)
            if (r0 == r1) goto L8
            r9 = 0
            return r9
        L8:
            char[] r0 = r9.f12431w
            int r1 = r9.offset
            int r2 = r9.f12434z
            r3 = 26
            if (r1 != r2) goto L15
            r2 = r1
        L13:
            r1 = r3
            goto L19
        L15:
            int r2 = r1 + 1
            char r1 = r0[r1]
        L19:
            if (r1 == 0) goto L3c
            r4 = 32
            if (r1 > r4) goto L2f
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L2f
            goto L3c
        L2f:
            r9.f12290ch = r1
            r9.offset = r2
            r0 = 47
            if (r1 != r0) goto L3a
            r9.skipComment()
        L3a:
            r9 = 1
            return r9
        L3c:
            int r1 = r9.f12434z
            if (r2 != r1) goto L41
            goto L13
        L41:
            int r1 = r2 + 1
            char r2 = r0[r2]
            r8 = r2
            r2 = r1
            r1 = r8
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfObjectStart():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041 A[LOOP:0: B:14:0x0029->B:20:0x0041, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x003e -> B:12:0x0023). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfSet() {
        /*
            r9 = this;
            char[] r0 = r9.f12431w
            int r1 = r9.offset
            char r2 = r9.f12290ch
            r3 = 83
            if (r2 != r3) goto L4f
            int r2 = r1 + 1
            int r3 = r9.f12434z
            if (r2 >= r3) goto L4f
            char r4 = r0[r1]
            r5 = 101(0x65, float:1.42E-43)
            if (r4 != r5) goto L4f
            char r2 = r0[r2]
            r4 = 116(0x74, float:1.63E-43)
            if (r2 != r4) goto L4f
            int r1 = r1 + 2
            r2 = 26
            if (r1 != r3) goto L25
            r3 = r1
        L23:
            r1 = r2
            goto L29
        L25:
            int r3 = r1 + 1
            char r1 = r0[r1]
        L29:
            r4 = 32
            if (r1 > r4) goto L49
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L49
            int r1 = r9.f12434z
            if (r3 != r1) goto L41
            goto L23
        L41:
            int r1 = r3 + 1
            char r3 = r0[r3]
            r8 = r3
            r3 = r1
            r1 = r8
            goto L29
        L49:
            r9.offset = r3
            r9.f12290ch = r1
            r9 = 1
            return r9
        L4f:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfSet():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02a6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x012a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b A[LOOP:0: B:11:0x005a->B:23:0x008b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x026e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x02c7 -> B:106:0x02a6). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigDecimal readBigDecimal() {
        /*
            Method dump skipped, instructions count: 785
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readBigDecimal():java.math.BigDecimal");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f8 A[LOOP:0: B:18:0x00e1->B:24:0x00f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00db A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x010f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00dd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00f5 -> B:16:0x00db). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0121 -> B:31:0x010f). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean readBoolValue() {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readBoolValue():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:148:0x02b2, code lost:
    
        if (r27.negative != false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02b4, code lost:
    
        r7 = -r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02b5, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02cb, code lost:
    
        if (r27.negative != false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02dc, code lost:
    
        if (r27.negative != false) goto L185;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7 A[LOOP:0: B:11:0x0081->B:21:0x00a7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0125 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x002f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0339 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:235:0x013c -> B:224:0x0112). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:257:0x0043 -> B:252:0x002f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x035c -> B:95:0x0339). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double readDoubleValue() {
        /*
            Method dump skipped, instructions count: 946
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readDoubleValue():double");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:58:0x00c8. Please report as an issue. */
    @Override // com.alibaba.fastjson2.JSONReader
    public String readFieldName() {
        int i;
        char[] cArr;
        int i2;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        char c;
        long j8;
        long j9;
        long j10;
        long j11;
        C1738h c1738h;
        char[] cArr2;
        int i3;
        int i4;
        String str;
        char c2 = this.f12290ch;
        if (c2 != '\"' && c2 != '\'') {
            if ((this.context.features & JSONReader.Feature.AllowUnQuotedFieldNames.mask) == 0 || !JSONReader.m7285f0(c2)) {
                return null;
            }
            return readFieldNameUnquote();
        }
        char[] cArr3 = this.f12431w;
        this.nameEscape = false;
        int i5 = this.offset;
        this.f12424J = i5;
        int i6 = this.f12434z;
        int i7 = 0;
        int i8 = i5;
        while (true) {
            if (i8 >= i6) {
                break;
            }
            char c3 = cArr3[i8];
            if (c3 == '\\') {
                this.nameEscape = true;
                int i9 = i8 + 1;
                char c4 = cArr3[i9];
                if (c4 == 'u') {
                    i9 += 4;
                } else if (c4 == 'x') {
                    i9 += 2;
                }
                i8 = i9 + 1;
            } else if (c3 == c2) {
                this.f12426Q = i7;
                this.f12425O = i8;
                int i10 = i8 + 1;
                char c5 = i10 < i6 ? cArr3[i10] : (char) 26;
                while (c5 <= ' ' && ((1 << c5) & JSONReader.f12289u) != 0) {
                    i10++;
                    c5 = cArr3[i10];
                }
                if (c5 != ':') {
                    throw new JSONException("syntax error : " + i10);
                }
                i8 = i10 + 1;
                char c6 = i8 == i6 ? (char) 26 : cArr3[i8];
                while (c6 <= ' ' && ((1 << c6) & JSONReader.f12289u) != 0) {
                    i8++;
                    c6 = cArr3[i8];
                }
                this.offset = i8 + 1;
                this.f12290ch = c6;
            } else {
                i8++;
            }
            i7++;
        }
        int i11 = this.f12425O;
        if (i11 < i5) {
            throw new JSONException("syntax error : " + i8);
        }
        if (this.nameEscape) {
            return getFieldName();
        }
        switch (this.f12426Q) {
            case 1:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c7 = cArr[i2];
                if ((c7 & 255) == c7) {
                    j = c7;
                    j2 = j;
                    j3 = -1;
                    j11 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
            case 2:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c8 = cArr[i2];
                char c9 = cArr[i2 + 1];
                if ((c8 & 255) == c8 && (c9 & 255) == c9) {
                    j = (c9 << '\b') + c8;
                    j2 = j;
                    j3 = -1;
                    j11 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 3:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c10 = cArr[i2];
                char c11 = cArr[i2 + 1];
                char c12 = cArr[i2 + 2];
                if ((c10 & 255) == c10 && (c11 & 255) == c11 && (c12 & 255) == c12) {
                    j = (c12 << 16) + (c11 << '\b') + c10;
                    j2 = j;
                    j3 = -1;
                    j11 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 4:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c13 = cArr[i2];
                char c14 = cArr[i2 + 1];
                char c15 = cArr[i2 + 2];
                char c16 = cArr[i2 + 3];
                if ((c13 & 255) == c13 && (c14 & 255) == c14 && (c15 & 255) == c15 && (c16 & 255) == c16) {
                    j = (c16 << 24) + (c15 << 16) + (c14 << '\b') + c13;
                    j2 = j;
                    j3 = -1;
                    j11 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 5:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c17 = cArr[i2];
                char c18 = cArr[i2 + 1];
                char c19 = cArr[i2 + 2];
                char c20 = cArr[i2 + 3];
                char c21 = cArr[i2 + 4];
                if ((c17 & 255) == c17 && (c18 & 255) == c18 && (c19 & 255) == c19 && (c20 & 255) == c20 && (c21 & 255) == c21) {
                    j = (c21 << 32) + (c20 << 24) + (c19 << 16) + (c18 << 8) + c17;
                    j2 = j;
                    j3 = -1;
                    j11 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 6:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c22 = cArr[i2];
                char c23 = cArr[i2 + 1];
                char c24 = cArr[i2 + 2];
                char c25 = cArr[i2 + 3];
                char c26 = cArr[i2 + 4];
                char c27 = cArr[i2 + 5];
                if ((c22 & 255) == c22 && (c23 & 255) == c23 && (c24 & 255) == c24 && (c25 & 255) == c25 && (c26 & 255) == c26 && (c27 & 255) == c27) {
                    j = (c27 << 40) + (c26 << 32) + (c25 << 24) + (c24 << 16) + (c23 << 8) + c22;
                    j2 = j;
                    j3 = -1;
                    j11 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 7:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c28 = cArr[i2];
                char c29 = cArr[i2 + 1];
                char c30 = cArr[i2 + 2];
                char c31 = cArr[i2 + 3];
                char c32 = cArr[i2 + 4];
                char c33 = cArr[i2 + 5];
                char c34 = cArr[i2 + 6];
                if ((c28 & 255) == c28 && (c29 & 255) == c29 && (c30 & 255) == c30 && (c31 & 255) == c31 && (c32 & 255) == c32 && (c33 & 255) == c33 && (c34 & 255) == c34) {
                    j = (c34 << 48) + (c33 << 40) + (c32 << 32) + (c31 << 24) + (c30 << 16) + (c29 << 8) + c28;
                    j2 = j;
                    j3 = -1;
                    j11 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 8:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c35 = cArr[i2];
                char c36 = cArr[i2 + 1];
                char c37 = cArr[i2 + 2];
                char c38 = cArr[i2 + 3];
                char c39 = cArr[i2 + 4];
                char c40 = cArr[i2 + 5];
                char c41 = cArr[i2 + 6];
                char c42 = cArr[i2 + 7];
                if ((c35 & 255) == c35 && (c36 & 255) == c36 && (c37 & 255) == c37 && (c38 & 255) == c38 && (c39 & 255) == c39 && (c40 & 255) == c40 && (c41 & 255) == c41 && (c42 & 255) == c42) {
                    j = (c42 << 56) + (c41 << 48) + (c40 << 40) + (c39 << 32) + (c38 << 24) + (c37 << 16) + (c36 << 8) + c35;
                    j2 = j;
                    j3 = -1;
                    j11 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 9:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c43 = cArr[i2];
                char c44 = cArr[i2 + 1];
                char c45 = cArr[i2 + 2];
                char c46 = cArr[i2 + 3];
                char c47 = cArr[i2 + 4];
                char c48 = cArr[i2 + 5];
                char c49 = cArr[i2 + 6];
                char c50 = cArr[i2 + 7];
                char c51 = cArr[i2 + 8];
                if ((c43 & 255) == c43 && (c44 & 255) == c44 && (c45 & 255) == c45 && (c46 & 255) == c46 && (c47 & 255) == c47 && (c48 & 255) == c48 && (c49 & 255) == c49 && (c50 & 255) == c50 && (c51 & 255) == c51) {
                    j4 = c43;
                    j5 = (c51 << 56) + (c50 << 48) + (c49 << 40) + (c48 << 32) + (c47 << 24) + (c46 << 16) + (c45 << 8) + c44;
                    j11 = j5;
                    j2 = j4;
                    j3 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 10:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c52 = cArr[i2];
                char c53 = cArr[i2 + 1];
                char c54 = cArr[i2 + 2];
                char c55 = cArr[i2 + 3];
                char c56 = cArr[i2 + 4];
                char c57 = cArr[i2 + 5];
                char c58 = cArr[i2 + 6];
                char c59 = cArr[i2 + 7];
                char c60 = cArr[i2 + 8];
                char c61 = cArr[i2 + 9];
                if ((c52 & 255) == c52 && (c53 & 255) == c53 && (c54 & 255) == c54 && (c55 & 255) == c55 && (c56 & 255) == c56 && (c57 & 255) == c57 && (c58 & 255) == c58 && (c59 & 255) == c59 && (c60 & 255) == c60 && (c61 & 255) == c61) {
                    j4 = (c53 << '\b') + c52;
                    j6 = (c61 << 56) + (c60 << 48) + (c59 << 40) + (c58 << 32) + (c57 << 24) + (c56 << 16) + (c55 << 8);
                    j7 = c54;
                    j5 = j6 + j7;
                    j11 = j5;
                    j2 = j4;
                    j3 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 11:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c62 = cArr[i2];
                char c63 = cArr[i2 + 1];
                char c64 = cArr[i2 + 2];
                char c65 = cArr[i2 + 3];
                char c66 = cArr[i2 + 4];
                char c67 = cArr[i2 + 5];
                char c68 = cArr[i2 + 6];
                char c69 = cArr[i2 + 7];
                char c70 = cArr[i2 + 8];
                char c71 = cArr[i2 + 9];
                char c72 = cArr[i2 + 10];
                if ((c62 & 255) == c62 && (c63 & 255) == c63 && (c64 & 255) == c64 && (c65 & 255) == c65 && (c66 & 255) == c66 && (c67 & 255) == c67 && (c68 & 255) == c68 && (c69 & 255) == c69 && (c70 & 255) == c70 && (c71 & 255) == c71 && (c72 & 255) == c72) {
                    j4 = (c64 << 16) + (c63 << '\b') + c62;
                    j6 = (c72 << 56) + (c71 << 48) + (c70 << 40) + (c69 << 32) + (c68 << 24) + (c67 << 16) + (c66 << 8);
                    j7 = c65;
                    j5 = j6 + j7;
                    j11 = j5;
                    j2 = j4;
                    j3 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 12:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c73 = cArr[i2];
                char c74 = cArr[i2 + 1];
                char c75 = cArr[i2 + 2];
                char c76 = cArr[i2 + 3];
                c = cArr[i2 + 4];
                char c77 = cArr[i2 + 5];
                char c78 = cArr[i2 + 6];
                char c79 = cArr[i2 + 7];
                char c80 = cArr[i2 + 8];
                char c81 = cArr[i2 + 9];
                char c82 = cArr[i2 + 10];
                char c83 = cArr[i2 + 11];
                if ((c73 & 255) == c73 && (c74 & 255) == c74 && (c75 & 255) == c75 && (c76 & 255) == c76 && (c & 255) == c && (c77 & 255) == c77 && (c78 & 255) == c78 && (c79 & 255) == c79 && (c80 & 255) == c80 && (c81 & 255) == c81 && (c82 & 255) == c82 && (c83 & 255) == c83) {
                    j8 = (c76 << 24) + (c75 << 16) + (c74 << '\b') + c73;
                    j9 = (c83 << 56) + (c82 << 48) + (c81 << 40) + (c80 << 32) + (c79 << 24) + (c78 << 16) + (c77 << 8);
                    j10 = c;
                    long j12 = j9 + j10;
                    j2 = j8;
                    j11 = j12;
                    j3 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 13:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c84 = cArr[i2];
                char c85 = cArr[i2 + 1];
                char c86 = cArr[i2 + 2];
                char c87 = cArr[i2 + 3];
                char c88 = cArr[i2 + 4];
                char c89 = cArr[i2 + 5];
                char c90 = cArr[i2 + 6];
                char c91 = cArr[i2 + 7];
                char c92 = cArr[i2 + 8];
                char c93 = cArr[i2 + 9];
                char c94 = cArr[i2 + 10];
                char c95 = cArr[i2 + 11];
                char c96 = cArr[i2 + 12];
                if ((c84 & 255) == c84 && (c85 & 255) == c85 && (c86 & 255) == c86 && (c87 & 255) == c87 && (c88 & 255) == c88 && (c89 & 255) == c89 && (c90 & 255) == c90 && (c91 & 255) == c91 && (c92 & 255) == c92 && (c93 & 255) == c93 && (c94 & 255) == c94 && (c95 & 255) == c95 && (c96 & 255) == c96) {
                    j8 = c84 + (c88 << 32) + (c87 << 24) + (c86 << 16) + (c85 << 8);
                    j9 = (c96 << 56) + (c95 << 48) + (c94 << 40) + (c93 << 32) + (c92 << 24) + (c91 << 16) + (c90 << 8);
                    j10 = c89;
                    long j122 = j9 + j10;
                    j2 = j8;
                    j11 = j122;
                    j3 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 14:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c97 = cArr[i2];
                char c98 = cArr[i2 + 1];
                char c99 = cArr[i2 + 2];
                char c100 = cArr[i2 + 3];
                char c101 = cArr[i2 + 4];
                char c102 = cArr[i2 + 5];
                char c103 = cArr[i2 + 6];
                char c104 = cArr[i2 + 7];
                char c105 = cArr[i2 + 8];
                char c106 = cArr[i2 + 9];
                char c107 = cArr[i2 + 10];
                char c108 = cArr[i2 + 11];
                char c109 = cArr[i2 + 12];
                char c110 = cArr[i2 + 13];
                if ((c97 & 255) == c97 && (c98 & 255) == c98 && (c99 & 255) == c99 && (c100 & 255) == c100 && (c101 & 255) == c101 && (c102 & 255) == c102 && (c103 & 255) == c103 && (c104 & 255) == c104 && (c105 & 255) == c105 && (c106 & 255) == c106 && (c107 & 255) == c107 && (c108 & 255) == c108 && (c109 & 255) == c109 && (c110 & 255) == c110) {
                    j8 = c97 + (c102 << 40) + (c101 << 32) + (c100 << 24) + (c99 << 16) + (c98 << 8);
                    j9 = (c110 << 56) + (c109 << 48) + (c108 << 40) + (c107 << 32) + (c106 << 24) + (c105 << 16) + (c104 << 8);
                    j10 = c103;
                    long j1222 = j9 + j10;
                    j2 = j8;
                    j11 = j1222;
                    j3 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 15:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                char c111 = cArr[i2];
                char c112 = cArr[i2 + 1];
                char c113 = cArr[i2 + 2];
                char c114 = cArr[i2 + 3];
                char c115 = cArr[i2 + 4];
                char c116 = cArr[i2 + 5];
                char c117 = cArr[i2 + 6];
                char c118 = cArr[i2 + 7];
                char c119 = cArr[i2 + 8];
                char c120 = cArr[i2 + 9];
                char c121 = cArr[i2 + 10];
                char c122 = cArr[i2 + 11];
                char c123 = cArr[i2 + 12];
                char c124 = cArr[i2 + 13];
                char c125 = cArr[i2 + 14];
                if ((c111 & 255) == c111 && (c112 & 255) == c112 && (c113 & 255) == c113 && (c114 & 255) == c114 && (c115 & 255) == c115 && (c116 & 255) == c116 && (c117 & 255) == c117 && (c118 & 255) == c118 && (c119 & 255) == c119 && (c120 & 255) == c120 && (c121 & 255) == c121 && (c122 & 255) == c122 && (c123 & 255) == c123 && (c124 & 255) == c124 && (c125 & 255) == c125) {
                    j8 = c111 + (c117 << 48) + (c116 << 40) + (c115 << 32) + (c114 << 24) + (c113 << 16) + (c112 << 8);
                    j9 = (c125 << 56) + (c124 << 48) + (c123 << 40) + (c122 << 32) + (c121 << 24) + (c120 << 16) + (c119 << 8);
                    c = c118;
                    j10 = c;
                    long j12222 = j9 + j10;
                    j2 = j8;
                    j11 = j12222;
                    j3 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            case 16:
                char c126 = cArr3[i5];
                char c127 = cArr3[i5 + 1];
                char c128 = cArr3[i5 + 2];
                char c129 = cArr3[i5 + 3];
                char c130 = cArr3[i5 + 4];
                char c131 = cArr3[i5 + 5];
                char c132 = cArr3[i5 + 6];
                char c133 = cArr3[i5 + 7];
                char c134 = cArr3[i5 + 8];
                char c135 = cArr3[i5 + 9];
                char c136 = cArr3[i5 + 10];
                char c137 = cArr3[i5 + 11];
                i = i11;
                char c138 = cArr3[i5 + 12];
                char c139 = cArr3[i5 + 13];
                char c140 = cArr3[i5 + 14];
                i2 = i5;
                char c141 = cArr3[i5 + 15];
                cArr = cArr3;
                if ((c126 & 255) == c126 && (c127 & 255) == c127 && (c128 & 255) == c128 && (c129 & 255) == c129 && (c130 & 255) == c130 && (c131 & 255) == c131 && (c132 & 255) == c132 && (c133 & 255) == c133 && (c134 & 255) == c134 && (c135 & 255) == c135 && (c136 & 255) == c136 && (c137 & 255) == c137 && (c138 & 255) == c138 && (c139 & 255) == c139 && (c140 & 255) == c140 && (c141 & 255) == c141) {
                    j4 = (c133 << 56) + (c132 << 48) + (c131 << 40) + (c130 << 32) + (c129 << 24) + (c128 << 16) + (c127 << 8) + c126;
                    j5 = (c141 << 56) + (c140 << 48) + (c139 << 40) + (c138 << 32) + (c137 << 24) + (c136 << 16) + (c135 << 8) + c134;
                    j11 = j5;
                    j2 = j4;
                    j3 = -1;
                    break;
                }
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
            default:
                i = i11;
                cArr = cArr3;
                i2 = i5;
                j3 = -1;
                j2 = -1;
                j11 = -1;
                break;
        }
        if (j2 == j3) {
            c1738h = this;
            cArr2 = cArr;
            i3 = i;
            i4 = i2;
        } else if (j11 != j3) {
            long j13 = j2 ^ j11;
            JSONFactory.C1725e[] c1725eArr = JSONFactory.f12234j;
            int length = ((int) (j13 ^ (j13 >>> 32))) & (c1725eArr.length - 1);
            JSONFactory.C1725e c1725e = c1725eArr[length];
            if (c1725e == null) {
                String str2 = this.f12430v;
                if (str2 != null) {
                    str = str2.substring(i2, i);
                } else {
                    int i12 = i2;
                    str = new String(cArr, i12, i - i12);
                }
                String str3 = str;
                c1725eArr[length] = new JSONFactory.C1725e(str3, j2, j11);
                return str3;
            }
            c1738h = this;
            cArr2 = cArr;
            i3 = i;
            i4 = i2;
            if (c1725e.f12254b == j2 && c1725e.f12255c == j11) {
                return c1725e.f12253a;
            }
        } else {
            c1738h = this;
            cArr2 = cArr;
            i3 = i;
            i4 = i2;
            NameCacheEntry[] nameCacheEntryArr = JSONFactory.f12233i;
            int length2 = ((int) ((j2 >>> 32) ^ j2)) & (nameCacheEntryArr.length - 1);
            NameCacheEntry nameCacheEntry = nameCacheEntryArr[length2];
            if (nameCacheEntry == null) {
                String str4 = c1738h.f12430v;
                String substring = str4 != null ? str4.substring(i4, i3) : new String(cArr2, i4, i3 - i4);
                nameCacheEntryArr[length2] = new NameCacheEntry(substring, j2);
                return substring;
            }
            if (nameCacheEntry.value == j2) {
                return nameCacheEntry.name;
            }
        }
        String str5 = c1738h.f12430v;
        return str5 != null ? str5.substring(i4, i3) : new String(cArr2, i4, i3 - i4);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:115:0x02f1. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03f9 A[LOOP:2: B:82:0x03e2->B:87:0x03f9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0407  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x03f6 -> B:94:0x03dc). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readFieldNameHashCode() {
        /*
            Method dump skipped, instructions count: 1144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readFieldNameHashCode():long");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0047. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x004a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x004d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:143:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a2 A[FALL_THROUGH, PHI: r2 r8
      0x00a2: PHI (r2v31 char) = 
      (r2v30 char)
      (r2v30 char)
      (r2v30 char)
      (r2v30 char)
      (r2v34 char)
      (r2v36 char)
      (r2v30 char)
      (r2v30 char)
      (r2v30 char)
      (r2v30 char)
      (r2v37 char)
     binds: [B:24:0x005c, B:25:0x005e, B:27:0x0062, B:28:0x0064, B:41:0x008e, B:40:0x0081, B:34:0x0070, B:36:0x0074, B:37:0x0076, B:38:0x0079, B:39:0x007c] A[DONT_GENERATE, DONT_INLINE]
      0x00a2: PHI (r8v29 int) = 
      (r8v28 int)
      (r8v28 int)
      (r8v28 int)
      (r8v28 int)
      (r8v31 int)
      (r8v32 int)
      (r8v28 int)
      (r8v28 int)
      (r8v28 int)
      (r8v28 int)
      (r8v28 int)
     binds: [B:24:0x005c, B:25:0x005e, B:27:0x0062, B:28:0x0064, B:41:0x008e, B:40:0x0081, B:34:0x0070, B:36:0x0074, B:37:0x0076, B:38:0x0079, B:39:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a0 A[FALL_THROUGH, PHI: r5 r8
      0x01a0: PHI (r5v25 char) = (r5v24 char), (r5v30 char), (r5v32 char), (r5v24 char), (r5v24 char), (r5v24 char), (r5v24 char), (r5v33 char) binds: [B:81:0x019a, B:80:0x0185, B:79:0x0178, B:66:0x0167, B:68:0x016b, B:69:0x016d, B:70:0x0170, B:71:0x0173] A[DONT_GENERATE, DONT_INLINE]
      0x01a0: PHI (r8v17 int) = (r8v16 int), (r8v21 int), (r8v22 int), (r8v16 int), (r8v16 int), (r8v16 int), (r8v16 int), (r8v16 int) binds: [B:81:0x019a, B:80:0x0185, B:79:0x0178, B:66:0x0167, B:68:0x016b, B:69:0x016d, B:70:0x0170, B:71:0x0173] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ae  */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readFieldNameHashCodeUnquote() {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readFieldNameHashCodeUnquote():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02d0, code lost:
    
        if (r27.negative != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02bd, code lost:
    
        if (r27.negative != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02bf, code lost:
    
        r15 = -r15;
     */
    /* JADX WARN: Removed duplicated region for block: B:117:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0320 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6 A[LOOP:0: B:11:0x0080->B:21:0x00a6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0127 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x002e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x029a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:0x0341 -> B:119:0x0320). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:228:0x013e -> B:217:0x0114). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:250:0x0042 -> B:245:0x002e). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float readFloatValue() {
        /*
            Method dump skipped, instructions count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readFloatValue():float");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0048 -> B:17:0x0030). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x00e3 -> B:63:0x00c3). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] readHex() {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readHex():byte[]");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public boolean readIfNull() {
        int i;
        char c;
        char[] cArr = this.f12431w;
        int i2 = this.offset;
        if (this.f12290ch != 'n' || cArr[i2] != 'u' || cArr[i2 + 1] != 'l' || cArr[i2 + 2] != 'l') {
            return false;
        }
        int i3 = i2 + 3;
        char c2 = i3 == this.f12434z ? (char) 26 : cArr[i3];
        int i4 = i2 + 4;
        while (c2 <= ' ' && ((1 << c2) & JSONReader.f12289u) != 0) {
            if (i4 == this.f12434z) {
                c2 = 26;
            } else {
                c2 = cArr[i4];
                i4++;
            }
        }
        boolean z = c2 == ',';
        this.comma = z;
        if (z) {
            if (i4 == this.f12434z) {
                i = i4;
                c = 26;
            } else {
                i = i4 + 1;
                c = cArr[i4];
            }
            loop1: while (true) {
                int i5 = i;
                c2 = c;
                i4 = i5;
                while (c2 <= ' ' && ((1 << c2) & JSONReader.f12289u) != 0) {
                    if (i4 == this.f12434z) {
                        c2 = 26;
                    }
                }
                i = i4 + 1;
                c = cArr[i4];
            }
        }
        this.f12290ch = c2;
        this.offset = i4;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x00e8 -> B:75:0x00c9). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Integer readInt32() {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readInt32():java.lang.Integer");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x00d9 -> B:68:0x00bc). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int readInt32Value() {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readInt32Value():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00d9 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x00f7 -> B:76:0x00d9). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Long readInt64() {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readInt64():java.lang.Long");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x00e8 -> B:71:0x00ca). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readInt64Value() {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readInt64Value():long");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDate readLocalDate() {
        int i;
        int i2;
        LocalDate of;
        char[] cArr = this.f12431w;
        char c = this.f12290ch;
        if (c == '\"' || c == '\'') {
            JSONReader.Context context = this.context;
            if ((context.f12292a == null || context.f12293b || context.f12294c || context.f12296e || context.f12299h) && (i2 = (i = this.offset) + 10) < cArr.length && i2 < this.f12434z && cArr[i + 4] == '-' && cArr[i + 7] == '-' && cArr[i + 10] == c) {
                char c2 = cArr[i];
                char c3 = cArr[i + 1];
                char c4 = cArr[i + 2];
                char c5 = cArr[i + 3];
                char c6 = cArr[i + 5];
                char c7 = cArr[i + 6];
                char c8 = cArr[i + 8];
                char c9 = cArr[i + 9];
                if (c2 < '0' || c2 > '9' || c3 < '0' || c3 > '9' || c4 < '0' || c4 > '9' || c5 < '0' || c5 > '9') {
                    return super.readLocalDate();
                }
                int i3 = ((c2 - '0') * 1000) + ((c3 - '0') * 100) + ((c4 - '0') * 10) + (c5 - '0');
                if (c6 < '0' || c6 > '9' || c7 < '0' || c7 > '9') {
                    return super.readLocalDate();
                }
                int i4 = ((c6 - '0') * 10) + (c7 - '0');
                if (c8 < '0' || c8 > '9' || c9 < '0' || c9 > '9') {
                    return super.readLocalDate();
                }
                int i5 = ((c8 - '0') * 10) + (c9 - '0');
                if (i3 == 0 && i4 == 0 && i5 == 0) {
                    of = null;
                } else {
                    try {
                        of = LocalDate.of(i3, i4, i5);
                    } catch (DateTimeException e) {
                        throw new JSONException(info("read date error"), e);
                    }
                }
                this.offset += 11;
                next();
                boolean z = this.f12290ch == ',';
                this.comma = z;
                if (z) {
                    next();
                }
                return of;
            }
        }
        return super.readLocalDate();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDate readLocalDate10() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localDate only support string input");
        }
        try {
            LocalDate parseLocalDate10 = DateUtils.parseLocalDate10(this.f12431w, this.offset);
            if (parseLocalDate10 == null) {
                return null;
            }
            this.offset += 11;
            next();
            boolean z = this.f12290ch == ',';
            this.comma = z;
            if (z) {
                next();
            }
            return parseLocalDate10;
        } catch (DateTimeException e) {
            throw new JSONException(info("read date error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDate readLocalDate11() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localDate only support string input");
        }
        LocalDate parseLocalDate11 = DateUtils.parseLocalDate11(this.f12431w, this.offset);
        if (parseLocalDate11 == null) {
            return null;
        }
        this.offset += 12;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDate11;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDate readLocalDate8() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localDate only support string input");
        }
        try {
            LocalDate parseLocalDate8 = DateUtils.parseLocalDate8(this.f12431w, this.offset);
            this.offset += 9;
            next();
            boolean z = this.f12290ch == ',';
            this.comma = z;
            if (z) {
                next();
            }
            return parseLocalDate8;
        } catch (DateTimeException e) {
            throw new JSONException(info("read date error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDate readLocalDate9() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localDate only support string input");
        }
        try {
            LocalDate parseLocalDate9 = DateUtils.parseLocalDate9(this.f12431w, this.offset);
            this.offset += 10;
            next();
            boolean z = this.f12290ch == ',';
            this.comma = z;
            if (z) {
                next();
            }
            return parseLocalDate9;
        } catch (DateTimeException e) {
            throw new JSONException(info("read date error"), e);
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTime12() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime12 = DateUtils.parseLocalDateTime12(this.f12431w, this.offset);
        if (parseLocalDateTime12 == null) {
            return null;
        }
        this.offset += 13;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDateTime12;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTime14() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime14 = DateUtils.parseLocalDateTime14(this.f12431w, this.offset);
        if (parseLocalDateTime14 == null) {
            return null;
        }
        this.offset += 15;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDateTime14;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTime16() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime16 = DateUtils.parseLocalDateTime16(this.f12431w, this.offset);
        if (parseLocalDateTime16 == null) {
            return null;
        }
        this.offset += 17;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDateTime16;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTime17() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime17 = DateUtils.parseLocalDateTime17(this.f12431w, this.offset);
        if (parseLocalDateTime17 == null) {
            return null;
        }
        this.offset += 18;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDateTime17;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTime18() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime18 = DateUtils.parseLocalDateTime18(this.f12431w, this.offset);
        this.offset += 19;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDateTime18;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTime19() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime19 = DateUtils.parseLocalDateTime19(this.f12431w, this.offset);
        if (parseLocalDateTime19 == null) {
            return null;
        }
        this.offset += 20;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDateTime19;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTime20() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime20 = DateUtils.parseLocalDateTime20(this.f12431w, this.offset);
        if (parseLocalDateTime20 == null) {
            return null;
        }
        this.offset += 21;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDateTime20;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalDateTime readLocalDateTimeX(int i) {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTimeX = DateUtils.parseLocalDateTimeX(this.f12431w, this.offset, i);
        if (parseLocalDateTimeX == null) {
            return null;
        }
        this.offset += i + 1;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDateTimeX;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime10() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime10 = DateUtils.parseLocalTime10(this.f12431w, this.offset);
        if (parseLocalTime10 == null) {
            return null;
        }
        this.offset += 11;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalTime10;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime11() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime11 = DateUtils.parseLocalTime11(this.f12431w, this.offset);
        if (parseLocalTime11 == null) {
            return null;
        }
        this.offset += 12;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalTime11;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime12() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime12 = DateUtils.parseLocalTime12(this.f12431w, this.offset);
        if (parseLocalTime12 == null) {
            return null;
        }
        this.offset += 13;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalTime12;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime18() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime18 = DateUtils.parseLocalTime18(this.f12431w, this.offset);
        if (parseLocalTime18 == null) {
            return null;
        }
        this.offset += 19;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalTime18;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime5() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime5 = DateUtils.parseLocalTime5(this.f12431w, this.offset);
        if (parseLocalTime5 == null) {
            return null;
        }
        this.offset += 6;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalTime5;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime8() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime8 = DateUtils.parseLocalTime8(this.f12431w, this.offset);
        if (parseLocalTime8 == null) {
            return null;
        }
        this.offset += 9;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalTime8;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public LocalTime readLocalTime9() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime8 = DateUtils.parseLocalTime8(this.f12431w, this.offset);
        if (parseLocalTime8 == null) {
            return null;
        }
        this.offset += 10;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalTime8;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public long readMillis19() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        int i = this.offset;
        if (i + 18 >= this.f12434z) {
            this.wasNull = true;
            return 0L;
        }
        long parseMillis19 = DateUtils.parseMillis19(this.f12431w, i, this.context.f12306o);
        char[] cArr = this.f12431w;
        int i2 = this.offset;
        if (cArr[i2 + 19] != c) {
            throw new JSONException(info("illegal date input"));
        }
        this.offset = i2 + 20;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseMillis19;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public void readNull() {
        int i;
        char c;
        char[] cArr = this.f12431w;
        int i2 = this.offset;
        if (cArr[i2] != 'u' || cArr[i2 + 1] != 'l' || cArr[i2 + 2] != 'l') {
            throw new JSONException("json syntax error, not match null, offset " + i2);
        }
        int i3 = i2 + 3;
        char c2 = i3 == this.f12434z ? (char) 26 : cArr[i3];
        int i4 = i2 + 4;
        while (c2 <= ' ' && ((1 << c2) & JSONReader.f12289u) != 0) {
            if (i4 == this.f12434z) {
                c2 = 26;
            } else {
                c2 = cArr[i4];
                i4++;
            }
        }
        boolean z = c2 == ',';
        this.comma = z;
        if (z) {
            if (i4 == this.f12434z) {
                i = i4;
                c = 26;
            } else {
                i = i4 + 1;
                c = cArr[i4];
            }
            loop1: while (true) {
                int i5 = i;
                c2 = c;
                i4 = i5;
                while (c2 <= ' ' && ((1 << c2) & JSONReader.f12289u) != 0) {
                    if (i4 == this.f12434z) {
                        c2 = 26;
                    }
                }
                i = i4 + 1;
                c = cArr[i4];
            }
        }
        this.f12290ch = c2;
        this.offset = i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x004e, code lost:
    
        r3 = 26;
     */
    /* JADX WARN: Removed duplicated region for block: B:96:0x009f A[LOOP:4: B:91:0x0091->B:96:0x009f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x008c A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x009c -> B:69:0x008c). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Date readNullOrNewDate() {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readNullOrNewDate():java.util.Date");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c4, code lost:
    
        if (r9 < (-214748364)) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0101, code lost:
    
        if (r9 < (-214748364)) goto L59;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x017a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x003b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02d4 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:183:0x018c -> B:176:0x0166). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:213:0x004d -> B:209:0x003b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x02f1 -> B:93:0x02d4). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readNumber0() {
        /*
            Method dump skipped, instructions count: 834
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readNumber0():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0138, code lost:
    
        r9 = r16;
     */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.time.OffsetDateTime readOffsetDateTime() {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readOffsetDateTime():java.time.OffsetDateTime");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final OffsetTime readOffsetTime() {
        int i;
        int i2;
        char[] cArr = this.f12431w;
        int i3 = this.offset;
        JSONReader.Context context = this.context;
        char c = this.f12290ch;
        if ((c != '\"' && c != '\'') || context.f12292a != null || (i = i3 + 8) >= cArr.length || i >= this.f12434z || cArr[i3 + 2] != ':' || cArr[i3 + 5] != ':') {
            throw new JSONException(info("illegal offsetTime"));
        }
        char c2 = cArr[i3];
        char c3 = cArr[i3 + 1];
        char c4 = cArr[i3 + 3];
        char c5 = cArr[i3 + 4];
        char c6 = cArr[i3 + 6];
        char c7 = cArr[i3 + 7];
        if (c2 < '0' || c2 > '9' || c3 < '0' || c3 > '9') {
            throw new JSONException(info("illegal offsetTime"));
        }
        int i4 = ((c2 - '0') * 10) + (c3 - '0');
        if (c4 < '0' || c4 > '9' || c5 < '0' || c5 > '9') {
            throw new JSONException(info("illegal offsetTime"));
        }
        int i5 = ((c4 - '0') * 10) + (c5 - '0');
        if (c6 < '0' || c6 > '9' || c7 < '0' || c7 > '9') {
            throw new JSONException(info("illegal offsetTime"));
        }
        int i6 = ((c6 - '0') * 10) + (c7 - '0');
        int i7 = i3 + 25;
        int i8 = i;
        int i9 = -1;
        while (true) {
            if (i8 >= i7 || i8 >= this.f12434z || i8 >= cArr.length) {
                break;
            }
            char c8 = cArr[i8];
            if (i9 == -1 && (c8 == 'Z' || c8 == '+' || c8 == '-')) {
                i9 = (i8 - i) - 1;
            }
            if (c8 == c) {
                i2 = i8 - i3;
                break;
            }
            i8++;
        }
        i2 = 0;
        int i10 = (i2 - 9) - i9;
        OffsetTime of = OffsetTime.of(LocalTime.of(i4, i5, i6, i9 <= 0 ? 0 : DateUtils.readNanos(cArr, i9, i3 + 9)), i10 <= 1 ? ZoneOffset.UTC : ZoneOffset.of(new String(cArr, i3 + 9 + i9, i10)));
        this.offset += i2 + 2;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return of;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048 A[LOOP:1: B:15:0x002f->B:21:0x0048, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0029 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0045 -> B:12:0x0029). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0072 -> B:27:0x0060). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readPattern() {
        /*
            r17 = this;
            r0 = r17
            char r1 = r0.f12290ch
            r2 = 47
            if (r1 != r2) goto L7f
            char[] r1 = r0.f12431w
            int r3 = r0.offset
            r4 = r3
        Ld:
            int r5 = r0.f12434z
            if (r4 >= r5) goto L19
            char r5 = r1[r4]
            if (r5 != r2) goto L16
            goto L19
        L16:
            int r4 = r4 + 1
            goto Ld
        L19:
            java.lang.String r2 = new java.lang.String
            int r5 = r4 - r3
            r2.<init>(r1, r3, r5)
            r3 = 1
            int r4 = r4 + r3
            int r5 = r0.f12434z
            r6 = 26
            if (r4 != r5) goto L2b
            r5 = r4
        L29:
            r4 = r6
            goto L2f
        L2b:
            int r5 = r4 + 1
            char r4 = r1[r4]
        L2f:
            r7 = 0
            r9 = 4294981376(0x100003700, double:2.1220027474E-314)
            r11 = 1
            r13 = 32
            if (r4 > r13) goto L52
            long r14 = r11 << r4
            long r14 = r14 & r9
            int r14 = (r14 > r7 ? 1 : (r14 == r7 ? 0 : -1))
            if (r14 == 0) goto L52
            int r4 = r0.f12434z
            if (r5 != r4) goto L48
            goto L29
        L48:
            int r4 = r5 + 1
            char r5 = r1[r5]
            r16 = r5
            r5 = r4
            r4 = r16
            goto L2f
        L52:
            r14 = 44
            if (r4 != r14) goto L57
            goto L58
        L57:
            r3 = 0
        L58:
            r0.comma = r3
            if (r3 == 0) goto L7a
            int r3 = r0.f12434z
            if (r5 != r3) goto L62
        L60:
            r4 = r6
            goto L67
        L62:
            int r3 = r5 + 1
            char r4 = r1[r5]
        L66:
            r5 = r3
        L67:
            if (r4 > r13) goto L7a
            long r14 = r11 << r4
            long r14 = r14 & r9
            int r3 = (r14 > r7 ? 1 : (r14 == r7 ? 0 : -1))
            if (r3 == 0) goto L7a
            int r3 = r0.f12434z
            if (r5 != r3) goto L75
            goto L60
        L75:
            int r3 = r5 + 1
            char r4 = r1[r5]
            goto L66
        L7a:
            r0.offset = r5
            r0.f12290ch = r4
            return r2
        L7f:
            com.alibaba.fastjson2.JSONException r0 = new com.alibaba.fastjson2.JSONException
            java.lang.String r1 = "illegal pattern"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readPattern():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005b A[LOOP:1: B:27:0x004d->B:32:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0069  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0058 -> B:20:0x0047). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readReference() {
        /*
            r15 = this;
            int r0 = r15.f12427Z
            int r1 = r15.f12434z
            if (r0 != r1) goto L8
            r15 = 0
            return r15
        L8:
            char[] r1 = r15.f12431w
            int r2 = r0 + 1
            r15.offset = r2
            char r0 = r1[r0]
            r15.f12290ch = r0
            java.lang.String r0 = r15.readString()
            char r2 = r15.f12290ch
            int r3 = r15.offset
        L1a:
            r4 = 0
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            r8 = 1
            r10 = 32
            r11 = 26
            if (r2 > r10) goto L3e
            long r12 = r8 << r2
            long r12 = r12 & r6
            int r12 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r12 == 0) goto L3e
            int r2 = r15.f12434z
            if (r3 != r2) goto L36
            r2 = r11
            goto L1a
        L36:
            int r2 = r3 + 1
            char r3 = r1[r3]
            r14 = r3
            r3 = r2
            r2 = r14
            goto L1a
        L3e:
            r12 = 125(0x7d, float:1.75E-43)
            if (r2 != r12) goto L95
            int r2 = r15.f12434z
            if (r3 != r2) goto L49
            r2 = r3
        L47:
            r3 = r11
            goto L4d
        L49:
            int r2 = r3 + 1
            char r3 = r1[r3]
        L4d:
            if (r3 > r10) goto L63
            long r12 = r8 << r3
            long r12 = r12 & r6
            int r12 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r12 == 0) goto L63
            int r3 = r15.f12434z
            if (r2 != r3) goto L5b
            goto L47
        L5b:
            int r3 = r2 + 1
            char r2 = r1[r2]
            r14 = r3
            r3 = r2
            r2 = r14
            goto L4d
        L63:
            r12 = 44
            if (r3 != r12) goto L69
            r12 = 1
            goto L6a
        L69:
            r12 = 0
        L6a:
            r15.comma = r12
            if (r12 == 0) goto L90
            int r3 = r15.f12434z
            if (r2 != r3) goto L75
            r3 = r2
            r2 = r11
            goto L79
        L75:
            int r3 = r2 + 1
            char r2 = r1[r2]
        L79:
            r14 = r3
            r3 = r2
            r2 = r14
        L7c:
            if (r3 > r10) goto L90
            long r12 = r8 << r3
            long r12 = r12 & r6
            int r12 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r12 == 0) goto L90
            int r3 = r15.f12434z
            if (r2 != r3) goto L8b
            r3 = r11
            goto L7c
        L8b:
            int r3 = r2 + 1
            char r2 = r1[r2]
            goto L79
        L90:
            r15.f12290ch = r3
            r15.offset = r2
            return r0
        L95:
            com.alibaba.fastjson2.JSONException r15 = new com.alibaba.fastjson2.JSONException
            java.lang.String r1 = "illegal reference : "
            java.lang.String r0 = r1.concat(r0)
            r15.<init>(r0)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readReference():java.lang.String");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public String readString() {
        String str;
        char[] cArr = this.f12431w;
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            return readStringNotMatch();
        }
        int i = this.offset;
        int i2 = i;
        int i3 = 0;
        boolean z = false;
        while (i2 < this.f12434z) {
            char c2 = cArr[i2];
            if (c2 == '\\') {
                int i4 = i2 + 1;
                char c3 = cArr[i4];
                if (c3 == 'u') {
                    i4 += 4;
                } else if (c3 == 'x') {
                    i4 += 2;
                }
                i2 = i4 + 1;
                z = true;
            } else {
                if (c2 == c) {
                    if (z) {
                        char[] cArr2 = new char[i3];
                        int i5 = 0;
                        while (true) {
                            char c4 = cArr[i];
                            if (c4 == '\\') {
                                i++;
                                c4 = cArr[i];
                                if (c4 != '\"' && c4 != '\\') {
                                    if (c4 == 'b') {
                                        c4 = '\b';
                                    } else if (c4 == 'f') {
                                        c4 = '\f';
                                    } else if (c4 == 'n') {
                                        c4 = '\n';
                                    } else if (c4 == 'r') {
                                        c4 = '\r';
                                    } else if (c4 == 'x') {
                                        char c5 = cArr[i + 1];
                                        i += 2;
                                        c4 = JSONReader.m7283I(c5, cArr[i]);
                                    } else if (c4 == 't') {
                                        c4 = '\t';
                                    } else if (c4 != 'u') {
                                        c4 = m7313H(c4);
                                    } else {
                                        char c6 = cArr[i + 1];
                                        char c7 = cArr[i + 2];
                                        char c8 = cArr[i + 3];
                                        i += 4;
                                        c4 = JSONReader.m7284M(c6, c7, c8, cArr[i]);
                                    }
                                }
                            } else if (c4 == c) {
                                break;
                            }
                            cArr2[i5] = c4;
                            i++;
                            i5++;
                        }
                        str = new String(cArr2);
                        i2 = i;
                    } else {
                        String str2 = this.f12430v;
                        if (str2 != null) {
                            str = str2.substring(this.offset, i2);
                        } else {
                            int i6 = this.offset;
                            str = new String(cArr, i6, i2 - i6);
                        }
                    }
                    if ((this.context.features & JSONReader.Feature.TrimString.mask) != 0) {
                        str = str.trim();
                    }
                    if (str.isEmpty() && (this.context.features & JSONReader.Feature.EmptyStringAsNull.mask) != 0) {
                        str = null;
                    }
                    int i7 = i2 + 1;
                    char c9 = 26;
                    if (i7 != this.f12434z) {
                        int i8 = i7 + 1;
                        char c10 = cArr[i7];
                        while (c10 <= ' ' && ((1 << c10) & JSONReader.f12289u) != 0) {
                            if (i8 == this.f12434z) {
                                i7 = i8;
                            } else {
                                c10 = cArr[i8];
                                i8++;
                            }
                        }
                        boolean z2 = c10 == ',';
                        this.comma = z2;
                        if (!z2) {
                            c9 = c10;
                        } else if (i8 != this.f12434z) {
                            int i9 = i8 + 1;
                            char c11 = cArr[i8];
                            while (c11 <= ' ' && ((1 << c11) & JSONReader.f12289u) != 0) {
                                if (i9 == this.f12434z) {
                                    break;
                                }
                                int i10 = i9 + 1;
                                char c12 = cArr[i9];
                                i9 = i10;
                                c11 = c12;
                            }
                            c9 = c11;
                            i8 = i9;
                        }
                        this.f12290ch = c9;
                        this.offset = i8;
                        return str;
                    }
                    this.f12290ch = (char) 26;
                    this.comma = false;
                    this.offset = i7;
                    return str;
                }
                i2++;
            }
            i3++;
        }
        throw new JSONException(info("invalid escape character EOI"));
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0117 A[LOOP:5: B:55:0x0102->B:60:0x0117, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0130  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0114 -> B:48:0x00fc). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.UUID readUUID() {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readUUID():java.util.UUID");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public long readValueHashCode() {
        long j;
        char m7284M;
        long j2;
        long j3;
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            return -1L;
        }
        char[] cArr = this.f12431w;
        this.nameEscape = false;
        int i = this.offset;
        this.f12424J = i;
        int i2 = this.f12434z;
        int i3 = 0;
        long j4 = 0;
        while (true) {
            if (i < i2) {
                char c2 = cArr[i];
                if (c2 != c) {
                    if (c2 == '\\') {
                        this.nameEscape = true;
                        i++;
                        char c3 = cArr[i];
                        if (c3 == 'u') {
                            char c4 = cArr[i + 1];
                            char c5 = cArr[i + 2];
                            char c6 = cArr[i + 3];
                            i += 4;
                            c2 = JSONReader.m7284M(c4, c5, c6, cArr[i]);
                        } else if (c3 != 'x') {
                            c2 = m7313H(c3);
                        } else {
                            char c7 = cArr[i + 1];
                            i += 2;
                            c2 = JSONReader.m7283I(c7, cArr[i]);
                        }
                    }
                    if (c2 <= 255 && i3 < 8 && (i3 != 0 || c2 != 0)) {
                        switch (i3) {
                            case 0:
                                j4 = (byte) c2;
                                continue;
                            case 1:
                                j2 = ((byte) c2) << 8;
                                j3 = 255;
                                break;
                            case 2:
                                j2 = ((byte) c2) << 16;
                                j3 = WebSocketProtocol.PAYLOAD_SHORT_MAX;
                                break;
                            case 3:
                                j2 = ((byte) c2) << 24;
                                j3 = 16777215;
                                break;
                            case 4:
                                j2 = ((byte) c2) << 32;
                                j3 = 4294967295L;
                                break;
                            case 5:
                                j2 = ((byte) c2) << 40;
                                j3 = 1099511627775L;
                                break;
                            case 6:
                                j2 = ((byte) c2) << 48;
                                j3 = 281474976710655L;
                                break;
                            case 7:
                                j2 = ((byte) c2) << 56;
                                j3 = 72057594037927935L;
                                break;
                        }
                        j4 = (j4 & j3) + j2;
                        i++;
                        i3++;
                    }
                } else if (i3 == 0) {
                    i = this.f12424J;
                } else {
                    this.f12426Q = i3;
                    this.f12425O = i;
                    i++;
                }
            }
        }
        i = this.f12424J;
        j4 = 0;
        if (j4 == 0) {
            j4 = -3750763034362895579L;
            int i4 = 0;
            while (true) {
                char c8 = cArr[i];
                if (c8 == '\\') {
                    this.nameEscape = true;
                    int i5 = i + 1;
                    char c9 = cArr[i5];
                    if (c9 == 'u') {
                        char c10 = cArr[i5 + 1];
                        char c11 = cArr[i5 + 2];
                        char c12 = cArr[i5 + 3];
                        i5 += 4;
                        m7284M = JSONReader.m7284M(c10, c11, c12, cArr[i5]);
                    } else if (c9 != 'x') {
                        m7284M = m7313H(c9);
                    } else {
                        char c13 = cArr[i5 + 1];
                        i5 += 2;
                        m7284M = JSONReader.m7283I(c13, cArr[i5]);
                    }
                    i = i5 + 1;
                    j4 = (m7284M ^ j4) * Fnv.MAGIC_PRIME;
                    j = 0;
                } else if (c8 == '\"') {
                    this.f12426Q = i4;
                    this.f12425O = i;
                    this.stringValue = null;
                    i++;
                } else {
                    j = 0;
                    i++;
                    j4 = (c8 ^ j4) * Fnv.MAGIC_PRIME;
                }
                i4++;
            }
        }
        char c14 = i == i2 ? (char) 26 : cArr[i];
        while (c14 <= ' ' && ((1 << c14) & JSONReader.f12289u) != 0) {
            i++;
            c14 = cArr[i];
        }
        boolean z = c14 == ',';
        this.comma = z;
        if (z) {
            i++;
            char c15 = i != i2 ? cArr[i] : (char) 26;
            while (c15 <= ' ' && ((1 << c15) & JSONReader.f12289u) != 0) {
                i++;
                c15 = cArr[i];
            }
            c14 = c15;
        }
        this.offset = i + 1;
        this.f12290ch = c14;
        return j4;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008e  */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.time.ZonedDateTime readZonedDateTimeX(int r6) {
        /*
            r5 = this;
            char r0 = r5.f12290ch
            r1 = 34
            if (r0 == r1) goto L13
            r1 = 39
            if (r0 != r1) goto Lb
            goto L13
        Lb:
            com.alibaba.fastjson2.JSONException r5 = new com.alibaba.fastjson2.JSONException
            java.lang.String r6 = "date only support string input"
            r5.<init>(r6)
            throw r5
        L13:
            r0 = 19
            r1 = 0
            if (r6 >= r0) goto L19
            return r1
        L19:
            r0 = 30
            r2 = 90
            if (r6 != r0) goto L34
            char[] r0 = r5.f12431w
            int r3 = r5.offset
            int r4 = r3 + 29
            char r4 = r0[r4]
            if (r4 != r2) goto L34
            java.time.LocalDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime29(r0, r3)
            java.time.ZoneOffset r2 = java.time.ZoneOffset.UTC
            java.time.ZonedDateTime r0 = java.time.ZonedDateTime.of(r0, r2)
            goto L8b
        L34:
            r0 = 29
            if (r6 != r0) goto L4d
            char[] r0 = r5.f12431w
            int r3 = r5.offset
            int r4 = r3 + 28
            char r4 = r0[r4]
            if (r4 != r2) goto L4d
            java.time.LocalDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime28(r0, r3)
            java.time.ZoneOffset r2 = java.time.ZoneOffset.UTC
            java.time.ZonedDateTime r0 = java.time.ZonedDateTime.of(r0, r2)
            goto L8b
        L4d:
            r0 = 28
            if (r6 != r0) goto L66
            char[] r0 = r5.f12431w
            int r3 = r5.offset
            int r4 = r3 + 27
            char r4 = r0[r4]
            if (r4 != r2) goto L66
            java.time.LocalDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime27(r0, r3)
            java.time.ZoneOffset r2 = java.time.ZoneOffset.UTC
            java.time.ZonedDateTime r0 = java.time.ZonedDateTime.of(r0, r2)
            goto L8b
        L66:
            r0 = 27
            if (r6 != r0) goto L7f
            char[] r0 = r5.f12431w
            int r3 = r5.offset
            int r4 = r3 + 26
            char r4 = r0[r4]
            if (r4 != r2) goto L7f
            java.time.LocalDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime26(r0, r3)
            java.time.ZoneOffset r2 = java.time.ZoneOffset.UTC
            java.time.ZonedDateTime r0 = java.time.ZonedDateTime.of(r0, r2)
            goto L8b
        L7f:
            char[] r0 = r5.f12431w
            int r2 = r5.offset
            com.alibaba.fastjson2.JSONReader$Context r3 = r5.context
            java.time.ZoneId r3 = r3.f12306o
            java.time.ZonedDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseZonedDateTime(r0, r2, r6, r3)
        L8b:
            if (r0 != 0) goto L8e
            return r1
        L8e:
            int r1 = r5.offset
            r2 = 1
            int r6 = r6 + r2
            int r1 = r1 + r6
            r5.offset = r1
            r5.next()
            char r6 = r5.f12290ch
            r1 = 44
            if (r6 != r1) goto L9f
            goto La0
        L9f:
            r2 = 0
        La0:
            r5.comma = r2
            if (r2 == 0) goto La7
            r5.next()
        La7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.readZonedDateTimeX(int):java.time.ZonedDateTime");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0031, code lost:
    
        if (r1 == '\n') goto L17;
     */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skipComment() {
        /*
            r12 = this;
            int r0 = r12.offset
            int r1 = r0 + 1
            int r2 = r12.f12434z
            if (r1 >= r2) goto L76
            char[] r2 = r12.f12431w
            char r0 = r2[r0]
            r3 = 42
            r4 = 0
            r5 = 47
            r6 = 1
            if (r0 != r3) goto L16
            r0 = r6
            goto L19
        L16:
            if (r0 != r5) goto L75
            r0 = r4
        L19:
            int r7 = r1 + 1
            char r1 = r2[r1]
        L1d:
            if (r0 == 0) goto L2f
            if (r1 != r3) goto L2d
            int r1 = r12.f12434z
            if (r7 > r1) goto L2d
            char r1 = r2[r7]
            if (r1 != r5) goto L2d
            int r7 = r7 + 1
        L2b:
            r1 = r6
            goto L34
        L2d:
            r1 = r4
            goto L34
        L2f:
            r8 = 10
            if (r1 != r8) goto L2d
            goto L2b
        L34:
            r8 = 26
            if (r1 == 0) goto L5f
            int r0 = r12.f12434z
            if (r7 < r0) goto L3d
            goto L63
        L3d:
            char r0 = r2[r7]
        L3f:
            r1 = 32
            if (r0 > r1) goto L5c
            r3 = 1
            long r3 = r3 << r0
            r9 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r3 = r3 & r9
            r9 = 0
            int r1 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r1 == 0) goto L5c
            int r7 = r7 + 1
            int r0 = r12.f12434z
            if (r7 < r0) goto L59
            goto L5d
        L59:
            char r0 = r2[r7]
            goto L3f
        L5c:
            r8 = r0
        L5d:
            int r7 = r7 + r6
            goto L63
        L5f:
            int r1 = r12.f12434z
            if (r7 < r1) goto L6d
        L63:
            r12.f12290ch = r8
            r12.offset = r7
            if (r8 != r5) goto L6c
            r12.skipComment()
        L6c:
            return
        L6d:
            int r1 = r7 + 1
            char r7 = r2[r7]
            r11 = r7
            r7 = r1
            r1 = r11
            goto L1d
        L75:
            return
        L76:
            com.alibaba.fastjson2.JSONException r0 = new com.alibaba.fastjson2.JSONException
            java.lang.String r12 = r12.info()
            r0.<init>(r12)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.skipComment():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0066 A[LOOP:1: B:26:0x004f->B:32:0x0066, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008b A[LOOP:2: B:42:0x007d->B:47:0x008b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0098  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0063 -> B:27:0x0049). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0088 -> B:40:0x0077). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean skipName() {
        /*
            r15 = this;
            char r0 = r15.f12290ch
            r1 = 34
            r2 = 0
            r4 = 1
            if (r0 == r1) goto L23
            r1 = 39
            if (r0 == r1) goto L23
            com.alibaba.fastjson2.JSONReader$Context r0 = r15.context
            long r0 = r0.features
            com.alibaba.fastjson2.JSONReader$Feature r5 = com.alibaba.fastjson2.JSONReader.Feature.AllowUnQuotedFieldNames
            long r5 = r5.mask
            long r0 = r0 & r5
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto L1e
            r15.readFieldNameHashCodeUnquote()
            return r4
        L1e:
            com.alibaba.fastjson2.JSONException r15 = r15.m7316g0()
            throw r15
        L23:
            int r1 = r15.offset
            char[] r5 = r15.f12431w
        L27:
            int r6 = r1 + 1
            char r1 = r5[r1]
            r7 = 92
            if (r1 != r7) goto L40
            char r1 = r5[r6]
            r7 = 117(0x75, float:1.64E-43)
            if (r1 != r7) goto L37
            r1 = 5
            goto L3e
        L37:
            r7 = 120(0x78, float:1.68E-43)
            if (r1 != r7) goto L3d
            r1 = 3
            goto L3e
        L3d:
            r1 = r4
        L3e:
            int r1 = r1 + r6
            goto L27
        L40:
            if (r1 != r0) goto L9d
            int r0 = r15.f12434z
            r1 = 26
            if (r6 != r0) goto L4b
            r0 = r6
        L49:
            r6 = r1
            goto L4f
        L4b:
            int r0 = r6 + 1
            char r6 = r5[r6]
        L4f:
            r7 = 4294981376(0x100003700, double:2.1220027474E-314)
            r9 = 1
            r11 = 32
            if (r6 > r11) goto L6e
            long r12 = r9 << r6
            long r12 = r12 & r7
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L6e
            int r6 = r15.f12434z
            if (r0 != r6) goto L66
            goto L49
        L66:
            int r6 = r0 + 1
            char r0 = r5[r0]
            r14 = r6
            r6 = r0
            r0 = r14
            goto L4f
        L6e:
            r12 = 58
            if (r6 != r12) goto L98
            int r6 = r15.f12434z
            if (r0 != r6) goto L79
            r6 = r0
        L77:
            r0 = r1
            goto L7d
        L79:
            int r6 = r0 + 1
            char r0 = r5[r0]
        L7d:
            if (r0 > r11) goto L93
            long r12 = r9 << r0
            long r12 = r12 & r7
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L93
            int r0 = r15.f12434z
            if (r6 != r0) goto L8b
            goto L77
        L8b:
            int r0 = r6 + 1
            char r6 = r5[r6]
            r14 = r6
            r6 = r0
            r0 = r14
            goto L7d
        L93:
            r15.offset = r6
            r15.f12290ch = r0
            return r4
        L98:
            com.alibaba.fastjson2.JSONException r15 = com.alibaba.fastjson2.JSONReader.m7287j0(r6)
            throw r15
        L9d:
            r1 = r6
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.skipName():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:171:0x0192, code lost:
    
        if (r2 <= '9') goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0196, code lost:
    
        if (r3 != r18.f12434z) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0198, code lost:
    
        r2 = 26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x01a4, code lost:
    
        if (r2 < '0') goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x01a6, code lost:
    
        if (r2 <= '9') goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x019b, code lost:
    
        r2 = r3 + 1;
        r3 = r1[r3];
        r3 = r2;
        r2 = r3;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x002e. Please report as an issue. */
    /* JADX WARN: Path cross not found for [B:5:0x0020, B:118:0x00ec], limit reached: 231 */
    /* JADX WARN: Path cross not found for [B:7:0x0026, B:104:0x00c4], limit reached: 231 */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0167 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x01ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x01c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:220:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x025d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00b3 -> B:23:0x020e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ab -> B:23:0x020e). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skipValue() {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.skipValue():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0025 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0041 -> B:15:0x0025). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfMatchIdent(char r8, char r9, char r10, char r11) {
        /*
            r7 = this;
            char r0 = r7.f12290ch
            r1 = 0
            if (r0 == r8) goto L6
            return r1
        L6:
            char[] r8 = r7.f12431w
            int r0 = r7.offset
            int r2 = r0 + 3
            int r3 = r7.f12434z
            if (r2 > r3) goto L70
            char r4 = r8[r0]
            if (r4 != r9) goto L70
            int r9 = r0 + 1
            char r9 = r8[r9]
            if (r9 != r10) goto L70
            int r0 = r0 + 2
            char r9 = r8[r0]
            if (r9 == r11) goto L21
            goto L70
        L21:
            r9 = 26
            if (r2 != r3) goto L27
        L25:
            r11 = r9
            goto L2c
        L27:
            int r10 = r2 + 1
            char r11 = r8[r2]
        L2b:
            r2 = r10
        L2c:
            r10 = 32
            if (r11 > r10) goto L49
            r3 = 1
            long r3 = r3 << r11
            r5 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r3 = r3 & r5
            r5 = 0
            int r10 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r10 == 0) goto L49
            int r10 = r7.f12434z
            if (r2 != r10) goto L44
            goto L25
        L44:
            int r10 = r2 + 1
            char r11 = r8[r2]
            goto L2b
        L49:
            int r8 = r7.offset
            int r8 = r8 + 4
            if (r2 != r8) goto L6a
            if (r11 == r9) goto L6a
            r8 = 40
            if (r11 == r8) goto L6a
            r8 = 91
            if (r11 == r8) goto L6a
            r8 = 93
            if (r11 == r8) goto L6a
            r8 = 41
            if (r11 == r8) goto L6a
            r8 = 58
            if (r11 == r8) goto L6a
            r8 = 44
            if (r11 == r8) goto L6a
            return r1
        L6a:
            r7.offset = r2
            r7.f12290ch = r11
            r7 = 1
            return r7
        L70:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfMatchIdent(char, char, char, char):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x002b A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0047 -> B:17:0x002b). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfMatchIdent(char r8, char r9, char r10, char r11, char r12) {
        /*
            r7 = this;
            char r0 = r7.f12290ch
            r1 = 0
            if (r0 == r8) goto L6
            return r1
        L6:
            char[] r8 = r7.f12431w
            int r0 = r7.offset
            int r2 = r0 + 4
            int r3 = r7.f12434z
            if (r2 > r3) goto L76
            char r4 = r8[r0]
            if (r4 != r9) goto L76
            int r9 = r0 + 1
            char r9 = r8[r9]
            if (r9 != r10) goto L76
            int r9 = r0 + 2
            char r9 = r8[r9]
            if (r9 != r11) goto L76
            int r0 = r0 + 3
            char r9 = r8[r0]
            if (r9 == r12) goto L27
            goto L76
        L27:
            r9 = 26
            if (r2 != r3) goto L2d
        L2b:
            r11 = r9
            goto L32
        L2d:
            int r10 = r2 + 1
            char r11 = r8[r2]
        L31:
            r2 = r10
        L32:
            r10 = 32
            if (r11 > r10) goto L4f
            r3 = 1
            long r3 = r3 << r11
            r5 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r3 = r3 & r5
            r5 = 0
            int r10 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r10 == 0) goto L4f
            int r10 = r7.f12434z
            if (r2 != r10) goto L4a
            goto L2b
        L4a:
            int r10 = r2 + 1
            char r11 = r8[r2]
            goto L31
        L4f:
            int r8 = r7.offset
            int r8 = r8 + 5
            if (r2 != r8) goto L70
            if (r11 == r9) goto L70
            r8 = 40
            if (r11 == r8) goto L70
            r8 = 91
            if (r11 == r8) goto L70
            r8 = 93
            if (r11 == r8) goto L70
            r8 = 41
            if (r11 == r8) goto L70
            r8 = 58
            if (r11 == r8) goto L70
            r8 = 44
            if (r11 == r8) goto L70
            return r1
        L70:
            r7.offset = r2
            r7.f12290ch = r11
            r7 = 1
            return r7
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfMatchIdent(char, char, char, char, char):boolean");
    }

    public C1738h(JSONReader.Context context, Reader reader) {
        super(context, false);
        char c;
        this.f12429q0 = -1;
        this.f12428k0 = reader;
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b[] c1722bArr = JSONFactory.f12217A;
        int length = identityHashCode & (c1722bArr.length - 1);
        this.f12429q0 = length;
        char[] andSet = JSONFactory.f12219C.getAndSet(c1722bArr[length], null);
        andSet = andSet == null ? new char[8192] : andSet;
        int i = 0;
        while (true) {
            try {
                int read = reader.read(andSet, i, andSet.length - i);
                if (read == -1) {
                    break;
                }
                i += read;
                if (i == andSet.length) {
                    int length2 = andSet.length;
                    andSet = Arrays.copyOf(andSet, length2 + (length2 >> 1));
                }
            } catch (IOException e) {
                throw new JSONException("read error", e);
            }
        }
        this.f12430v = null;
        this.f12431w = andSet;
        this.offset = 0;
        this.f12432x = i;
        this.f12433y = 0;
        this.f12434z = i;
        if (i <= 0) {
            this.f12290ch = (char) 26;
            return;
        }
        this.f12290ch = andSet[0];
        while (true) {
            c = this.f12290ch;
            if (c > ' ' || ((1 << c) & JSONReader.f12289u) == 0) {
                break;
            }
            int i2 = this.offset + 1;
            this.offset = i2;
            if (i2 >= this.f12432x) {
                this.f12290ch = (char) 26;
                return;
            }
            this.f12290ch = andSet[i2];
        }
        this.offset++;
        if (c == 65534 || c == 65279) {
            next();
        }
        while (this.f12290ch == '/') {
            skipComment();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0031 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x004d -> B:19:0x0031). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfMatchIdent(char r6, char r7, char r8, char r9, char r10, char r11) {
        /*
            r5 = this;
            char r0 = r5.f12290ch
            r1 = 0
            if (r0 == r6) goto L6
            return r1
        L6:
            char[] r6 = r5.f12431w
            int r0 = r5.offset
            int r2 = r0 + 5
            int r3 = r5.f12434z
            if (r2 > r3) goto L7c
            char r4 = r6[r0]
            if (r4 != r7) goto L7c
            int r7 = r0 + 1
            char r7 = r6[r7]
            if (r7 != r8) goto L7c
            int r7 = r0 + 2
            char r7 = r6[r7]
            if (r7 != r9) goto L7c
            int r7 = r0 + 3
            char r7 = r6[r7]
            if (r7 != r10) goto L7c
            int r0 = r0 + 4
            char r7 = r6[r0]
            if (r7 == r11) goto L2d
            goto L7c
        L2d:
            r7 = 26
            if (r2 != r3) goto L33
        L31:
            r9 = r7
            goto L38
        L33:
            int r8 = r2 + 1
            char r9 = r6[r2]
        L37:
            r2 = r8
        L38:
            r8 = 32
            if (r9 > r8) goto L55
            r10 = 1
            long r10 = r10 << r9
            r3 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r10 = r10 & r3
            r3 = 0
            int r8 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r8 == 0) goto L55
            int r8 = r5.f12434z
            if (r2 != r8) goto L50
            goto L31
        L50:
            int r8 = r2 + 1
            char r9 = r6[r2]
            goto L37
        L55:
            int r6 = r5.offset
            int r6 = r6 + 6
            if (r2 != r6) goto L76
            if (r9 == r7) goto L76
            r6 = 40
            if (r9 == r6) goto L76
            r6 = 91
            if (r9 == r6) goto L76
            r6 = 93
            if (r9 == r6) goto L76
            r6 = 41
            if (r9 == r6) goto L76
            r6 = 58
            if (r9 == r6) goto L76
            r6 = 44
            if (r9 == r6) goto L76
            return r1
        L76:
            r5.offset = r2
            r5.f12290ch = r9
            r5 = 1
            return r5
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.nextIfMatchIdent(char, char, char, char, char, char):boolean");
    }

    public C1738h(JSONReader.Context context, String str, int i, int i2) {
        super(context, false);
        char c;
        this.f12429q0 = -1;
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b[] c1722bArr = JSONFactory.f12217A;
        int length = identityHashCode & (c1722bArr.length - 1);
        this.f12429q0 = length;
        JSONFactory.C1722b c1722b = c1722bArr[length];
        AtomicReferenceFieldUpdater<JSONFactory.C1722b, char[]> atomicReferenceFieldUpdater = JSONFactory.f12219C;
        char[] andSet = atomicReferenceFieldUpdater.getAndSet(c1722b, null);
        if (andSet == null || andSet.length < i2) {
            if (andSet != null) {
                atomicReferenceFieldUpdater.lazySet(c1722b, andSet);
            }
            andSet = new char[Math.max(i2, 8192)];
        }
        str.getChars(i, i + i2, andSet, 0);
        this.f12430v = i != 0 ? null : str;
        this.f12431w = andSet;
        this.offset = 0;
        this.f12432x = i2;
        this.f12433y = 0;
        this.f12434z = i2;
        if (i2 <= 0) {
            this.f12290ch = (char) 26;
            return;
        }
        this.f12290ch = andSet[0];
        while (true) {
            c = this.f12290ch;
            if (c > ' ' || ((1 << c) & JSONReader.f12289u) == 0) {
                break;
            }
            int i3 = this.offset + 1;
            this.offset = i3;
            if (i3 >= this.f12432x) {
                this.f12290ch = (char) 26;
                return;
            }
            this.f12290ch = andSet[i3];
        }
        this.offset++;
        if (c == 65534 || c == 65279) {
            next();
        }
        if (this.f12290ch == '/') {
            skipComment();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0045, code lost:
    
        r4.offset++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
    
        if (r5 == 65534) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0053, code lost:
    
        if (r5 != 65279) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        if (r4.f12290ch != '/') goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
    
        skipComment();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        next();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1738h(com.alibaba.fastjson2.JSONReader.Context r5, java.lang.String r6, char[] r7, int r8, int r9) {
        /*
            r4 = this;
            r0 = 0
            r4.<init>(r5, r0)
            r5 = -1
            r4.f12429q0 = r5
            r4.f12430v = r6
            r4.f12431w = r7
            r4.offset = r8
            r4.f12432x = r9
            r4.f12433y = r8
            int r5 = r8 + r9
            r4.f12434z = r5
            r6 = 26
            if (r8 < r5) goto L1c
            r4.f12290ch = r6
            return
        L1c:
            char r5 = r7[r8]
            r4.f12290ch = r5
        L20:
            char r5 = r4.f12290ch
            r8 = 32
            if (r5 > r8) goto L45
            r0 = 1
            long r0 = r0 << r5
            r2 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r0 = r0 & r2
            r2 = 0
            int r8 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r8 == 0) goto L45
            int r5 = r4.offset
            int r5 = r5 + 1
            r4.offset = r5
            if (r5 < r9) goto L40
            r4.f12290ch = r6
            return
        L40:
            char r5 = r7[r5]
            r4.f12290ch = r5
            goto L20
        L45:
            int r6 = r4.offset
            int r6 = r6 + 1
            r4.offset = r6
            r6 = 65534(0xfffe, float:9.1833E-41)
            if (r5 == r6) goto L55
            r6 = 65279(0xfeff, float:9.1475E-41)
            if (r5 != r6) goto L58
        L55:
            r4.next()
        L58:
            char r5 = r4.f12290ch
            r6 = 47
            if (r5 != r6) goto L61
            r4.skipComment()
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1738h.<init>(com.alibaba.fastjson2.JSONReader$Context, java.lang.String, char[], int, int):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1738h(JSONReader.Context context, InputStream inputStream) {
        super(context, false);
        int i = 0;
        this.f12429q0 = -1;
        this.f12428k0 = inputStream;
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b[] c1722bArr = JSONFactory.f12217A;
        JSONFactory.C1722b c1722b = c1722bArr[identityHashCode & (c1722bArr.length - 1)];
        byte[] andSet = JSONFactory.f12220D.getAndSet(c1722b, null);
        andSet = andSet == null ? new byte[context.f12304m] : andSet;
        int i2 = 0;
        while (true) {
            try {
                try {
                    int read = inputStream.read(andSet, i2, andSet.length - i2);
                    if (read == -1) {
                        break;
                    }
                    i2 += read;
                    if (i2 == andSet.length) {
                        andSet = Arrays.copyOf(andSet, andSet.length + context.f12304m);
                    }
                } catch (IOException e) {
                    throw new JSONException("read error", e);
                }
            } catch (Throwable th) {
                JSONFactory.f12220D.lazySet(c1722b, andSet);
                throw th;
            }
        }
        if (i2 % 2 != 1) {
            int i3 = i2 / 2;
            char[] cArr = new char[i3];
            int i4 = 0;
            int i5 = 0;
            while (i4 < i2) {
                cArr[i5] = (char) (((andSet[i4] & 255) << 8) | (andSet[i4 + 1] & 255));
                i4 += 2;
                i5++;
            }
            JSONFactory.f12220D.lazySet(c1722b, andSet);
            this.f12430v = null;
            this.f12431w = cArr;
            this.offset = 0;
            this.f12432x = i3;
            this.f12433y = 0;
            this.f12434z = i3;
            if (i3 == 0) {
                this.f12290ch = (char) 26;
                return;
            }
            char c = cArr[0];
            while (c <= ' ' && ((1 << c) & JSONReader.f12289u) != 0) {
                i++;
                if (i >= i3) {
                    this.f12290ch = (char) 26;
                    return;
                }
                c = cArr[i];
            }
            this.f12290ch = c;
            this.offset++;
            if (c == 65534 || c == 65279) {
                next();
            }
            if (this.f12290ch == '/') {
                skipComment();
                return;
            }
            return;
        }
        throw new JSONException("illegal input utf16 bytes, length " + i2);
    }
}
