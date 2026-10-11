package com.fasterxml.jackson.core.sym;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.util.InternCache;
import java.util.Arrays;
import java.util.BitSet;

/* loaded from: classes4.dex */
public final class CharsToNameCanonicalizer {
    protected static final int DEFAULT_T_SIZE = 64;
    public static final int HASH_MULT = 33;
    protected static final int MAX_T_SIZE = 65536;

    /* renamed from: b */
    public static final int f21320b = 12000;

    /* renamed from: c */
    public static final int f21321c = 100;

    /* renamed from: d */
    public static final CharsToNameCanonicalizer f21322d = new CharsToNameCanonicalizer();
    protected C4576a[] _buckets;
    protected boolean _canonicalize;
    protected boolean _dirty;
    protected final int _flags;
    protected int _indexMask;
    protected int _longestCollisionList;
    protected BitSet _overflows;
    protected CharsToNameCanonicalizer _parent;
    protected int _size;
    protected int _sizeThreshold;
    protected String[] _symbols;

    /* renamed from: a */
    public final int f21323a;

    /* renamed from: com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer$a */
    /* loaded from: classes4.dex */
    public static final class C4576a {

        /* renamed from: a */
        public final String f21324a;

        /* renamed from: b */
        public final C4576a f21325b;

        /* renamed from: c */
        public final int f21326c;

        public C4576a(String str, C4576a c4576a) {
            this.f21324a = str;
            this.f21325b = c4576a;
            this.f21326c = c4576a != null ? 1 + c4576a.f21326c : 1;
        }

        /* renamed from: a */
        public String m17303a(char[] cArr, int i, int i2) {
            if (this.f21324a.length() != i2) {
                return null;
            }
            int i3 = 0;
            while (this.f21324a.charAt(i3) == cArr[i + i3]) {
                i3++;
                if (i3 >= i2) {
                    return this.f21324a;
                }
            }
            return null;
        }
    }

    public CharsToNameCanonicalizer() {
        this._canonicalize = true;
        this._flags = -1;
        this._dirty = true;
        this.f21323a = 0;
        this._longestCollisionList = 0;
        m17299f(64);
    }

