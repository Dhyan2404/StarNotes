package net.p110sf.saxon.p111z;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.p110sf.saxon.p111z.IntHashMap;

/* loaded from: classes11.dex */
public class IntHashMap<T> {

    /* renamed from: j */
    public static final int f102989j = 30;

    /* renamed from: k */
    public static final int f102990k = 1073741824;

    /* renamed from: a */
    public final double f102991a;

    /* renamed from: b */
    public int f102992b;

    /* renamed from: c */
    public int f102993c;

    /* renamed from: d */
    public int f102994d;

    /* renamed from: e */
    public int f102995e;

    /* renamed from: f */
    public int f102996f;

    /* renamed from: g */
    public int f102997g;

    /* renamed from: h */
    public int[] f102998h;

    /* renamed from: i */
    public T[] f102999i;

    /* renamed from: net.sf.saxon.z.IntHashMap$a */
    /* loaded from: classes11.dex */
    public static class C18585a<V> implements IntIterator {

        /* renamed from: a */
        public int f103000a = 0;

        /* renamed from: b */
        public final IntHashMap<V> f103001b;

        public C18585a(IntHashMap<V> intHashMap) {
            this.f103001b = intHashMap;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            while (this.f103000a < this.f103001b.f102998h.length) {
                IntHashMap<V> intHashMap = this.f103001b;
                if (!intHashMap.m64706i(intHashMap.f102999i[this.f103000a])) {
                    return true;
                }
                this.f103000a++;
            }
            return false;
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            int[] iArr = this.f103001b.f102998h;
            int i = this.f103000a;
            this.f103000a = i + 1;
            return iArr[i];
        }
    }

    /* renamed from: net.sf.saxon.z.IntHashMap$b */
    /* loaded from: classes11.dex */
    public static class C18586b<U> extends IntSet {

        /* renamed from: a */
        public final IntHashMap<U> f103002a;

