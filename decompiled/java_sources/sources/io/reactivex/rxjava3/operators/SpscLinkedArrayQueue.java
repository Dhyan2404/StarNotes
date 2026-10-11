package io.reactivex.rxjava3.operators;

import io.reactivex.rxjava3.annotations.Nullable;
import io.reactivex.rxjava3.internal.util.Pow2;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes10.dex */
public final class SpscLinkedArrayQueue<T> implements SimplePlainQueue<T> {

    /* renamed from: m */
    public static final int f97459m = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: n */
    public static final Object f97460n = new Object();

    /* renamed from: f */
    public int f97462f;

    /* renamed from: g */
    public long f97463g;

    /* renamed from: h */
    public final int f97464h;

    /* renamed from: i */
    public AtomicReferenceArray<Object> f97465i;

    /* renamed from: j */
    public final int f97466j;

    /* renamed from: k */
    public AtomicReferenceArray<Object> f97467k;

    /* renamed from: e */
    public final AtomicLong f97461e = new AtomicLong();

    /* renamed from: l */
    public final AtomicLong f97468l = new AtomicLong();

    public SpscLinkedArrayQueue(final int bufferSize) {
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(Math.max(8, bufferSize));
        int i = roundToPowerOfTwo - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(roundToPowerOfTwo + 1);
        this.f97465i = atomicReferenceArray;
        this.f97464h = i;
        m61301a(roundToPowerOfTwo);
        this.f97467k = atomicReferenceArray;
        this.f97466j = i;
        this.f97463g = i - 1;
        m61312p(0L);
    }

    /* renamed from: b */
    public static int m61297b(int index) {
        return index;
    }

    /* renamed from: c */
    public static int m61298c(long index, int mask) {
        return m61297b(((int) index) & mask);
    }

    /* renamed from: g */
    public static Object m61299g(AtomicReferenceArray<Object> buffer, int offset) {
        return buffer.get(offset);
    }

    /* renamed from: n */
    public static void m61300n(AtomicReferenceArray<Object> buffer, int offset, Object e) {
        buffer.lazySet(offset, e);
    }

