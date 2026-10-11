package com.google.common.collect;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Iterators;
import com.google.common.collect.PeekingIterator;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.AbstractC14531v3;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Queue;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class Iterators {

    /* loaded from: classes6.dex */
    public enum EmptyModifiableIterator implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            szd.m57282e(false);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$a */
    /* loaded from: classes6.dex */
    public class C5865a<T> extends UnmodifiableIterator<T> {

        /* renamed from: e */
        public final /* synthetic */ Enumeration f34091e;

        public C5865a(Enumeration enumeration) {
            this.f34091e = enumeration;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34091e.hasMoreElements();
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            return (T) this.f34091e.nextElement();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$b */
    /* loaded from: classes6.dex */
    public class C5866b<T> implements Enumeration<T> {

        /* renamed from: e */
        public final /* synthetic */ Iterator f34092e;

        public C5866b(Iterator it2) {
            this.f34092e = it2;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f34092e.hasNext();
        }

        @Override // java.util.Enumeration
        @xvk
        public T nextElement() {
            return (T) this.f34092e.next();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$c */
    /* loaded from: classes6.dex */
    public class C5867c<T> extends UnmodifiableIterator<T> {

        /* renamed from: e */
        public final /* synthetic */ Iterator f34093e;

        public C5867c(Iterator it2) {
            this.f34093e = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34093e.hasNext();
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            return (T) this.f34093e.next();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$d */
    /* loaded from: classes6.dex */
    public class C5868d<T> implements Iterator<T> {

        /* renamed from: e */
        public Iterator<T> f34094e = Iterators.m26345h();

        /* renamed from: f */
        public final /* synthetic */ Iterable f34095f;

        public C5868d(Iterable iterable) {
            this.f34095f = iterable;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34094e.hasNext() || this.f34095f.iterator().hasNext();
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            if (!this.f34094e.hasNext()) {
                Iterator<T> it2 = this.f34095f.iterator();
                this.f34094e = it2;
                if (!it2.hasNext()) {
                    throw new NoSuchElementException();
                }
            }
            return this.f34094e.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f34094e.remove();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* renamed from: com.google.common.collect.Iterators$e */
    /* loaded from: classes6.dex */
    public class C5869e<I> extends UnmodifiableIterator<I> {

        /* renamed from: e */
        public int f34096e = 0;

        /* renamed from: f */
        public final /* synthetic */ Iterator[] f34097f;

        public C5869e(Iterator[] itArr) {
            this.f34097f = itArr;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TI; */
        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Iterator next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator it2 = this.f34097f[this.f34096e];
            Objects.requireNonNull(it2);
            Iterator it3 = it2;
            Iterator[] itArr = this.f34097f;
            int i = this.f34096e;
            itArr[i] = null;
            this.f34096e = i + 1;
            return it3;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34096e < this.f34097f.length;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$f */
    /* loaded from: classes6.dex */
    public class C5870f<T> extends UnmodifiableIterator<List<T>> {

        /* renamed from: e */
        public final /* synthetic */ Iterator f34098e;

        /* renamed from: f */
        public final /* synthetic */ int f34099f;

        /* renamed from: g */
        public final /* synthetic */ boolean f34100g;

        public C5870f(Iterator it2, int i, boolean z) {
            this.f34098e = it2;
            this.f34099f = i;
            this.f34100g = z;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Object[] objArr = new Object[this.f34099f];
            int i = 0;
            while (i < this.f34099f && this.f34098e.hasNext()) {
                objArr[i] = this.f34098e.next();
                i++;
            }
            for (int i2 = i; i2 < this.f34099f; i2++) {
                objArr[i2] = null;
            }
            List<T> unmodifiableList = Collections.unmodifiableList(Arrays.asList(objArr));
            return (this.f34100g || i == this.f34099f) ? unmodifiableList : unmodifiableList.subList(0, i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34098e.hasNext();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$g */
    /* loaded from: classes6.dex */
    public class C5871g<T> extends AbstractIterator<T> {

        /* renamed from: g */
        public final /* synthetic */ Iterator f34101g;

        /* renamed from: h */
        public final /* synthetic */ Predicate f34102h;

        public C5871g(Iterator it2, Predicate predicate) {
            this.f34101g = it2;
            this.f34102h = predicate;
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        public T computeNext() {
            while (this.f34101g.hasNext()) {
                T t = (T) this.f34101g.next();
                if (this.f34102h.apply(t)) {
                    return t;
                }
            }
            return endOfData();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T, F] */
    /* renamed from: com.google.common.collect.Iterators$h */
    /* loaded from: classes6.dex */
    public class C5872h<F, T> extends AbstractC6108d0<F, T> {

        /* renamed from: f */
        public final /* synthetic */ Function f34103f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5872h(Iterator it2, Function function) {
            super(it2);
            this.f34103f = function;
        }

        @Override // com.google.common.collect.AbstractC6108d0
        @xvk
        /* renamed from: a */
        public T mo26351a(@xvk F f) {
            return (T) this.f34103f.apply(f);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$i */
    /* loaded from: classes6.dex */
    public class C5873i<T> implements Iterator<T> {

        /* renamed from: e */
        public int f34104e;

        /* renamed from: f */
        public final /* synthetic */ int f34105f;

        /* renamed from: g */
        public final /* synthetic */ Iterator f34106g;

        public C5873i(int i, Iterator it2) {
            this.f34105f = i;
            this.f34106g = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34104e < this.f34105f && this.f34106g.hasNext();
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f34104e++;
            return (T) this.f34106g.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f34106g.remove();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$j */
    /* loaded from: classes6.dex */
    public class C5874j<T> extends UnmodifiableIterator<T> {

        /* renamed from: e */
        public final /* synthetic */ Iterator f34107e;

        public C5874j(Iterator it2) {
            this.f34107e = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34107e.hasNext();
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            T t = (T) this.f34107e.next();
            this.f34107e.remove();
            return t;
        }

        public String toString() {
            return "Iterators.consumingIterator(...)";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterators$k */
    /* loaded from: classes6.dex */
    public class C5875k<T> extends UnmodifiableIterator<T> {

        /* renamed from: e */
        public boolean f34108e;

        /* renamed from: f */
        public final /* synthetic */ Object f34109f;

        public C5875k(Object obj) {
            this.f34109f = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f34108e;
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            if (this.f34108e) {
                throw new NoSuchElementException();
            }
            this.f34108e = true;
            return (T) this.f34109f;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$l */
    /* loaded from: classes6.dex */
    public static final class C5876l<T> extends AbstractC14531v3<T> {

        /* renamed from: i */
        public static final UnmodifiableListIterator<Object> f34110i = new C5876l(new Object[0], 0, 0, 0);

        /* renamed from: g */
        public final T[] f34111g;

        /* renamed from: h */
        public final int f34112h;

        public C5876l(T[] tArr, int i, int i2, int i3) {
            super(i2, i3);
            this.f34111g = tArr;
            this.f34112h = i;
        }

        @Override // com.sunia.HTREnginev2.AbstractC14531v3
        @xvk
        /* renamed from: a */
        public T mo26054a(int i) {
            return this.f34111g[this.f34112h + i];
        }
    }

    /* renamed from: com.google.common.collect.Iterators$m */
    /* loaded from: classes6.dex */
    public static class C5877m<T> implements Iterator<T> {

        /* renamed from: e */
        @CheckForNull
        public Iterator<? extends T> f34113e;

        /* renamed from: f */
        public Iterator<? extends T> f34114f = Iterators.m26343f();

        /* renamed from: g */
        @CheckForNull
        public Iterator<? extends Iterator<? extends T>> f34115g;

        /* renamed from: h */
        @CheckForNull
        public Deque<Iterator<? extends Iterator<? extends T>>> f34116h;

        public C5877m(Iterator<? extends Iterator<? extends T>> it2) {
            this.f34115g = (Iterator) Preconditions.checkNotNull(it2);
        }

        @CheckForNull
        /* renamed from: a */
        public final Iterator<? extends Iterator<? extends T>> m26352a() {
            while (true) {
                Iterator<? extends Iterator<? extends T>> it2 = this.f34115g;
                if (it2 != null && it2.hasNext()) {
                    return this.f34115g;
                }
                Deque<Iterator<? extends Iterator<? extends T>>> deque = this.f34116h;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.f34115g = this.f34116h.removeFirst();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!((Iterator) Preconditions.checkNotNull(this.f34114f)).hasNext()) {
                Iterator<? extends Iterator<? extends T>> m26352a = m26352a();
                this.f34115g = m26352a;
                if (m26352a == null) {
                    return false;
                }
                Iterator<? extends T> next = m26352a.next();
                this.f34114f = next;
                if (next instanceof C5877m) {
                    C5877m c5877m = (C5877m) next;
                    this.f34114f = c5877m.f34114f;
                    if (this.f34116h == null) {
                        this.f34116h = new ArrayDeque();
                    }
                    this.f34116h.addFirst(this.f34115g);
                    if (c5877m.f34116h != null) {
                        while (!c5877m.f34116h.isEmpty()) {
                            this.f34116h.addFirst(c5877m.f34116h.removeLast());
                        }
                    }
                    this.f34115g = c5877m.f34115g;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator<? extends T> it2 = this.f34114f;
            this.f34113e = it2;
            return it2.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            Iterator<? extends T> it2 = this.f34113e;
            if (it2 == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            it2.remove();
            this.f34113e = null;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$n */
    /* loaded from: classes6.dex */
    public static class C5878n<T> extends UnmodifiableIterator<T> {

        /* renamed from: e */
        public final Queue<PeekingIterator<T>> f34117e;

        public C5878n(Iterable<? extends Iterator<? extends T>> iterable, final Comparator<? super T> comparator) {
            this.f34117e = new PriorityQueue(2, new Comparator() { // from class: com.sunia.HTREnginev2.nqi
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int m26354b;
                    m26354b = Iterators.C5878n.m26354b(comparator, (PeekingIterator) obj, (PeekingIterator) obj2);
                    return m26354b;
                }
            });
            for (Iterator<? extends T> it2 : iterable) {
                if (it2.hasNext()) {
                    this.f34117e.add(Iterators.peekingIterator(it2));
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public static /* synthetic */ int m26354b(Comparator comparator, PeekingIterator peekingIterator, PeekingIterator peekingIterator2) {
            return comparator.compare(peekingIterator.peek(), peekingIterator2.peek());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f34117e.isEmpty();
        }

        @Override // java.util.Iterator
        @xvk
        public T next() {
            PeekingIterator<T> remove = this.f34117e.remove();
            T next = remove.next();
            if (remove.hasNext()) {
                this.f34117e.add(remove);
            }
            return next;
        }
    }

    /* renamed from: com.google.common.collect.Iterators$o */
    /* loaded from: classes6.dex */
    public static class C5879o<E> implements PeekingIterator<E> {

        /* renamed from: e */
        public final Iterator<? extends E> f34118e;

        /* renamed from: f */
        public boolean f34119f;

        /* renamed from: g */
        @CheckForNull
        public E f34120g;

        public C5879o(Iterator<? extends E> it2) {
            this.f34118e = (Iterator) Preconditions.checkNotNull(it2);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34119f || this.f34118e.hasNext();
        }

        @Override // com.google.common.collect.PeekingIterator, java.util.Iterator
        @xvk
        public E next() {
            if (!this.f34119f) {
                return this.f34118e.next();
            }
            E e = (E) p5k.m56213a(this.f34120g);
            this.f34119f = false;
            this.f34120g = null;
            return e;
        }

        @Override // com.google.common.collect.PeekingIterator
        @xvk
        public E peek() {
            if (!this.f34119f) {
                this.f34120g = this.f34118e.next();
                this.f34119f = true;
            }
            return (E) p5k.m56213a(this.f34120g);
        }

        @Override // com.google.common.collect.PeekingIterator, java.util.Iterator
        public void remove() {
            Preconditions.checkState(!this.f34119f, "Can't remove after you've peeked at next");
            this.f34118e.remove();
        }
    }

    /* renamed from: a */
    public static <T> ListIterator<T> m26338a(Iterator<T> it2) {
        return (ListIterator) it2;
    }

    @CanIgnoreReturnValue
    public static <T> boolean addAll(Collection<T> collection, Iterator<? extends T> it2) {
        Preconditions.checkNotNull(collection);
        Preconditions.checkNotNull(it2);
        boolean z = false;
        while (it2.hasNext()) {
            z |= collection.add(it2.next());
        }
        return z;
    }

    @CanIgnoreReturnValue
    public static int advance(Iterator<?> it2, int i) {
        Preconditions.checkNotNull(it2);
        int i2 = 0;
        Preconditions.checkArgument(i >= 0, "numberToAdvance must be nonnegative");
        while (i2 < i && it2.hasNext()) {
            it2.next();
            i2++;
        }
        return i2;
    }

    public static <T> boolean all(Iterator<T> it2, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        while (it2.hasNext()) {
            if (!predicate.apply(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public static <T> boolean any(Iterator<T> it2, Predicate<? super T> predicate) {
        return indexOf(it2, predicate) != -1;
    }

    public static <T> Enumeration<T> asEnumeration(Iterator<T> it2) {
        Preconditions.checkNotNull(it2);
        return new C5866b(it2);
    }

    /* renamed from: b */
    public static void m26339b(int i) {
        if (i >= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("position (");
        sb.append(i);
        sb.append(") must not be negative");
        throw new IndexOutOfBoundsException(sb.toString());
    }

    /* renamed from: c */
    public static void m26340c(Iterator<?> it2) {
        Preconditions.checkNotNull(it2);
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it2, Iterator<? extends T> it3) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(it3);
        return concat(m26342e(it2, it3));
    }

    public static <T> Iterator<T> consumingIterator(Iterator<T> it2) {
        Preconditions.checkNotNull(it2);
        return new C5874j(it2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0014, code lost:
    
        if (r2.hasNext() == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001e, code lost:
    
        if (r3.equals(r2.next()) == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0020, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0001, code lost:
    
        if (r3 == null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0007, code lost:
    
        if (r2.hasNext() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
    
        if (r2.next() != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean contains(java.util.Iterator<?> r2, @javax.annotation.CheckForNull java.lang.Object r3) {
        /*
            r0 = 1
            if (r3 != 0) goto L10
        L3:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L21
            java.lang.Object r3 = r2.next()
            if (r3 != 0) goto L3
            return r0
        L10:
            boolean r1 = r2.hasNext()
            if (r1 == 0) goto L21
            java.lang.Object r1 = r2.next()
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L10
            return r0
        L21:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.Iterators.contains(java.util.Iterator, java.lang.Object):boolean");
    }

    public static <T> Iterator<T> cycle(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new C5868d(iterable);
    }

    /* renamed from: d */
    public static <T> Iterator<T> m26341d(Iterator<? extends T>... itArr) {
        for (Iterator it2 : (Iterator[]) Preconditions.checkNotNull(itArr)) {
            Preconditions.checkNotNull(it2);
        }
        return concat(m26342e(itArr));
    }

    /* renamed from: e */
    public static <I extends Iterator<?>> Iterator<I> m26342e(I... iArr) {
        return new C5869e(iArr);
    }

    public static boolean elementsEqual(Iterator<?> it2, Iterator<?> it3) {
        while (it2.hasNext()) {
            if (!it3.hasNext() || !com.google.common.base.Objects.equal(it2.next(), it3.next())) {
                return false;
            }
        }
        return !it3.hasNext();
    }

    /* renamed from: f */
    public static <T> UnmodifiableIterator<T> m26343f() {
        return m26344g();
    }

    public static <T> UnmodifiableIterator<T> filter(Iterator<T> it2, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(predicate);
        return new C5871g(it2, predicate);
    }

    @xvk
    public static <T> T find(Iterator<T> it2, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(predicate);
        while (it2.hasNext()) {
            T next = it2.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @SafeVarargs
    public static <T> UnmodifiableIterator<T> forArray(T... tArr) {
        return m26346i(tArr, 0, tArr.length, 0);
    }

    public static <T> UnmodifiableIterator<T> forEnumeration(Enumeration<T> enumeration) {
        Preconditions.checkNotNull(enumeration);
        return new C5865a(enumeration);
    }

    public static int frequency(Iterator<?> it2, @CheckForNull Object obj) {
        int i = 0;
        while (contains(it2, obj)) {
            i++;
        }
        return i;
    }

    /* renamed from: g */
    public static <T> UnmodifiableListIterator<T> m26344g() {
        return (UnmodifiableListIterator<T>) C5876l.f34110i;
    }

    @xvk
    public static <T> T get(Iterator<T> it2, int i) {
        m26339b(i);
        int advance = advance(it2, i);
        if (it2.hasNext()) {
            return it2.next();
        }
        StringBuilder sb = new StringBuilder(91);
        sb.append("position (");
        sb.append(i);
        sb.append(") must be less than the number of elements that remained (");
        sb.append(advance);
        sb.append(MotionUtils.f31762d);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    @xvk
    public static <T> T getLast(Iterator<T> it2) {
        T next;
        do {
            next = it2.next();
        } while (it2.hasNext());
        return next;
    }

    @xvk
    public static <T> T getNext(Iterator<? extends T> it2, @xvk T t) {
        return it2.hasNext() ? it2.next() : t;
    }

    @xvk
    public static <T> T getOnlyElement(Iterator<T> it2) {
        T next = it2.next();
        if (!it2.hasNext()) {
            return next;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("expected one element but was: <");
        sb.append(next);
        for (int i = 0; i < 4 && it2.hasNext(); i++) {
            sb.append(", ");
            sb.append(it2.next());
        }
        if (it2.hasNext()) {
            sb.append(", ...");
        }
        sb.append('>');
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: h */
    public static <T> Iterator<T> m26345h() {
        return EmptyModifiableIterator.INSTANCE;
    }

    /* renamed from: i */
    public static <T> UnmodifiableListIterator<T> m26346i(T[] tArr, int i, int i2, int i3) {
        Preconditions.checkArgument(i2 >= 0);
        Preconditions.checkPositionIndexes(i, i + i2, tArr.length);
        Preconditions.checkPositionIndex(i3, i2);
        return i2 == 0 ? m26344g() : new C5876l(tArr, i, i2, i3);
    }

    public static <T> int indexOf(Iterator<T> it2, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate, "predicate");
        int i = 0;
        while (it2.hasNext()) {
            if (predicate.apply(it2.next())) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: j */
    public static <T> UnmodifiableIterator<List<T>> m26347j(Iterator<T> it2, int i, boolean z) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkArgument(i > 0);
        return new C5870f(it2, i, z);
    }

    @CheckForNull
    /* renamed from: k */
    public static <T> T m26348k(Iterator<T> it2) {
        if (!it2.hasNext()) {
            return null;
        }
        T next = it2.next();
        it2.remove();
        return next;
    }

    public static <T> Iterator<T> limit(Iterator<T> it2, int i) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkArgument(i >= 0, "limit is negative");
        return new C5873i(i, it2);
    }

    @Beta
    public static <T> UnmodifiableIterator<T> mergeSorted(Iterable<? extends Iterator<? extends T>> iterable, Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterators");
        Preconditions.checkNotNull(comparator, "comparator");
        return new C5878n(iterable, comparator);
    }

    public static <T> UnmodifiableIterator<List<T>> paddedPartition(Iterator<T> it2, int i) {
        return m26347j(it2, i, true);
    }

    public static <T> UnmodifiableIterator<List<T>> partition(Iterator<T> it2, int i) {
        return m26347j(it2, i, false);
    }

    public static <T> PeekingIterator<T> peekingIterator(Iterator<? extends T> it2) {
        if (it2 instanceof C5879o) {
            return (C5879o) it2;
        }
        return new C5879o(it2);
    }

    @CanIgnoreReturnValue
    public static boolean removeAll(Iterator<?> it2, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        boolean z = false;
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    @CanIgnoreReturnValue
    public static <T> boolean removeIf(Iterator<T> it2, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        boolean z = false;
        while (it2.hasNext()) {
            if (predicate.apply(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    @CanIgnoreReturnValue
    public static boolean retainAll(Iterator<?> it2, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        boolean z = false;
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    public static <T> UnmodifiableIterator<T> singletonIterator(@xvk T t) {
        return new C5875k(t);
    }

    public static int size(Iterator<?> it2) {
        long j = 0;
        while (it2.hasNext()) {
            it2.next();
            j++;
        }
        return Ints.saturatedCast(j);
    }

    @GwtIncompatible
    public static <T> T[] toArray(Iterator<? extends T> it2, Class<T> cls) {
        return (T[]) Iterables.toArray(Lists.newArrayList(it2), cls);
    }

    public static String toString(Iterator<?> it2) {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        boolean z = true;
        while (it2.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it2.next());
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }

    public static <F, T> Iterator<T> transform(Iterator<F> it2, Function<? super F, ? extends T> function) {
        Preconditions.checkNotNull(function);
        return new C5872h(it2, function);
    }

    public static <T> Optional<T> tryFind(Iterator<T> it2, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(predicate);
        while (it2.hasNext()) {
            T next = it2.next();
            if (predicate.apply(next)) {
                return Optional.m25808of(next);
            }
        }
        return Optional.absent();
    }

    public static <T> UnmodifiableIterator<T> unmodifiableIterator(Iterator<? extends T> it2) {
        Preconditions.checkNotNull(it2);
        if (it2 instanceof UnmodifiableIterator) {
            return (UnmodifiableIterator) it2;
        }
        return new C5867c(it2);
    }

    @SafeVarargs
    public static <T> Iterator<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList(tArr));
    }

    @xvk
    public static <T> T getLast(Iterator<? extends T> it2, @xvk T t) {
        return it2.hasNext() ? (T) getLast(it2) : t;
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it2, Iterator<? extends T> it3, Iterator<? extends T> it4) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(it3);
        Preconditions.checkNotNull(it4);
        return concat(m26342e(it2, it3, it4));
    }

    @GwtIncompatible
    public static <T> UnmodifiableIterator<T> filter(Iterator<?> it2, Class<T> cls) {
        return filter(it2, Predicates.instanceOf(cls));
    }

    @Deprecated
    public static <T> PeekingIterator<T> peekingIterator(PeekingIterator<T> peekingIterator) {
        return (PeekingIterator) Preconditions.checkNotNull(peekingIterator);
    }

    @Deprecated
    public static <T> UnmodifiableIterator<T> unmodifiableIterator(UnmodifiableIterator<T> unmodifiableIterator) {
        return (UnmodifiableIterator) Preconditions.checkNotNull(unmodifiableIterator);
    }

    @xvk
    public static <T> T get(Iterator<? extends T> it2, int i, @xvk T t) {
        m26339b(i);
        advance(it2, i);
        return (T) getNext(it2, t);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @CheckForNull
    public static <T> T find(Iterator<? extends T> it2, Predicate<? super T> predicate, @CheckForNull T t) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(predicate);
        while (it2.hasNext()) {
            T next = it2.next();
            if (predicate.apply(next)) {
                return next;
            }
        }
        return t;
    }

    public static <T> Iterator<T> concat(Iterator<? extends T> it2, Iterator<? extends T> it3, Iterator<? extends T> it4, Iterator<? extends T> it5) {
        Preconditions.checkNotNull(it2);
        Preconditions.checkNotNull(it3);
        Preconditions.checkNotNull(it4);
        Preconditions.checkNotNull(it5);
        return concat(m26342e(it2, it3, it4, it5));
    }

    @xvk
    public static <T> T getOnlyElement(Iterator<? extends T> it2, @xvk T t) {
        return it2.hasNext() ? (T) getOnlyElement(it2) : t;
    }

    public static <T> Iterator<T> concat(Iterator<? extends T>... itArr) {
        return m26341d((Iterator[]) Arrays.copyOf(itArr, itArr.length));
    }

    public static <T> Iterator<T> concat(Iterator<? extends Iterator<? extends T>> it2) {
        return new C5877m(it2);
    }
}
