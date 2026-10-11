package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Predicate;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class Lists {

    /* loaded from: classes6.dex */
    public static class OnePlusArrayList<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;

        @xvk
        final E first;
        final E[] rest;

        public OnePlusArrayList(@xvk E e, E[] eArr) {
            this.first = e;
            this.rest = (E[]) ((Object[]) Preconditions.checkNotNull(eArr));
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public E get(int i) {
            Preconditions.checkElementIndex(i, size());
            return i == 0 ? this.first : this.rest[i - 1];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return IntMath.saturatedAdd(this.rest.length, 1);
        }
    }

    /* loaded from: classes6.dex */
    public static final class StringAsImmutableList extends ImmutableList<Character> {
        private final String string;

        public StringAsImmutableList(String str) {
            this.string = str;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int indexOf(@CheckForNull Object obj) {
            if (obj instanceof Character) {
                return this.string.indexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public int lastIndexOf(@CheckForNull Object obj) {
            if (obj instanceof Character) {
                return this.string.lastIndexOf(((Character) obj).charValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.string.length();
        }

        @Override // java.util.List
        public Character get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Character.valueOf(this.string.charAt(i));
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public ImmutableList<Character> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            return Lists.charactersOf(this.string.substring(i, i2));
        }
    }

    /* loaded from: classes6.dex */
    public static class TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final List<F> fromList;
        final Function<? super F, ? extends T> function;

        /* renamed from: com.google.common.collect.Lists$TransformingRandomAccessList$a */
        /* loaded from: classes6.dex */
        public class C5893a extends AbstractC6110e0<F, T> {
            public C5893a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override // com.google.common.collect.AbstractC6108d0
            /* renamed from: a */
            public T mo26351a(F f) {
                return TransformingRandomAccessList.this.function.apply(f);
            }
        }

        public TransformingRandomAccessList(List<F> list, Function<? super F, ? extends T> function) {
            this.fromList = (List) Preconditions.checkNotNull(list);
            this.function = (Function) Preconditions.checkNotNull(function);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$removeIf$0(Predicate predicate, Object obj) {
            return predicate.test(this.function.apply(obj));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.fromList.clear();
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public T get(int i) {
            return this.function.apply(this.fromList.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.fromList.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new C5893a(this.fromList.listIterator(i));
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public T remove(int i) {
            return this.function.apply(this.fromList.remove(i));
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super T> predicate) {
            Preconditions.checkNotNull(predicate);
            return this.fromList.removeIf(new Predicate() { // from class: com.google.common.collect.u
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$removeIf$0;
                    lambda$removeIf$0 = Lists.TransformingRandomAccessList.this.lambda$removeIf$0(predicate, obj);
                    return lambda$removeIf$0;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fromList.size();
        }
    }

    /* loaded from: classes6.dex */
    public static class TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {
        private static final long serialVersionUID = 0;
        final List<F> fromList;
        final Function<? super F, ? extends T> function;

        /* renamed from: com.google.common.collect.Lists$TransformingSequentialList$a */
        /* loaded from: classes6.dex */
        public class C5894a extends AbstractC6110e0<F, T> {
            public C5894a(ListIterator listIterator) {
                super(listIterator);
            }

            @Override // com.google.common.collect.AbstractC6108d0
            @xvk
            /* renamed from: a */
            public T mo26351a(@xvk F f) {
                return TransformingSequentialList.this.function.apply(f);
            }
        }

        public TransformingSequentialList(List<F> list, Function<? super F, ? extends T> function) {
            this.fromList = (List) Preconditions.checkNotNull(list);
            this.function = (Function) Preconditions.checkNotNull(function);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$removeIf$0(Predicate predicate, Object obj) {
            return predicate.test(this.function.apply(obj));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.fromList.clear();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new C5894a(this.fromList.listIterator(i));
        }

        @Override // java.util.Collection
        public boolean removeIf(final Predicate<? super T> predicate) {
            Preconditions.checkNotNull(predicate);
            return this.fromList.removeIf(new Predicate() { // from class: com.google.common.collect.v
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$removeIf$0;
                    lambda$removeIf$0 = Lists.TransformingSequentialList.this.lambda$removeIf$0(predicate, obj);
                    return lambda$removeIf$0;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.fromList.size();
        }
    }

    /* loaded from: classes6.dex */
    public static class TwoPlusArrayList<E> extends AbstractList<E> implements Serializable, RandomAccess {
        private static final long serialVersionUID = 0;

        @xvk
        final E first;
        final E[] rest;

        @xvk
        final E second;

        public TwoPlusArrayList(@xvk E e, @xvk E e2, E[] eArr) {
            this.first = e;
            this.second = e2;
            this.rest = (E[]) ((Object[]) Preconditions.checkNotNull(eArr));
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public E get(int i) {
            if (i == 0) {
                return this.first;
            }
            if (i == 1) {
                return this.second;
            }
            Preconditions.checkElementIndex(i, size());
            return this.rest[i - 2];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return IntMath.saturatedAdd(this.rest.length, 2);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Lists$a */
    /* loaded from: classes6.dex */
    public class C5895a<E> extends C5900f<E> {

        /* renamed from: f */
        public static final long f34169f = 0;

        public C5895a(List list) {
            super(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int i) {
            return this.f34171e.listIterator(i);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Lists$b */
    /* loaded from: classes6.dex */
    public class C5896b<E> extends C5897c<E> {

        /* renamed from: f */
        public static final long f34170f = 0;

        public C5896b(List list) {
            super(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int i) {
            return this.f34171e.listIterator(i);
        }
    }

    /* renamed from: com.google.common.collect.Lists$c */
    /* loaded from: classes6.dex */
    public static class C5897c<E> extends AbstractList<E> {

        /* renamed from: e */
        public final List<E> f34171e;

        public C5897c(List<E> list) {
            this.f34171e = (List) Preconditions.checkNotNull(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, @xvk E e) {
            this.f34171e.add(i, e);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            return this.f34171e.addAll(i, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(@CheckForNull Object obj) {
            return this.f34171e.contains(obj);
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public E get(int i) {
            return this.f34171e.get(i);
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public E remove(int i) {
            return this.f34171e.remove(i);
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public E set(int i, @xvk E e) {
            return this.f34171e.set(i, e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34171e.size();
        }
    }

    /* renamed from: com.google.common.collect.Lists$d */
    /* loaded from: classes6.dex */
    public static final class C5898d extends AbstractList<Character> {

        /* renamed from: e */
        public final CharSequence f34172e;

        public C5898d(CharSequence charSequence) {
            this.f34172e = charSequence;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Character get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Character.valueOf(this.f34172e.charAt(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34172e.length();
        }
    }

    /* renamed from: com.google.common.collect.Lists$e */
    /* loaded from: classes6.dex */
    public static class C5899e<T> extends AbstractList<List<T>> {

        /* renamed from: e */
        public final List<T> f34173e;

        /* renamed from: f */
        public final int f34174f;

        public C5899e(List<T> list, int i) {
            this.f34173e = list;
            this.f34174f = i;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> get(int i) {
            Preconditions.checkElementIndex(i, size());
            int i2 = this.f34174f;
            int i3 = i * i2;
            return this.f34173e.subList(i3, Math.min(i2 + i3, this.f34173e.size()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return this.f34173e.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return IntMath.divide(this.f34173e.size(), this.f34174f, RoundingMode.CEILING);
        }
    }

    /* renamed from: com.google.common.collect.Lists$f */
    /* loaded from: classes6.dex */
    public static class C5900f<E> extends C5897c<E> implements RandomAccess {
        public C5900f(List<E> list) {
            super(list);
        }
    }

    /* renamed from: com.google.common.collect.Lists$g */
    /* loaded from: classes6.dex */
    public static class C5901g<T> extends C5899e<T> implements RandomAccess {
        public C5901g(List<T> list, int i) {
            super(list, i);
        }
    }

    /* renamed from: com.google.common.collect.Lists$h */
    /* loaded from: classes6.dex */
    public static class C5902h<T> extends C5903i<T> implements RandomAccess {
        public C5902h(List<T> list) {
            super(list);
        }
    }

    /* renamed from: com.google.common.collect.Lists$i */
    /* loaded from: classes6.dex */
    public static class C5903i<T> extends AbstractList<T> {

        /* renamed from: e */
        public final List<T> f34175e;

        /* renamed from: com.google.common.collect.Lists$i$a */
        /* loaded from: classes6.dex */
        public class a implements ListIterator<T> {

            /* renamed from: e */
            public boolean f34176e;

            /* renamed from: f */
            public final /* synthetic */ ListIterator f34177f;

            public a(ListIterator listIterator) {
                this.f34177f = listIterator;
            }

            @Override // java.util.ListIterator
            public void add(@xvk T t) {
                this.f34177f.add(t);
                this.f34177f.previous();
                this.f34176e = false;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.f34177f.hasPrevious();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.f34177f.hasNext();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            @xvk
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.f34176e = true;
                return (T) this.f34177f.previous();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return C5903i.this.m26388d(this.f34177f.nextIndex());
            }

            @Override // java.util.ListIterator
            @xvk
            public T previous() {
                if (!hasPrevious()) {
                    throw new NoSuchElementException();
                }
                this.f34176e = true;
                return (T) this.f34177f.next();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return nextIndex() - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                szd.m57282e(this.f34176e);
                this.f34177f.remove();
                this.f34176e = false;
            }

            @Override // java.util.ListIterator
            public void set(@xvk T t) {
                Preconditions.checkState(this.f34176e);
                this.f34177f.set(t);
            }
        }

        public C5903i(List<T> list) {
            this.f34175e = (List) Preconditions.checkNotNull(list);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, @xvk T t) {
            this.f34175e.add(m26388d(i), t);
        }

        /* renamed from: b */
        public List<T> m26386b() {
            return this.f34175e;
        }

        /* renamed from: c */
        public final int m26387c(int i) {
            int size = size();
            Preconditions.checkElementIndex(i, size);
            return (size - 1) - i;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f34175e.clear();
        }

        /* renamed from: d */
        public final int m26388d(int i) {
            int size = size();
            Preconditions.checkPositionIndex(i, size);
            return size - i;
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public T get(int i) {
            return this.f34175e.get(m26387c(i));
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<T> iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<T> listIterator(int i) {
            return new a(this.f34175e.listIterator(m26388d(i)));
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public T remove(int i) {
            return this.f34175e.remove(m26387c(i));
        }

        @Override // java.util.AbstractList
        public void removeRange(int i, int i2) {
            subList(i, i2).clear();
        }

        @Override // java.util.AbstractList, java.util.List
        @xvk
        public T set(int i, @xvk T t) {
            return this.f34175e.set(m26387c(i), t);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f34175e.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<T> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            return Lists.reverse(this.f34175e.subList(m26388d(i2), m26388d(i)));
        }
    }

    /* renamed from: a */
    public static <E> boolean m26370a(List<E> list, int i, Iterable<? extends E> iterable) {
        ListIterator<E> listIterator = list.listIterator(i);
        Iterator<? extends E> it2 = iterable.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            listIterator.add(it2.next());
            z = true;
        }
        return z;
    }

    public static <E> List<E> asList(@xvk E e, E[] eArr) {
        return new OnePlusArrayList(e, eArr);
    }

    /* renamed from: b */
    public static <T> List<T> m26371b(Iterable<T> iterable) {
        return (List) iterable;
    }

    @VisibleForTesting
    /* renamed from: c */
    public static int m26372c(int i) {
        szd.m57279b(i, "arraySize");
        return Ints.saturatedCast(i + 5 + (i / 10));
    }

    public static <B> List<List<B>> cartesianProduct(List<? extends List<? extends B>> list) {
        return CartesianList.m26070c(list);
    }

    public static ImmutableList<Character> charactersOf(String str) {
        return new StringAsImmutableList((String) Preconditions.checkNotNull(str));
    }

    /* renamed from: d */
    public static boolean m26373d(List<?> list, @CheckForNull Object obj) {
        if (obj == Preconditions.checkNotNull(list)) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list2 = (List) obj;
        int size = list.size();
        if (size != list2.size()) {
            return false;
        }
        if (!(list instanceof RandomAccess) || !(list2 instanceof RandomAccess)) {
            return Iterators.elementsEqual(list.iterator(), list2.iterator());
        }
        for (int i = 0; i < size; i++) {
            if (!Objects.equal(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public static int m26374e(List<?> list) {
        Iterator<?> it2 = list.iterator();
        int i = 1;
        while (it2.hasNext()) {
            Object next = it2.next();
            i = ~(~((i * 31) + (next == null ? 0 : next.hashCode())));
        }
        return i;
    }

    /* renamed from: f */
    public static int m26375f(List<?> list, @CheckForNull Object obj) {
        if (list instanceof RandomAccess) {
            return m26376g(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            if (Objects.equal(obj, listIterator.next())) {
                return listIterator.previousIndex();
            }
        }
        return -1;
    }

    /* renamed from: g */
    public static int m26376g(List<?> list, @CheckForNull Object obj) {
        int size = list.size();
        int i = 0;
        if (obj == null) {
            while (i < size) {
                if (list.get(i) == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        while (i < size) {
            if (obj.equals(list.get(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: h */
    public static int m26377h(List<?> list, @CheckForNull Object obj) {
        if (list instanceof RandomAccess) {
            return m26378i(list, obj);
        }
        ListIterator<?> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (Objects.equal(obj, listIterator.previous())) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    /* renamed from: i */
    public static int m26378i(List<?> list, @CheckForNull Object obj) {
        if (obj == null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                if (list.get(size) == null) {
                    return size;
                }
            }
            return -1;
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            if (obj.equals(list.get(size2))) {
                return size2;
            }
        }
        return -1;
    }

    /* renamed from: j */
    public static <E> ListIterator<E> m26379j(List<E> list, int i) {
        return new C5897c(list).listIterator(i);
    }

    /* renamed from: k */
    public static <E> List<E> m26380k(List<E> list, int i, int i2) {
        return (list instanceof RandomAccess ? new C5895a(list) : new C5896b(list)).subList(i, i2);
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList() {
        return new ArrayList<>();
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayListWithCapacity(int i) {
        szd.m57279b(i, "initialArraySize");
        return new ArrayList<>(i);
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayListWithExpectedSize(int i) {
        return new ArrayList<>(m26372c(i));
    }

    @GwtIncompatible
    public static <E> CopyOnWriteArrayList<E> newCopyOnWriteArrayList() {
        return new CopyOnWriteArrayList<>();
    }

    @GwtCompatible(serializable = true)
    public static <E> LinkedList<E> newLinkedList() {
        return new LinkedList<>();
    }

    public static <T> List<List<T>> partition(List<T> list, int i) {
        Preconditions.checkNotNull(list);
        Preconditions.checkArgument(i > 0);
        return list instanceof RandomAccess ? new C5901g(list, i) : new C5899e(list, i);
    }

    public static <T> List<T> reverse(List<T> list) {
        return list instanceof ImmutableList ? ((ImmutableList) list).reverse() : list instanceof C5903i ? ((C5903i) list).m26386b() : list instanceof RandomAccess ? new C5902h(list) : new C5903i(list);
    }

    public static <F, T> List<T> transform(List<F> list, Function<? super F, ? extends T> function) {
        return list instanceof RandomAccess ? new TransformingRandomAccessList(list, function) : new TransformingSequentialList(list, function);
    }

    public static <E> List<E> asList(@xvk E e, @xvk E e2, E[] eArr) {
        return new TwoPlusArrayList(e, e2, eArr);
    }

    @SafeVarargs
    public static <B> List<List<B>> cartesianProduct(List<? extends B>... listArr) {
        return cartesianProduct(Arrays.asList(listArr));
    }

    @Beta
    public static List<Character> charactersOf(CharSequence charSequence) {
        return new C5898d((CharSequence) Preconditions.checkNotNull(charSequence));
    }

    @SafeVarargs
    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(E... eArr) {
        Preconditions.checkNotNull(eArr);
        ArrayList<E> arrayList = new ArrayList<>(m26372c(eArr.length));
        Collections.addAll(arrayList, eArr);
        return arrayList;
    }

    @GwtIncompatible
    public static <E> CopyOnWriteArrayList<E> newCopyOnWriteArrayList(Iterable<? extends E> iterable) {
        Collection newArrayList;
        if (iterable instanceof Collection) {
            newArrayList = (Collection) iterable;
        } else {
            newArrayList = newArrayList(iterable);
        }
        return new CopyOnWriteArrayList<>(newArrayList);
    }

    @GwtCompatible(serializable = true)
    public static <E> LinkedList<E> newLinkedList(Iterable<? extends E> iterable) {
        LinkedList<E> newLinkedList = newLinkedList();
        Iterables.addAll(newLinkedList, iterable);
        return newLinkedList;
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(Iterable<? extends E> iterable) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof Collection) {
            return new ArrayList<>((Collection) iterable);
        }
        return newArrayList(iterable.iterator());
    }

    @GwtCompatible(serializable = true)
    public static <E> ArrayList<E> newArrayList(Iterator<? extends E> it2) {
        ArrayList<E> newArrayList = newArrayList();
        Iterators.addAll(newArrayList, it2);
        return newArrayList;
    }
}
