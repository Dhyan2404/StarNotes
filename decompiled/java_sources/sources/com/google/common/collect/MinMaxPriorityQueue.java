package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.Weak;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import java.util.AbstractQueue;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Queue;
import javax.annotation.CheckForNull;

@Beta
@GwtCompatible
@snf
/* loaded from: classes6.dex */
public final class MinMaxPriorityQueue<E> extends AbstractQueue<E> {

    /* renamed from: k */
    public static final int f34274k = 1431655765;

    /* renamed from: l */
    public static final int f34275l = -1431655766;

    /* renamed from: m */
    public static final int f34276m = 11;

    /* renamed from: e */
    public final MinMaxPriorityQueue<E>.C5974b f34277e;

    /* renamed from: f */
    public final MinMaxPriorityQueue<E>.C5974b f34278f;

    /* renamed from: g */
    @VisibleForTesting
    public final int f34279g;

    /* renamed from: h */
    public Object[] f34280h;

    /* renamed from: i */
    public int f34281i;

    /* renamed from: j */
    public int f34282j;

    @Beta
    /* loaded from: classes6.dex */
    public static final class Builder<B> {

        /* renamed from: d */
        public static final int f34283d = -1;

        /* renamed from: a */
        public final Comparator<B> f34284a;

        /* renamed from: b */
        public int f34285b;

        /* renamed from: c */
        public int f34286c;

        /* renamed from: c */
        public final <T extends B> Ordering<T> m26573c() {
            return Ordering.from(this.f34284a);
        }

        public <T extends B> MinMaxPriorityQueue<T> create() {
            return create(Collections.emptySet());
        }

        @CanIgnoreReturnValue
        public Builder<B> expectedSize(int i) {
            Preconditions.checkArgument(i >= 0);
            this.f34285b = i;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<B> maximumSize(int i) {
            Preconditions.checkArgument(i > 0);
            this.f34286c = i;
            return this;
        }

        public Builder(Comparator<B> comparator) {
            this.f34285b = -1;
            this.f34286c = Integer.MAX_VALUE;
            this.f34284a = (Comparator) Preconditions.checkNotNull(comparator);
        }

        public <T extends B> MinMaxPriorityQueue<T> create(Iterable<? extends T> iterable) {
            MinMaxPriorityQueue<T> minMaxPriorityQueue = new MinMaxPriorityQueue<>(this, MinMaxPriorityQueue.m26559m(this.f34285b, this.f34286c, iterable));
            Iterator<? extends T> it2 = iterable.iterator();
            while (it2.hasNext()) {
                minMaxPriorityQueue.offer(it2.next());
            }
            return minMaxPriorityQueue;
        }
    }

    /* renamed from: com.google.common.collect.MinMaxPriorityQueue$b */
    /* loaded from: classes6.dex */
    public class C5974b {

        /* renamed from: a */
        public final Ordering<E> f34287a;

        /* renamed from: b */
        @Weak
        public MinMaxPriorityQueue<E>.C5974b f34288b;

        public C5974b(Ordering<E> ordering) {
            this.f34287a = ordering;
        }

        /* renamed from: b */
        public void m26575b(int i, E e) {
            int m26579f = m26579f(i, e);
            if (m26579f != i) {
                this = this.f34288b;
                i = m26579f;
            }
            this.m26576c(i, e);
        }

        @CanIgnoreReturnValue
        /* renamed from: c */
        public int m26576c(int i, E e) {
            while (i > 2) {
                int m26584k = m26584k(i);
                Object m26563h = MinMaxPriorityQueue.this.m26563h(m26584k);
                if (this.f34287a.compare(m26563h, e) <= 0) {
                    break;
                }
                MinMaxPriorityQueue.this.f34280h[i] = m26563h;
                i = m26584k;
            }
            MinMaxPriorityQueue.this.f34280h[i] = e;
            return i;
        }

        /* renamed from: d */
        public int m26577d(int i, int i2) {
            return this.f34287a.compare(MinMaxPriorityQueue.this.m26563h(i), MinMaxPriorityQueue.this.m26563h(i2));
        }