    /* renamed from: a */
    public final void m61301a(int capacity) {
        this.f97462f = Math.min(capacity / 4, f97459m);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    /* renamed from: d */
    public final long m61302d() {
        return this.f97468l.get();
    }

    /* renamed from: e */
    public final long m61303e() {
        return this.f97461e.get();
    }

    /* renamed from: f */
    public final long m61304f() {
        return this.f97468l.get();
    }

    /* renamed from: h */
    public final AtomicReferenceArray<Object> m61305h(AtomicReferenceArray<Object> curr, int nextIndex) {
        int m61297b = m61297b(nextIndex);
        AtomicReferenceArray<Object> atomicReferenceArray = (AtomicReferenceArray) m61299g(curr, m61297b);
        m61300n(curr, m61297b, null);
        return atomicReferenceArray;
    }

    /* renamed from: i */
    public final long m61306i() {
        return this.f97461e.get();
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public boolean isEmpty() {
        return m61306i() == m61304f();
    }

    /* renamed from: j */
    public final T m61307j(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f97467k = atomicReferenceArray;
        return (T) m61299g(atomicReferenceArray, m61298c(j, i));
    }

    /* renamed from: k */
    public final T m61308k(AtomicReferenceArray<Object> atomicReferenceArray, long j, int i) {
        this.f97467k = atomicReferenceArray;
        int m61298c = m61298c(j, i);
        T t = (T) m61299g(atomicReferenceArray, m61298c);
        if (t != null) {
            m61300n(atomicReferenceArray, m61298c, null);
            m61310m(j + 1);
        }
        return t;
    }

    /* renamed from: l */
    public final void m61309l(final AtomicReferenceArray<Object> oldBuffer, final long currIndex, final int offset, final T e, final long mask) {
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(oldBuffer.length());
        this.f97465i = atomicReferenceArray;
        this.f97463g = (mask + currIndex) - 1;
        m61300n(atomicReferenceArray, offset, e);
        m61311o(oldBuffer, atomicReferenceArray);
        m61300n(oldBuffer, offset, f97460n);
        m61312p(currIndex + 1);
    }

    /* renamed from: m */
    public final void m61310m(long v) {
        this.f97468l.lazySet(v);
    }

    /* renamed from: o */
    public final void m61311o(AtomicReferenceArray<Object> curr, AtomicReferenceArray<Object> next) {
        m61300n(curr, m61297b(curr.length() - 1), next);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public boolean offer(final T e) {
        if (e != null) {
            AtomicReferenceArray<Object> atomicReferenceArray = this.f97465i;
            long m61303e = m61303e();
            int i = this.f97464h;
            int m61298c = m61298c(m61303e, i);
            if (m61303e < this.f97463g) {
                return m61313q(atomicReferenceArray, e, m61303e, m61298c);
            }
            long j = this.f97462f + m61303e;
            if (m61299g(atomicReferenceArray, m61298c(j, i)) == null) {
                this.f97463g = j - 1;
                return m61313q(atomicReferenceArray, e, m61303e, m61298c);
            }
            if (m61299g(atomicReferenceArray, m61298c(1 + m61303e, i)) == null) {
                return m61313q(atomicReferenceArray, e, m61303e, m61298c);
            }
            m61309l(atomicReferenceArray, m61303e, m61298c, e, i);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    /* renamed from: p */
    public final void m61312p(long v) {
        this.f97461e.lazySet(v);
    }

    @Nullable
    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f97467k;
        long m61302d = m61302d();
        int i = this.f97466j;
        T t = (T) m61299g(atomicReferenceArray, m61298c(m61302d, i));
        return t == f97460n ? m61307j(m61305h(atomicReferenceArray, i + 1), m61302d, i) : t;
    }

    @Override // io.reactivex.rxjava3.operators.SimplePlainQueue, io.reactivex.rxjava3.operators.SimpleQueue
    @Nullable
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f97467k;
        long m61302d = m61302d();
        int i = this.f97466j;
        int m61298c = m61298c(m61302d, i);
        T t = (T) m61299g(atomicReferenceArray, m61298c);
        boolean z = t == f97460n;
        if (t == null || z) {
            if (z) {
                return m61308k(m61305h(atomicReferenceArray, i + 1), m61302d, i);
            }
            return null;
        }
        m61300n(atomicReferenceArray, m61298c, null);
        m61310m(m61302d + 1);
        return t;
    }

    /* renamed from: q */
    public final boolean m61313q(final AtomicReferenceArray<Object> buffer, final T e, final long index, final int offset) {
        m61300n(buffer, offset, e);
        m61312p(index + 1);
        return true;
    }

    public int size() {
        long m61304f = m61304f();
        while (true) {
            long m61306i = m61306i();
            long m61304f2 = m61304f();
            if (m61304f == m61304f2) {
                return (int) (m61306i - m61304f2);
            }
            m61304f = m61304f2;
        }
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public boolean offer(T first, T second) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f97465i;
        long m61306i = m61306i();
        int i = this.f97464h;
        long j = 2 + m61306i;
        if (m61299g(atomicReferenceArray, m61298c(j, i)) == null) {
            int m61298c = m61298c(m61306i, i);
            m61300n(atomicReferenceArray, m61298c + 1, second);
            m61300n(atomicReferenceArray, m61298c, first);
            m61312p(j);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f97465i = atomicReferenceArray2;
        int m61298c2 = m61298c(m61306i, i);
        m61300n(atomicReferenceArray2, m61298c2 + 1, second);
        m61300n(atomicReferenceArray2, m61298c2, first);
        m61311o(atomicReferenceArray, atomicReferenceArray2);
        m61300n(atomicReferenceArray, m61298c2, f97460n);
        m61312p(j);
        return true;
    }
}