    public static CharsToNameCanonicalizer createRoot() {
        long currentTimeMillis = System.currentTimeMillis();
        return createRoot((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    /* renamed from: d */
    public static int m17294d(int i) {
        return i - (i >> 2);
    }

    public int _hashToIndex(int i) {
        int i2 = i + (i >>> 15);
        int i3 = i2 ^ (i2 << 7);
        return this._indexMask & (i3 + (i3 >>> 3));
    }

    /* renamed from: a */
    public final String m17295a(char[] cArr, int i, int i2, int i3, int i4) {
        if (!this._dirty) {
            m17298e();
            this._dirty = true;
        } else if (this._size >= this._sizeThreshold) {
            m17302i();
            i4 = _hashToIndex(calcHash(cArr, i, i2));
        }
        String str = new String(cArr, i, i2);
        if (JsonFactory.Feature.INTERN_FIELD_NAMES.enabledIn(this._flags)) {
            str = InternCache.instance.intern(str);
        }
        this._size++;
        String[] strArr = this._symbols;
        if (strArr[i4] == null) {
            strArr[i4] = str;
        } else {
            int i5 = i4 >> 1;
            C4576a c4576a = new C4576a(str, this._buckets[i5]);
            int i6 = c4576a.f21326c;
            if (i6 > 100) {
                m17297c(i5, c4576a);
            } else {
                this._buckets[i5] = c4576a;
                this._longestCollisionList = Math.max(i6, this._longestCollisionList);
            }
        }
        return str;
    }

    /* renamed from: b */
    public final String m17296b(char[] cArr, int i, int i2, C4576a c4576a) {
        while (c4576a != null) {
            String m17303a = c4576a.m17303a(cArr, i, i2);
            if (m17303a != null) {
                return m17303a;
            }
            c4576a = c4576a.f21325b;
        }
        return null;
    }

    public int bucketCount() {
        return this._symbols.length;
    }

    /* renamed from: c */
    public final void m17297c(int i, C4576a c4576a) {
        BitSet bitSet = this._overflows;
        if (bitSet == null) {
            BitSet bitSet2 = new BitSet();
            this._overflows = bitSet2;
            bitSet2.set(i);
        } else if (bitSet.get(i)) {
            if (JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW.enabledIn(this._flags)) {
                reportTooManyCollisions(100);
            }
            this._canonicalize = false;
        } else {
            this._overflows.set(i);
        }
        this._symbols[i + i] = c4576a.f21324a;
        this._buckets[i] = null;
        this._size -= c4576a.f21326c;
        this._longestCollisionList = -1;
    }

    public int calcHash(char[] cArr, int i, int i2) {
        int i3 = this.f21323a;
        int i4 = i2 + i;
        while (i < i4) {
            i3 = (i3 * 33) + cArr[i];
            i++;
        }
        if (i3 == 0) {
            return 1;
        }
        return i3;
    }

    public int collisionCount() {
        int i = 0;
        for (C4576a c4576a : this._buckets) {
            if (c4576a != null) {
                i += c4576a.f21326c;
            }
        }
        return i;
    }

    /* renamed from: e */
    public final void m17298e() {
        String[] strArr = this._symbols;
        this._symbols = (String[]) Arrays.copyOf(strArr, strArr.length);
        C4576a[] c4576aArr = this._buckets;
        this._buckets = (C4576a[]) Arrays.copyOf(c4576aArr, c4576aArr.length);
    }

    /* renamed from: f */
    public final void m17299f(int i) {
        this._symbols = new String[i];
        this._buckets = new C4576a[i >> 1];
        this._indexMask = i - 1;
        this._size = 0;
        this._longestCollisionList = 0;
        this._sizeThreshold = m17294d(i);
    }

    public String findSymbol(char[] cArr, int i, int i2, int i3) {
        if (i2 < 1) {
            return "";
        }
        if (!this._canonicalize) {
            return new String(cArr, i, i2);
        }
        int _hashToIndex = _hashToIndex(i3);
        String str = this._symbols[_hashToIndex];
        if (str != null) {
            if (str.length() == i2) {
                int i4 = 0;
                while (str.charAt(i4) == cArr[i + i4]) {
                    i4++;
                    if (i4 == i2) {
                        return str;
                    }
                }
            }
            C4576a c4576a = this._buckets[_hashToIndex >> 1];
            if (c4576a != null) {
                String m17303a = c4576a.m17303a(cArr, i, i2);
                if (m17303a != null) {
                    return m17303a;
                }
                String m17296b = m17296b(cArr, i, i2, c4576a.f21325b);
                if (m17296b != null) {
                    return m17296b;
                }
            }
        }
        return m17295a(cArr, i, i2, i3, _hashToIndex);
    }

    /* renamed from: g */
    public final CharsToNameCanonicalizer m17300g(int i) {
        return new CharsToNameCanonicalizer(null, -1, this._symbols, this._buckets, this._size, i, this._longestCollisionList);
    }

    /* renamed from: h */
    public final void m17301h(CharsToNameCanonicalizer charsToNameCanonicalizer) {
        if (charsToNameCanonicalizer.size() > 12000) {
            synchronized (this) {
                m17299f(256);
                this._dirty = false;
            }
        } else {
            if (charsToNameCanonicalizer.size() <= size()) {
                return;
            }
            synchronized (this) {
                this._symbols = charsToNameCanonicalizer._symbols;
                this._buckets = charsToNameCanonicalizer._buckets;
                this._size = charsToNameCanonicalizer._size;
                this._sizeThreshold = charsToNameCanonicalizer._sizeThreshold;
                this._indexMask = charsToNameCanonicalizer._indexMask;
                this._longestCollisionList = charsToNameCanonicalizer._longestCollisionList;
                this._dirty = false;
            }
        }
    }

    public int hashSeed() {
        return this.f21323a;
    }

    /* renamed from: i */
    public final void m17302i() {
        String[] strArr = this._symbols;
        int length = strArr.length;
        int i = length + length;
        if (i > 65536) {
            this._size = 0;
            this._canonicalize = false;
            this._symbols = new String[64];
            this._buckets = new C4576a[32];
            this._indexMask = 63;
            this._dirty = true;
            return;
        }
        C4576a[] c4576aArr = this._buckets;
        this._symbols = new String[i];
        this._buckets = new C4576a[i >> 1];
        this._indexMask = i - 1;
        this._sizeThreshold = m17294d(i);
        int i2 = 0;
        int i3 = 0;
        for (String str : strArr) {
            if (str != null) {
                i2++;
                int _hashToIndex = _hashToIndex(calcHash(str));
                String[] strArr2 = this._symbols;
                if (strArr2[_hashToIndex] == null) {
                    strArr2[_hashToIndex] = str;
                } else {
                    int i4 = _hashToIndex >> 1;
                    C4576a c4576a = new C4576a(str, this._buckets[i4]);
                    this._buckets[i4] = c4576a;
                    i3 = Math.max(i3, c4576a.f21326c);
                }
            }
        }
        int i5 = length >> 1;
        for (int i6 = 0; i6 < i5; i6++) {
            for (C4576a c4576a2 = c4576aArr[i6]; c4576a2 != null; c4576a2 = c4576a2.f21325b) {
                i2++;
                String str2 = c4576a2.f21324a;
                int _hashToIndex2 = _hashToIndex(calcHash(str2));
                String[] strArr3 = this._symbols;
                if (strArr3[_hashToIndex2] == null) {
                    strArr3[_hashToIndex2] = str2;
                } else {
                    int i7 = _hashToIndex2 >> 1;
                    C4576a c4576a3 = new C4576a(str2, this._buckets[i7]);
                    this._buckets[i7] = c4576a3;
                    i3 = Math.max(i3, c4576a3.f21326c);
                }
            }
        }
        this._longestCollisionList = i3;
        this._overflows = null;
        if (i2 == this._size) {
            return;
        }
        throw new Error("Internal error on SymbolTable.rehash(): had " + this._size + " entries; now have " + i2 + ".");
    }

    public CharsToNameCanonicalizer makeChild(int i) {
        String[] strArr;
        C4576a[] c4576aArr;
        int i2;
        int i3;
        int i4;
        synchronized (this) {
            strArr = this._symbols;
            c4576aArr = this._buckets;
            i2 = this._size;
            i3 = this.f21323a;
            i4 = this._longestCollisionList;
        }
        return new CharsToNameCanonicalizer(this, i, strArr, c4576aArr, i2, i3, i4);
    }

    public int maxCollisionLength() {
        return this._longestCollisionList;
    }

    public boolean maybeDirty() {
        return this._dirty;
    }

    public void release() {
        CharsToNameCanonicalizer charsToNameCanonicalizer;
        if (maybeDirty() && (charsToNameCanonicalizer = this._parent) != null && this._canonicalize) {
            charsToNameCanonicalizer.m17301h(this);
            this._dirty = false;
        }
    }

    public void reportTooManyCollisions(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this._size + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }

    public int size() {
        return this._size;
    }

    public static CharsToNameCanonicalizer createRoot(int i) {
        return f21322d.m17300g(i);
    }

    public int calcHash(String str) {
        int length = str.length();
        int i = this.f21323a;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i * 33) + str.charAt(i2);
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public CharsToNameCanonicalizer(CharsToNameCanonicalizer charsToNameCanonicalizer, int i, String[] strArr, C4576a[] c4576aArr, int i2, int i3, int i4) {
        this._parent = charsToNameCanonicalizer;
        this._flags = i;
        this._canonicalize = JsonFactory.Feature.CANONICALIZE_FIELD_NAMES.enabledIn(i);
        this._symbols = strArr;
        this._buckets = c4576aArr;
        this._size = i2;
        this.f21323a = i3;
        int length = strArr.length;
        this._sizeThreshold = m17294d(length);
        this._indexMask = length - 1;
        this._longestCollisionList = i4;
        this._dirty = false;
    }
}