        /* renamed from: e */
        public int m26578e(int i, E e) {
            int m26582i = m26582i(i);
            if (m26582i <= 0 || this.f34287a.compare(MinMaxPriorityQueue.this.m26563h(m26582i), e) >= 0) {
                return m26579f(i, e);
            }
            MinMaxPriorityQueue.this.f34280h[i] = MinMaxPriorityQueue.this.m26563h(m26582i);
            MinMaxPriorityQueue.this.f34280h[m26582i] = e;
            return m26582i;
        }

        /* renamed from: f */
        public int m26579f(int i, E e) {
            int m26587n;
            if (i == 0) {
                MinMaxPriorityQueue.this.f34280h[0] = e;
                return 0;
            }
            int m26586m = m26586m(i);
            Object m26563h = MinMaxPriorityQueue.this.m26563h(m26586m);
            if (m26586m != 0 && (m26587n = m26587n(m26586m(m26586m))) != m26586m && m26585l(m26587n) >= MinMaxPriorityQueue.this.f34281i) {
                Object m26563h2 = MinMaxPriorityQueue.this.m26563h(m26587n);
                if (this.f34287a.compare(m26563h2, m26563h) < 0) {
                    m26586m = m26587n;
                    m26563h = m26563h2;
                }
            }
            if (this.f34287a.compare(m26563h, e) >= 0) {
                MinMaxPriorityQueue.this.f34280h[i] = e;
                return i;
            }
            MinMaxPriorityQueue.this.f34280h[i] = m26563h;
            MinMaxPriorityQueue.this.f34280h[m26586m] = e;
            return m26586m;
        }

        /* renamed from: g */
        public int m26580g(int i) {
            while (true) {
                int m26583j = m26583j(i);
                if (m26583j <= 0) {
                    return i;
                }
                MinMaxPriorityQueue.this.f34280h[i] = MinMaxPriorityQueue.this.m26563h(m26583j);
                i = m26583j;
            }
        }

        /* renamed from: h */
        public int m26581h(int i, int i2) {
            if (i >= MinMaxPriorityQueue.this.f34281i) {
                return -1;
            }
            Preconditions.checkState(i > 0);
            int min = Math.min(i, MinMaxPriorityQueue.this.f34281i - i2) + i2;
            for (int i3 = i + 1; i3 < min; i3++) {
                if (m26577d(i3, i) < 0) {
                    i = i3;
                }
            }
            return i;
        }

        /* renamed from: i */
        public int m26582i(int i) {
            return m26581h(m26585l(i), 2);
        }

        /* renamed from: j */
        public int m26583j(int i) {
            int m26585l = m26585l(i);
            if (m26585l < 0) {
                return -1;
            }
            return m26581h(m26585l(m26585l), 4);
        }

        /* renamed from: k */
        public final int m26584k(int i) {
            return m26586m(m26586m(i));
        }

        /* renamed from: l */
        public final int m26585l(int i) {
            return (i * 2) + 1;
        }

        /* renamed from: m */
        public final int m26586m(int i) {
            return (i - 1) / 2;
        }

        /* renamed from: n */
        public final int m26587n(int i) {
            return (i * 2) + 2;
        }

        /* renamed from: o */
        public int m26588o(E e) {
            int m26587n;
            int m26586m = m26586m(MinMaxPriorityQueue.this.f34281i);
            if (m26586m != 0 && (m26587n = m26587n(m26586m(m26586m))) != m26586m && m26585l(m26587n) >= MinMaxPriorityQueue.this.f34281i) {
                Object m26563h = MinMaxPriorityQueue.this.m26563h(m26587n);
                if (this.f34287a.compare(m26563h, e) < 0) {
                    MinMaxPriorityQueue.this.f34280h[m26587n] = e;
                    MinMaxPriorityQueue.this.f34280h[MinMaxPriorityQueue.this.f34281i] = m26563h;
                    return m26587n;
                }
            }
            return MinMaxPriorityQueue.this.f34281i;
        }

