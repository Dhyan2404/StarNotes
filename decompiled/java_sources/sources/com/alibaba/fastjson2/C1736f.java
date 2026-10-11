package com.alibaba.fastjson2;

import com.alibaba.fastjson2.JSONFactory;
import com.alibaba.fastjson2.JSONReader;
import com.alibaba.fastjson2.util.JDKUtils;
import com.alibaba.fastjson2.util.NameCacheEntry;
import java.io.InputStream;
import sun.misc.Unsafe;

/* renamed from: com.alibaba.fastjson2.f */
/* loaded from: classes3.dex */
public final class C1736f extends C1739i {

    /* renamed from: v0 */
    public final String f12376v0;

    public C1736f(JSONReader.Context context, String str, byte[] bArr, int i, int i2) {
        super(context, str, bArr, i, i2);
        this.f12376v0 = str;
        this.f12437Q = true;
    }

    /* renamed from: s0 */
    public static long m7351s0(byte[] bArr, int i) {
        return JDKUtils.BIG_ENDIAN ? JDKUtils.UNSAFE.getLong(bArr, Unsafe.ARRAY_BYTE_BASE_OFFSET + i) : (bArr[i + 7] << 56) + ((bArr[i + 6] & 255) << 48) + ((bArr[i + 5] & 255) << 40) + ((bArr[i + 4] & 255) << 32) + ((bArr[i + 3] & 255) << 24) + ((bArr[i + 2] & 255) << 16) + ((bArr[i + 1] & 255) << 8) + (bArr[i] & 255);
    }

    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
    public String getFieldName() {
        byte[] bArr = this.f12443v;
        int i = this.f12435J;
        int i2 = this.f12447z;
        int i3 = i - i2;
        if (!this.nameEscape) {
            String str = this.f12376v0;
            return str != null ? str.substring(i2, i) : m7411q0(i2, i3);
        }
        char[] cArr = this.f12441t0;
        if (cArr == null) {
            cArr = JSONFactory.f12219C.getAndSet(this.f12442u0, null);
            this.f12441t0 = cArr;
        }
        if (cArr == null || cArr.length < this.f12436O) {
            cArr = new char[this.f12436O];
            this.f12441t0 = cArr;
        }
        int i4 = this.f12447z;
        int i5 = 0;
        while (i4 < this.f12435J) {
            char c = (char) (bArr[i4] & 255);
            if (c == '\\') {
                i4++;
                c = (char) bArr[i4];
                if (c != '*' && c != '+' && c != '@') {
                    if (c == 'u') {
                        byte b = bArr[i4 + 1];
                        byte b2 = bArr[i4 + 2];
                        byte b3 = bArr[i4 + 3];
                        i4 += 4;
                        c = JSONReader.m7284M(b, b2, b3, bArr[i4]);
                    } else if (c != 'x') {
                        switch (c) {
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
                        byte b4 = bArr[i4 + 1];
                        i4 += 2;
                        c = JSONReader.m7283I(b4, bArr[i4]);
                    }
                }
            } else if (c == '\"') {
                return new String(cArr, 0, this.f12436O);
            }
            cArr[i5] = c;
            i4++;
            i5++;
        }
        return new String(cArr, 0, this.f12436O);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:69:0x0080. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00da  */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getNameHashCodeLCase() {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1736f.getNameHashCodeLCase():long");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003d A[LOOP:0: B:6:0x0011->B:23:0x003d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x000b A[EDGE_INSN: B:24:0x000b->B:4:0x000b BREAK  A[LOOP:0: B:6:0x0011->B:23:0x003d], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x003a -> B:4:0x000b). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
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
            if (r1 == 0) goto L38
            if (r1 <= 0) goto L29
            r4 = 32
            if (r1 > r4) goto L29
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L29
            goto L38
        L29:
            r9.offset = r2
            r0 = r1 & 255(0xff, float:3.57E-43)
            char r0 = (char) r0
            r9.f12290ch = r0
            r0 = 47
            if (r1 != r0) goto L37
            r9.skipComment()
        L37:
            return
        L38:
            int r1 = r9.f12446y
            if (r2 != r1) goto L3d
            goto Lb
        L3d:
            int r1 = r2 + 1
            r2 = r0[r2]
            r8 = r2
            r2 = r1
            r1 = r8
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1736f.next():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0050 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005c A[LOOP:0: B:17:0x0043->B:23:0x005c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x008a A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0059 -> B:15:0x003d). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
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
            if (r1 != r5) goto L95
        L31:
            if (r3 >= r2) goto L95
            r5 = r4[r3]
            if (r5 != r1) goto L95
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
            r0.offset = r5
            char r1 = (char) r3
            r0.f12290ch = r1
            return r7
        L95:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1736f.nextIfNullOrEmptyString():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044 A[LOOP:0: B:10:0x0019->B:24:0x0044, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0013 A[EDGE_INSN: B:25:0x0013->B:8:0x0013 BREAK  A[LOOP:0: B:10:0x0019->B:24:0x0044], SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0041 -> B:9:0x0013). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
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
            if (r1 == 0) goto L3f
            r4 = 32
            if (r1 > r4) goto L2f
            r4 = 1
            long r4 = r4 << r1
            r6 = 4294981376(0x100003700, double:2.1220027474E-314)
            long r4 = r4 & r6
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L2f
            goto L3f
        L2f:
            r0 = r1 & 255(0xff, float:3.57E-43)
            char r0 = (char) r0
            r9.f12290ch = r0
            r9.offset = r2
            r0 = 47
            if (r1 != r0) goto L3d
            r9.skipComment()
        L3d:
            r9 = 1
            return r9
        L3f:
            int r1 = r9.f12446y
            if (r2 != r1) goto L44
            goto L13
        L44:
            int r1 = r2 + 1
            r2 = r0[r2]
            r8 = r2
            r2 = r1
            r1 = r8
            goto L19
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1736f.nextIfObjectStart():boolean");
    }

    @Override // com.alibaba.fastjson2.C1739i
    /* renamed from: r0 */
    public void mo7352r0() {
        int i;
        String m7411q0;
        char c = this.f12290ch;
        int i2 = this.offset;
        this.valueEscape = false;
        int i3 = 0;
        while (true) {
            byte[] bArr = this.f12443v;
            i = this.offset;
            byte b = bArr[i];
            if (b == 92) {
                this.valueEscape = true;
                int i4 = i + 1;
                this.offset = i4;
                byte b2 = bArr[i4];
                if (b2 == 117) {
                    this.offset = i4 + 4;
                } else if (b2 == 120) {
                    this.offset = i4 + 2;
                }
                this.offset++;
            } else if (b == c) {
                break;
            } else {
                this.offset = i + 1;
            }
            i3++;
        }
        if (this.valueEscape) {
            char[] cArr = new char[i3];
            this.offset = i2;
            int i5 = 0;
            while (true) {
                byte[] bArr2 = this.f12443v;
                int i6 = this.offset;
                char c2 = (char) (bArr2[i6] & 255);
                if (c2 == '\\') {
                    int i7 = i6 + 1;
                    this.offset = i7;
                    c2 = (char) bArr2[i7];
                    if (c2 != '\"' && c2 != '\\') {
                        if (c2 == 'u') {
                            int i8 = i7 + 1;
                            byte b3 = bArr2[i8];
                            int i9 = i8 + 1;
                            byte b4 = bArr2[i9];
                            int i10 = i9 + 1;
                            byte b5 = bArr2[i10];
                            int i11 = i10 + 1;
                            this.offset = i11;
                            c2 = JSONReader.m7284M(b3, b4, b5, bArr2[i11]);
                        } else if (c2 != 'x') {
                            c2 = m7313H(c2);
                        } else {
                            int i12 = i7 + 1;
                            byte b6 = bArr2[i12];
                            int i13 = i12 + 1;
                            this.offset = i13;
                            c2 = JSONReader.m7283I(b6, bArr2[i13]);
                        }
                    }
                } else if (c2 == '\"') {
                    break;
                }
                cArr[i5] = c2;
                this.offset++;
                i5++;
            }
            m7411q0 = new String(cArr);
        } else {
            m7411q0 = m7411q0(i2, i - i2);
        }
        byte[] bArr3 = this.f12443v;
        int i14 = this.offset + 1;
        this.offset = i14;
        byte b7 = bArr3[i14];
        while (b7 <= 32 && ((1 << b7) & JSONReader.f12289u) != 0) {
            byte[] bArr4 = this.f12443v;
            int i15 = this.offset + 1;
            this.offset = i15;
            b7 = bArr4[i15];
        }
        boolean z = b7 == 44;
        this.comma = z;
        if (z) {
            this.offset++;
            next();
        } else {
            this.offset++;
            this.f12290ch = (char) b7;
        }
        this.stringValue = m7411q0;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:55:0x00c6. Please report as an issue. */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
    public String readFieldName() {
        int i;
        int i2;
        byte b;
        long j;
        long j2;
        byte b2;
        long j3;
        long j4;
        long j5;
        long j6;
        byte b3;
        long j7;
        long j8;
        char c = this.f12290ch;
        if (c != '\"' && c != '\'') {
            if ((this.context.features & JSONReader.Feature.AllowUnQuotedFieldNames.mask) == 0 || !JSONReader.m7285f0(c)) {
                return null;
            }
            return readFieldNameUnquote();
        }
        byte[] bArr = this.f12443v;
        this.nameEscape = false;
        int i3 = this.offset;
        this.f12447z = i3;
        int i4 = 0;
        int i5 = i3;
        while (true) {
            if (i5 >= this.f12446y) {
                break;
            }
            byte b4 = bArr[i5];
            if (b4 == 92) {
                this.nameEscape = true;
                byte b5 = bArr[i5 + 1];
                i5 += b5 == 117 ? 6 : b5 == 120 ? 4 : 2;
            } else if (b4 == c) {
                this.f12436O = i4;
                this.f12435J = i5;
                int i6 = i5 + 1;
                byte b6 = bArr[i6];
                while (b6 <= 32 && ((1 << b6) & JSONReader.f12289u) != 0) {
                    i6++;
                    b6 = bArr[i6];
                }
                if (b6 != 58) {
                    throw JSONReader.m7288k0(i6, this.f12290ch);
                }
                i5 = i6 + 1;
                if (i5 >= this.f12446y) {
                    this.f12290ch = (char) 26;
                    throw JSONReader.m7288k0(i5, 26);
                }
                byte b7 = bArr[i5];
                while (b7 <= 32 && ((1 << b7) & JSONReader.f12289u) != 0) {
                    i5++;
                    b7 = bArr[i5];
                }
                this.offset = i5 + 1;
                this.f12290ch = (char) b7;
            } else {
                i5++;
            }
            i4++;
        }
        int i7 = this.f12435J;
        if (i7 < i3) {
            throw JSONReader.m7288k0(i5, this.f12290ch);
        }
        if (!this.nameEscape) {
            int i8 = i7 - i3;
            switch (i8) {
                case 1:
                    i = bArr[i3] & 255;
                    j = i;
                    j3 = j;
                    j4 = -1;
                    j8 = -1;
                    break;
                case 2:
                    i2 = (bArr[i3 + 1] & 255) << 8;
                    b = bArr[i3];
                    i = i2 + (b & 255);
                    j = i;
                    j3 = j;
                    j4 = -1;
                    j8 = -1;
                    break;
                case 3:
                    i2 = (bArr[i3 + 2] << 16) + ((bArr[i3 + 1] & 255) << 8);
                    b = bArr[i3];
                    i = i2 + (b & 255);
                    j = i;
                    j3 = j;
                    j4 = -1;
                    j8 = -1;
                    break;
                case 4:
                    i2 = (bArr[i3 + 3] << 24) + ((bArr[i3 + 2] & 255) << 16) + ((bArr[i3 + 1] & 255) << 8);
                    b = bArr[i3];
                    i = i2 + (b & 255);
                    j = i;
                    j3 = j;
                    j4 = -1;
                    j8 = -1;
                    break;
                case 5:
                    j2 = (bArr[i3 + 4] << 32) + ((bArr[i3 + 3] & 255) << 24) + ((bArr[i3 + 2] & 255) << 16) + ((bArr[i3 + 1] & 255) << 8);
                    b2 = bArr[i3];
                    j = j2 + (b2 & 255);
                    j3 = j;
                    j4 = -1;
                    j8 = -1;
                    break;
                case 6:
                    j2 = (bArr[i3 + 5] << 40) + ((bArr[i3 + 4] & 255) << 32) + ((bArr[i3 + 3] & 255) << 24) + ((bArr[i3 + 2] & 255) << 16) + ((bArr[i3 + 1] & 255) << 8);
                    b2 = bArr[i3];
                    j = j2 + (b2 & 255);
                    j3 = j;
                    j4 = -1;
                    j8 = -1;
                    break;
                case 7:
                    j2 = (bArr[i3 + 6] << 48) + ((bArr[i3 + 5] & 255) << 40) + ((bArr[i3 + 4] & 255) << 32) + ((bArr[i3 + 3] & 255) << 24) + ((bArr[i3 + 2] & 255) << 16) + ((bArr[i3 + 1] & 255) << 8);
                    b2 = bArr[i3];
                    j = j2 + (b2 & 255);
                    j3 = j;
                    j4 = -1;
                    j8 = -1;
                    break;
                case 8:
                    j2 = (bArr[i3 + 7] << 56) + ((bArr[i3 + 6] & 255) << 48) + ((bArr[i3 + 5] & 255) << 40) + ((bArr[i3 + 4] & 255) << 32) + ((bArr[i3 + 3] & 255) << 24) + ((bArr[i3 + 2] & 255) << 16) + ((bArr[i3 + 1] & 255) << 8);
                    b2 = bArr[i3];
                    j = j2 + (b2 & 255);
                    j3 = j;
                    j4 = -1;
                    j8 = -1;
                    break;
                case 9:
                    j5 = bArr[i3];
                    j6 = (bArr[i3 + 8] << 56) + ((bArr[i3 + 7] & 255) << 48) + ((bArr[i3 + 6] & 255) << 40) + ((bArr[i3 + 5] & 255) << 32) + ((bArr[i3 + 4] & 255) << 24) + ((bArr[i3 + 3] & 255) << 16) + ((bArr[i3 + 2] & 255) << 8);
                    b3 = bArr[i3 + 1];
                    j7 = j6 + (b3 & 255);
                    j3 = j5;
                    j8 = j7;
                    j4 = -1;
                    break;
                case 10:
                    j5 = (bArr[i3 + 1] << 8) + bArr[i3];
                    j6 = (bArr[i3 + 9] << 56) + ((bArr[i3 + 8] & 255) << 48) + ((bArr[i3 + 7] & 255) << 40) + ((bArr[i3 + 6] & 255) << 32) + ((bArr[i3 + 5] & 255) << 24) + ((bArr[i3 + 4] & 255) << 16) + ((bArr[i3 + 3] & 255) << 8);
                    b3 = bArr[i3 + 2];
                    j7 = j6 + (b3 & 255);
                    j3 = j5;
                    j8 = j7;
                    j4 = -1;
                    break;
                case 11:
                    j5 = (bArr[i3 + 2] << 16) + (bArr[i3 + 1] << 8) + bArr[i3];
                    j6 = (bArr[i3 + 10] << 56) + ((bArr[i3 + 9] & 255) << 48) + ((bArr[i3 + 8] & 255) << 40) + ((bArr[i3 + 7] & 255) << 32) + ((bArr[i3 + 6] & 255) << 24) + ((bArr[i3 + 5] & 255) << 16) + ((bArr[i3 + 4] & 255) << 8);
                    b3 = bArr[i3 + 3];
                    j7 = j6 + (b3 & 255);
                    j3 = j5;
                    j8 = j7;
                    j4 = -1;
                    break;
                case 12:
                    j5 = (bArr[i3 + 3] << 24) + (bArr[i3 + 2] << 16) + (bArr[i3 + 1] << 8) + bArr[i3];
                    j6 = (bArr[i3 + 11] << 56) + ((bArr[i3 + 10] & 255) << 48) + ((bArr[i3 + 9] & 255) << 40) + ((bArr[i3 + 8] & 255) << 32) + ((bArr[i3 + 7] & 255) << 24) + ((bArr[i3 + 6] & 255) << 16) + ((bArr[i3 + 5] & 255) << 8);
                    b3 = bArr[i3 + 4];
                    j7 = j6 + (b3 & 255);
                    j3 = j5;
                    j8 = j7;
                    j4 = -1;
                    break;
                case 13:
                    j5 = (bArr[i3 + 4] << 32) + (bArr[i3 + 3] << 24) + (bArr[i3 + 2] << 16) + (bArr[i3 + 1] << 8) + bArr[i3];
                    j6 = (bArr[i3 + 12] << 56) + ((bArr[i3 + 11] & 255) << 48) + ((bArr[i3 + 10] & 255) << 40) + ((bArr[i3 + 9] & 255) << 32) + ((bArr[i3 + 8] & 255) << 24) + ((bArr[i3 + 7] & 255) << 16) + ((bArr[i3 + 6] & 255) << 8);
                    b3 = bArr[i3 + 5];
                    j7 = j6 + (b3 & 255);
                    j3 = j5;
                    j8 = j7;
                    j4 = -1;
                    break;
                case 14:
                    j5 = (bArr[i3 + 5] << 40) + ((bArr[i3 + 4] & 255) << 32) + ((bArr[i3 + 3] & 255) << 24) + ((bArr[i3 + 2] & 255) << 16) + ((bArr[i3 + 1] & 255) << 8) + (bArr[i3] & 255);
                    j6 = (bArr[i3 + 13] << 56) + ((bArr[i3 + 12] & 255) << 48) + ((bArr[i3 + 11] & 255) << 40) + ((bArr[i3 + 10] & 255) << 32) + ((bArr[i3 + 9] & 255) << 24) + ((bArr[i3 + 8] & 255) << 16) + ((bArr[i3 + 7] & 255) << 8);
                    b3 = bArr[i3 + 6];
                    j7 = j6 + (b3 & 255);
                    j3 = j5;
                    j8 = j7;
                    j4 = -1;
                    break;
                case 15:
                    j5 = (bArr[i3 + 6] << 48) + ((bArr[i3 + 5] & 255) << 40) + ((bArr[i3 + 4] & 255) << 32) + ((bArr[i3 + 3] & 255) << 24) + ((bArr[i3 + 2] & 255) << 16) + ((bArr[i3 + 1] & 255) << 8) + (bArr[i3] & 255);
                    j6 = (bArr[i3 + 14] << 56) + ((bArr[i3 + 13] & 255) << 48) + ((bArr[i3 + 12] & 255) << 40) + ((bArr[i3 + 11] & 255) << 32) + ((bArr[i3 + 10] & 255) << 24) + ((bArr[i3 + 9] & 255) << 16) + ((bArr[i3 + 8] & 255) << 8);
                    b3 = bArr[i3 + 7];
                    j7 = j6 + (b3 & 255);
                    j3 = j5;
                    j8 = j7;
                    j4 = -1;
                    break;
                case 16:
                    j5 = (bArr[i3 + 7] << 56) + ((bArr[i3 + 6] & 255) << 48) + ((bArr[i3 + 5] & 255) << 40) + ((bArr[i3 + 4] & 255) << 32) + ((bArr[i3 + 3] & 255) << 24) + ((bArr[i3 + 2] & 255) << 16) + ((bArr[i3 + 1] & 255) << 8) + (bArr[i3] & 255);
                    j7 = (bArr[i3 + 15] << 56) + ((bArr[i3 + 14] & 255) << 48) + ((bArr[i3 + 13] & 255) << 40) + ((bArr[i3 + 12] & 255) << 32) + ((bArr[i3 + 11] & 255) << 24) + ((bArr[i3 + 10] & 255) << 16) + ((bArr[i3 + 9] & 255) << 8) + (bArr[i3 + 8] & 255);
                    j3 = j5;
                    j8 = j7;
                    j4 = -1;
                    break;
                default:
                    j4 = -1;
                    j3 = -1;
                    j8 = -1;
                    break;
            }
            if (j3 != j4) {
                if (j8 != j4) {
                    long j9 = j3 ^ j8;
                    int i9 = (int) (j9 ^ (j9 >>> 32));
                    JSONFactory.C1725e[] c1725eArr = JSONFactory.f12234j;
                    int length = i9 & (c1725eArr.length - 1);
                    JSONFactory.C1725e c1725e = c1725eArr[length];
                    if (c1725e == null) {
                        char[] cArr = new char[i8];
                        for (int i10 = 0; i10 < i8; i10++) {
                            cArr[i10] = (char) (bArr[i3 + i10] & 255);
                        }
                        String str = new String(cArr);
                        JSONFactory.f12234j[length] = new JSONFactory.C1725e(str, j3, j8);
                        return str;
                    }
                    if (c1725e.f12254b == j3 && c1725e.f12255c == j8) {
                        return c1725e.f12253a;
                    }
                } else {
                    NameCacheEntry[] nameCacheEntryArr = JSONFactory.f12233i;
                    int length2 = ((int) ((j3 >>> 32) ^ j3)) & (nameCacheEntryArr.length - 1);
                    NameCacheEntry nameCacheEntry = nameCacheEntryArr[length2];
                    if (nameCacheEntry == null) {
                        char[] cArr2 = new char[i8];
                        for (int i11 = 0; i11 < i8; i11++) {
                            cArr2[i11] = (char) (bArr[i3 + i11] & 255);
                        }
                        String str2 = new String(cArr2);
                        JSONFactory.f12233i[length2] = new NameCacheEntry(str2, j3);
                        return str2;
                    }
                    if (nameCacheEntry.value == j3) {
                        return nameCacheEntry.name;
                    }
                }
            }
        }
        return getFieldName();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:60:0x026b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0364 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0362 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02e3  */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readFieldNameHashCode() {
        /*
            Method dump skipped, instructions count: 1002
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1736f.readFieldNameHashCode():long");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0047. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x004a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x004d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a3 A[FALL_THROUGH, PHI: r2 r8
      0x00a3: PHI (r2v40 char) = 
      (r2v39 char)
      (r2v39 char)
      (r2v39 char)
      (r2v39 char)
      (r2v43 char)
      (r2v45 char)
      (r2v39 char)
      (r2v39 char)
      (r2v39 char)
      (r2v39 char)
      (r2v46 char)
     binds: [B:24:0x005d, B:25:0x005f, B:27:0x0063, B:28:0x0065, B:41:0x008f, B:40:0x0082, B:34:0x0071, B:36:0x0075, B:37:0x0077, B:38:0x007a, B:39:0x007d] A[DONT_GENERATE, DONT_INLINE]
      0x00a3: PHI (r8v23 int) = 
      (r8v22 int)
      (r8v22 int)
      (r8v22 int)
      (r8v22 int)
      (r8v25 int)
      (r8v26 int)
      (r8v22 int)
      (r8v22 int)
      (r8v22 int)
      (r8v22 int)
      (r8v22 int)
     binds: [B:24:0x005d, B:25:0x005f, B:27:0x0063, B:28:0x0065, B:41:0x008f, B:40:0x0082, B:34:0x0071, B:36:0x0075, B:37:0x0077, B:38:0x007a, B:39:0x007d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a8 A[FALL_THROUGH, PHI: r5 r8
      0x01a8: PHI (r5v28 int) = (r5v27 int), (r5v32 int), (r5v34 int), (r5v27 int), (r5v27 int), (r5v27 int), (r5v27 int), (r5v35 int) binds: [B:80:0x01a2, B:79:0x018d, B:78:0x0180, B:65:0x016f, B:67:0x0173, B:68:0x0175, B:69:0x0178, B:70:0x017b] A[DONT_GENERATE, DONT_INLINE]
      0x01a8: PHI (r8v10 int) = (r8v9 int), (r8v15 int), (r8v16 int), (r8v9 int), (r8v9 int), (r8v9 int), (r8v9 int), (r8v9 int) binds: [B:80:0x01a2, B:79:0x018d, B:78:0x0180, B:65:0x016f, B:67:0x0173, B:68:0x0175, B:69:0x0178, B:70:0x017b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b5  */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long readFieldNameHashCodeUnquote() {
        /*
            Method dump skipped, instructions count: 772
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1736f.readFieldNameHashCodeUnquote():long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0183, code lost:
    
        if ((r19.context.features & com.alibaba.fastjson2.JSONReader.Feature.EmptyStringAsNull.mask) != 0) goto L113;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x018f A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01a9 -> B:78:0x018f). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readString() {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1736f.readString():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0035, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x016c A[LOOP:2: B:52:0x0156->B:58:0x016c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0150 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0180  */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0169 -> B:68:0x0150). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson2.C1739i, com.alibaba.fastjson2.JSONReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readValueHashCode() {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson2.C1736f.readValueHashCode():long");
    }

    public C1736f(JSONReader.Context context, InputStream inputStream) {
        super(context, inputStream);
        this.f12437Q = true;
        this.f12376v0 = null;
    }
}