        public C18586b(IntHashMap<U> intHashMap) {
            this.f103002a = intHashMap;
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public boolean add(int i) {
            throw new UnsupportedOperationException("Immutable set");
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public void clear() {
            throw new UnsupportedOperationException("Immutable set");
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public boolean contains(int i) {
            return this.f103002a.f102999i[this.f103002a.m64705h(i)] != null;
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public boolean containsAll(IntSet intSet) {
            return copy().containsAll(intSet);
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public IntSet copy() {
            IntHashSet intHashSet = new IntHashSet();
            IntIterator it2 = iterator();
            while (it2.hasNext()) {
                intHashSet.add(it2.next());
            }
            return intHashSet;
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public IntSet except(IntSet intSet) {
            return copy().except(intSet);
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public IntSet intersect(IntSet intSet) {
            return copy().intersect(intSet);
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public boolean isEmpty() {
            return this.f103002a.f102993c == 0;
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public boolean isMutable() {
            return false;
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public IntIterator iterator() {
            return new C18585a(this.f103002a);
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public IntSet mutableCopy() {
            return copy();
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public boolean remove(int i) {
            throw new UnsupportedOperationException("Immutable set");
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public int size() {
            return this.f103002a.f102993c;
        }

        public String toString() {
            return IntHashSet.stringify(iterator());
        }

        @Override // net.p110sf.saxon.p111z.IntSet
        public IntSet union(IntSet intSet) {
            return copy().union(intSet);
        }
    }

    /* renamed from: net.sf.saxon.z.IntHashMap$c */
    /* loaded from: classes11.dex */
    public static class C18587c<W> implements Iterator<W> {

        /* renamed from: e */
        public int f103003e = 0;

        /* renamed from: f */
        public final IntHashMap<W> f103004f;

        public C18587c(IntHashMap<W> intHashMap) {
            this.f103004f = intHashMap;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.f103003e < this.f103004f.f102998h.length) {
                IntHashMap<W> intHashMap = this.f103004f;
                if (!intHashMap.m64706i(intHashMap.f102999i[this.f103003e])) {
                    return true;
                }
                this.f103003e++;
            }
            return false;
        }

        @Override // java.util.Iterator
        public W next() {
            Object[] objArr = this.f103004f.f102999i;
            int i = this.f103003e;
            this.f103003e = i + 1;
            W w = (W) objArr[i];
            if (this.f103004f.m64706i(w)) {
                throw new NoSuchElementException();
            }
            return w;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException(SyncConstant.SYNC_ACTION_REMOVE);
        }
    }

    public IntHashMap() {
        this(8, 0.25d);
    }

    public void clear() {
        this.f102993c = 0;
        for (int i = 0; i < this.f102992b; i++) {
            this.f102999i[i] = m64708k();
        }
    }

    public IntHashMap<T> copy() {
        IntHashMap<T> intHashMap = new IntHashMap<>(size());
        IntIterator keyIterator = keyIterator();
        while (keyIterator.hasNext()) {
            int next = keyIterator.next();
            intHashMap.put(next, get(next));
        }
        return intHashMap;
    }

    /* renamed from: f */
    public final void m64703f() {
        int i = this.f102993c + 1;
        this.f102993c = i;
        if (i > 1073741824) {
            throw new RuntimeException("number of keys mapped exceeds 1073741824");
        }
        if (this.f102994d >= i || i > this.f102995e) {
            return;
        }
        m64709l(i);
    }

    /* renamed from: g */
    public final int m64704g(int i) {
        return this.f102997g & ((i * 1327217885) >> this.f102996f);
    }

    public T get(int i) {
        return this.f102999i[m64705h(i)];
    }

    /* renamed from: h */
    public final int m64705h(int i) {
        int m64704g = m64704g(i);
        while (!m64706i(this.f102999i[m64704g]) && this.f102998h[m64704g] != i) {
            m64704g = (m64704g - 1) & this.f102997g;
        }
        return m64704g;
    }

    /* renamed from: i */
    public final boolean m64706i(T t) {
        return t == null;
    }

    /* renamed from: j */
    public final T[] m64707j(int i) {
        return (T[]) new Object[i];
    }

    /* renamed from: k */
    public final T m64708k() {
        return null;
    }

    public IntIterator keyIterator() {
        return new C18585a(this);
    }

    public IntSet keySet() {
        return new C18586b(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0019, code lost:
    
        if (r0 > 0.99d) goto L7;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m64709l(int r9) {
        /*
            r8 = this;
            int r0 = r8.f102993c
            if (r9 >= r0) goto L5
            r9 = r0
        L5:
            double r0 = r8.f102991a
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
            int r9 = r8.f102992b
            if (r2 != r9) goto L33
            return
        L33:
            r8.f102992b = r2
            int r4 = (int) r4
            r8.f102994d = r4
            r4 = 4742290407621132288(0x41d0000000000000, double:1.073741824E9)
            double r0 = r0 * r4
            int r0 = (int) r0
            r8.f102995e = r0
            int r0 = 31 - r3
            r8.f102996f = r0
            int r0 = r2 + (-1)
            r8.f102997g = r0
            int[] r0 = r8.f102998h
            T[] r1 = r8.f102999i
            r3 = 0
            r8.f102993c = r3
            int[] r4 = new int[r2]
            r8.f102998h = r4
            java.lang.Object[] r2 = r8.m64707j(r2)
            r8.f102999i = r2
            if (r0 == 0) goto L6d
        L59:
            if (r3 >= r9) goto L6d
            r2 = r1[r3]
            boolean r2 = r8.m64706i(r2)
            if (r2 != 0) goto L6a
            r2 = r0[r3]
            r4 = r1[r3]
            r8.put(r2, r4)
        L6a:
            int r3 = r3 + 1
            goto L59
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.p110sf.saxon.p111z.IntHashMap.m64709l(int):void");
    }

    public T put(int i, T t) {
        if (m64706i(t)) {
            throw new NullPointerException("IntHashMap does not allow null values");
        }
        int m64705h = m64705h(i);
        T t2 = this.f102999i[m64705h];
        if (m64706i(t2)) {
            this.f102998h[m64705h] = i;
            this.f102999i[m64705h] = t;
            m64703f();
        } else {
            this.f102999i[m64705h] = t;
        }
        return t2;
    }

    public boolean remove(int i) {
        int m64705h = m64705h(i);
        if (this.f102999i[m64705h] == null) {
            return false;
        }
        this.f102993c--;
        while (true) {
            this.f102999i[m64705h] = m64708k();
            int i2 = m64705h;
            while (true) {
                i2 = (i2 - 1) & this.f102997g;
                if (m64706i(this.f102999i[i2])) {
                    return true;
                }
                int m64704g = m64704g(this.f102998h[i2]);
                if (i2 > m64704g || m64704g >= m64705h) {
                    if (m64704g >= m64705h || m64705h >= i2) {
                        if (m64705h >= i2 || i2 > m64704g) {
                        }
                    }
                }
            }
            int[] iArr = this.f102998h;
            iArr[m64705h] = iArr[i2];
            T[] tArr = this.f102999i;
            tArr[m64705h] = tArr[i2];
            m64705h = i2;
        }
    }

    public int size() {
        return this.f102993c;
    }

    public Iterator<T> valueIterator() {
        return new C18587c(this);
    }

    public Iterable<T> valueSet() {
        return new Iterable() { // from class: com.sunia.HTREnginev2.omi
            @Override // java.lang.Iterable
            public final Iterator iterator() {
                return IntHashMap.this.valueIterator();
            }
        };
    }

    public IntHashMap(int i) {
        this(i, 0.25d);
    }

    public IntHashMap(int i, double d) {
        this.f102991a = d;
        m64709l(i);
    }
}