        @CheckForNull
        /* renamed from: p */
        public C5975c<E> m26589p(int i, int i2, E e) {
            int m26578e = m26578e(i2, e);
            if (m26578e == i2) {
                return null;
            }
            Object m26563h = m26578e < i ? MinMaxPriorityQueue.this.m26563h(i) : MinMaxPriorityQueue.this.m26563h(m26586m(i));
            if (this.f34288b.m26576c(m26578e, e) < i) {
                return new C5975c<>(e, m26563h);
            }
            return null;
        }

        /* renamed from: q */
        public final boolean m26590q(int i) {
            if (m26585l(i) < MinMaxPriorityQueue.this.f34281i && m26577d(i, m26585l(i)) > 0) {
                return false;
            }
            if (m26587n(i) < MinMaxPriorityQueue.this.f34281i && m26577d(i, m26587n(i)) > 0) {
                return false;
            }
            if (i <= 0 || m26577d(i, m26586m(i)) <= 0) {
                return i <= 2 || m26577d(m26584k(i), i) <= 0;
            }
            return false;
        }
    }

    /* renamed from: com.google.common.collect.MinMaxPriorityQueue$c */
    /* loaded from: classes6.dex */
    public static class C5975c<E> {

        /* renamed from: a */
        public final E f34290a;

        /* renamed from: b */
        public final E f34291b;

        public C5975c(E e, E e2) {
            this.f34290a = e;
            this.f34291b = e2;
        }
    }

    /* renamed from: com.google.common.collect.MinMaxPriorityQueue$d */
    /* loaded from: classes6.dex */
    public class C5976d implements Iterator<E> {

        /* renamed from: e */
        public int f34292e;

        /* renamed from: f */
        public int f34293f;

        /* renamed from: g */
        public int f34294g;

        /* renamed from: h */
        @CheckForNull
        public Queue<E> f34295h;

        /* renamed from: i */
        @CheckForNull
        public List<E> f34296i;

        /* renamed from: j */
        @CheckForNull
        public E f34297j;

        /* renamed from: k */
        public boolean f34298k;

        public C5976d() {
            this.f34292e = -1;
            this.f34293f = -1;
            this.f34294g = MinMaxPriorityQueue.this.f34282j;
        }

        /* renamed from: a */
        public final void m26591a() {
            if (MinMaxPriorityQueue.this.f34282j != this.f34294g) {
                throw new ConcurrentModificationException();
            }
        }

