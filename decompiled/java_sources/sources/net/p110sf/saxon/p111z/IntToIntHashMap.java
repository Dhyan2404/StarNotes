package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public class IntToIntHashMap implements IntToIntMap {

    /* renamed from: l */
    public static final int f103049l = 30;

    /* renamed from: m */
    public static final int f103050m = 1073741824;

    /* renamed from: a */
    public final double f103051a;

    /* renamed from: b */
    public int f103052b;

    /* renamed from: c */
    public int f103053c;

    /* renamed from: d */
    public int f103054d;

    /* renamed from: e */
    public int f103055e;

    /* renamed from: f */
    public int f103056f;

    /* renamed from: g */
    public int f103057g;

    /* renamed from: h */
    public int f103058h;

    /* renamed from: i */
    public int[] f103059i;

    /* renamed from: j */
    public int[] f103060j;

    /* renamed from: k */
    public boolean[] f103061k;

    /* renamed from: net.sf.saxon.z.IntToIntHashMap$a */
    /* loaded from: classes11.dex */
    public static class C18591a implements IntIterator {

        /* renamed from: a */
        public final IntToIntHashMap f103062a;

        /* renamed from: b */
        public int f103063b = 0;

        public C18591a(IntToIntHashMap intToIntHashMap) {
            this.f103062a = intToIntHashMap;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            while (this.f103063b < this.f103062a.f103059i.length) {
                boolean[] zArr = this.f103062a.f103061k;
                int i = this.f103063b;
                if (zArr[i]) {
                    return true;
                }
                this.f103063b = i + 1;
            }
            return false;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int[] iArr = this.f103062a.f103059i;
            int i = this.f103063b;
            this.f103063b = i + 1;
            return iArr[i];
        }
    }

    public IntToIntHashMap() {
        this(8, 0.25d);
    }

    /* renamed from: c */
    public final void m64733c() {
        int i = this.f103054d + 1;
        this.f103054d = i;
        if (i > 1073741824) {
            throw new RuntimeException("number of keys mapped exceeds 1073741824");
        }
        if (this.f103055e >= i || i > this.f103056f) {
            return;
        }
        m64736f(i);
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void clear() {
        this.f103054d = 0;
        for (int i = 0; i < this.f103053c; i++) {
            this.f103061k[i] = false;
        }
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public boolean contains(int i) {
        return this.f103061k[m64735e(i)];
    }

    /* renamed from: d */
    public final int m64734d(int i) {
        return this.f103058h & ((i * 1327217885) >> this.f103057g);
    }

    /* renamed from: e */
    public final int m64735e(int i) {
        int m64734d = m64734d(i);
        while (this.f103061k[m64734d] && this.f103059i[m64734d] != i) {
            m64734d = (m64734d - 1) & this.f103058h;
        }
        return m64734d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0019, code lost:
    
        if (r0 > 0.99d) goto L7;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m64736f(int r9) {
        /*
            r8 = this;
            int r0 = r8.f103054d
            if (r9 >= r0) goto L5
            r9 = r0
        L5:
            double r0 = r8.f103051a
            r2 = 4576918229304087675(0x3f847ae147ae147b, double:0.01)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L12
        L10:
            r0 = r2
            goto L1c
        L12:
            r2 = 4607092346807469998(0x3fefae147ae147ae, double:0.99)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L1c
            goto L10
        L1c:
            r2 = 2
            r3 = 1
        L1e:
            double r4 = (double) r2
            double r4 = r4 * r0
            double r6 = (double) r9
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 >= 0) goto L2e
            r6 = 1073741824(0x40000000, float:2.0)
            if (r2 >= r6) goto L2e
            int r3 = r3 + 1
            int r2 = r2 * 2
            goto L1e
        L2e:
            int r9 = r8.f103053c
            if (r2 != r9) goto L33
            return
        L33:
            r8.f103053c = r2
            int r4 = (int) r4
            r8.f103055e = r4
            r4 = 4742290407621132288(0x41d0000000000000, double:1.073741824E9)
            double r0 = r0 * r4
            int r0 = (int) r0
            r8.f103056f = r0
            int r0 = 31 - r3
            r8.f103057g = r0
            int r0 = r2 + (-1)
            r8.f103058h = r0
            int[] r0 = r8.f103059i
            int[] r1 = r8.f103060j
            boolean[] r3 = r8.f103061k
            r4 = 0
            r8.f103054d = r4
            int[] r5 = new int[r2]
            r8.f103059i = r5
            int[] r5 = new int[r2]
            r8.f103060j = r5
            boolean[] r2 = new boolean[r2]
            r8.f103061k = r2
            if (r0 == 0) goto L6d
        L5d:
            if (r4 >= r9) goto L6d
            boolean r2 = r3[r4]
            if (r2 == 0) goto L6a
            r2 = r0[r4]
            r5 = r1[r4]
            r8.put(r2, r5)
        L6a:
            int r4 = r4 + 1
            goto L5d
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.p111z.IntToIntHashMap.m64736f(int):void");
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int get(int i) {
        int m64735e = m64735e(i);
        return this.f103061k[m64735e] ? this.f103060j[m64735e] : this.f103052b;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int getDefaultValue() {
        return this.f103052b;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public IntIterator keyIterator() {
        return new C18591a(this);
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void put(int i, int i2) {
        int m64735e = m64735e(i);
        boolean[] zArr = this.f103061k;
        if (zArr[m64735e]) {
            this.f103060j[m64735e] = i2;
            return;
        }
        this.f103059i[m64735e] = i;
        this.f103060j[m64735e] = i2;
        zArr[m64735e] = true;
        m64733c();
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public boolean remove(int i) {
        int m64735e = m64735e(i);
        if (!this.f103061k[m64735e]) {
            return false;
        }
        this.f103054d--;
        while (true) {
            this.f103061k[m64735e] = false;
            int i2 = m64735e;
            while (true) {
                i2 = (i2 - 1) & this.f103058h;
                if (!this.f103061k[i2]) {
                    return true;
                }
                int m64734d = m64734d(this.f103059i[i2]);
                if (i2 > m64734d || m64734d >= m64735e) {
                    if (m64734d >= m64735e || m64735e >= i2) {
                        if (m64735e >= i2 || i2 > m64734d) {
                        }
                    }
                }
            }
            int[] iArr = this.f103059i;
            iArr[m64735e] = iArr[i2];
            int[] iArr2 = this.f103060j;
            iArr2[m64735e] = iArr2[i2];
            boolean[] zArr = this.f103061k;
            zArr[m64735e] = zArr[i2];
            m64735e = i2;
        }
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public void setDefaultValue(int i) {
        this.f103052b = i;
    }

    @Override // net.p110sf.saxon.p111z.IntToIntMap
    public int size() {
        return this.f103054d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("{");
        IntIterator keyIterator = keyIterator();
        int i = 0;
        while (true) {
            if (!keyIterator.hasNext()) {
                break;
            }
            int next = keyIterator.next();
            sb.append(" " + next + ":" + get(next) + ",");
            int i2 = i + 1;
            if (i >= 100) {
                sb.append("....");
                break;
            }
            i = i2;
        }
        sb.setCharAt(sb.length() - 1, '}');
        return sb.toString();
    }

    public IntToIntHashMap(int i) {
        this(i, 0.25d);
    }

    public IntToIntHashMap(int i, double d) {
        this.f103052b = Integer.MAX_VALUE;
        this.f103051a = d;
        m64736f(i);
    }
}
