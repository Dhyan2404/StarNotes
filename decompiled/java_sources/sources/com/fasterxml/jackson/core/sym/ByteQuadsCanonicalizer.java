package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import com.sunia.HTREnginev2.cyi;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class ByteQuadsCanonicalizer {

    /* renamed from: d */
    public static final int f21303d = 64;

    /* renamed from: e */
    public static final int f21304e = 65536;

    /* renamed from: f */
    public static final int f21305f = 16;

    /* renamed from: g */
    public static final int f21306g = 6000;

    /* renamed from: h */
    public static final int f21307h = 33;

    /* renamed from: i */
    public static final int f21308i = 65599;

    /* renamed from: j */
    public static final int f21309j = 31;
    protected int _count;
    protected final boolean _failOnDoS;
    protected int[] _hashArea;
    protected int _hashSize;
    protected boolean _intern;
    protected int _longNameOffset;
    protected String[] _names;
    protected final ByteQuadsCanonicalizer _parent;
    protected int _secondaryStart;
    protected int _spilloverEnd;
    protected final AtomicReference<C4575a> _tableInfo;
    protected int _tertiaryShift;
    protected int _tertiaryStart;

    /* renamed from: a */
    public final int f21310a;

    /* renamed from: b */
    public transient boolean f21311b;

    /* renamed from: c */
    public boolean f21312c;

    public ByteQuadsCanonicalizer(int i, boolean z, int i2, boolean z2) {
        this._parent = null;
        this.f21310a = i2;
        this._intern = z;
        this._failOnDoS = z2;
        int i3 = 16;
        if (i >= 16) {
            if (((i - 1) & i) != 0) {
                while (i3 < i) {
                    i3 += i3;
                }
            }
            this._tableInfo = new AtomicReference<>(C4575a.m17293a(i));
        }
        i = i3;
        this._tableInfo = new AtomicReference<>(C4575a.m17293a(i));
    }

    /* renamed from: c */
    public static int m17277c(int i) {
        int i2 = i >> 2;
        if (i2 < 64) {
            return 4;
        }
        if (i2 <= 256) {
            return 5;
        }
        return i2 <= 1024 ? 6 : 7;
    }

    public static ByteQuadsCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    public void _reportTooManyCollisions() {
        if (this._hashSize <= 1024) {
            return;
        }
        throw new IllegalStateException("Spill-over slots in symbol table with " + this._count + " entries, hash area of " + this._hashSize + " slots is now full (all " + (this._hashSize >> 3) + " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`");
    }

    /* renamed from: a */
    public final int m17278a(int[] iArr, int i) {
        int i2 = this._longNameOffset;
        int i3 = i2 + i;
        int[] iArr2 = this._hashArea;
        if (i3 > iArr2.length) {
            this._hashArea = Arrays.copyOf(this._hashArea, this._hashArea.length + Math.max(i3 - iArr2.length, Math.min(4096, this._hashSize)));
        }
        System.arraycopy(iArr, 0, this._hashArea, i2, i);
        this._longNameOffset += i;
        return i2;
    }

    public String addName(String str, int i) {
        m17289m();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int m17280d = m17280d(calcHash(i));
        int[] iArr = this._hashArea;
        iArr[m17280d] = i;
        iArr[m17280d + 3] = 1;
        this._names[m17280d >> 2] = str;
        this._count++;
        m17288l();
        return str;
    }

    /* renamed from: b */
    public final int m17279b(int i) {
        return ((this._hashSize - 1) & i) << 2;
    }

    public int bucketCount() {
        return this._hashSize;
    }

    public int calcHash(int i) {
        int i2 = this.f21310a ^ i;
        int i3 = i2 + (i2 >>> 16);
        int i4 = i3 ^ (i3 << 3);
        return i4 + (i4 >>> 12);
    }

    /* renamed from: d */
    public final int m17280d(int i) {
        int m17279b = m17279b(i);
        int[] iArr = this._hashArea;
        if (iArr[m17279b + 3] == 0) {
            return m17279b;
        }
        int i2 = this._secondaryStart + ((m17279b >> 3) << 2);
        if (iArr[i2 + 3] == 0) {
            return i2;
        }
        int i3 = this._tertiaryStart;
        int i4 = this._tertiaryShift;
        int i5 = i3 + ((m17279b >> (i4 + 2)) << i4);
        int i6 = (1 << i4) + i5;
        while (i5 < i6) {
            if (iArr[i5 + 3] == 0) {
                return i5;
            }
            i5 += 4;
        }
        int i7 = this._spilloverEnd;
        int i8 = i7 + 4;
        this._spilloverEnd = i8;
        if (i8 >= (this._hashSize << 3)) {
            if (this._failOnDoS) {
                _reportTooManyCollisions();
            }
            this.f21311b = true;
        }
        return i7;
    }

    /* renamed from: e */
    public final String m17281e(int i, int i2) {
        int i3 = this._tertiaryStart;
        int i4 = this._tertiaryShift;
        int i5 = i3 + ((i >> (i4 + 2)) << i4);
        int[] iArr = this._hashArea;
        int i6 = (1 << i4) + i5;
        while (i5 < i6) {
            int i7 = iArr[i5 + 3];
            if (i2 == iArr[i5] && 1 == i7) {
                return this._names[i5 >> 2];
            }
            if (i7 == 0) {
                return null;
            }
            i5 += 4;
        }
        for (int m17285i = m17285i(); m17285i < this._spilloverEnd; m17285i += 4) {
            if (i2 == iArr[m17285i] && 1 == iArr[m17285i + 3]) {
                return this._names[m17285i >> 2];
            }
        }
        return null;
    }

    /* renamed from: f */
    public final String m17282f(int i, int i2, int i3) {
        int i4 = this._tertiaryStart;
        int i5 = this._tertiaryShift;
        int i6 = i4 + ((i >> (i5 + 2)) << i5);
        int[] iArr = this._hashArea;
        int i7 = (1 << i5) + i6;
        while (i6 < i7) {
            int i8 = iArr[i6 + 3];
            if (i2 == iArr[i6] && i3 == iArr[i6 + 1] && 2 == i8) {
                return this._names[i6 >> 2];
            }
            if (i8 == 0) {
                return null;
            }
            i6 += 4;
        }
        for (int m17285i = m17285i(); m17285i < this._spilloverEnd; m17285i += 4) {
            if (i2 == iArr[m17285i] && i3 == iArr[m17285i + 1] && 2 == iArr[m17285i + 3]) {
                return this._names[m17285i >> 2];
            }
        }
        return null;
    }

    public String findName(int i) {
        int m17279b = m17279b(calcHash(i));
        int[] iArr = this._hashArea;
        int i2 = iArr[m17279b + 3];
        if (i2 == 1) {
            if (iArr[m17279b] == i) {
                return this._names[m17279b >> 2];
            }
        } else if (i2 == 0) {
            return null;
        }
        int i3 = this._secondaryStart + ((m17279b >> 3) << 2);
        int i4 = iArr[i3 + 3];
        if (i4 == 1) {
            if (iArr[i3] == i) {
                return this._names[i3 >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        return m17281e(m17279b, i);
    }

    /* renamed from: g */
    public final String m17283g(int i, int i2, int i3, int i4) {
        int i5 = this._tertiaryStart;
        int i6 = this._tertiaryShift;
        int i7 = i5 + ((i >> (i6 + 2)) << i6);
        int[] iArr = this._hashArea;
        int i8 = (1 << i6) + i7;
        while (i7 < i8) {
            int i9 = iArr[i7 + 3];
            if (i2 == iArr[i7] && i3 == iArr[i7 + 1] && i4 == iArr[i7 + 2] && 3 == i9) {
                return this._names[i7 >> 2];
            }
            if (i9 == 0) {
                return null;
            }
            i7 += 4;
        }
        for (int m17285i = m17285i(); m17285i < this._spilloverEnd; m17285i += 4) {
            if (i2 == iArr[m17285i] && i3 == iArr[m17285i + 1] && i4 == iArr[m17285i + 2] && 3 == iArr[m17285i + 3]) {
                return this._names[m17285i >> 2];
            }
        }
        return null;
    }

    /* renamed from: h */
    public final String m17284h(int i, int i2, int[] iArr, int i3) {
        int i4 = this._tertiaryStart;
        int i5 = this._tertiaryShift;
        int i6 = i4 + ((i >> (i5 + 2)) << i5);
        int[] iArr2 = this._hashArea;
        int i7 = (1 << i5) + i6;
        while (i6 < i7) {
            int i8 = iArr2[i6 + 3];
            if (i2 == iArr2[i6] && i3 == i8 && m17286j(iArr, i3, iArr2[i6 + 1])) {
                return this._names[i6 >> 2];
            }
            if (i8 == 0) {
                return null;
            }
            i6 += 4;
        }
        for (int m17285i = m17285i(); m17285i < this._spilloverEnd; m17285i += 4) {
            if (i2 == iArr2[m17285i] && i3 == iArr2[m17285i + 3] && m17286j(iArr, i3, iArr2[m17285i + 1])) {
                return this._names[m17285i >> 2];
            }
        }
        return null;
    }

    public int hashSeed() {
        return this.f21310a;
    }

    /* renamed from: i */
    public final int m17285i() {
        int i = this._hashSize;
        return (i << 3) - i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0023 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0031 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m17286j(int[] r5, int r6, int r7) {
        /*
            r4 = this;
            int[] r0 = r4._hashArea
            r1 = 1
            r2 = 0
            switch(r6) {
                case 4: goto L42;
                case 5: goto L34;
                case 6: goto L26;
                case 7: goto L18;
                case 8: goto Lc;
                default: goto L7;
            }
        L7:
            boolean r4 = r4.m17287k(r5, r6, r7)
            return r4
        Lc:
            r4 = r5[r2]
            int r6 = r7 + 1
            r7 = r0[r7]
            if (r4 == r7) goto L15
            return r2
        L15:
            r7 = r6
            r4 = r1
            goto L19
        L18:
            r4 = r2
        L19:
            int r6 = r4 + 1
            r4 = r5[r4]
            int r3 = r7 + 1
            r7 = r0[r7]
            if (r4 == r7) goto L24
            return r2
        L24:
            r7 = r3
            goto L27
        L26:
            r6 = r2
        L27:
            int r4 = r6 + 1
            r6 = r5[r6]
            int r3 = r7 + 1
            r7 = r0[r7]
            if (r6 == r7) goto L32
            return r2
        L32:
            r7 = r3
            goto L35
        L34:
            r4 = r2
        L35:
            int r6 = r4 + 1
            r4 = r5[r4]
            int r3 = r7 + 1
            r7 = r0[r7]
            if (r4 == r7) goto L40
            return r2
        L40:
            r7 = r3
            goto L43
        L42:
            r6 = r2
        L43:
            int r4 = r6 + 1
            r6 = r5[r6]
            int r3 = r7 + 1
            r7 = r0[r7]
            if (r6 == r7) goto L4e
            return r2
        L4e:
            int r6 = r4 + 1
            r4 = r5[r4]
            int r7 = r3 + 1
            r3 = r0[r3]
            if (r4 == r3) goto L59
            return r2
        L59:
            int r4 = r6 + 1
            r6 = r5[r6]
            int r3 = r7 + 1
            r7 = r0[r7]
            if (r6 == r7) goto L64
            return r2
        L64:
            r4 = r5[r4]
            r5 = r0[r3]
            if (r4 == r5) goto L6b
            return r2
        L6b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer.m17286j(int[], int, int):boolean");
    }

    /* renamed from: k */
    public final boolean m17287k(int[] iArr, int i, int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            int i5 = i2 + 1;
            if (iArr[i3] != this._hashArea[i2]) {
                return false;
            }
            if (i4 >= i) {
                return true;
            }
            i3 = i4;
            i2 = i5;
        }
    }

    /* renamed from: l */
    public final void m17288l() {
        if (this._count > (this._hashSize >> 1)) {
            int m17285i = (this._spilloverEnd - m17285i()) >> 2;
            int i = this._count;
            if (m17285i > ((i + 1) >> 7) || i > this._hashSize * 0.8d) {
                this.f21311b = true;
            }
        }
    }

    /* renamed from: m */
    public final void m17289m() {
        if (this.f21312c) {
            int[] iArr = this._hashArea;
            this._hashArea = Arrays.copyOf(iArr, iArr.length);
            String[] strArr = this._names;
            this._names = (String[]) Arrays.copyOf(strArr, strArr.length);
            this.f21312c = false;
            m17288l();
        }
        if (this.f21311b) {
            m17292p();
        }
    }

    public ByteQuadsCanonicalizer makeChild(int i) {
        return new ByteQuadsCanonicalizer(this, JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(i), this.f21310a, JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(i), this._tableInfo.get());
    }

    public boolean maybeDirty() {
        return !this.f21312c;
    }

    /* renamed from: n */
    public final void m17290n(C4575a c4575a) {
        int i = c4575a.f21314b;
        C4575a c4575a2 = this._tableInfo.get();
        if (i == c4575a2.f21314b) {
            return;
        }
        if (i > 6000) {
            c4575a = C4575a.m17293a(64);
        }
        cyi.m53538a(this._tableInfo, c4575a2, c4575a);
    }

    /* renamed from: o */
    public final void m17291o(boolean z) {
        this._count = 0;
        this._spilloverEnd = m17285i();
        this._longNameOffset = this._hashSize << 3;
        if (z) {
            Arrays.fill(this._hashArea, 0);
            Arrays.fill(this._names, (Object) null);
        }
    }

    /* renamed from: p */
    public final void m17292p() {
        this.f21311b = false;
        this.f21312c = false;
        int[] iArr = this._hashArea;
        String[] strArr = this._names;
        int i = this._hashSize;
        int i2 = this._count;
        int i3 = i + i;
        int i4 = this._spilloverEnd;
        if (i3 > 65536) {
            m17291o(true);
            return;
        }
        this._hashArea = new int[iArr.length + (i << 3)];
        this._hashSize = i3;
        int i5 = i3 << 2;
        this._secondaryStart = i5;
        this._tertiaryStart = i5 + (i5 >> 1);
        this._tertiaryShift = m17277c(i3);
        this._names = new String[strArr.length << 1];
        m17291o(false);
        int[] iArr2 = new int[16];
        int i6 = 0;
        for (int i7 = 0; i7 < i4; i7 += 4) {
            int i8 = iArr[i7 + 3];
            if (i8 != 0) {
                i6++;
                String str = strArr[i7 >> 2];
                if (i8 == 1) {
                    iArr2[0] = iArr[i7];
                    addName(str, iArr2, 1);
                } else if (i8 == 2) {
                    iArr2[0] = iArr[i7];
                    iArr2[1] = iArr[i7 + 1];
                    addName(str, iArr2, 2);
                } else if (i8 != 3) {
                    if (i8 > iArr2.length) {
                        iArr2 = new int[i8];
                    }
                    System.arraycopy(iArr, iArr[i7 + 1], iArr2, 0, i8);
                    addName(str, iArr2, i8);
                } else {
                    iArr2[0] = iArr[i7];
                    iArr2[1] = iArr[i7 + 1];
                    iArr2[2] = iArr[i7 + 2];
                    addName(str, iArr2, 3);
                }
            }
        }
        if (i6 == i2) {
            return;
        }
        throw new IllegalStateException("Failed rehash(): old count=" + i2 + ", copyCount=" + i6);
    }

    public int primaryCount() {
        int i = this._secondaryStart;
        int i2 = 0;
        for (int i3 = 3; i3 < i; i3 += 4) {
            if (this._hashArea[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public void release() {
        if (this._parent == null || !maybeDirty()) {
            return;
        }
        this._parent.m17290n(new C4575a(this));
        this.f21312c = true;
    }

    public int secondaryCount() {
        int i = this._tertiaryStart;
        int i2 = 0;
        for (int i3 = this._secondaryStart + 3; i3 < i; i3 += 4) {
            if (this._hashArea[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public int size() {
        AtomicReference<C4575a> atomicReference = this._tableInfo;
        return atomicReference != null ? atomicReference.get().f21314b : this._count;
    }

    public int spilloverCount() {
        return (this._spilloverEnd - m17285i()) >> 2;
    }

    public int tertiaryCount() {
        int i = this._tertiaryStart + 3;
        int i2 = this._hashSize + i;
        int i3 = 0;
        while (i < i2) {
            if (this._hashArea[i] != 0) {
                i3++;
            }
            i += 4;
        }
        return i3;
    }

    public String toString() {
        int primaryCount = primaryCount();
        int secondaryCount = secondaryCount();
        int tertiaryCount = tertiaryCount();
        int spilloverCount = spilloverCount();
        int i = totalCount();
        return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", ByteQuadsCanonicalizer.class.getName(), Integer.valueOf(this._count), Integer.valueOf(this._hashSize), Integer.valueOf(primaryCount), Integer.valueOf(secondaryCount), Integer.valueOf(tertiaryCount), Integer.valueOf(spilloverCount), Integer.valueOf(i), Integer.valueOf(primaryCount + secondaryCount + tertiaryCount + spilloverCount), Integer.valueOf(i));
    }

    public int totalCount() {
        int i = this._hashSize << 3;
        int i2 = 0;
        for (int i3 = 3; i3 < i; i3 += 4) {
            if (this._hashArea[i3] != 0) {
                i2++;
            }
        }
        return i2;
    }

    public int calcHash(int i, int i2) {
        int i3 = i + (i >>> 15);
        int i4 = this.f21310a ^ ((i3 ^ (i3 >>> 9)) + (i2 * 33));
        int i5 = i4 + (i4 >>> 16);
        int i6 = i5 ^ (i5 >>> 4);
        return i6 + (i6 << 3);
    }

    public static ByteQuadsCanonicalizer createRoot(int i) {
        return new ByteQuadsCanonicalizer(64, true, i, true);
    }

    public int calcHash(int i, int i2, int i3) {
        int i4 = this.f21310a ^ i;
        int i5 = (((i4 + (i4 >>> 9)) * 31) + i2) * 33;
        int i6 = (i5 + (i5 >>> 15)) ^ i3;
        int i7 = i6 + (i6 >>> 4);
        int i8 = i7 + (i7 >>> 15);
        return i8 ^ (i8 << 9);
    }

    public int calcHash(int[] iArr, int i) {
        if (i >= 4) {
            int i2 = this.f21310a ^ iArr[0];
            int i3 = i2 + (i2 >>> 9) + iArr[1];
            int i4 = ((i3 + (i3 >>> 15)) * 33) ^ iArr[2];
            int i5 = i4 + (i4 >>> 4);
            for (int i6 = 3; i6 < i; i6++) {
                int i7 = iArr[i6];
                i5 += i7 ^ (i7 >> 21);
            }
            int i8 = i5 * f21308i;
            int i9 = i8 + (i8 >>> 19);
            return i9 ^ (i9 << 5);
        }
        throw new IllegalArgumentException();
    }

    public ByteQuadsCanonicalizer(ByteQuadsCanonicalizer byteQuadsCanonicalizer, boolean z, int i, boolean z2, C4575a c4575a) {
        this._parent = byteQuadsCanonicalizer;
        this.f21310a = i;
        this._intern = z;
        this._failOnDoS = z2;
        this._tableInfo = null;
        this._count = c4575a.f21314b;
        int i2 = c4575a.f21313a;
        this._hashSize = i2;
        int i3 = i2 << 2;
        this._secondaryStart = i3;
        this._tertiaryStart = i3 + (i3 >> 1);
        this._tertiaryShift = c4575a.f21315c;
        this._hashArea = c4575a.f21316d;
        this._names = c4575a.f21317e;
        this._spilloverEnd = c4575a.f21318f;
        this._longNameOffset = c4575a.f21319g;
        this.f21311b = false;
        this.f21312c = true;
    }

    /* renamed from: com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer$a */
    /* loaded from: classes4.dex */
    public static final class C4575a {

        /* renamed from: a */
        public final int f21313a;

        /* renamed from: b */
        public final int f21314b;

        /* renamed from: c */
        public final int f21315c;

        /* renamed from: d */
        public final int[] f21316d;

        /* renamed from: e */
        public final String[] f21317e;

        /* renamed from: f */
        public final int f21318f;

        /* renamed from: g */
        public final int f21319g;

        public C4575a(int i, int i2, int i3, int[] iArr, String[] strArr, int i4, int i5) {
            this.f21313a = i;
            this.f21314b = i2;
            this.f21315c = i3;
            this.f21316d = iArr;
            this.f21317e = strArr;
            this.f21318f = i4;
            this.f21319g = i5;
        }

        /* renamed from: a */
        public static C4575a m17293a(int i) {
            int i2 = i << 3;
            return new C4575a(i, 0, ByteQuadsCanonicalizer.m17277c(i), new int[i2], new String[i << 1], i2 - i, i2);
        }

        public C4575a(ByteQuadsCanonicalizer byteQuadsCanonicalizer) {
            this.f21313a = byteQuadsCanonicalizer._hashSize;
            this.f21314b = byteQuadsCanonicalizer._count;
            this.f21315c = byteQuadsCanonicalizer._tertiaryShift;
            this.f21316d = byteQuadsCanonicalizer._hashArea;
            this.f21317e = byteQuadsCanonicalizer._names;
            this.f21318f = byteQuadsCanonicalizer._spilloverEnd;
            this.f21319g = byteQuadsCanonicalizer._longNameOffset;
        }
    }

    public String addName(String str, int i, int i2) {
        m17289m();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int m17280d = m17280d(i2 == 0 ? calcHash(i) : calcHash(i, i2));
        int[] iArr = this._hashArea;
        iArr[m17280d] = i;
        iArr[m17280d + 1] = i2;
        iArr[m17280d + 3] = 2;
        this._names[m17280d >> 2] = str;
        this._count++;
        m17288l();
        return str;
    }

    public String findName(int i, int i2) {
        int m17279b = m17279b(calcHash(i, i2));
        int[] iArr = this._hashArea;
        int i3 = iArr[m17279b + 3];
        if (i3 == 2) {
            if (i == iArr[m17279b] && i2 == iArr[m17279b + 1]) {
                return this._names[m17279b >> 2];
            }
        } else if (i3 == 0) {
            return null;
        }
        int i4 = this._secondaryStart + ((m17279b >> 3) << 2);
        int i5 = iArr[i4 + 3];
        if (i5 == 2) {
            if (i == iArr[i4] && i2 == iArr[i4 + 1]) {
                return this._names[i4 >> 2];
            }
        } else if (i5 == 0) {
            return null;
        }
        return m17282f(m17279b, i, i2);
    }

    public String addName(String str, int i, int i2, int i3) {
        m17289m();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        int m17280d = m17280d(calcHash(i, i2, i3));
        int[] iArr = this._hashArea;
        iArr[m17280d] = i;
        iArr[m17280d + 1] = i2;
        iArr[m17280d + 2] = i3;
        iArr[m17280d + 3] = 3;
        this._names[m17280d >> 2] = str;
        this._count++;
        m17288l();
        return str;
    }

    public String findName(int i, int i2, int i3) {
        int m17279b = m17279b(calcHash(i, i2, i3));
        int[] iArr = this._hashArea;
        int i4 = iArr[m17279b + 3];
        if (i4 == 3) {
            if (i == iArr[m17279b] && iArr[m17279b + 1] == i2 && iArr[m17279b + 2] == i3) {
                return this._names[m17279b >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = this._secondaryStart + ((m17279b >> 3) << 2);
        int i6 = iArr[i5 + 3];
        if (i6 == 3) {
            if (i == iArr[i5] && iArr[i5 + 1] == i2 && iArr[i5 + 2] == i3) {
                return this._names[i5 >> 2];
            }
        } else if (i6 == 0) {
            return null;
        }
        return m17283g(m17279b, i, i2, i3);
    }

    public String findName(int[] iArr, int i) {
        if (i < 4) {
            if (i == 3) {
                return findName(iArr[0], iArr[1], iArr[2]);
            }
            if (i == 2) {
                return findName(iArr[0], iArr[1]);
            }
            return findName(iArr[0]);
        }
        int calcHash = calcHash(iArr, i);
        int m17279b = m17279b(calcHash);
        int[] iArr2 = this._hashArea;
        int i2 = iArr2[m17279b + 3];
        if (calcHash == iArr2[m17279b] && i2 == i && m17286j(iArr, i, iArr2[m17279b + 1])) {
            return this._names[m17279b >> 2];
        }
        if (i2 == 0) {
            return null;
        }
        int i3 = this._secondaryStart + ((m17279b >> 3) << 2);
        int i4 = iArr2[i3 + 3];
        if (calcHash == iArr2[i3] && i4 == i && m17286j(iArr, i, iArr2[i3 + 1])) {
            return this._names[i3 >> 2];
        }
        if (i2 == 0) {
            return null;
        }
        return m17284h(m17279b, calcHash, iArr, i);
    }

    public String addName(String str, int[] iArr, int i) {
        int m17280d;
        m17289m();
        if (this._intern) {
            str = InternCache.instance.intern(str);
        }
        if (i == 1) {
            m17280d = m17280d(calcHash(iArr[0]));
            int[] iArr2 = this._hashArea;
            iArr2[m17280d] = iArr[0];
            iArr2[m17280d + 3] = 1;
        } else if (i == 2) {
            m17280d = m17280d(calcHash(iArr[0], iArr[1]));
            int[] iArr3 = this._hashArea;
            iArr3[m17280d] = iArr[0];
            iArr3[m17280d + 1] = iArr[1];
            iArr3[m17280d + 3] = 2;
        } else if (i != 3) {
            int calcHash = calcHash(iArr, i);
            m17280d = m17280d(calcHash);
            this._hashArea[m17280d] = calcHash;
            int m17278a = m17278a(iArr, i);
            int[] iArr4 = this._hashArea;
            iArr4[m17280d + 1] = m17278a;
            iArr4[m17280d + 3] = i;
        } else {
            int m17280d2 = m17280d(calcHash(iArr[0], iArr[1], iArr[2]));
            int[] iArr5 = this._hashArea;
            iArr5[m17280d2] = iArr[0];
            iArr5[m17280d2 + 1] = iArr[1];
            iArr5[m17280d2 + 2] = iArr[2];
            iArr5[m17280d2 + 3] = 3;
            m17280d = m17280d2;
        }
        this._names[m17280d >> 2] = str;
        this._count++;
        m17288l();
        return str;
    }
}
