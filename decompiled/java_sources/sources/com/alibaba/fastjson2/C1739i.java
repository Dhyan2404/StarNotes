package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.DateUtils;
import com.alibaba.fastjson2.util.Fnv;
import com.alibaba.fastjson2.util.JDKUtils;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.time.DateTimeException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetTime;
import java.time.ZoneOffset;
import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Utf8;
import org.apache.xmlbeans.impl.common.NameUtil;

/* renamed from: com.alibaba.fastjson2.i */
/* loaded from: classes3.dex */
public class C1739i extends JSONReader {

    /* renamed from: J */
    public int f12435J;

    /* renamed from: O */
    public int f12436O;

    /* renamed from: Q */
    public boolean f12437Q;

    /* renamed from: Z */
    public int f12438Z;

    /* renamed from: k0 */
    public final InputStream f12439k0;

    /* renamed from: q0 */
    public byte[] f12440q0;

    /* renamed from: t0 */
    public char[] f12441t0;

    /* renamed from: u0 */
    public final JSONFactory.C1722b f12442u0;

    /* renamed from: v */
    public final byte[] f12443v;

    /* renamed from: w */
    public final int f12444w;

    /* renamed from: x */
    public final int f12445x;

    /* renamed from: y */
    public final int f12446y;

    /* renamed from: z */
    public int f12447z;

    public C1739i(JSONReader.Context context, InputStream inputStream) {
        super(context, false);
        int identityHashCode = System.identityHashCode(Thread.currentThread());
        JSONFactory.C1722b c1722b = JSONFactory.f12217A[identityHashCode & (r2.length - 1)];
        this.f12442u0 = c1722b;
        byte[] andSet = JSONFactory.f12220D.getAndSet(c1722b, null);
        andSet = andSet == null ? new byte[context.f12304m] : andSet;
        int i = 0;
        while (true) {
            try {
                int read = inputStream.read(andSet, i, andSet.length - i);
                if (read == -1) {
                    break;
                }
                i += read;
                if (i == andSet.length) {
                    andSet = Arrays.copyOf(andSet, andSet.length + context.f12304m);
                }
            } catch (IOException e) {
                throw new JSONException("read error", e);
            }
        }
        this.f12440q0 = andSet;
        this.f12443v = andSet;
        this.offset = 0;
        this.f12444w = i;
        this.f12439k0 = inputStream;
        this.f12445x = 0;
        this.f12446y = i;
        next();
        if (this.f12290ch == '/') {
            skipComment();
        }
    }

    /* renamed from: m0 */
    public static int m7407m0(int i, int i2, int i3) {
        if ((i2 & 192) == 128) {
            return ((i & 31) << 6) | (i2 & 63);
        }
        throw new JSONException("malformed input around byte " + i3);
    }

    /* renamed from: n0 */
    public static int m7408n0(int i, int i2, int i3, int i4) {
        if ((i2 & 192) == 128 && (i3 & 192) == 128) {
            return ((i & 15) << 12) | ((i2 & 63) << 6) | (i3 & 63);
        }
        throw new JSONException("malformed input around byte " + i4);
    }