        /* renamed from: b */
        public final boolean m26592b(Iterable<E> iterable, E e) {
            Iterator<E> it2 = iterable.iterator();
            while (it2.hasNext()) {
                if (it2.next() == e) {
                    it2.remove();
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        public final void m26593c(int i) {
            if (this.f34293f < i) {
                if (this.f34296i != null) {
                    while (i < MinMaxPriorityQueue.this.size() && m26592b(this.f34296i, MinMaxPriorityQueue.this.m26563h(i))) {
                        i++;
                    }
                }
                this.f34293f = i;
            }
        }

        /* renamed from: d */
        public final boolean m26594d(Object obj) {
            for (int i = 0; i < MinMaxPriorityQueue.this.f34281i; i++) {
                if (MinMaxPriorityQueue.this.f34280h[i] == obj) {
                    MinMaxPriorityQueue.this.m26570q(i);
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m26591a();
            m26593c(this.f34292e + 1);
            if (this.f34293f < MinMaxPriorityQueue.this.size()) {
                return true;
            }
            Queue<E> queue = this.f34295h;
            return (queue == null || queue.isEmpty()) ? false : true;
        }

        @Override // java.util.Iterator
        public E next() {
            m26591a();
            m26593c(this.f34292e + 1);
            if (this.f34293f < MinMaxPriorityQueue.this.size()) {
                int i = this.f34293f;
                this.f34292e = i;
                this.f34298k = true;
                return (E) MinMaxPriorityQueue.this.m26563h(i);
            }
            if (this.f34295h != null) {
                this.f34292e = MinMaxPriorityQueue.this.size();
                E poll = this.f34295h.poll();
                this.f34297j = poll;
                if (poll != null) {
                    this.f34298k = true;
                    return poll;
                }
            }
            throw new NoSuchElementException("iterator moved past last element in queue.");
        }

        @Override // java.util.Iterator
        public void remove() {
            szd.m57282e(this.f34298k);
            m26591a();
            this.f34298k = false;
            this.f34294g++;
            if (this.f34292e >= MinMaxPriorityQueue.this.size()) {
                E e = this.f34297j;
                Objects.requireNonNull(e);
                Preconditions.checkState(m26594d(e));
                this.f34297j = null;
                return;
            }
            C5975c<E> m26570q = MinMaxPriorityQueue.this.m26570q(this.f34292e);
            if (m26570q != null) {
                if (this.f34295h == null || this.f34296i == null) {
                    this.f34295h = new ArrayDeque();
                    this.f34296i = new ArrayList(3);
                }
                if (!m26592b(this.f34296i, m26570q.f34290a)) {
                    this.f34295h.add(m26570q.f34290a);
                }
                if (!m26592b(this.f34295h, m26570q.f34291b)) {
                    this.f34296i.add(m26570q.f34291b);
                }
            }
            this.f34292e--;
            this.f34293f--;
        }
    }

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create() {
        return new Builder(Ordering.natural()).create();
    }

    /* renamed from: e */
    public static int m26558e(int i, int i2) {
        return Math.min(i - 1, i2) + 1;
    }

    public static Builder<Comparable> expectedSize(int i) {
        return new Builder(Ordering.natural()).expectedSize(i);
    }

    @VisibleForTesting
    /* renamed from: m */
    public static int m26559m(int i, int i2, Iterable<?> iterable) {
        if (i == -1) {
            i = 11;
        }
        if (iterable instanceof Collection) {
            i = Math.max(i, ((Collection) iterable).size());
        }
        return m26558e(i, i2);
    }

    public static Builder<Comparable> maximumSize(int i) {
        return new Builder(Ordering.natural()).maximumSize(i);
    }

    @VisibleForTesting
    /* renamed from: n */
    public static boolean m26560n(int i) {
        int i2 = ~(~(i + 1));
        Preconditions.checkState(i2 > 0, "negative index");
        return (1431655765 & i2) > (i2 & f34275l);
    }

    public static <B> Builder<B> orderedBy(Comparator<B> comparator) {
        return new Builder<>(comparator);
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    @CanIgnoreReturnValue
    public boolean add(E e) {
        offer(e);
        return true;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    @CanIgnoreReturnValue
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            offer(it2.next());
            z = true;
        }
        return z;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        for (int i = 0; i < this.f34281i; i++) {
            this.f34280h[i] = null;
        }
        this.f34281i = 0;
    }

    public Comparator<? super E> comparator() {
        return this.f34277e.f34287a;
    }

    /* renamed from: d */
    public final int m26561d() {
        int length = this.f34280h.length;
        return m26558e(length < 64 ? (length + 1) * 2 : IntMath.checkedMultiply(length / 2, 3), this.f34279g);
    }

    @VisibleForTesting
    /* renamed from: g */
    public int m26562g() {
        return this.f34280h.length;
    }

    /* renamed from: h */
    public E m26563h(int i) {
        E e = (E) this.f34280h[i];
        Objects.requireNonNull(e);
        return e;
    }

    @CheckForNull
    /* renamed from: i */
    public final C5975c<E> m26564i(int i, E e) {
        MinMaxPriorityQueue<E>.C5974b m26567l = m26567l(i);
        int m26580g = m26567l.m26580g(i);
        int m26576c = m26567l.m26576c(m26580g, e);
        if (m26576c == m26580g) {
            return m26567l.m26589p(i, m26580g, e);
        }
        if (m26576c < i) {
            return new C5975c<>(e, m26563h(i));
        }
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new C5976d();
    }

    /* renamed from: j */
    public final int m26565j() {
        int i = this.f34281i;
        if (i != 1) {
            return (i == 2 || this.f34278f.m26577d(1, 2) <= 0) ? 1 : 2;
        }
        return 0;
    }

    /* renamed from: k */
    public final void m26566k() {
        if (this.f34281i > this.f34280h.length) {
            Object[] objArr = new Object[m26561d()];
            Object[] objArr2 = this.f34280h;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f34280h = objArr;
        }
    }

    /* renamed from: l */
    public final MinMaxPriorityQueue<E>.C5974b m26567l(int i) {
        return m26560n(i) ? this.f34277e : this.f34278f;
    }

    @VisibleForTesting
    /* renamed from: o */
    public boolean m26568o() {
        for (int i = 1; i < this.f34281i; i++) {
            if (!m26567l(i).m26590q(i)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Queue
    @CanIgnoreReturnValue
    public boolean offer(E e) {
        Preconditions.checkNotNull(e);
        this.f34282j++;
        int i = this.f34281i;
        this.f34281i = i + 1;
        m26566k();
        m26567l(i).m26575b(i, e);
        return this.f34281i <= this.f34279g || pollLast() != e;
    }

    /* renamed from: p */
    public final E m26569p(int i) {
        E m26563h = m26563h(i);
        m26570q(i);
        return m26563h;
    }

    @Override // java.util.Queue
    @CheckForNull
    public E peek() {
        if (isEmpty()) {
            return null;
        }
        return m26563h(0);
    }

    @CheckForNull
    public E peekFirst() {
        return peek();
    }

    @CheckForNull
    public E peekLast() {
        if (isEmpty()) {
            return null;
        }
        return m26563h(m26565j());
    }

    @Override // java.util.Queue
    @CanIgnoreReturnValue
    @CheckForNull
    public E poll() {
        if (isEmpty()) {
            return null;
        }
        return m26569p(0);
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public E pollFirst() {
        return poll();
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public E pollLast() {
        if (isEmpty()) {
            return null;
        }
        return m26569p(m26565j());
    }

    @VisibleForTesting
    @CanIgnoreReturnValue
    @CheckForNull
    /* renamed from: q */
    public C5975c<E> m26570q(int i) {
        Preconditions.checkPositionIndex(i, this.f34281i);
        this.f34282j++;
        int i2 = this.f34281i - 1;
        this.f34281i = i2;
        if (i2 == i) {
            this.f34280h[i2] = null;
            return null;
        }
        E m26563h = m26563h(i2);
        int m26588o = m26567l(this.f34281i).m26588o(m26563h);
        if (m26588o == i) {
            this.f34280h[this.f34281i] = null;
            return null;
        }
        E m26563h2 = m26563h(this.f34281i);
        this.f34280h[this.f34281i] = null;
        C5975c<E> m26564i = m26564i(i, m26563h2);
        return m26588o < i ? m26564i == null ? new C5975c<>(m26563h, m26563h2) : new C5975c<>(m26563h, m26564i.f34291b) : m26564i;
    }

    @CanIgnoreReturnValue
    public E removeFirst() {
        return remove();
    }

    @CanIgnoreReturnValue
    public E removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return m26569p(m26565j());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f34281i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        int i = this.f34281i;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f34280h, 0, objArr, 0, i);
        return objArr;
    }

    public MinMaxPriorityQueue(Builder<? super E> builder, int i) {
        Ordering m26573c = builder.m26573c();
        MinMaxPriorityQueue<E>.C5974b c5974b = new C5974b(m26573c);
        this.f34277e = c5974b;
        MinMaxPriorityQueue<E>.C5974b c5974b2 = new C5974b(m26573c.reverse());
        this.f34278f = c5974b2;
        c5974b.f34288b = c5974b2;
        c5974b2.f34288b = c5974b;
        this.f34279g = builder.f34286c;
        this.f34280h = new Object[i];
    }

    public static <E extends Comparable<E>> MinMaxPriorityQueue<E> create(Iterable<? extends E> iterable) {
        return new Builder(Ordering.natural()).create(iterable);
    }
}
