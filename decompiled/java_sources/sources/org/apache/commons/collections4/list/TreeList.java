package org.apache.commons.collections4.list;

import java.util.AbstractList;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.OrderedIterator;

/* loaded from: classes11.dex */
public class TreeList<E> extends AbstractList<E> {

    /* renamed from: e */
    public C18749b<E> f105134e;

    /* renamed from: f */
    public int f105135f;

    /* renamed from: org.apache.commons.collections4.list.TreeList$c */
    /* loaded from: classes11.dex */
    public static class C18750c<E> implements ListIterator<E>, OrderedIterator<E> {

        /* renamed from: e */
        public final TreeList<E> f105143e;

        /* renamed from: f */
        public C18749b<E> f105144f;

        /* renamed from: g */
        public int f105145g;

        /* renamed from: h */
        public C18749b<E> f105146h;

        /* renamed from: i */
        public int f105147i;

        /* renamed from: j */
        public int f105148j;

        public C18750c(TreeList<E> treeList, int i) throws IndexOutOfBoundsException {
            this.f105143e = treeList;
            this.f105148j = ((AbstractList) treeList).modCount;
            this.f105144f = treeList.f105134e == null ? null : treeList.f105134e.m65988f(i);
            this.f105145g = i;
            this.f105147i = -1;
        }

        /* renamed from: a */
        public void m66009a() {
            if (((AbstractList) this.f105143e).modCount != this.f105148j) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            m66009a();
            this.f105143e.add(this.f105145g, e);
            this.f105146h = null;
            this.f105147i = -1;
            this.f105145g++;
            this.f105148j++;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f105145g < this.f105143e.size();
        }

        @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
        public boolean hasPrevious() {
            return this.f105145g > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            m66009a();
            if (!hasNext()) {
                throw new NoSuchElementException("No element at index " + this.f105145g + ".");
            }
            if (this.f105144f == null) {
                this.f105144f = this.f105143e.f105134e.m65988f(this.f105145g);
            }
            E m65993k = this.f105144f.m65993k();
            C18749b<E> c18749b = this.f105144f;
            this.f105146h = c18749b;
            int i = this.f105145g;
            this.f105145g = i + 1;
            this.f105147i = i;
            this.f105144f = c18749b.m66001s();
            return m65993k;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f105145g;
        }

        @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
        public E previous() {
            m66009a();
            if (!hasPrevious()) {
                throw new NoSuchElementException("Already at start of list.");
            }
            C18749b<E> c18749b = this.f105144f;
            if (c18749b == null) {
                this.f105144f = this.f105143e.f105134e.m65988f(this.f105145g - 1);
            } else {
                this.f105144f = c18749b.m66002t();
            }
            E m65993k = this.f105144f.m65993k();
            this.f105146h = this.f105144f;
            int i = this.f105145g - 1;
            this.f105145g = i;
            this.f105147i = i;
            return m65993k;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return nextIndex() - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            m66009a();
            int i = this.f105147i;
            if (i == -1) {
                throw new IllegalStateException();
            }
            this.f105143e.remove(i);
            int i2 = this.f105145g;
            if (i2 != this.f105147i) {
                this.f105145g = i2 - 1;
            }
            this.f105144f = null;
            this.f105146h = null;
            this.f105147i = -1;
            this.f105148j++;
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            m66009a();
            C18749b<E> c18749b = this.f105146h;
            if (c18749b == null) {
                throw new IllegalStateException();
            }
            c18749b.m65984E(e);
        }
    }