    /* renamed from: o0 */
    public static void m7409o0(byte[] bArr, int i, int i2, char[] cArr, int i3) {
        if ((i2 >> 3) != -2) {
            throw new JSONException("malformed input around byte " + i);
        }
        int i4 = bArr[i + 1];
        int i5 = bArr[i + 2];
        int i6 = bArr[i + 3];
        int i7 = (((i2 << 18) ^ (i4 << 12)) ^ (i5 << 6)) ^ (3678080 ^ i6);
        if ((i4 & 192) == 128 && (i5 & 192) == 128 && (i6 & 192) == 128 && i7 >= 65536 && i7 < 1114112) {
            cArr[i3] = (char) ((i7 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
            cArr[i3 + 1] = (char) ((i7 & 1023) + 56320);
        } else {
            throw new JSONException("malformed input around byte " + i);
        }
    }

    @Override // com.alibaba.fastjson2.JSONReader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        JSONFactory.C1722b c1722b = this.f12442u0;
        byte[] bArr = this.f12440q0;
        if (bArr != null && bArr.length < 1048576) {
            JSONFactory.f12220D.lazySet(c1722b, bArr);
        }
        char[] cArr = this.f12441t0;
        if (cArr != null && cArr.length < 1048576) {
            JSONFactory.f12219C.lazySet(c1722b, cArr);
        }
        InputStream inputStream = this.f12439k0;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x011a A[FALL_THROUGH, PHI: r1 r5
      0x011a: PHI (r1v5 int) = 
      (r1v4 int)
      (r1v7 int)
      (r1v7 int)
      (r1v7 int)
      (r1v7 int)
      (r1v8 int)
      (r1v9 int)
      (r1v7 int)
      (r1v7 int)
      (r1v7 int)
      (r1v7 int)
      (r1v7 int)
     binds: [B:68:0x0117, B:47:0x00ce, B:49:0x00d2, B:51:0x00d6, B:52:0x00d8, B:65:0x0102, B:64:0x00f5, B:58:0x00e4, B:60:0x00e8, B:61:0x00ea, B:62:0x00ed, B:63:0x00f0] A[DONT_GENERATE, DONT_INLINE]
      0x011a: PHI (r5v2 int) = 
      (r5v1 int)
      (r5v5 int)
      (r5v5 int)
      (r5v5 int)
      (r5v5 int)
      (r5v8 int)
      (r5v11 int)
      (r5v5 int)
      (r5v5 int)
      (r5v5 int)
      (r5v5 int)
      (r5v12 int)
     binds: [B:68:0x0117, B:47:0x00ce, B:49:0x00d2, B:51:0x00d6, B:52:0x00d8, B:65:0x0102, B:64:0x00f5, B:58:0x00e4, B:60:0x00e8, B:61:0x00ea, B:62:0x00ed, B:63:0x00f0] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getFieldName() {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.getFieldName():java.lang.String");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:94:0x0094. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson2.JSONReader
    public long getNameHashCodeLCase() {
        char c;
        char c2;
        char c3;
        char c4;
        int i;
        int i2;
        long j;
        long j2;
        int i3 = this.f12447z;
        byte[] bArr = this.f12443v;
        int i4 = 0;
        long j3 = 0;
        while (true) {
            int i5 = this.f12446y;
            c = '-';
            c2 = NameUtil.USCORE;
            c3 = 'A';
            c4 = '\"';
            if (i3 < i5) {
                int i6 = bArr[i3];
                if (i6 == 92) {
                    i3++;
                    int i7 = bArr[i3];
                    if (i7 == 117) {
                        int i8 = bArr[i3 + 1];
                        int i9 = bArr[i3 + 2];
                        int i10 = bArr[i3 + 3];
                        i3 += 4;
                        i6 = JSONReader.m7284M(i8, i9, i10, bArr[i3]);
                    } else if (i7 != 120) {
                        i6 = m7313H(i7);
                    } else {
                        int i11 = bArr[i3 + 1];
                        i3 += 2;
                        i6 = JSONReader.m7283I(i11, bArr[i3]);
                    }
                } else if (i6 == -61 || i6 == -62) {
                    i3++;
                    i6 = ((i6 & 31) << 6) | (bArr[i3] & 63);
                } else if (i6 == 34) {
                }
                if (i4 < 8 && i6 <= 255 && i6 >= 0 && (i4 != 0 || i6 != 0)) {
                    if ((i6 != 95 && i6 != 45 && i6 != 32) || (i2 = bArr[i3 + 1]) == 34 || i2 == 39 || i2 == i6) {
                        if (i6 >= 65 && i6 <= 90) {
                            i6 = (char) (i6 + 32);
                        }
                        switch (i4) {
                            case 0:
                                j3 = (byte) i6;
                                break;
                            case 1:
                                j = ((byte) i6) << 8;
                                j2 = 255;
                                j3 = (j3 & j2) + j;
                                break;
                            case 2:
                                j = ((byte) i6) << 16;
                                j2 = WebSocketProtocol.PAYLOAD_SHORT_MAX;
                                j3 = (j3 & j2) + j;
                                break;
                            case 3:
                                j = ((byte) i6) << 24;
                                j2 = 16777215;
                                j3 = (j3 & j2) + j;
                                break;
                            case 4:
                                j = ((byte) i6) << 32;
                                j2 = 4294967295L;
                                j3 = (j3 & j2) + j;
                                break;
                            case 5:
                                j = ((byte) i6) << 40;
                                j2 = 1099511627775L;
                                j3 = (j3 & j2) + j;
                                break;
                            case 6:
                                j = ((byte) i6) << 48;
                                j2 = 281474976710655L;
                                j3 = (j3 & j2) + j;
                                break;
                            case 7:
                                j = ((byte) i6) << 56;
                                j2 = 72057594037927935L;
                                j3 = (j3 & j2) + j;
                                break;
                        }
                        i4++;
                    }
                    i3++;
                }
            }
        }
        i3 = this.f12447z;
        j3 = 0;
        if (j3 != 0) {
            return j3;
        }
        boolean z = this.f12437Q;
        long j4 = Fnv.MAGIC_HASH_CODE;
        if (z && !this.nameEscape) {
            int i12 = this.f12447z;
            while (i12 < this.f12435J) {
                int i13 = bArr[i12];
                if (i13 >= 65 && i13 <= 90) {
                    i13 += 32;
                }
                if ((i13 != c2 && i13 != c && i13 != 32) || (i = bArr[i12 + 1]) == 34 || i == 39 || i == i13) {
                    j4 = (j4 ^ i13) * Fnv.MAGIC_PRIME;
                }
                i12++;
                c = '-';
                c2 = NameUtil.USCORE;
            }
            return j4;
        }
        while (true) {
            int i14 = bArr[i3];
            if (i14 == 92) {
                int i15 = i3 + 1;
                int i16 = bArr[i15];
                if (i16 == 117) {
                    int i17 = bArr[i15 + 1];
                    int i18 = bArr[i15 + 2];
                    int i19 = bArr[i15 + 3];
                    i15 += 4;
                    i14 = JSONReader.m7284M(i17, i18, i19, bArr[i15]);
                } else if (i16 != 120) {
                    i14 = m7313H(i16);
                } else {
                    int i20 = bArr[i15 + 1];
                    i15 += 2;
                    i14 = JSONReader.m7283I(i20, bArr[i15]);
                }
                i3 = i15 + 1;
            } else {
                if (i14 == c4) {
                    return j4;
                }
                if (i14 >= 0) {
                    if (i14 >= c3 && i14 <= 90) {
                        i14 += 32;
                    }
                    i3++;
                } else {
                    int i21 = i14 & 255;
                    switch (i21 >> 4) {
                        case 12:
                        case 13:
                            i14 = ((i21 & 31) << 6) | (bArr[i3 + 1] & 63);
                            i3 += 2;
                            break;
                        case 14:
                            i14 = ((i21 & 15) << 12) | ((bArr[i3 + 1] & 63) << 6) | (bArr[i3 + 2] & 63);
                            i3 += 3;
                            break;
                        default:
                            throw new JSONException("malformed input around byte " + i3);
                    }
                }
            }
            if (i14 != 95 && i14 != 45 && i14 != 32) {
                j4 = (i14 ^ j4) * Fnv.MAGIC_PRIME;
            }
            c3 = 'A';
            c4 = '\"';
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ef, code lost:
    
        throw new com.alibaba.fastjson2.JSONException("malformed input around byte " + r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b3, code lost:
    
        throw new com.alibaba.fastjson2.JSONException("malformed input around byte " + r6);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0032. Please report as an issue. */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getString() {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.getString():java.lang.String");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final int getStringLength() {
        int i;
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        int i2 = this.offset;
        byte[] bArr = this.f12443v;
        int i3 = i2 + 8;
        if (i3 >= this.f12446y || i3 >= bArr.length || bArr[i2] == c || bArr[i2 + 1] == c || bArr[i2 + 2] == c || bArr[i2 + 3] == c || bArr[i2 + 4] == c || bArr[i2 + 5] == c || bArr[i2 + 6] == c || bArr[i2 + 7] == c) {
            i = 0;
        } else {
            i = 8;
            i2 = i3;
        }
        while (i2 < this.f12446y && bArr[i2] != c) {
            i2++;
            i++;
        }
        return i;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final String info(String str) {
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (true) {
            if (i >= this.offset || i >= this.f12446y) {
                break;
            }
            if (this.f12443v[i] == 10) {
                i2++;
                i3 = 1;
            }
            i++;
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
        sb.append(i2);
        sb.append(", column ");
        sb.append(i3);
        sb.append(", fastjson-version ");
        sb.append(JSON.VERSION);
        sb.append(i2 <= 1 ? ' ' : '\n');
        byte[] bArr = this.f12443v;
        int i4 = this.f12445x;
        int i5 = this.f12444w;
        if (i5 >= 65535) {
            i5 = 65535;
        }
        sb.append(new String(bArr, i4, i5));
        return sb.toString();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final boolean isArray() {
        return this.f12290ch == '[';
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final boolean isNull() {
        int i;
        return this.f12290ch == 'n' && (i = this.offset) < this.f12446y && this.f12443v[i] == 117;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00a9, code lost:
    
        r1 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ad, code lost:
    
        if (r1 >= r15.f12446y) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b3, code lost:
    
        if (r0[r1] != 35) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b6, code lost:
    
        r15.f12438Z = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b8, code lost:
    
        return true;
     */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isReference() {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.isReference():boolean");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f A[LOOP:0: B:6:0x0011->B:24:0x003f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x000b A[EDGE_INSN: B:25:0x000b->B:4:0x000b BREAK  A[LOOP:0: B:6:0x0011->B:24:0x003f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x003c -> B:4:0x000b). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void next() {
        /*
            r9 = this;
            byte[] r0 = r9.f12443v
            int r1 = r9.offset
            int r2 = r9.f12446y
            r3 = 26
            if (r1 < r2) goto Ld
            r2 = r1
        Lb:
            r1 = r3
            goto L11
        Ld:
            int r2 = r1 + 1
            r1 = r0[r1]
        L11:
            if (r1 == 0) goto L3a
            r4 = 32
            if (r1 > r4) goto L27
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L27
            goto L3a
        L27:
            if (r1 >= 0) goto L2d
            r9.m7410p0(r1, r2)
            return
        L2d:
            r9.offset = r2
            char r0 = (char) r1
            r9.f12290ch = r0
            r0 = 47
            if (r1 != r0) goto L39
            r9.skipComment()
        L39:
            return
        L3a:
            int r1 = r9.f12446y
            if (r2 != r1) goto L3f
            goto Lb
        L3f:
            int r1 = r2 + 1
            r2 = r0[r2]
            r8 = r2
            r2 = r1
            r1 = r8
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.next():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0077 A[LOOP:0: B:10:0x001b->B:45:0x0077, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0015 A[EDGE_INSN: B:46:0x0015->B:8:0x0015 BREAK  A[LOOP:0: B:10:0x001b->B:45:0x0077], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0074 -> B:9:0x0015). Please report as a decompilation issue!!! */
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
            byte[] r2 = r0.f12443v
            int r3 = r0.offset
            r4 = 93
            if (r1 == r4) goto Le
            r0 = 0
            return r0
        Le:
            int r1 = r0.f12446y
            r4 = 26
            if (r3 != r1) goto L17
            r1 = r3
        L15:
            r3 = r4
            goto L1b
        L17:
            int r1 = r3 + 1
            r3 = r2[r3]
        L1b:
            if (r3 == 0) goto L72
            r5 = 0
            r7 = 4294981376(0x100003700, double:2.1220027474E-314)
            r9 = 1
            r11 = 32
            if (r3 > r11) goto L32
            long r12 = r9 << r3
            long r12 = r12 & r7
            int r12 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r12 == 0) goto L32
            goto L72
        L32:
            r12 = 44
            r13 = 1
            if (r3 != r12) goto L5f
            r0.comma = r13
            int r3 = r0.f12446y
            if (r1 != r3) goto L40
            r3 = r1
            r1 = r4
            goto L44
        L40:
            int r3 = r1 + 1
            r1 = r2[r1]
        L44:
            r16 = r3
            r3 = r1
            r1 = r16
        L49:
            if (r3 == 0) goto L54
            if (r3 > r11) goto L5f
            long r14 = r9 << r3
            long r14 = r14 & r7
            int r12 = (r14 > r5 ? 1 : (r14 == r5 ? 0 : -1))
            if (r12 == 0) goto L5f
        L54:
            int r3 = r0.f12446y
            if (r1 != r3) goto L5a
            r3 = r4
            goto L49
        L5a:
            int r3 = r1 + 1
            r1 = r2[r1]
            goto L44
        L5f:
            if (r3 >= 0) goto L65
            r0.m7410p0(r3, r1)
            return r13
        L65:
            char r2 = (char) r3
            r0.f12290ch = r2
            r0.offset = r1
            r1 = 47
            if (r3 != r1) goto L71
            r17.skipComment()
        L71:
            return r13
        L72:
            int r3 = r0.f12446y
            if (r1 != r3) goto L77
            goto L15
        L77:
            int r3 = r1 + 1
            r1 = r2[r1]
            r16 = r3
            r3 = r1
            r1 = r16
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfArrayEnd():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0048 A[LOOP:0: B:10:0x0019->B:27:0x0048, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0013 A[EDGE_INSN: B:28:0x0013->B:8:0x0013 BREAK  A[LOOP:0: B:10:0x0019->B:27:0x0048], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0045 -> B:9:0x0013). Please report as a decompilation issue!!! */
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
            byte[] r0 = r9.f12443v
            int r1 = r9.offset
            int r2 = r9.f12446y
            r3 = 26
            if (r1 != r2) goto L15
            r2 = r1
        L13:
            r1 = r3
            goto L19
        L15:
            int r2 = r1 + 1
            r1 = r0[r1]
        L19:
            if (r1 == 0) goto L43
            r4 = 32
            if (r1 > r4) goto L2f
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L2f
            goto L43
        L2f:
            r0 = 1
            if (r1 >= 0) goto L36
            r9.m7410p0(r1, r2)
            return r0
        L36:
            char r3 = (char) r1
            r9.f12290ch = r3
            r9.offset = r2
            r2 = 47
            if (r1 != r2) goto L42
            r9.skipComment()
        L42:
            return r0
        L43:
            int r1 = r9.f12446y
            if (r2 != r1) goto L48
            goto L13
        L48:
            int r1 = r2 + 1
            r2 = r0[r2]
            r8 = r2
            r2 = r1
            r1 = r8
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfArrayStart():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0060 A[LOOP:1: B:25:0x003b->B:41:0x0060, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0035 A[EDGE_INSN: B:42:0x0035->B:23:0x0035 BREAK  A[LOOP:1: B:25:0x003b->B:41:0x0060], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x005d -> B:18:0x0035). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfComma() {
        /*
            r14 = this;
            byte[] r0 = r14.f12443v
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
            int r2 = r14.f12446y
            if (r1 != r2) goto L22
            r2 = r10
            goto L6
        L22:
            int r2 = r1 + 1
            r1 = r0[r1]
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
            int r2 = r14.f12446y
            if (r1 != r2) goto L37
            r2 = r1
        L35:
            r1 = r10
            goto L3b
        L37:
            int r2 = r1 + 1
            r1 = r0[r1]
        L3b:
            if (r1 == 0) goto L5b
            if (r1 > r9) goto L47
            long r11 = r7 << r1
            long r11 = r11 & r5
            int r11 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r11 == 0) goto L47
            goto L5b
        L47:
            r0 = 1
            if (r1 >= 0) goto L4e
            r14.m7410p0(r1, r2)
            return r0
        L4e:
            r14.offset = r2
            char r2 = (char) r1
            r14.f12290ch = r2
            r2 = 47
            if (r1 != r2) goto L5a
            r14.skipComment()
        L5a:
            return r0
        L5b:
            int r1 = r14.f12446y
            if (r2 != r1) goto L60
            goto L35
        L60:
            int r1 = r2 + 1
            r2 = r0[r2]
            r13 = r2
            r2 = r1
            r1 = r13
            goto L3b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfComma():boolean");
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
    public final boolean nextIfInfinity() {
        /*
            r9 = this;
            byte[] r0 = r9.f12443v
            int r1 = r9.offset
            char r2 = r9.f12290ch
            r3 = 73
            if (r2 != r3) goto L74
            int r2 = r1 + 6
            int r3 = r9.f12446y
            if (r2 >= r3) goto L74
            r4 = r0[r1]
            r5 = 110(0x6e, float:1.54E-43)
            if (r4 != r5) goto L74
            int r4 = r1 + 1
            r4 = r0[r4]
            r6 = 102(0x66, float:1.43E-43)
            if (r4 != r6) goto L74
            int r4 = r1 + 2
            r4 = r0[r4]
            r6 = 105(0x69, float:1.47E-43)
            if (r4 != r6) goto L74
            int r4 = r1 + 3
            r4 = r0[r4]
            if (r4 != r5) goto L74
            int r4 = r1 + 4
            r4 = r0[r4]
            if (r4 != r6) goto L74
            int r4 = r1 + 5
            r4 = r0[r4]
            r5 = 116(0x74, float:1.63E-43)
            if (r4 != r5) goto L74
            r2 = r0[r2]
            r4 = 121(0x79, float:1.7E-43)
            if (r2 != r4) goto L74
            int r1 = r1 + 7
            r2 = 26
            if (r1 != r3) goto L49
            r3 = r1
        L47:
            r1 = r2
            goto L4d
        L49:
            int r3 = r1 + 1
            r1 = r0[r1]
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
            int r1 = r9.f12446y
            if (r3 != r1) goto L65
            goto L47
        L65:
            int r1 = r3 + 1
            r3 = r0[r3]
            r8 = r3
            r3 = r1
            r1 = r8
            goto L4d
        L6d:
            r9.offset = r3
            char r0 = (char) r1
            r9.f12290ch = r0
            r9 = 1
            return r9
        L74:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfInfinity():boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005e A[LOOP:1: B:24:0x0039->B:40:0x005e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0033 A[EDGE_INSN: B:41:0x0033->B:22:0x0033 BREAK  A[LOOP:1: B:24:0x0039->B:40:0x005e], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x005b -> B:17:0x0033). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean nextIfMatch(char r15) {
        /*
            r14 = this;
            byte[] r0 = r14.f12443v
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
            int r2 = r14.f12446y
            if (r1 != r2) goto L22
            r2 = r10
            goto L6
        L22:
            int r2 = r1 + 1
            r1 = r0[r1]
            r13 = r2
            r2 = r1
            r1 = r13
            goto L6
        L2a:
            if (r2 == r15) goto L2e
            r14 = 0
            return r14
        L2e:
            int r15 = r14.f12446y
            if (r1 != r15) goto L35
            r15 = r1
        L33:
            r1 = r10
            goto L39
        L35:
            int r15 = r1 + 1
            r1 = r0[r1]
        L39:
            if (r1 == 0) goto L59
            if (r1 > r9) goto L45
            long r11 = r7 << r1
            long r11 = r11 & r5
            int r2 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
            if (r2 == 0) goto L45
            goto L59
        L45:
            r0 = 1
            if (r1 >= 0) goto L4c
            r14.m7410p0(r1, r15)
            return r0
        L4c:
            r14.offset = r15
            char r15 = (char) r1
            r14.f12290ch = r15
            r15 = 47
            if (r1 != r15) goto L58
            r14.skipComment()
        L58:
            return r0
        L59:
            int r1 = r14.f12446y
            if (r15 != r1) goto L5e
            goto L33
        L5e:
            int r1 = r15 + 1
            r15 = r0[r15]
            r13 = r1
            r1 = r15
            r15 = r13
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfMatch(char):boolean");
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
    public final boolean nextIfMatchIdent(char r9, char r10, char r11) {
        /*
            r8 = this;
            char r0 = r8.f12290ch
            r1 = 0
            if (r0 == r9) goto L6
            return r1
        L6:
            byte[] r9 = r8.f12443v
            int r0 = r8.offset
            int r2 = r0 + 2
            int r3 = r8.f12446y
            if (r2 > r3) goto L6d
            r4 = r9[r0]
            if (r4 != r10) goto L6d
            r10 = 1
            int r0 = r0 + r10
            r0 = r9[r0]
            if (r0 == r11) goto L1b
            goto L6d
        L1b:
            r11 = 26
            if (r2 != r3) goto L22
            r0 = r2
        L20:
            r2 = r11
            goto L26
        L22:
            int r0 = r2 + 1
            r2 = r9[r2]
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
            int r2 = r8.f12446y
            if (r0 != r2) goto L3e
            goto L20
        L3e:
            int r2 = r0 + 1
            r0 = r9[r0]
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
            char r9 = (char) r2
            r8.f12290ch = r9
            return r10
        L6d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfMatchIdent(char, char, char):boolean");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final boolean nextIfNull() {
        if (this.f12290ch != 'n') {
            return false;
        }
        int i = this.offset;
        if (i + 2 >= this.f12446y || this.f12443v[i] != 117) {
            return false;
        }
        readNull();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0091, code lost:
    
        m7410p0(r3, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0094, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005c A[LOOP:0: B:17:0x0043->B:23:0x005c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008a A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0059 -> B:15:0x003d). Please report as a decompilation issue!!! */
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
            int r2 = r0.f12446y
            int r3 = r0.offset
            byte[] r4 = r0.f12443v
            r5 = 110(0x6e, float:1.54E-43)
            r6 = 0
            r7 = 1
            if (r1 != r5) goto L29
            int r5 = r3 + 2
            if (r5 >= r2) goto L29
            r8 = r4[r3]
            r9 = 117(0x75, float:1.64E-43)
            if (r8 != r9) goto L29
            int r8 = r3 + 1
            r8 = r4[r8]
            r9 = 108(0x6c, float:1.51E-43)
            if (r8 != r9) goto L29
            r5 = r4[r5]
            if (r5 != r9) goto L29
            int r3 = r3 + 3
            goto L38
        L29:
            r5 = 34
            if (r1 == r5) goto L31
            r5 = 39
            if (r1 != r5) goto L9b
        L31:
            if (r3 >= r2) goto L9b
            r5 = r4[r3]
            if (r5 != r1) goto L9b
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
            r3 = r4[r3]
        L43:
            r8 = 0
            r10 = 4294981376(0x100003700, double:2.1220027474E-314)
            r12 = 1
            r14 = 32
            if (r3 < 0) goto L66
            if (r3 > r14) goto L66
            long r15 = r12 << r3
            long r15 = r15 & r10
            int r15 = (r15 > r8 ? 1 : (r15 == r8 ? 0 : -1))
            if (r15 == 0) goto L66
            if (r5 != r2) goto L5c
            goto L3d
        L5c:
            int r3 = r5 + 1
            r5 = r4[r5]
            r17 = r5
            r5 = r3
            r3 = r17
            goto L43
        L66:
            r15 = 44
            if (r3 != r15) goto L6b
            r6 = r7
        L6b:
            r0.comma = r6
            if (r6 == 0) goto L7c
            if (r5 != r2) goto L73
        L71:
            r3 = r1
            goto L7c
        L73:
            int r3 = r5 + 1
            r5 = r4[r5]
        L77:
            r17 = r5
            r5 = r3
            r3 = r17
        L7c:
            if (r3 < 0) goto L8f
            if (r3 > r14) goto L8f
            long r15 = r12 << r3
            long r15 = r15 & r10
            int r6 = (r15 > r8 ? 1 : (r15 == r8 ? 0 : -1))
            if (r6 == 0) goto L8f
            if (r5 != r2) goto L8a
            goto L71
        L8a:
            int r3 = r5 + 1
            r5 = r4[r5]
            goto L77
        L8f:
            if (r3 >= 0) goto L95
            r0.m7410p0(r3, r5)
            return r7
        L95:
            r0.offset = r5
            char r1 = (char) r3
            r0.f12290ch = r1
            return r7
        L9b:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfNullOrEmptyString():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0077 A[LOOP:0: B:10:0x001b->B:45:0x0077, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0015 A[EDGE_INSN: B:46:0x0015->B:8:0x0015 BREAK  A[LOOP:0: B:10:0x001b->B:45:0x0077], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0074 -> B:9:0x0015). Please report as a decompilation issue!!! */
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
            byte[] r2 = r0.f12443v
            int r3 = r0.offset
            r4 = 125(0x7d, float:1.75E-43)
            if (r1 == r4) goto Le
            r0 = 0
            return r0
        Le:
            int r1 = r0.f12446y
            r4 = 26
            if (r3 != r1) goto L17
            r1 = r3
        L15:
            r3 = r4
            goto L1b
        L17:
            int r1 = r3 + 1
            r3 = r2[r3]
        L1b:
            if (r3 == 0) goto L72
            r5 = 0
            r7 = 4294981376(0x100003700, double:2.1220027474E-314)
            r9 = 1
            r11 = 32
            if (r3 > r11) goto L32
            long r12 = r9 << r3
            long r12 = r12 & r7
            int r12 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r12 == 0) goto L32
            goto L72
        L32:
            r12 = 44
            r13 = 1
            if (r3 != r12) goto L5f
            r0.comma = r13
            int r3 = r0.f12446y
            if (r1 != r3) goto L40
            r3 = r1
            r1 = r4
            goto L44
        L40:
            int r3 = r1 + 1
            r1 = r2[r1]
        L44:
            r16 = r3
            r3 = r1
            r1 = r16
        L49:
            if (r3 == 0) goto L54
            if (r3 > r11) goto L5f
            long r14 = r9 << r3
            long r14 = r14 & r7
            int r12 = (r14 > r5 ? 1 : (r14 == r5 ? 0 : -1))
            if (r12 == 0) goto L5f
        L54:
            int r3 = r0.f12446y
            if (r1 != r3) goto L5a
            r3 = r4
            goto L49
        L5a:
            int r3 = r1 + 1
            r1 = r2[r1]
            goto L44
        L5f:
            if (r3 >= 0) goto L65
            r0.m7410p0(r3, r1)
            return r13
        L65:
            char r2 = (char) r3
            r0.f12290ch = r2
            r0.offset = r1
            r1 = 47
            if (r3 != r1) goto L71
            r17.skipComment()
        L71:
            return r13
        L72:
            int r3 = r0.f12446y
            if (r1 != r3) goto L77
            goto L15
        L77:
            int r3 = r1 + 1
            r1 = r2[r1]
            r16 = r3
            r3 = r1
            r1 = r16
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfObjectEnd():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0048 A[LOOP:0: B:10:0x0019->B:27:0x0048, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0013 A[EDGE_INSN: B:28:0x0013->B:8:0x0013 BREAK  A[LOOP:0: B:10:0x0019->B:27:0x0048], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0045 -> B:9:0x0013). Please report as a decompilation issue!!! */
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
            byte[] r0 = r9.f12443v
            int r1 = r9.offset
            int r2 = r9.f12446y
            r3 = 26
            if (r1 != r2) goto L15
            r2 = r1
        L13:
            r1 = r3
            goto L19
        L15:
            int r2 = r1 + 1
            r1 = r0[r1]
        L19:
            if (r1 == 0) goto L43
            r4 = 32
            if (r1 > r4) goto L2f
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L2f
            goto L43
        L2f:
            r0 = 1
            if (r1 >= 0) goto L36
            r9.m7410p0(r1, r2)
            return r0
        L36:
            char r3 = (char) r1
            r9.f12290ch = r3
            r9.offset = r2
            r2 = 47
            if (r1 != r2) goto L42
            r9.skipComment()
        L42:
            return r0
        L43:
            int r1 = r9.f12446y
            if (r2 != r1) goto L48
            goto L13
        L48:
            int r1 = r2 + 1
            r2 = r0[r2]
            r8 = r2
            r2 = r1
            r1 = r8
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfObjectStart():boolean");
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
    public final boolean nextIfSet() {
        /*
            r9 = this;
            byte[] r0 = r9.f12443v
            int r1 = r9.offset
            char r2 = r9.f12290ch
            r3 = 83
            if (r2 != r3) goto L50
            int r2 = r1 + 1
            int r3 = r9.f12446y
            if (r2 >= r3) goto L50
            r4 = r0[r1]
            r5 = 101(0x65, float:1.42E-43)
            if (r4 != r5) goto L50
            r2 = r0[r2]
            r4 = 116(0x74, float:1.63E-43)
            if (r2 != r4) goto L50
            int r1 = r1 + 2
            r2 = 26
            if (r1 != r3) goto L25
            r3 = r1
        L23:
            r1 = r2
            goto L29
        L25:
            int r3 = r1 + 1
            r1 = r0[r1]
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
            int r1 = r9.f12446y
            if (r3 != r1) goto L41
            goto L23
        L41:
            int r1 = r3 + 1
            r3 = r0[r3]
            r8 = r3
            r3 = r1
            r1 = r8
            goto L29
        L49:
            r9.offset = r3
            char r0 = (char) r1
            r9.f12290ch = r0
            r9 = 1
            return r9
        L50:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfSet():boolean");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    /* renamed from: p0 */
    public final void m7410p0(int i, int i2) {
        int i3;
        int i4;
        byte[] bArr = this.f12443v;
        int i5 = i & 255;
        switch (i5 >> 4) {
            case 12:
            case 13:
                int i6 = i2 + 1;
                int m7407m0 = m7407m0(i5, bArr[i2], i6);
                i3 = i6;
                i4 = m7407m0;
                this.f12290ch = (char) i4;
                this.offset = i3;
                return;
            case 14:
                i4 = m7408n0(i5, bArr[i2], bArr[i2 + 1], i2);
                i3 = i2 + 2;
                this.f12290ch = (char) i4;
                this.offset = i3;
                return;
            default:
                if ((i >> 3) != -2) {
                    throw new JSONException("malformed input around byte " + i2);
                }
                i4 = (((i << 18) ^ (bArr[i2] << 12)) ^ (bArr[i2 + 1] << 6)) ^ (bArr[i2 + 2] ^ 3678080);
                i3 = i2 + 3;
                this.f12290ch = (char) i4;
                this.offset = i3;
                return;
        }
    }

    /* renamed from: q0 */
    public final String m7411q0(int i, int i2) {
        if (JDKUtils.ANDROID_SDK_INT >= 34) {
            return new String(this.f12443v, i, i2, StandardCharsets.ISO_8859_1);
        }
        char[] cArr = this.f12441t0;
        if (cArr == null) {
            cArr = JSONFactory.f12219C.getAndSet(this.f12442u0, null);
            this.f12441t0 = cArr;
        }
        if (cArr == null || cArr.length < i2) {
            cArr = new char[i2];
            this.f12441t0 = cArr;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            cArr[i3] = (char) (this.f12443v[i + i3] & 255);
        }
        return new String(cArr, 0, i2);
    }

    /* renamed from: r0 */
    public void mo7352r0() {
        String str;
        int i;
        char c = this.f12290ch;
        int i2 = this.offset;
        this.valueEscape = false;
        byte[] bArr = this.f12443v;
        int i3 = i2;
        int i4 = 0;
        boolean z = true;
        while (true) {
            byte b = bArr[i3];
            int i5 = 120;
            int i6 = 117;
            if (b == 92) {
                this.valueEscape = true;
                byte b2 = bArr[i3 + 1];
                i3 += b2 != 117 ? b2 == 120 ? 4 : 2 : 6;
            } else if (b < 0) {
                switch ((b & 255) >> 4) {
                    case 12:
                    case 13:
                        i3 += 2;
                        break;
                    case 14:
                        i3 += 3;
                        break;
                    default:
                        if ((b >> 3) != -2) {
                            throw new JSONException("malformed input around byte " + i3);
                        }
                        i3 += 4;
                        i4++;
                        break;
                }
                z = false;
            } else {
                if (b == c) {
                    if (this.valueEscape) {
                        char[] cArr = new char[i4];
                        int i7 = 0;
                        while (true) {
                            byte b3 = bArr[i2];
                            if (b3 != 92) {
                                if (b3 != 34) {
                                    if (b3 < 0) {
                                        switch ((b3 & 255) >> 4) {
                                            case 12:
                                            case 13:
                                                int i8 = i2 + 1;
                                                cArr[i7] = (char) ((bArr[i8] & 63) | ((b3 & 31) << 6));
                                                i2 = i8 + 1;
                                                break;
                                            case 14:
                                                int i9 = i2 + 1;
                                                int i10 = i9 + 1;
                                                cArr[i7] = (char) (((bArr[i9] & 63) << 6) | ((b3 & 15) << 12) | (bArr[i10] & 63));
                                                i2 = i10 + 1;
                                                break;
                                            default:
                                                if ((b3 >> 3) != -2) {
                                                    throw new JSONException("malformed input around byte " + i2);
                                                }
                                                int i11 = i2 + 1;
                                                int i12 = i11 + 1;
                                                byte b4 = bArr[i11];
                                                int i13 = i12 + 1;
                                                byte b5 = bArr[i12];
                                                i = i13 + 1;
                                                byte b6 = bArr[i13];
                                                int i14 = (((b3 << 18) ^ (b4 << 12)) ^ (b5 << 6)) ^ (b6 ^ 3678080);
                                                if ((b4 & 192) == 128 && (b5 & 192) == 128 && (b6 & 192) == 128 && i14 >= 65536 && i14 < 1114112) {
                                                    int i15 = i7 + 1;
                                                    cArr[i7] = (char) ((i14 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                                                    cArr[i15] = (char) ((i14 & 1023) + 56320);
                                                    i7 = i15;
                                                    i2 = i;
                                                    break;
                                                }
                                                break;
                                        }
                                    } else {
                                        cArr[i7] = (char) b3;
                                        i2++;
                                    }
                                } else {
                                    str = new String(cArr);
                                    i3 = i2;
                                }
                            } else {
                                int i16 = i2 + 1;
                                int i17 = bArr[i16];
                                if (i17 != 34 && i17 != 92) {
                                    if (i17 == i6) {
                                        byte b7 = bArr[i16 + 1];
                                        byte b8 = bArr[i16 + 2];
                                        byte b9 = bArr[i16 + 3];
                                        i16 += 4;
                                        i17 = JSONReader.m7284M(b7, b8, b9, bArr[i16]);
                                    } else if (i17 != i5) {
                                        i17 = m7313H(i17);
                                    } else {
                                        byte b10 = bArr[i16 + 1];
                                        i16 += 2;
                                        i17 = JSONReader.m7283I(b10, bArr[i16]);
                                    }
                                }
                                cArr[i7] = (char) i17;
                                i2 = i16 + 1;
                            }
                            i7++;
                            i5 = 120;
                            i6 = 117;
                        }
                        throw new JSONException("malformed input around byte " + i);
                    }
                    if (z) {
                        int i18 = this.offset;
                        str = m7411q0(i18, i3 - i18);
                    } else {
                        int i19 = this.offset;
                        str = new String(bArr, i19, i3 - i19, StandardCharsets.UTF_8);
                    }
                    int i20 = i3 + 1;
                    byte b11 = bArr[i20];
                    while (b11 <= 32 && ((1 << b11) & JSONReader.f12289u) != 0) {
                        i20++;
                        b11 = bArr[i20];
                    }
                    this.comma = b11 == 44;
                    this.offset = i20 + 1;
                    if (b11 == 44) {
                        next();
                    } else {
                        this.f12290ch = (char) b11;
                    }
                    this.stringValue = str;
                    return;
                }
                i3++;
            }
            i4++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:205:0x00fe, code lost:
    
        if (r11 == 43) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ed, code lost:
    
        if (r2 == 69) goto L64;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02a7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x012b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008c A[LOOP:0: B:11:0x005b->B:23:0x008c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x026f  */
    /* JADX WARN: Type inference failed for: r2v0, types: [char] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x02c8 -> B:106:0x02a7). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.math.BigDecimal readBigDecimal() {
        /*
            Method dump skipped, instructions count: 787
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readBigDecimal():java.math.BigDecimal");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f9 A[LOOP:0: B:18:0x00e2->B:24:0x00f9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00db A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00dd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00f6 -> B:16:0x00db). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0122 -> B:31:0x0110). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean readBoolValue() {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readBoolValue():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:148:0x02b6, code lost:
    
        if (r27.negative != false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02b8, code lost:
    
        r7 = -r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02b9, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02cf, code lost:
    
        if (r27.negative != false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02e0, code lost:
    
        if (r27.negative != false) goto L185;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a8 A[LOOP:0: B:11:0x0082->B:21:0x00a8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0126 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x002f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x033d A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:235:0x013d -> B:224:0x0113). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:257:0x0043 -> B:252:0x002f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x0360 -> B:95:0x033d). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double readDoubleValue() {
        /*
            Method dump skipped, instructions count: 951
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readDoubleValue():double");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:78:0x00ed. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:66:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x007f A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x009a -> B:38:0x007f). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readFieldName() {
        /*
            Method dump skipped, instructions count: 1418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readFieldName():java.lang.String");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:126:0x02ab. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0387 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x03a2 -> B:108:0x0387). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readFieldNameHashCode() {
        /*
            Method dump skipped, instructions count: 1124
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readFieldNameHashCode():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x02c6, code lost:
    
        if (r5 != 26) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x02c8, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x02cc, code lost:
    
        r26.f12435J = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x02d0, code lost:
    
        if (r5 > 32) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x02da, code lost:
    
        if (((1 << r5) & com.alibaba.fastjson2.JSONReader.f12289u) == 0) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02dc, code lost:
    
        if (r2 != r3) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x02e0, code lost:
    
        r5 = r4[r2];
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02de, code lost:
    
        r5 = 26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02ca, code lost:
    
        r1 = r2 - 1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:112:0x0226. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:113:0x0229. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:114:0x022c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0047. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:190:0x010d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x004a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x004d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01f3 A[FALL_THROUGH, PHI: r2 r5
      0x01f3: PHI (r2v32 int) = 
      (r2v31 int)
      (r2v31 int)
      (r2v31 int)
      (r2v31 int)
      (r2v37 int)
      (r2v39 int)
      (r2v31 int)
      (r2v31 int)
      (r2v31 int)
      (r2v31 int)
      (r2v40 int)
     binds: [B:70:0x01ad, B:71:0x01af, B:73:0x01b3, B:74:0x01b5, B:87:0x01df, B:86:0x01d2, B:80:0x01c1, B:82:0x01c5, B:83:0x01c7, B:84:0x01ca, B:85:0x01cd] A[DONT_GENERATE, DONT_INLINE]
      0x01f3: PHI (r5v34 int) = 
      (r5v33 int)
      (r5v33 int)
      (r5v33 int)
      (r5v33 int)
      (r5v38 int)
      (r5v39 int)
      (r5v33 int)
      (r5v33 int)
      (r5v33 int)
      (r5v33 int)
      (r5v33 int)
     binds: [B:70:0x01ad, B:71:0x01af, B:73:0x01b3, B:74:0x01b5, B:87:0x01df, B:86:0x01d2, B:80:0x01c1, B:82:0x01c5, B:83:0x01c7, B:84:0x01ca, B:85:0x01cd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01fb  */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readFieldNameHashCodeUnquote() {
        /*
            Method dump skipped, instructions count: 952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readFieldNameHashCodeUnquote():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x02d6, code lost:
    
        if (r27.negative != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x02c3, code lost:
    
        if (r27.negative != false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02c5, code lost:
    
        r15 = -r15;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0326 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7 A[LOOP:0: B:11:0x0081->B:21:0x00a7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0128 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x002e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02a0  */
    /* JADX WARN: Type inference failed for: r3v0, types: [char] */
    /* JADX WARN: Type inference failed for: r3v52, types: [char] */
    /* JADX WARN: Type inference failed for: r3v53, types: [char] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:116:0x0347 -> B:119:0x0326). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:228:0x013f -> B:217:0x0115). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:250:0x0042 -> B:245:0x002e). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float readFloatValue() {
        /*
            Method dump skipped, instructions count: 926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readFloatValue():float");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004e A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005a -> B:17:0x0042). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x00f5 -> B:63:0x00d4). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] readHex() {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readHex():byte[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson2.JSONReader
    public final boolean readIfNull() {
        int i;
        byte b;
        byte[] bArr = this.f12443v;
        char c = this.f12290ch;
        int i2 = this.offset;
        if (c != 'n' || bArr[i2] != 117 || bArr[i2 + 1] != 108 || bArr[i2 + 2] != 108) {
            return false;
        }
        int i3 = i2 + 3;
        int i4 = i3 == this.f12446y ? (char) 26 : (char) bArr[i3];
        int i5 = i2 + 4;
        while (i4 <= ' ' && ((1 << i4) & JSONReader.f12289u) != 0) {
            if (i5 == this.f12446y) {
                i4 = 26;
            } else {
                int i6 = i5 + 1;
                byte b2 = bArr[i5];
                i5 = i6;
                i4 = b2;
            }
        }
        boolean z = i4 == ',';
        this.comma = z;
        if (z) {
            if (i5 == this.f12446y) {
                i = i5;
                b = 26;
            } else {
                i = i5 + 1;
                b = (char) bArr[i5];
            }
            loop1: while (true) {
                byte b3 = b;
                i5 = i;
                i4 = b3;
                while (i4 <= ' ' && ((1 << i4) & JSONReader.f12289u) != 0) {
                    if (i5 == this.f12446y) {
                        i4 = 26;
                    }
                }
                i = i5 + 1;
                b = bArr[i5];
            }
        }
        this.offset = i5;
        this.f12290ch = (char) i4;
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
    public final java.lang.Integer readInt32() {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readInt32():java.lang.Integer");
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
    public final int readInt32Value() {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readInt32Value():int");
    }

    /* JADX WARN: Multi-variable type inference failed */
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
    public final java.lang.Long readInt64() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readInt64():java.lang.Long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0, types: [char] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [long] */
    /* JADX WARN: Type inference failed for: r1v13, types: [int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20, types: [long] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v13, types: [char] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x00e8 -> B:71:0x00ca). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long readInt64Value() {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readInt64Value():long");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDate readLocalDate() {
        int i;
        LocalDate of;
        byte[] bArr = this.f12443v;
        int i2 = this.offset;
        char c = this.f12290ch;
        if (c == '\"' || c == '\'') {
            JSONReader.Context context = this.context;
            if ((context.f12292a == null || context.f12293b || context.f12294c || context.f12296e || context.f12299h) && (i = i2 + 10) < bArr.length && i < this.f12446y && bArr[i2 + 4] == 45 && bArr[i2 + 7] == 45 && bArr[i] == c) {
                byte b = bArr[i2];
                byte b2 = bArr[i2 + 1];
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                byte b5 = bArr[i2 + 5];
                byte b6 = bArr[i2 + 6];
                byte b7 = bArr[i2 + 8];
                byte b8 = bArr[i2 + 9];
                if (b >= 48 && b <= 57 && b2 >= 48 && b2 <= 57 && b3 >= 48 && b3 <= 57 && b4 >= 48 && b4 <= 57) {
                    int i3 = ((b - 48) * 1000) + ((b2 - 48) * 100) + ((b3 - 48) * 10) + (b4 - 48);
                    if (b5 >= 48 && b5 <= 57 && b6 >= 48 && b6 <= 57) {
                        int i4 = ((b5 - 48) * 10) + (b6 - 48);
                        if (b7 >= 48 && b7 <= 57 && b8 >= 48 && b8 <= 57) {
                            int i5 = ((b7 - 48) * 10) + (b8 - 48);
                            if (i3 == 0 && i4 == 0 && i5 == 0) {
                                of = null;
                            } else {
                                try {
                                    of = LocalDate.of(i3, i4, i5);
                                } catch (DateTimeException e) {
                                    throw new JSONException(info("read date error"), e);
                                }
                            }
                            this.offset = i2 + 11;
                            next();
                            boolean z = this.f12290ch == ',';
                            this.comma = z;
                            if (z) {
                                next();
                            }
                            return of;
                        }
                    }
                }
            }
        }
        return super.readLocalDate();
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDate readLocalDate10() {
        if (!isString()) {
            throw new JSONException("localDate only support string input");
        }
        try {
            LocalDate parseLocalDate10 = DateUtils.parseLocalDate10(this.f12443v, this.offset);
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
    public final LocalDate readLocalDate11() {
        if (!isString()) {
            throw new JSONException("localDate only support string input");
        }
        LocalDate parseLocalDate11 = DateUtils.parseLocalDate11(this.f12443v, this.offset);
        if (parseLocalDate11 == null) {
            return null;
        }
        this.offset += 11;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return parseLocalDate11;
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final LocalDate readLocalDate8() {
        if (!isString()) {
            throw new JSONException("localDate only support string input");
        }
        try {
            LocalDate parseLocalDate8 = DateUtils.parseLocalDate8(this.f12443v, this.offset);
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
    public final LocalDate readLocalDate9() {
        if (!isString()) {
            throw new JSONException("localDate only support string input");
        }
        try {
            LocalDate parseLocalDate9 = DateUtils.parseLocalDate9(this.f12443v, this.offset);
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
    public final LocalDateTime readLocalDateTime12() {
        if (!isString()) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime12 = DateUtils.parseLocalDateTime12(this.f12443v, this.offset);
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
    public final LocalDateTime readLocalDateTime14() {
        if (!isString()) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime14 = DateUtils.parseLocalDateTime14(this.f12443v, this.offset);
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
    public final LocalDateTime readLocalDateTime16() {
        if (!isString()) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime16 = DateUtils.parseLocalDateTime16(this.f12443v, this.offset);
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
    public final LocalDateTime readLocalDateTime17() {
        if (!isString()) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime17 = DateUtils.parseLocalDateTime17(this.f12443v, this.offset);
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
    public final LocalDateTime readLocalDateTime18() {
        if (!isString()) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime18 = DateUtils.parseLocalDateTime18(this.f12443v, this.offset);
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
    public final LocalDateTime readLocalDateTime19() {
        if (!isString()) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime19 = DateUtils.parseLocalDateTime19(this.f12443v, this.offset);
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
    public final LocalDateTime readLocalDateTime20() {
        if (!isString()) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTime20 = DateUtils.parseLocalDateTime20(this.f12443v, this.offset);
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
    public final LocalDateTime readLocalDateTimeX(int i) {
        if (!isString()) {
            throw new JSONException("date only support string input");
        }
        LocalDateTime parseLocalDateTimeX = DateUtils.parseLocalDateTimeX(this.f12443v, this.offset, i);
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
    public final LocalTime readLocalTime10() {
        if (!isString()) {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime10 = DateUtils.parseLocalTime10(this.f12443v, this.offset);
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
    public final LocalTime readLocalTime11() {
        if (!isString()) {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime11 = DateUtils.parseLocalTime11(this.f12443v, this.offset);
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
    public final LocalTime readLocalTime12() {
        if (!isString()) {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime12 = DateUtils.parseLocalTime12(this.f12443v, this.offset);
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
    public final LocalTime readLocalTime18() {
        if (!isString()) {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime18 = DateUtils.parseLocalTime18(this.f12443v, this.offset);
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
    public final LocalTime readLocalTime5() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime5 = DateUtils.parseLocalTime5(this.f12443v, this.offset);
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
    public final LocalTime readLocalTime8() {
        if (!isString()) {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime8 = DateUtils.parseLocalTime8(this.f12443v, this.offset);
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
    public final LocalTime readLocalTime9() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("localTime only support string input");
        }
        LocalTime parseLocalTime8 = DateUtils.parseLocalTime8(this.f12443v, this.offset);
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
    public final long readMillis19() {
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            throw new JSONException("date only support string input");
        }
        int i = this.offset;
        if (i + 18 >= this.f12446y) {
            this.wasNull = true;
            return 0L;
        }
        long parseMillis19 = DateUtils.parseMillis19(this.f12443v, i, this.context.f12306o);
        byte[] bArr = this.f12443v;
        int i2 = this.offset;
        if (bArr[i2 + 19] != c) {
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

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040 A[LOOP:0: B:12:0x0027->B:18:0x0040, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0021 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x004e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003d -> B:10:0x0021). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void readNull() {
        /*
            r14 = this;
            byte[] r0 = r14.f12443v
            int r1 = r14.offset
            r2 = r0[r1]
            r3 = 117(0x75, float:1.64E-43)
            if (r2 != r3) goto L7b
            int r2 = r1 + 1
            r2 = r0[r2]
            r3 = 108(0x6c, float:1.51E-43)
            if (r2 != r3) goto L7b
            int r2 = r1 + 2
            r2 = r0[r2]
            if (r2 != r3) goto L7b
            int r1 = r1 + 3
            int r2 = r14.f12446y
            r3 = 26
            if (r1 != r2) goto L23
            r2 = r1
        L21:
            r1 = r3
            goto L27
        L23:
            int r2 = r1 + 1
            r1 = r0[r1]
        L27:
            r4 = 0
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            r8 = 1
            r10 = 32
            if (r1 > r10) goto L48
            long r11 = r8 << r1
            long r11 = r11 & r6
            int r11 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r11 == 0) goto L48
            int r1 = r14.f12446y
            if (r2 < r1) goto L40
            goto L21
        L40:
            int r1 = r2 + 1
            r2 = r0[r2]
            r13 = r2
            r2 = r1
            r1 = r13
            goto L27
        L48:
            r11 = 44
            if (r1 != r11) goto L4e
            r11 = 1
            goto L4f
        L4e:
            r11 = 0
        L4f:
            r14.comma = r11
            if (r11 == 0) goto L75
            int r1 = r14.f12446y
            if (r2 < r1) goto L5a
            r1 = r2
            r2 = r3
            goto L5e
        L5a:
            int r1 = r2 + 1
            r2 = r0[r2]
        L5e:
            r13 = r2
            r2 = r1
            r1 = r13
        L61:
            if (r1 > r10) goto L75
            long r11 = r8 << r1
            long r11 = r11 & r6
            int r11 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r11 == 0) goto L75
            int r1 = r14.f12446y
            if (r2 < r1) goto L70
            r1 = r3
            goto L61
        L70:
            int r1 = r2 + 1
            r2 = r0[r2]
            goto L5e
        L75:
            char r0 = (char) r1
            r14.f12290ch = r0
            r14.offset = r2
            return
        L7b:
            com.alibaba.fastjson2.JSONException r14 = new com.alibaba.fastjson2.JSONException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "json syntax error, not match null"
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r14.<init>(r0)
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readNull():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x005e A[LOOP:3: B:64:0x0050->B:69:0x005e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x004b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x009f A[LOOP:4: B:86:0x0091->B:91:0x009f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x008c A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x005b -> B:50:0x004b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x009c -> B:69:0x008c). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Date readNullOrNewDate() {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readNullOrNewDate():java.util.Date");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00c6, code lost:
    
        if (r9 < (-214748364)) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0103, code lost:
    
        if (r9 < (-214748364)) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x017d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x003c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02da A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:183:0x018f -> B:176:0x0168). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:213:0x004e -> B:209:0x003c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x02f7 -> B:93:0x02da). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void readNumber0() {
        /*
            Method dump skipped, instructions count: 841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readNumber0():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x0138, code lost:
    
        r9 = r16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [char] */
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
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readOffsetDateTime():java.time.OffsetDateTime");
    }

    @Override // com.alibaba.fastjson2.JSONReader
    public final OffsetTime readOffsetTime() {
        int i;
        int i2;
        byte[] bArr = this.f12443v;
        int i3 = this.offset;
        JSONReader.Context context = this.context;
        char c = this.f12290ch;
        if ((c != '\"' && c != '\'') || context.f12292a != null || (i = i3 + 8) >= bArr.length || i >= this.f12446y || bArr[i3 + 2] != 58 || bArr[i3 + 5] != 58) {
            throw new JSONException(info("illegal offsetTime"));
        }
        byte b = bArr[i3];
        byte b2 = bArr[i3 + 1];
        byte b3 = bArr[i3 + 3];
        byte b4 = bArr[i3 + 4];
        byte b5 = bArr[i3 + 6];
        byte b6 = bArr[i3 + 7];
        if (b < 48 || b > 57 || b2 < 48 || b2 > 57) {
            throw new JSONException(info("illegal offsetTime"));
        }
        int i4 = ((b - 48) * 10) + (b2 - 48);
        if (b3 < 48 || b3 > 57 || b4 < 48 || b4 > 57) {
            throw new JSONException(info("illegal offsetTime"));
        }
        int i5 = ((b3 - 48) * 10) + (b4 - 48);
        if (b5 < 48 || b5 > 57 || b6 < 48 || b6 > 57) {
            throw new JSONException(info("illegal offsetTime"));
        }
        int i6 = ((b5 - 48) * 10) + (b6 - 48);
        int i7 = i3 + 25;
        int i8 = i;
        int i9 = -1;
        while (true) {
            if (i8 >= i7 || i8 >= this.f12446y || i8 >= bArr.length) {
                break;
            }
            byte b7 = bArr[i8];
            if (i9 == -1 && (b7 == 90 || b7 == 43 || b7 == 45)) {
                i9 = (i8 - i) - 1;
            }
            if (b7 == c) {
                i2 = i8 - i3;
                break;
            }
            i8++;
        }
        i2 = 0;
        int i10 = (i2 - 9) - i9;
        OffsetTime of = OffsetTime.of(LocalTime.of(i4, i5, i6, i9 <= 0 ? 0 : DateUtils.readNanos(bArr, i9, i3 + 9)), i10 <= 1 ? ZoneOffset.UTC : ZoneOffset.of(new String(bArr, i3 + 9 + i9, i10)));
        this.offset += i2 + 2;
        next();
        boolean z = this.f12290ch == ',';
        this.comma = z;
        if (z) {
            next();
        }
        return of;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004a A[LOOP:1: B:15:0x0031->B:21:0x004a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x002b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0047 -> B:12:0x002b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0074 -> B:27:0x0062). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String readPattern() {
        /*
            r17 = this;
            r0 = r17
            char r1 = r0.f12290ch
            r2 = 47
            if (r1 != r2) goto L82
            byte[] r1 = r0.f12443v
            int r3 = r0.offset
            r4 = r3
        Ld:
            int r5 = r0.f12446y
            if (r4 >= r5) goto L19
            r5 = r1[r4]
            if (r5 != r2) goto L16
            goto L19
        L16:
            int r4 = r4 + 1
            goto Ld
        L19:
            java.lang.String r2 = new java.lang.String
            int r5 = r4 - r3
            java.nio.charset.Charset r6 = java.nio.charset.StandardCharsets.UTF_8
            r2.<init>(r1, r3, r5, r6)
            r3 = 1
            int r4 = r4 + r3
            int r5 = r0.f12446y
            r6 = 26
            if (r4 != r5) goto L2d
            r5 = r4
        L2b:
            r4 = r6
            goto L31
        L2d:
            int r5 = r4 + 1
            r4 = r1[r4]
        L31:
            r7 = 0
            r9 = 4294981376(0x100003700, double:2.1220027474E-314)
            r11 = 1
            r13 = 32
            if (r4 > r13) goto L54
            long r14 = r11 << r4
            long r14 = r14 & r9
            int r14 = (r14 > r7 ? 1 : (r14 == r7 ? 0 : -1))
            if (r14 == 0) goto L54
            int r4 = r0.f12446y
            if (r5 != r4) goto L4a
            goto L2b
        L4a:
            int r4 = r5 + 1
            r5 = r1[r5]
            r16 = r5
            r5 = r4
            r4 = r16
            goto L31
        L54:
            r14 = 44
            if (r4 != r14) goto L59
            goto L5a
        L59:
            r3 = 0
        L5a:
            r0.comma = r3
            if (r3 == 0) goto L7c
            int r3 = r0.f12446y
            if (r5 != r3) goto L64
        L62:
            r4 = r6
            goto L69
        L64:
            int r3 = r5 + 1
            r4 = r1[r5]
        L68:
            r5 = r3
        L69:
            if (r4 > r13) goto L7c
            long r14 = r11 << r4
            long r14 = r14 & r9
            int r3 = (r14 > r7 ? 1 : (r14 == r7 ? 0 : -1))
            if (r3 == 0) goto L7c
            int r3 = r0.f12446y
            if (r5 != r3) goto L77
            goto L62
        L77:
            int r3 = r5 + 1
            r4 = r1[r5]
            goto L68
        L7c:
            r0.offset = r5
            char r1 = (char) r4
            r0.f12290ch = r1
            return r2
        L82:
            com.alibaba.fastjson2.JSONException r0 = new com.alibaba.fastjson2.JSONException
            java.lang.String r1 = "illegal pattern"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readPattern():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005c A[LOOP:1: B:27:0x004e->B:32:0x005c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x006a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0059 -> B:20:0x0048). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String readReference() {
        /*
            r15 = this;
            int r0 = r15.f12438Z
            int r1 = r15.f12446y
            if (r0 != r1) goto L8
            r15 = 0
            return r15
        L8:
            byte[] r1 = r15.f12443v
            int r2 = r0 + 1
            r15.offset = r2
            r0 = r1[r0]
            char r0 = (char) r0
            r15.f12290ch = r0
            java.lang.String r0 = r15.readString()
            char r2 = r15.f12290ch
            int r3 = r15.offset
        L1b:
            r4 = 0
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            r8 = 1
            r10 = 32
            r11 = 26
            if (r2 > r10) goto L3f
            long r12 = r8 << r2
            long r12 = r12 & r6
            int r12 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r12 == 0) goto L3f
            int r2 = r15.f12446y
            if (r3 != r2) goto L37
            r2 = r11
            goto L1b
        L37:
            int r2 = r3 + 1
            r3 = r1[r3]
            r14 = r3
            r3 = r2
            r2 = r14
            goto L1b
        L3f:
            r12 = 125(0x7d, float:1.75E-43)
            if (r2 != r12) goto L97
            int r2 = r15.f12446y
            if (r3 != r2) goto L4a
            r2 = r3
        L48:
            r3 = r11
            goto L4e
        L4a:
            int r2 = r3 + 1
            r3 = r1[r3]
        L4e:
            if (r3 > r10) goto L64
            long r12 = r8 << r3
            long r12 = r12 & r6
            int r12 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r12 == 0) goto L64
            int r3 = r15.f12446y
            if (r2 != r3) goto L5c
            goto L48
        L5c:
            int r3 = r2 + 1
            r2 = r1[r2]
            r14 = r3
            r3 = r2
            r2 = r14
            goto L4e
        L64:
            r12 = 44
            if (r3 != r12) goto L6a
            r12 = 1
            goto L6b
        L6a:
            r12 = 0
        L6b:
            r15.comma = r12
            if (r12 == 0) goto L91
            int r3 = r15.f12446y
            if (r2 != r3) goto L76
            r3 = r2
            r2 = r11
            goto L7a
        L76:
            int r3 = r2 + 1
            r2 = r1[r2]
        L7a:
            r14 = r3
            r3 = r2
            r2 = r14
        L7d:
            if (r3 > r10) goto L91
            long r12 = r8 << r3
            long r12 = r12 & r6
            int r12 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r12 == 0) goto L91
            int r3 = r15.f12446y
            if (r2 != r3) goto L8c
            r3 = r11
            goto L7d
        L8c:
            int r3 = r2 + 1
            r2 = r1[r2]
            goto L7a
        L91:
            char r1 = (char) r3
            r15.f12290ch = r1
            r15.offset = r2
            return r0
        L97:
            com.alibaba.fastjson2.JSONException r15 = new com.alibaba.fastjson2.JSONException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "illegal reference : "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r15.<init>(r0)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readReference():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x018d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01b3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x01a7 -> B:70:0x018d). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readString() {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readString():java.lang.String");
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
    public final java.util.UUID readUUID() {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readUUID():java.util.UUID");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0033, code lost:
    
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0247, code lost:
    
        throw new com.alibaba.fastjson2.JSONException("malformed input around byte " + r9);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:50:0x01ae. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:87:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0167 A[LOOP:2: B:85:0x0151->B:90:0x0167, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x014b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x017b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0164 -> B:94:0x014b). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readValueHashCode() {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readValueHashCode():long");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0080 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0081  */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.time.ZonedDateTime readZonedDateTimeX(int r6) {
        /*
            r5 = this;
            boolean r0 = r5.isString()
            if (r0 == 0) goto L9b
            r0 = 19
            r1 = 0
            if (r6 >= r0) goto Lc
            return r1
        Lc:
            r0 = 30
            r2 = 90
            if (r6 != r0) goto L27
            byte[] r0 = r5.f12443v
            int r3 = r5.offset
            int r4 = r3 + 29
            r4 = r0[r4]
            if (r4 != r2) goto L27
            java.time.LocalDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime29(r0, r3)
            java.time.ZoneOffset r2 = java.time.ZoneOffset.UTC
            java.time.ZonedDateTime r0 = java.time.ZonedDateTime.of(r0, r2)
            goto L7e
        L27:
            r0 = 29
            if (r6 != r0) goto L40
            byte[] r0 = r5.f12443v
            int r3 = r5.offset
            int r4 = r3 + 28
            r4 = r0[r4]
            if (r4 != r2) goto L40
            java.time.LocalDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime28(r0, r3)
            java.time.ZoneOffset r2 = java.time.ZoneOffset.UTC
            java.time.ZonedDateTime r0 = java.time.ZonedDateTime.of(r0, r2)
            goto L7e
        L40:
            r0 = 28
            if (r6 != r0) goto L59
            byte[] r0 = r5.f12443v
            int r3 = r5.offset
            int r4 = r3 + 27
            r4 = r0[r4]
            if (r4 != r2) goto L59
            java.time.LocalDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime27(r0, r3)
            java.time.ZoneOffset r2 = java.time.ZoneOffset.UTC
            java.time.ZonedDateTime r0 = java.time.ZonedDateTime.of(r0, r2)
            goto L7e
        L59:
            r0 = 27
            if (r6 != r0) goto L72
            byte[] r0 = r5.f12443v
            int r3 = r5.offset
            int r4 = r3 + 26
            r4 = r0[r4]
            if (r4 != r2) goto L72
            java.time.LocalDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseLocalDateTime26(r0, r3)
            java.time.ZoneOffset r2 = java.time.ZoneOffset.UTC
            java.time.ZonedDateTime r0 = java.time.ZonedDateTime.of(r0, r2)
            goto L7e
        L72:
            byte[] r0 = r5.f12443v
            int r2 = r5.offset
            com.alibaba.fastjson2.JSONReader$Context r3 = r5.context
            java.time.ZoneId r3 = r3.f12306o
            java.time.ZonedDateTime r0 = com.alibaba.fastjson2.util.DateUtils.parseZonedDateTime(r0, r2, r6, r3)
        L7e:
            if (r0 != 0) goto L81
            return r1
        L81:
            int r1 = r5.offset
            r2 = 1
            int r6 = r6 + r2
            int r1 = r1 + r6
            r5.offset = r1
            r5.next()
            char r6 = r5.f12290ch
            r1 = 44
            if (r6 != r1) goto L92
            goto L93
        L92:
            r2 = 0
        L93:
            r5.comma = r2
            if (r2 == 0) goto L9a
            r5.next()
        L9a:
            return r0
        L9b:
            com.alibaba.fastjson2.JSONException r5 = new com.alibaba.fastjson2.JSONException
            java.lang.String r6 = "date only support string input"
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.readZonedDateTimeX(int):java.time.ZonedDateTime");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0031, code lost:
    
        if (r1 == 10) goto L17;
     */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void skipComment() {
        /*
            r12 = this;
            int r0 = r12.offset
            int r1 = r0 + 1
            int r2 = r12.f12446y
            if (r1 >= r2) goto L77
            byte[] r2 = r12.f12443v
            r0 = r2[r0]
            r3 = 42
            r4 = 0
            r5 = 47
            r6 = 1
            if (r0 != r3) goto L16
            r0 = r6
            goto L19
        L16:
            if (r0 != r5) goto L76
            r0 = r4
        L19:
            int r7 = r1 + 1
            r1 = r2[r1]
        L1d:
            if (r0 == 0) goto L2f
            if (r1 != r3) goto L2d
            int r1 = r12.f12446y
            if (r7 > r1) goto L2d
            r1 = r2[r7]
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
            int r0 = r12.f12446y
            if (r7 < r0) goto L3d
            goto L63
        L3d:
            r0 = r2[r7]
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
            int r0 = r12.f12446y
            if (r7 < r0) goto L59
            goto L5d
        L59:
            r0 = r2[r7]
            goto L3f
        L5c:
            r8 = r0
        L5d:
            int r7 = r7 + r6
            goto L63
        L5f:
            int r1 = r12.f12446y
            if (r7 < r1) goto L6e
        L63:
            char r0 = (char) r8
            r12.f12290ch = r0
            r12.offset = r7
            if (r8 != r5) goto L6d
            r12.skipComment()
        L6d:
            return
        L6e:
            int r1 = r7 + 1
            r7 = r2[r7]
            r11 = r7
            r7 = r1
            r1 = r11
            goto L1d
        L76:
            return
        L77:
            com.alibaba.fastjson2.JSONException r0 = new com.alibaba.fastjson2.JSONException
            java.lang.String r12 = r12.info()
            r0.<init>(r12)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.skipComment():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0066 A[LOOP:1: B:26:0x004f->B:32:0x0066, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0049 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008b A[LOOP:2: B:42:0x007d->B:47:0x008b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0099  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0063 -> B:27:0x0049). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0088 -> B:40:0x0077). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean skipName() {
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
            byte[] r5 = r15.f12443v
        L27:
            int r6 = r1 + 1
            r1 = r5[r1]
            r7 = 92
            if (r1 != r7) goto L40
            r1 = r5[r6]
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
            if (r1 != r0) goto L9e
            int r0 = r15.f12446y
            r1 = 26
            if (r6 != r0) goto L4b
            r0 = r6
        L49:
            r6 = r1
            goto L4f
        L4b:
            int r0 = r6 + 1
            r6 = r5[r6]
        L4f:
            r7 = 4294981376(0x100003700, double:2.1220027474E-314)
            r9 = 1
            r11 = 32
            if (r6 > r11) goto L6e
            long r12 = r9 << r6
            long r12 = r12 & r7
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L6e
            int r6 = r15.f12446y
            if (r0 != r6) goto L66
            goto L49
        L66:
            int r6 = r0 + 1
            r0 = r5[r0]
            r14 = r6
            r6 = r0
            r0 = r14
            goto L4f
        L6e:
            r12 = 58
            if (r6 != r12) goto L99
            int r6 = r15.f12446y
            if (r0 != r6) goto L79
            r6 = r0
        L77:
            r0 = r1
            goto L7d
        L79:
            int r6 = r0 + 1
            r0 = r5[r0]
        L7d:
            if (r0 > r11) goto L93
            long r12 = r9 << r0
            long r12 = r12 & r7
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L93
            int r0 = r15.f12446y
            if (r6 != r0) goto L8b
            goto L77
        L8b:
            int r0 = r6 + 1
            r6 = r5[r6]
            r14 = r6
            r6 = r0
            r0 = r14
            goto L7d
        L93:
            r15.offset = r6
            char r0 = (char) r0
            r15.f12290ch = r0
            return r4
        L99:
            com.alibaba.fastjson2.JSONException r15 = com.alibaba.fastjson2.JSONReader.m7287j0(r6)
            throw r15
        L9e:
            r1 = r6
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.skipName():boolean");
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:96)
        */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0259 -> B:24:0x004f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00c0 -> B:25:0x0245). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    public final void skipValue() {
        /*
            Method dump skipped, instructions count: 718
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.skipValue():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0025 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0041 -> B:15:0x0025). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean nextIfMatchIdent(char r8, char r9, char r10, char r11) {
        /*
            r7 = this;
            char r0 = r7.f12290ch
            r1 = 0
            if (r0 == r8) goto L6
            return r1
        L6:
            byte[] r8 = r7.f12443v
            int r0 = r7.offset
            int r2 = r0 + 3
            int r3 = r7.f12446y
            if (r2 > r3) goto L71
            r4 = r8[r0]
            if (r4 != r9) goto L71
            int r9 = r0 + 1
            r9 = r8[r9]
            if (r9 != r10) goto L71
            int r0 = r0 + 2
            r9 = r8[r0]
            if (r9 == r11) goto L21
            goto L71
        L21:
            r9 = 26
            if (r2 != r3) goto L27
        L25:
            r11 = r9
            goto L2c
        L27:
            int r10 = r2 + 1
            r11 = r8[r2]
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
            int r10 = r7.f12446y
            if (r2 != r10) goto L44
            goto L25
        L44:
            int r10 = r2 + 1
            r11 = r8[r2]
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
            char r8 = (char) r11
            r7.f12290ch = r8
            r7 = 1
            return r7
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfMatchIdent(char, char, char, char):boolean");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[LOOP:0: B:10:0x0042->B:28:0x0070, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003e A[EDGE_INSN: B:29:0x003e->B:8:0x003e BREAK  A[LOOP:0: B:10:0x0042->B:28:0x0070], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x006d -> B:8:0x003e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1739i(com.alibaba.fastjson2.JSONReader.Context r7, java.nio.ByteBuffer r8) {
        /*
            r6 = this;
            r0 = 0
            r6.<init>(r7, r0)
            java.lang.Thread r7 = java.lang.Thread.currentThread()
            int r7 = java.lang.System.identityHashCode(r7)
            com.alibaba.fastjson2.JSONFactory$b[] r1 = com.alibaba.fastjson2.JSONFactory.f12217A
            int r2 = r1.length
            r3 = 1
            int r2 = r2 - r3
            r7 = r7 & r2
            r7 = r1[r7]
            r6.f12442u0 = r7
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater<com.alibaba.fastjson2.JSONFactory$b, byte[]> r1 = com.alibaba.fastjson2.JSONFactory.f12220D
            r2 = 0
            java.lang.Object r7 = r1.getAndSet(r7, r2)
            byte[] r7 = (byte[]) r7
            int r1 = r8.remaining()
            if (r7 == 0) goto L28
            int r4 = r7.length
            if (r4 >= r1) goto L2a
        L28:
            byte[] r7 = new byte[r1]
        L2a:
            r8.get(r7, r0, r1)
            r6.f12440q0 = r7
            r6.f12443v = r7
            r6.f12444w = r1
            r6.f12439k0 = r2
            r6.f12445x = r0
            r6.f12446y = r1
            r8 = 26
            if (r1 > 0) goto L40
            r3 = r0
        L3e:
            r0 = r8
            goto L42
        L40:
            r0 = r7[r0]
        L42:
            if (r0 == 0) goto L6b
            r1 = 32
            if (r0 > r1) goto L58
            r1 = 1
            long r1 = r1 << r0
            r4 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r1 = r1 & r4
            r4 = 0
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 == 0) goto L58
            goto L6b
        L58:
            if (r0 >= 0) goto L5e
            r6.next()
            return
        L5e:
            r6.offset = r3
            char r7 = (char) r0
            r6.f12290ch = r7
            r7 = 47
            if (r0 != r7) goto L6a
            r6.skipComment()
        L6a:
            return
        L6b:
            int r0 = r6.f12446y
            if (r3 != r0) goto L70
            goto L3e
        L70:
            int r0 = r3 + 1
            r1 = r7[r3]
            r3 = r0
            r0 = r1
            goto L42
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.<init>(com.alibaba.fastjson2.JSONReader$Context, java.nio.ByteBuffer):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x002b A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0047 -> B:17:0x002b). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean nextIfMatchIdent(char r8, char r9, char r10, char r11, char r12) {
        /*
            r7 = this;
            char r0 = r7.f12290ch
            r1 = 0
            if (r0 == r8) goto L6
            return r1
        L6:
            byte[] r8 = r7.f12443v
            int r0 = r7.offset
            int r2 = r0 + 4
            int r3 = r7.f12446y
            if (r2 > r3) goto L77
            r4 = r8[r0]
            if (r4 != r9) goto L77
            int r9 = r0 + 1
            r9 = r8[r9]
            if (r9 != r10) goto L77
            int r9 = r0 + 2
            r9 = r8[r9]
            if (r9 != r11) goto L77
            int r0 = r0 + 3
            r9 = r8[r0]
            if (r9 == r12) goto L27
            goto L77
        L27:
            r9 = 26
            if (r2 != r3) goto L2d
        L2b:
            r11 = r9
            goto L32
        L2d:
            int r10 = r2 + 1
            r11 = r8[r2]
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
            int r10 = r7.f12446y
            if (r2 != r10) goto L4a
            goto L2b
        L4a:
            int r10 = r2 + 1
            r11 = r8[r2]
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
            char r8 = (char) r11
            r7.f12290ch = r8
            r7 = 1
            return r7
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfMatchIdent(char, char, char, char, char):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0031 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x004d -> B:19:0x0031). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean nextIfMatchIdent(char r6, char r7, char r8, char r9, char r10, char r11) {
        /*
            r5 = this;
            char r0 = r5.f12290ch
            r1 = 0
            if (r0 == r6) goto L6
            return r1
        L6:
            byte[] r6 = r5.f12443v
            int r0 = r5.offset
            int r2 = r0 + 5
            int r3 = r5.f12446y
            if (r2 > r3) goto L7d
            r4 = r6[r0]
            if (r4 != r7) goto L7d
            int r7 = r0 + 1
            r7 = r6[r7]
            if (r7 != r8) goto L7d
            int r7 = r0 + 2
            r7 = r6[r7]
            if (r7 != r9) goto L7d
            int r7 = r0 + 3
            r7 = r6[r7]
            if (r7 != r10) goto L7d
            int r0 = r0 + 4
            r7 = r6[r0]
            if (r7 == r11) goto L2d
            goto L7d
        L2d:
            r7 = 26
            if (r2 != r3) goto L33
        L31:
            r9 = r7
            goto L38
        L33:
            int r8 = r2 + 1
            r9 = r6[r2]
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
            int r8 = r5.f12446y
            if (r2 != r8) goto L50
            goto L31
        L50:
            int r8 = r2 + 1
            r9 = r6[r2]
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
            char r6 = (char) r9
            r5.f12290ch = r6
            r5 = 1
            return r5
        L7d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.nextIfMatchIdent(char, char, char, char, char, char):boolean");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005b A[LOOP:0: B:6:0x002d->B:24:0x005b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0027 A[EDGE_INSN: B:25:0x0027->B:4:0x0027 BREAK  A[LOOP:0: B:6:0x002d->B:24:0x005b], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0058 -> B:4:0x0027). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1739i(com.alibaba.fastjson2.JSONReader.Context r6, java.lang.String r7, byte[] r8, int r9, int r10) {
        /*
            r5 = this;
            r7 = 0
            r5.<init>(r6, r7)
            java.lang.Thread r6 = java.lang.Thread.currentThread()
            int r6 = java.lang.System.identityHashCode(r6)
            com.alibaba.fastjson2.JSONFactory$b[] r7 = com.alibaba.fastjson2.JSONFactory.f12217A
            int r0 = r7.length
            int r0 = r0 + (-1)
            r6 = r6 & r0
            r6 = r7[r6]
            r5.f12442u0 = r6
            r5.f12443v = r8
            r5.f12444w = r10
            r6 = 0
            r5.f12439k0 = r6
            r5.f12445x = r9
            int r10 = r10 + r9
            r5.f12446y = r10
            r6 = 26
            if (r9 < r10) goto L29
            r7 = r9
        L27:
            r9 = r6
            goto L2d
        L29:
            int r7 = r9 + 1
            r9 = r8[r9]
        L2d:
            if (r9 == 0) goto L56
            r10 = 32
            if (r9 > r10) goto L43
            r0 = 1
            long r0 = r0 << r9
            r2 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r0 = r0 & r2
            r2 = 0
            int r10 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r10 == 0) goto L43
            goto L56
        L43:
            if (r9 >= 0) goto L49
            r5.next()
            return
        L49:
            r5.offset = r7
            char r6 = (char) r9
            r5.f12290ch = r6
            r6 = 47
            if (r9 != r6) goto L55
            r5.skipComment()
        L55:
            return
        L56:
            int r9 = r5.f12446y
            if (r7 != r9) goto L5b
            goto L27
        L5b:
            int r9 = r7 + 1
            r7 = r8[r7]
            r4 = r9
            r9 = r7
            r7 = r4
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1739i.<init>(com.alibaba.fastjson2.JSONReader$Context, java.lang.String, byte[], int, int):void");
    }
}