    public TreeList() {
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        ((AbstractList) this).modCount++;
        m65976d(i, 0, size());
        C18749b<E> c18749b = this.f105134e;
        if (c18749b == null) {
            this.f105134e = new C18749b<>(i, e, null, null);
        } else {
            this.f105134e = c18749b.m65996n(i, e);
        }
        this.f105135f++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount += collection.size();
        C18749b<E> c18749b = new C18749b<>(collection);
        C18749b<E> c18749b2 = this.f105134e;
        if (c18749b2 != null) {
            c18749b = c18749b2.m65986d(c18749b, this.f105135f);
        }
        this.f105134e = c18749b;
        this.f105135f += collection.size();
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        ((AbstractList) this).modCount++;
        this.f105134e = null;
        this.f105135f = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    /* renamed from: d */
    public final void m65976d(int i, int i2, int i3) {
        if (i < i2 || i > i3) {
            throw new IndexOutOfBoundsException("Invalid index:" + i + ", size=" + size());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i) {
        m65976d(i, 0, size() - 1);
        return this.f105134e.m65988f(i).m65993k();
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        C18749b<E> c18749b = this.f105134e;
        if (c18749b == null) {
            return -1;
        }
        return c18749b.m65995m(obj, c18749b.f105141f);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        ((AbstractList) this).modCount++;
        m65976d(i, 0, size() - 1);
        E e = get(i);
        this.f105134e = this.f105134e.m66004v(i);
        this.f105135f--;
        return e;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m65976d(i, 0, size() - 1);
        C18749b<E> m65988f = this.f105134e.m65988f(i);
        E e2 = (E) m65988f.f105142g;
        m65988f.m65984E(e);
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f105135f;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        C18749b<E> c18749b = this.f105134e;
        if (c18749b != null) {
            c18749b.m65985F(objArr, c18749b.f105141f);
        }
        return objArr;
    }

    /* renamed from: org.apache.commons.collections4.list.TreeList$b */
    /* loaded from: classes11.dex */
    public static class C18749b<E> {

        /* renamed from: a */
        public C18749b<E> f105136a;

        /* renamed from: b */
        public boolean f105137b;

        /* renamed from: c */
        public C18749b<E> f105138c;

        /* renamed from: d */
        public boolean f105139d;

        /* renamed from: e */
        public int f105140e;

        /* renamed from: f */
        public int f105141f;

        /* renamed from: g */
        public E f105142g;

        /* renamed from: A */
        public final C18749b<E> m65980A() {
            C18749b<E> c18749b = this.f105136a;
            C18749b<E> m65992j = m65990h().m65992j();
            int m65991i = this.f105141f + m65991i(c18749b);
            int i = -c18749b.f105141f;
            int m65991i2 = m65991i(c18749b) + m65991i(m65992j);
            m65981B(m65992j, c18749b);
            c18749b.m65983D(this, null);
            m65982C(c18749b, m65991i);
            m65982C(this, i);
            m65982C(m65992j, m65991i2);
            return c18749b;
        }

        /* renamed from: B */
        public final void m65981B(C18749b<E> c18749b, C18749b<E> c18749b2) {
            boolean z = c18749b == null;
            this.f105137b = z;
            if (z) {
                c18749b = c18749b2;
            }
            this.f105136a = c18749b;
            m66003u();
        }

        /* renamed from: C */
        public final int m65982C(C18749b<E> c18749b, int i) {
            if (c18749b == null) {
                return 0;
            }
            int m65991i = m65991i(c18749b);
            c18749b.f105141f = i;
            return m65991i;
        }

        /* renamed from: D */
        public final void m65983D(C18749b<E> c18749b, C18749b<E> c18749b2) {
            boolean z = c18749b == null;
            this.f105139d = z;
            if (z) {
                c18749b = c18749b2;
            }
            this.f105138c = c18749b;
            m66003u();
        }

        /* renamed from: E */
        public void m65984E(E e) {
            this.f105142g = e;
        }

        /* renamed from: F */
        public void m65985F(Object[] objArr, int i) {
            objArr[i] = this.f105142g;
            if (m65990h() != null) {
                C18749b<E> c18749b = this.f105136a;
                c18749b.m65985F(objArr, c18749b.f105141f + i);
            }
            if (m65992j() != null) {
                C18749b<E> c18749b2 = this.f105138c;
                c18749b2.m65985F(objArr, i + c18749b2.f105141f);
            }
        }

        /* renamed from: d */
        public final C18749b<E> m65986d(C18749b<E> c18749b, int i) {
            int i2;
            int i3;
            C18749b<E> m65999q = m65999q();
            C18749b<E> m66000r = c18749b.m66000r();
            int i4 = 0;
            if (c18749b.f105140e <= this.f105140e) {
                C18749b<E> m66006x = c18749b.m66006x();
                ArrayDeque arrayDeque = new ArrayDeque();
                int i5 = this.f105141f;
                C18749b<E> c18749b2 = this;
                loop3: while (true) {
                    int i6 = i4;
                    i4 = i5;
                    i2 = i6;
                    while (c18749b2 != null && c18749b2.f105140e > m65989g(m66006x)) {
                        arrayDeque.push(c18749b2);
                        c18749b2 = c18749b2.f105138c;
                        if (c18749b2 != null) {
                            break;
                        }
                        i2 = i4;
                    }
                    i5 = c18749b2.f105141f + i4;
                }
                m66000r.m65983D(m66006x, null);
                m66000r.m65981B(c18749b2, m65999q);
                if (m66006x != null) {
                    m66006x.m66000r().m65981B(null, m66000r);
                    m66006x.f105141f++;
                }
                if (c18749b2 != null) {
                    c18749b2.m65999q().m65983D(null, m66000r);
                    c18749b2.f105141f = i4 - i;
                }
                m66000r.f105141f = i - i2;
                while (!arrayDeque.isEmpty()) {
                    C18749b c18749b3 = (C18749b) arrayDeque.pop();
                    c18749b3.m65983D(m66000r, null);
                    m66000r = c18749b3.m65987e();
                }
                return m66000r;
            }
            C18749b<E> m66005w = m66005w();
            ArrayDeque arrayDeque2 = new ArrayDeque();
            int i7 = c18749b.f105141f + i;
            C18749b<E> c18749b4 = c18749b;
            loop0: while (true) {
                int i8 = i7;
                i3 = i4;
                i4 = i8;
                while (c18749b4 != null && c18749b4.f105140e > m65989g(m66005w)) {
                    arrayDeque2.push(c18749b4);
                    c18749b4 = c18749b4.f105136a;
                    if (c18749b4 != null) {
                        break;
                    }
                    i3 = i4;
                }
                i7 = c18749b4.f105141f + i4;
            }
            m65999q.m65981B(m66005w, null);
            m65999q.m65983D(c18749b4, m66000r);
            if (m66005w != null) {
                m66005w.m65999q().m65983D(null, m65999q);
                m66005w.f105141f -= i - 1;
            }
            if (c18749b4 != null) {
                c18749b4.m66000r().m65981B(null, m65999q);
                c18749b4.f105141f = (i4 - i) + 1;
            }
            m65999q.f105141f = (i - 1) - i3;
            c18749b.f105141f += i;
            while (!arrayDeque2.isEmpty()) {
                C18749b c18749b5 = (C18749b) arrayDeque2.pop();
                c18749b5.m65981B(m65999q, null);
                m65999q = c18749b5.m65987e();
            }
            return m65999q;
        }

        /* renamed from: e */
        public final C18749b<E> m65987e() {
            int m65994l = m65994l();
            if (m65994l == -2) {
                if (this.f105136a.m65994l() > 0) {
                    m65981B(this.f105136a.m66008z(), null);
                }
                return m65980A();
            }
            if (m65994l == -1 || m65994l == 0 || m65994l == 1) {
                return this;
            }
            if (m65994l != 2) {
                throw new RuntimeException("tree inconsistent!");
            }
            if (this.f105138c.m65994l() < 0) {
                m65983D(this.f105138c.m65980A(), null);
            }
            return m66008z();
        }

        /* renamed from: f */
        public C18749b<E> m65988f(int i) {
            int i2 = i - this.f105141f;
            if (i2 == 0) {
                return this;
            }
            C18749b<E> m65990h = i2 < 0 ? m65990h() : m65992j();
            if (m65990h == null) {
                return null;
            }
            return m65990h.m65988f(i2);
        }

        /* renamed from: g */
        public final int m65989g(C18749b<E> c18749b) {
            if (c18749b == null) {
                return -1;
            }
            return c18749b.f105140e;
        }

        /* renamed from: h */
        public final C18749b<E> m65990h() {
            if (this.f105137b) {
                return null;
            }
            return this.f105136a;
        }

        /* renamed from: i */
        public final int m65991i(C18749b<E> c18749b) {
            if (c18749b == null) {
                return 0;
            }
            return c18749b.f105141f;
        }

        /* renamed from: j */
        public final C18749b<E> m65992j() {
            if (this.f105139d) {
                return null;
            }
            return this.f105138c;
        }

        /* renamed from: k */
        public E m65993k() {
            return this.f105142g;
        }

        /* renamed from: l */
        public final int m65994l() {
            return m65989g(m65992j()) - m65989g(m65990h());
        }

        /* renamed from: m */
        public int m65995m(Object obj, int i) {
            if (m65990h() != null) {
                C18749b<E> c18749b = this.f105136a;
                int m65995m = c18749b.m65995m(obj, c18749b.f105141f + i);
                if (m65995m != -1) {
                    return m65995m;
                }
            }
            E e = this.f105142g;
            if (e != null ? e.equals(obj) : e == obj) {
                return i;
            }
            if (m65992j() == null) {
                return -1;
            }
            C18749b<E> c18749b2 = this.f105138c;
            return c18749b2.m65995m(obj, i + c18749b2.f105141f);
        }

        /* renamed from: n */
        public C18749b<E> m65996n(int i, E e) {
            int i2 = i - this.f105141f;
            return i2 <= 0 ? m65997o(i2, e) : m65998p(i2, e);
        }

        /* renamed from: o */
        public final C18749b<E> m65997o(int i, E e) {
            if (m65990h() == null) {
                m65981B(new C18749b<>(-1, e, this, this.f105136a), null);
            } else {
                m65981B(this.f105136a.m65996n(i, e), null);
            }
            int i2 = this.f105141f;
            if (i2 >= 0) {
                this.f105141f = i2 + 1;
            }
            C18749b<E> m65987e = m65987e();
            m66003u();
            return m65987e;
        }

        /* renamed from: p */
        public final C18749b<E> m65998p(int i, E e) {
            if (m65992j() == null) {
                m65983D(new C18749b<>(1, e, this.f105138c, this), null);
            } else {
                m65983D(this.f105138c.m65996n(i, e), null);
            }
            int i2 = this.f105141f;
            if (i2 < 0) {
                this.f105141f = i2 - 1;
            }
            C18749b<E> m65987e = m65987e();
            m66003u();
            return m65987e;
        }

        /* renamed from: q */
        public final C18749b<E> m65999q() {
            return m65992j() == null ? this : this.f105138c.m65999q();
        }

        /* renamed from: r */
        public final C18749b<E> m66000r() {
            return m65990h() == null ? this : this.f105136a.m66000r();
        }

        /* renamed from: s */
        public C18749b<E> m66001s() {
            C18749b<E> c18749b;
            return (this.f105139d || (c18749b = this.f105138c) == null) ? this.f105138c : c18749b.m66000r();
        }

        /* renamed from: t */
        public C18749b<E> m66002t() {
            C18749b<E> c18749b;
            return (this.f105137b || (c18749b = this.f105136a) == null) ? this.f105136a : c18749b.m65999q();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("AVLNode(");
            sb.append(this.f105141f);
            sb.append(',');
            sb.append(this.f105136a != null);
            sb.append(',');
            sb.append(this.f105142g);
            sb.append(',');
            sb.append(m65992j() != null);
            sb.append(", faedelung ");
            sb.append(this.f105139d);
            sb.append(" )");
            return sb.toString();
        }

        /* renamed from: u */
        public final void m66003u() {
            this.f105140e = Math.max(m65990h() == null ? -1 : m65990h().f105140e, m65992j() != null ? m65992j().f105140e : -1) + 1;
        }

        /* renamed from: v */
        public C18749b<E> m66004v(int i) {
            int i2 = i - this.f105141f;
            if (i2 == 0) {
                return m66007y();
            }
            if (i2 > 0) {
                m65983D(this.f105138c.m66004v(i2), this.f105138c.f105138c);
                int i3 = this.f105141f;
                if (i3 < 0) {
                    this.f105141f = i3 + 1;
                }
            } else {
                m65981B(this.f105136a.m66004v(i2), this.f105136a.f105136a);
                int i4 = this.f105141f;
                if (i4 > 0) {
                    this.f105141f = i4 - 1;
                }
            }
            m66003u();
            return m65987e();
        }

        /* renamed from: w */
        public final C18749b<E> m66005w() {
            if (m65992j() == null) {
                return m66007y();
            }
            m65983D(this.f105138c.m66005w(), this.f105138c.f105138c);
            int i = this.f105141f;
            if (i < 0) {
                this.f105141f = i + 1;
            }
            m66003u();
            return m65987e();
        }

        /* renamed from: x */
        public final C18749b<E> m66006x() {
            if (m65990h() == null) {
                return m66007y();
            }
            m65981B(this.f105136a.m66006x(), this.f105136a.f105136a);
            int i = this.f105141f;
            if (i > 0) {
                this.f105141f = i - 1;
            }
            m66003u();
            return m65987e();
        }

        /* renamed from: y */
        public final C18749b<E> m66007y() {
            if (m65992j() == null && m65990h() == null) {
                return null;
            }
            if (m65992j() == null) {
                int i = this.f105141f;
                if (i > 0) {
                    this.f105136a.f105141f += i;
                }
                this.f105136a.m65999q().m65983D(null, this.f105138c);
                return this.f105136a;
            }
            if (m65990h() == null) {
                C18749b<E> c18749b = this.f105138c;
                int i2 = c18749b.f105141f;
                int i3 = this.f105141f;
                c18749b.f105141f = i2 + (i3 - (i3 < 0 ? 0 : 1));
                c18749b.m66000r().m65981B(null, this.f105136a);
                return this.f105138c;
            }
            if (m65994l() > 0) {
                C18749b<E> m66000r = this.f105138c.m66000r();
                this.f105142g = m66000r.f105142g;
                if (this.f105137b) {
                    this.f105136a = m66000r.f105136a;
                }
                this.f105138c = this.f105138c.m66006x();
                int i4 = this.f105141f;
                if (i4 < 0) {
                    this.f105141f = i4 + 1;
                }
            } else {
                C18749b<E> m65999q = this.f105136a.m65999q();
                this.f105142g = m65999q.f105142g;
                if (this.f105139d) {
                    this.f105138c = m65999q.f105138c;
                }
                C18749b<E> c18749b2 = this.f105136a;
                C18749b<E> c18749b3 = c18749b2.f105136a;
                C18749b<E> m66005w = c18749b2.m66005w();
                this.f105136a = m66005w;
                if (m66005w == null) {
                    this.f105136a = c18749b3;
                    this.f105137b = true;
                }
                int i5 = this.f105141f;
                if (i5 > 0) {
                    this.f105141f = i5 - 1;
                }
            }
            m66003u();
            return this;
        }

        /* renamed from: z */
        public final C18749b<E> m66008z() {
            C18749b<E> c18749b = this.f105138c;
            C18749b<E> m65990h = m65992j().m65990h();
            int m65991i = this.f105141f + m65991i(c18749b);
            int i = -c18749b.f105141f;
            int m65991i2 = m65991i(c18749b) + m65991i(m65990h);
            m65983D(m65990h, c18749b);
            c18749b.m65981B(this, null);
            m65982C(c18749b, m65991i);
            m65982C(this, i);
            m65982C(m65990h, m65991i2);
            return c18749b;
        }

        public C18749b(int i, E e, C18749b<E> c18749b, C18749b<E> c18749b2) {
            this.f105141f = i;
            this.f105142g = e;
            this.f105139d = true;
            this.f105137b = true;
            this.f105138c = c18749b;
            this.f105136a = c18749b2;
        }

        public C18749b(Collection<? extends E> collection) {
            this(collection.iterator(), 0, collection.size() - 1, 0, null, null);
        }

        public C18749b(Iterator<? extends E> it2, int i, int i2, int i3, C18749b<E> c18749b, C18749b<E> c18749b2) {
            int i4 = i + ((i2 - i) / 2);
            if (i < i4) {
                this.f105136a = new C18749b<>(it2, i, i4 - 1, i4, c18749b, this);
            } else {
                this.f105137b = true;
                this.f105136a = c18749b;
            }
            this.f105142g = it2.next();
            this.f105141f = i4 - i3;
            if (i4 < i2) {
                this.f105138c = new C18749b<>(it2, i4 + 1, i2, i4, this, c18749b2);
            } else {
                this.f105139d = true;
                this.f105138c = c18749b2;
            }
            m66003u();
        }
    }

    public TreeList(Collection<? extends E> collection) {
        if (collection.isEmpty()) {
            return;
        }
        this.f105134e = new C18749b<>(collection);
        this.f105135f = collection.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<E> listIterator(int i) {
        m65976d(i, 0, size());
        return new C18750c(this, i);
    }
}
