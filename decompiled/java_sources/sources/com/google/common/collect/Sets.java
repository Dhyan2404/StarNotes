package com.google.common.collect;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.Collections2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import com.sunia.HTREnginev2.AbstractC14531v3;
import com.sunia.HTREnginev2.aim;
import com.sunia.HTREnginev2.k4l;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Collector;
import java.util.stream.Stream;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class Sets {

    /* loaded from: classes6.dex */
    public static final class CartesianSet<E> extends ForwardingCollection<List<E>> implements Set<List<E>> {

        /* renamed from: e */
        public final transient ImmutableList<ImmutableSet<E>> f34377e;

        /* renamed from: f */
        public final transient CartesianList<E> f34378f;

        public CartesianSet(ImmutableList<ImmutableSet<E>> immutableList, CartesianList<E> cartesianList) {
            this.f34377e = immutableList;
            this.f34378f = cartesianList;
        }

        /* renamed from: e */
        public static <E> Set<List<E>> m26680e(List<? extends Set<? extends E>> list) {
            ImmutableList.Builder builder = new ImmutableList.Builder(list.size());
            Iterator<? extends Set<? extends E>> it2 = list.iterator();
            while (it2.hasNext()) {
                ImmutableSet copyOf = ImmutableSet.copyOf((Collection) it2.next());
                if (copyOf.isEmpty()) {
                    return ImmutableSet.m26234of();
                }
                builder.add((ImmutableList.Builder) copyOf);
            }
            final ImmutableList<E> build = builder.build();
            return new CartesianSet(build, new CartesianList(new ImmutableList<List<E>>() { // from class: com.google.common.collect.Sets.CartesianSet.1
                @Override // com.google.common.collect.ImmutableCollection
                public boolean isPartialView() {
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return ImmutableList.this.size();
                }

                @Override // java.util.List
                public List<E> get(int i) {
                    return ((ImmutableSet) ImmutableList.this.get(i)).asList();
                }
            }));
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (list.size() != this.f34377e.size()) {
                return false;
            }
            Iterator<E> it2 = list.iterator();
            int i = 0;
            while (it2.hasNext()) {
                if (!this.f34377e.get(i).contains(it2.next())) {
                    return false;
                }
                i++;
            }
            return true;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return obj instanceof CartesianSet ? this.f34377e.equals(((CartesianSet) obj).f34377e) : super.equals(obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int i = 1;
            int size = size() - 1;
            for (int i2 = 0; i2 < this.f34377e.size(); i2++) {
                size = ~(~(size * 31));
            }
            UnmodifiableIterator<ImmutableSet<E>> it2 = this.f34377e.iterator();
            while (it2.hasNext()) {
                ImmutableSet<E> next = it2.next();
                i = ~(~((i * 31) + ((size() / next.size()) * next.hashCode())));
            }
            return ~(~(i + size));
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<List<E>> delegate() {
            return this.f34378f;
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class SetView<E> extends AbstractSet<E> {
        public /* synthetic */ SetView(C6021a c6021a) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean add(@xvk E e) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @CanIgnoreReturnValue
        public <S extends Set<E>> S copyInto(S s) {
            s.addAll(this);
            return s;
        }

        public ImmutableSet<E> immutableCopy() {
            return ImmutableSet.copyOf((Collection) this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public abstract UnmodifiableIterator<E> iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean removeIf(Predicate<? super E> predicate) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        @CanIgnoreReturnValue
        @DoNotCall("Always throws UnsupportedOperationException")
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public SetView() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Sets$a */
    /* loaded from: classes6.dex */
    public class C6021a<E> extends SetView<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f34379e;

        /* renamed from: f */
        public final /* synthetic */ Set f34380f;

        /* renamed from: com.google.common.collect.Sets$a$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<E> {

            /* renamed from: g */
            public final Iterator<? extends E> f34381g;

            /* renamed from: h */
            public final Iterator<? extends E> f34382h;

            public a() {
                this.f34381g = C6021a.this.f34379e.iterator();
                this.f34382h = C6021a.this.f34380f.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public E computeNext() {
                if (this.f34381g.hasNext()) {
                    return this.f34381g.next();
                }
                while (this.f34382h.hasNext()) {
                    E next = this.f34382h.next();
                    if (!C6021a.this.f34379e.contains(next)) {
                        return next;
                    }
                }
                return endOfData();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6021a(Set set, Set set2) {
            super(null);
            this.f34379e = set;
            this.f34380f = set2;
        }

        /* renamed from: b */
        public static /* synthetic */ boolean m26682b(Set set, Object obj) {
            return !set.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return this.f34379e.contains(obj) || this.f34380f.contains(obj);
        }

        @Override // com.google.common.collect.Sets.SetView
        public <S extends Set<E>> S copyInto(S s) {
            s.addAll(this.f34379e);
            s.addAll(this.f34380f);
            return s;
        }

        @Override // com.google.common.collect.Sets.SetView
        public ImmutableSet<E> immutableCopy() {
            return new ImmutableSet.Builder().addAll((Iterable) this.f34379e).addAll((Iterable) this.f34380f).build();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f34379e.isEmpty() && this.f34380f.isEmpty();
        }

        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            return (Stream) stream().parallel();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int size = this.f34379e.size();
            Iterator<E> it2 = this.f34380f.iterator();
            while (it2.hasNext()) {
                if (!this.f34379e.contains(it2.next())) {
                    size++;
                }
            }
            return size;
        }

        @Override // java.util.Collection
        public Stream<E> stream() {
            Stream<E> stream = this.f34379e.stream();
            Stream<E> stream2 = this.f34380f.stream();
            final Set set = this.f34379e;
            return Stream.concat(stream, stream2.filter(new Predicate() { // from class: com.sunia.HTREnginev2.zhm
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m26682b;
                    m26682b = Sets.C6021a.m26682b(set, obj);
                    return m26682b;
                }
            }));
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            return new a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Sets$b */
    /* loaded from: classes6.dex */
    public class C6022b<E> extends SetView<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f34384e;

        /* renamed from: f */
        public final /* synthetic */ Set f34385f;

        /* renamed from: com.google.common.collect.Sets$b$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<E> {

            /* renamed from: g */
            public final Iterator<E> f34386g;

            public a() {
                this.f34386g = C6022b.this.f34384e.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public E computeNext() {
                while (this.f34386g.hasNext()) {
                    E next = this.f34386g.next();
                    if (C6022b.this.f34385f.contains(next)) {
                        return next;
                    }
                }
                return endOfData();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6022b(Set set, Set set2) {
            super(null);
            this.f34384e = set;
            this.f34385f = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return this.f34384e.contains(obj) && this.f34385f.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.f34384e.containsAll(collection) && this.f34385f.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.f34385f, this.f34384e);
        }

        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            Stream<E> parallelStream = this.f34384e.parallelStream();
            Set set = this.f34385f;
            Objects.requireNonNull(set);
            return parallelStream.filter(new aim(set));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it2 = this.f34384e.iterator();
            int i = 0;
            while (it2.hasNext()) {
                if (this.f34385f.contains(it2.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.Collection
        public Stream<E> stream() {
            Stream<E> stream = this.f34384e.stream();
            Set set = this.f34385f;
            Objects.requireNonNull(set);
            return stream.filter(new aim(set));
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            return new a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Sets$c */
    /* loaded from: classes6.dex */
    public class C6023c<E> extends SetView<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f34388e;

        /* renamed from: f */
        public final /* synthetic */ Set f34389f;

        /* renamed from: com.google.common.collect.Sets$c$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<E> {

            /* renamed from: g */
            public final Iterator<E> f34390g;

            public a() {
                this.f34390g = C6023c.this.f34388e.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public E computeNext() {
                while (this.f34390g.hasNext()) {
                    E next = this.f34390g.next();
                    if (!C6023c.this.f34389f.contains(next)) {
                        return next;
                    }
                }
                return endOfData();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6023c(Set set, Set set2) {
            super(null);
            this.f34388e = set;
            this.f34389f = set2;
        }

        /* renamed from: c */
        public static /* synthetic */ boolean m26685c(Set set, Object obj) {
            return !set.contains(obj);
        }

        /* renamed from: d */
        public static /* synthetic */ boolean m26686d(Set set, Object obj) {
            return !set.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return this.f34388e.contains(obj) && !this.f34389f.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f34389f.containsAll(this.f34388e);
        }

        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            Stream<E> parallelStream = this.f34388e.parallelStream();
            final Set set = this.f34389f;
            return parallelStream.filter(new Predicate() { // from class: com.sunia.HTREnginev2.bim
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m26685c;
                    m26685c = Sets.C6023c.m26685c(set, obj);
                    return m26685c;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it2 = this.f34388e.iterator();
            int i = 0;
            while (it2.hasNext()) {
                if (!this.f34389f.contains(it2.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.Collection
        public Stream<E> stream() {
            Stream<E> stream = this.f34388e.stream();
            final Set set = this.f34389f;
            return stream.filter(new Predicate() { // from class: com.sunia.HTREnginev2.cim
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m26686d;
                    m26686d = Sets.C6023c.m26686d(set, obj);
                    return m26686d;
                }
            });
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            return new a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Sets$d */
    /* loaded from: classes6.dex */
    public class C6024d<E> extends SetView<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f34392e;

        /* renamed from: f */
        public final /* synthetic */ Set f34393f;

        /* renamed from: com.google.common.collect.Sets$d$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<E> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34394g;

            /* renamed from: h */
            public final /* synthetic */ Iterator f34395h;

            public a(Iterator it2, Iterator it3) {
                this.f34394g = it2;
                this.f34395h = it3;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public E computeNext() {
                while (this.f34394g.hasNext()) {
                    E e = (E) this.f34394g.next();
                    if (!C6024d.this.f34393f.contains(e)) {
                        return e;
                    }
                }
                while (this.f34395h.hasNext()) {
                    E e2 = (E) this.f34395h.next();
                    if (!C6024d.this.f34392e.contains(e2)) {
                        return e2;
                    }
                }
                return endOfData();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6024d(Set set, Set set2) {
            super(null);
            this.f34392e = set;
            this.f34393f = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return this.f34393f.contains(obj) ^ this.f34392e.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f34392e.equals(this.f34393f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator<E> it2 = this.f34392e.iterator();
            int i = 0;
            while (it2.hasNext()) {
                if (!this.f34393f.contains(it2.next())) {
                    i++;
                }
            }
            Iterator<E> it3 = this.f34393f.iterator();
            while (it3.hasNext()) {
                if (!this.f34392e.contains(it3.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // com.google.common.collect.Sets.SetView, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<E> iterator() {
            return new a(this.f34392e.iterator(), this.f34393f.iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Sets$e */
    /* loaded from: classes6.dex */
    public class C6025e<E> extends AbstractSet<Set<E>> {

        /* renamed from: e */
        public final /* synthetic */ int f34397e;

        /* renamed from: f */
        public final /* synthetic */ ImmutableMap f34398f;

        /* renamed from: com.google.common.collect.Sets$e$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<Set<E>> {

            /* renamed from: g */
            public final BitSet f34399g;

            /* renamed from: com.google.common.collect.Sets$e$a$a, reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class C20587a extends AbstractSet<E> {

                /* renamed from: e */
                public final /* synthetic */ BitSet f34401e;

                /* renamed from: com.google.common.collect.Sets$e$a$a$a, reason: collision with other inner class name */
                /* loaded from: classes6.dex */
                public class C20588a extends AbstractIterator<E> {

                    /* renamed from: g */
                    public int f34403g = -1;

                    public C20588a() {
                    }

                    @Override // com.google.common.collect.AbstractIterator
                    @CheckForNull
                    public E computeNext() {
                        int nextSetBit = C20587a.this.f34401e.nextSetBit(this.f34403g + 1);
                        this.f34403g = nextSetBit;
                        return nextSetBit == -1 ? endOfData() : C6025e.this.f34398f.keySet().asList().get(this.f34403g);
                    }
                }

                public C20587a(BitSet bitSet) {
                    this.f34401e = bitSet;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean contains(@CheckForNull Object obj) {
                    Integer num = (Integer) C6025e.this.f34398f.get(obj);
                    return num != null && this.f34401e.get(num.intValue());
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<E> iterator() {
                    return new C20588a();
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return C6025e.this.f34397e;
                }
            }

            public a() {
                this.f34399g = new BitSet(C6025e.this.f34398f.size());
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Set<E> computeNext() {
                if (this.f34399g.isEmpty()) {
                    this.f34399g.set(0, C6025e.this.f34397e);
                } else {
                    int nextSetBit = this.f34399g.nextSetBit(0);
                    int nextClearBit = this.f34399g.nextClearBit(nextSetBit);
                    if (nextClearBit == C6025e.this.f34398f.size()) {
                        return endOfData();
                    }
                    int i = (nextClearBit - nextSetBit) - 1;
                    this.f34399g.set(0, i);
                    this.f34399g.clear(i, nextClearBit);
                    this.f34399g.set(nextClearBit);
                }
                return new C20587a((BitSet) this.f34399g.clone());
            }
        }

        public C6025e(int i, ImmutableMap immutableMap) {
            this.f34397e = i;
            this.f34398f = immutableMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            Set set = (Set) obj;
            return set.size() == this.f34397e && this.f34398f.keySet().containsAll(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return IntMath.binomial(this.f34398f.size(), this.f34397e);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String valueOf = String.valueOf(this.f34398f.keySet());
            int i = this.f34397e;
            StringBuilder sb = new StringBuilder(valueOf.length() + 32);
            sb.append("Sets.combinations(");
            sb.append(valueOf);
            sb.append(", ");
            sb.append(i);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.collect.Sets$f */
    /* loaded from: classes6.dex */
    public static class C6026f<E> extends ForwardingNavigableSet<E> {

        /* renamed from: e */
        public final NavigableSet<E> f34405e;

        public C6026f(NavigableSet<E> navigableSet) {
            this.f34405e = navigableSet;
        }

        /* renamed from: e */
        public static <T> Ordering<T> m26688e(Comparator<T> comparator) {
            return Ordering.from(comparator).reverse();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E ceiling(@xvk E e) {
            return this.f34405e.floor(e);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator = this.f34405e.comparator();
            return comparator == null ? Ordering.natural().reverse() : m26688e(comparator);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return this.f34405e.iterator();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return this.f34405e;
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        @xvk
        public E first() {
            return this.f34405e.last();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E floor(@xvk E e) {
            return this.f34405e.ceiling(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> headSet(@xvk E e, boolean z) {
            return this.f34405e.tailSet(e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E higher(@xvk E e) {
            return this.f34405e.lower(e);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return this.f34405e.descendingIterator();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        @xvk
        public E last() {
            return this.f34405e.first();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E lower(@xvk E e) {
            return this.f34405e.higher(e);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E pollFirst() {
            return this.f34405e.pollLast();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        @CheckForNull
        public E pollLast() {
            return this.f34405e.pollFirst();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> subSet(@xvk E e, boolean z, @xvk E e2, boolean z2) {
            return this.f34405e.subSet(e2, z2, e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, java.util.NavigableSet
        public NavigableSet<E> tailSet(@xvk E e, boolean z) {
            return this.f34405e.headSet(e, z).descendingSet();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingObject
        public String toString() {
            return standardToString();
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> headSet(@xvk E e) {
            return standardHeadSet(e);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> subSet(@xvk E e, @xvk E e2) {
            return standardSubSet(e, e2);
        }

        @Override // com.google.common.collect.ForwardingSortedSet, java.util.SortedSet
        public SortedSet<E> tailSet(@xvk E e) {
            return standardTailSet(e);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingNavigableSet, com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public NavigableSet<E> delegate() {
            return this.f34405e;
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.collect.Sets$g */
    /* loaded from: classes6.dex */
    public static class C6027g<E> extends C6029i<E> implements NavigableSet<E> {
        public C6027g(NavigableSet<E> navigableSet, com.google.common.base.Predicate<? super E> predicate) {
            super(navigableSet, predicate);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E ceiling(@xvk E e) {
            return (E) Iterables.find(m26689i().tailSet(e, true), this.f33929f, null);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.filter(m26689i().descendingIterator(), this.f33929f);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return Sets.filter((NavigableSet) m26689i().descendingSet(), (com.google.common.base.Predicate) this.f33929f);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E floor(@xvk E e) {
            return (E) Iterators.find(m26689i().headSet(e, true).descendingIterator(), this.f33929f, null);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(@xvk E e, boolean z) {
            return Sets.filter((NavigableSet) m26689i().headSet(e, z), (com.google.common.base.Predicate) this.f33929f);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E higher(@xvk E e) {
            return (E) Iterables.find(m26689i().tailSet(e, false), this.f33929f, null);
        }

        /* renamed from: i */
        public NavigableSet<E> m26689i() {
            return (NavigableSet) this.f33928e;
        }

        @Override // com.google.common.collect.Sets.C6029i, java.util.SortedSet
        @xvk
        public E last() {
            return (E) Iterators.find(m26689i().descendingIterator(), this.f33929f);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E lower(@xvk E e) {
            return (E) Iterators.find(m26689i().headSet(e, false).descendingIterator(), this.f33929f, null);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollFirst() {
            return (E) Iterables.m26327c(m26689i(), this.f33929f);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollLast() {
            return (E) Iterables.m26327c(m26689i().descendingSet(), this.f33929f);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(@xvk E e, boolean z, @xvk E e2, boolean z2) {
            return Sets.filter((NavigableSet) m26689i().subSet(e, z, e2, z2), (com.google.common.base.Predicate) this.f33929f);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(@xvk E e, boolean z) {
            return Sets.filter((NavigableSet) m26689i().tailSet(e, z), (com.google.common.base.Predicate) this.f33929f);
        }
    }

    /* renamed from: com.google.common.collect.Sets$h */
    /* loaded from: classes6.dex */
    public static class C6028h<E> extends Collections2.C5781a<E> implements Set<E> {
        public C6028h(Set<E> set, com.google.common.base.Predicate<? super E> predicate) {
            super(set, predicate);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return Sets.m26675a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.m26676b(this);
        }
    }

    /* renamed from: com.google.common.collect.Sets$i */
    /* loaded from: classes6.dex */
    public static class C6029i<E> extends C6028h<E> implements SortedSet<E> {
        public C6029i(SortedSet<E> sortedSet, com.google.common.base.Predicate<? super E> predicate) {
            super(sortedSet, predicate);
        }

        @Override // java.util.SortedSet
        @CheckForNull
        public Comparator<? super E> comparator() {
            return ((SortedSet) this.f33928e).comparator();
        }

        @Override // java.util.SortedSet
        @xvk
        public E first() {
            return (E) Iterators.find(this.f33928e.iterator(), this.f33929f);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(@xvk E e) {
            return new C6029i(((SortedSet) this.f33928e).headSet(e), this.f33929f);
        }

        @xvk
        public E last() {
            SortedSet sortedSet = (SortedSet) this.f33928e;
            while (true) {
                E e = (Object) sortedSet.last();
                if (this.f33929f.apply(e)) {
                    return e;
                }
                sortedSet = sortedSet.headSet(e);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(@xvk E e, @xvk E e2) {
            return new C6029i(((SortedSet) this.f33928e).subSet(e, e2), this.f33929f);
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(@xvk E e) {
            return new C6029i(((SortedSet) this.f33928e).tailSet(e), this.f33929f);
        }
    }

    /* renamed from: com.google.common.collect.Sets$j */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6030j<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            return Sets.m26678d(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) Preconditions.checkNotNull(collection));
        }
    }

    /* renamed from: com.google.common.collect.Sets$k */
    /* loaded from: classes6.dex */
    public static final class C6031k<E> extends AbstractSet<Set<E>> {

        /* renamed from: e */
        public final ImmutableMap<E, Integer> f34406e;

        /* renamed from: com.google.common.collect.Sets$k$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC14531v3<Set<E>> {
            public a(int i) {
                super(i);
            }

            @Override // com.sunia.HTREnginev2.AbstractC14531v3
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Set<E> mo26054a(int i) {
                return new C6032l(C6031k.this.f34406e, i);
            }
        }

        public C6031k(Set<E> set) {
            Preconditions.checkArgument(set.size() <= 30, "Too many elements to create power set: %s > 30", set.size());
            this.f34406e = Maps.m26501u(set);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Set)) {
                return false;
            }
            return this.f34406e.keySet().containsAll((Set) obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@CheckForNull Object obj) {
            return obj instanceof C6031k ? this.f34406e.keySet().equals(((C6031k) obj).f34406e.keySet()) : super.equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.f34406e.keySet().hashCode() << (this.f34406e.size() - 1);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Set<E>> iterator() {
            return new a(size());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return 1 << this.f34406e.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String valueOf = String.valueOf(this.f34406e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 10);
            sb.append("powerSet(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.collect.Sets$l */
    /* loaded from: classes6.dex */
    public static final class C6032l<E> extends AbstractSet<E> {

        /* renamed from: e */
        public final ImmutableMap<E, Integer> f34408e;

        /* renamed from: f */
        public final int f34409f;

        /* renamed from: com.google.common.collect.Sets$l$a */
        /* loaded from: classes6.dex */
        public class a extends UnmodifiableIterator<E> {

            /* renamed from: e */
            public final ImmutableList<E> f34410e;

            /* renamed from: f */
            public int f34411f;

            public a() {
                this.f34410e = C6032l.this.f34408e.keySet().asList();
                this.f34411f = C6032l.this.f34409f;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f34411f != 0;
            }

            @Override // java.util.Iterator
            public E next() {
                int numberOfTrailingZeros = Integer.numberOfTrailingZeros(this.f34411f);
                if (numberOfTrailingZeros == 32) {
                    throw new NoSuchElementException();
                }
                this.f34411f &= ~(1 << numberOfTrailingZeros);
                return this.f34410e.get(numberOfTrailingZeros);
            }
        }

        public C6032l(ImmutableMap<E, Integer> immutableMap, int i) {
            this.f34408e = immutableMap;
            this.f34409f = i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            Integer num = this.f34408e.get(obj);
            return (num == null || (this.f34409f & (1 << num.intValue())) == 0) ? false : true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Integer.bitCount(this.f34409f);
        }
    }

    /* renamed from: a */
    public static boolean m26675a(Set<?> set, @CheckForNull Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: b */
    public static int m26676b(Set<?> set) {
        Iterator<?> it2 = set.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    /* renamed from: c */
    public static <E extends Enum<E>> EnumSet<E> m26677c(Collection<E> collection, Class<E> cls) {
        EnumSet<E> allOf = EnumSet.allOf(cls);
        allOf.removeAll(collection);
        return allOf;
    }

    public static <B> Set<List<B>> cartesianProduct(List<? extends Set<? extends B>> list) {
        return CartesianSet.m26680e(list);
    }

    @Beta
    public static <E> Set<Set<E>> combinations(Set<E> set, int i) {
        ImmutableMap m26501u = Maps.m26501u(set);
        szd.m57279b(i, "size");
        Preconditions.checkArgument(i <= m26501u.size(), "size (%s) must be <= set.size() (%s)", i, m26501u.size());
        return i == 0 ? ImmutableSet.m26235of(ImmutableSet.m26234of()) : i == m26501u.size() ? ImmutableSet.m26235of(m26501u.keySet()) : new C6025e(i, m26501u);
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> collection) {
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        Preconditions.checkArgument(!collection.isEmpty(), "collection is empty; use the other version of this method");
        return m26677c(collection, collection.iterator().next().getDeclaringClass());
    }

    /* renamed from: d */
    public static boolean m26678d(Set<?> set, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? m26679e(set, collection.iterator()) : Iterators.removeAll(set.iterator(), collection);
    }

    public static <E> SetView<E> difference(Set<E> set, Set<?> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new C6023c(set, set2);
    }

    /* renamed from: e */
    public static boolean m26679e(Set<?> set, Iterator<?> it2) {
        boolean z = false;
        while (it2.hasNext()) {
            z |= set.remove(it2.next());
        }
        return z;
    }

    public static <E> Set<E> filter(Set<E> set, com.google.common.base.Predicate<? super E> predicate) {
        if (set instanceof SortedSet) {
            return filter((SortedSet) set, (com.google.common.base.Predicate) predicate);
        }
        if (set instanceof C6028h) {
            C6028h c6028h = (C6028h) set;
            return new C6028h((Set) c6028h.f33928e, Predicates.and(c6028h.f33929f, predicate));
        }
        return new C6028h((Set) Preconditions.checkNotNull(set), (com.google.common.base.Predicate) Preconditions.checkNotNull(predicate));
    }

    @GwtCompatible(serializable = true)
    public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(E e, E... eArr) {
        return ImmutableEnumSet.asImmutable(EnumSet.of((Enum) e, (Enum[]) eArr));
    }

    public static <E> SetView<E> intersection(Set<E> set, Set<?> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new C6022b(set, set2);
    }

    public static <E> Set<E> newConcurrentHashSet() {
        return k4l.m55165d();
    }

    @GwtIncompatible
    public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet() {
        return new CopyOnWriteArraySet<>();
    }

    public static <E extends Enum<E>> EnumSet<E> newEnumSet(Iterable<E> iterable, Class<E> cls) {
        EnumSet<E> noneOf = EnumSet.noneOf(cls);
        Iterables.addAll(noneOf, iterable);
        return noneOf;
    }

    public static <E> HashSet<E> newHashSet() {
        return new HashSet<>();
    }

    public static <E> HashSet<E> newHashSetWithExpectedSize(int i) {
        return new HashSet<>(Maps.m26491k(i));
    }

    public static <E> Set<E> newIdentityHashSet() {
        return Collections.newSetFromMap(Maps.newIdentityHashMap());
    }

    public static <E> LinkedHashSet<E> newLinkedHashSet() {
        return new LinkedHashSet<>();
    }

    public static <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int i) {
        return new LinkedHashSet<>(Maps.m26491k(i));
    }

    @Deprecated
    public static <E> Set<E> newSetFromMap(Map<E, Boolean> map) {
        return Collections.newSetFromMap(map);
    }

    public static <E extends Comparable> TreeSet<E> newTreeSet() {
        return new TreeSet<>();
    }

    @GwtCompatible(serializable = false)
    public static <E> Set<Set<E>> powerSet(Set<E> set) {
        return new C6031k(set);
    }

    @Beta
    @GwtIncompatible
    public static <K extends Comparable<? super K>> NavigableSet<K> subSet(NavigableSet<K> navigableSet, Range<K> range) {
        if (navigableSet.comparator() != null && navigableSet.comparator() != Ordering.natural() && range.hasLowerBound() && range.hasUpperBound()) {
            Preconditions.checkArgument(navigableSet.comparator().compare(range.lowerEndpoint(), range.upperEndpoint()) <= 0, "set is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.hasLowerBound() && range.hasUpperBound()) {
            K lowerEndpoint = range.lowerEndpoint();
            BoundType lowerBoundType = range.lowerBoundType();
            BoundType boundType = BoundType.CLOSED;
            return navigableSet.subSet(lowerEndpoint, lowerBoundType == boundType, range.upperEndpoint(), range.upperBoundType() == boundType);
        }
        if (range.hasLowerBound()) {
            return navigableSet.tailSet(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED);
        }
        if (range.hasUpperBound()) {
            return navigableSet.headSet(range.upperEndpoint(), range.upperBoundType() == BoundType.CLOSED);
        }
        return (NavigableSet) Preconditions.checkNotNull(navigableSet);
    }

    public static <E> SetView<E> symmetricDifference(Set<? extends E> set, Set<? extends E> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new C6024d(set, set2);
    }

    @GwtIncompatible
    public static <E> NavigableSet<E> synchronizedNavigableSet(NavigableSet<E> navigableSet) {
        return Synchronized.m26760q(navigableSet);
    }

    public static <E extends Enum<E>> Collector<E, ?, ImmutableSet<E>> toImmutableEnumSet() {
        return C6116k.m26953i0();
    }

    public static <E> SetView<E> union(Set<? extends E> set, Set<? extends E> set2) {
        Preconditions.checkNotNull(set, "set1");
        Preconditions.checkNotNull(set2, "set2");
        return new C6021a(set, set2);
    }

    public static <E> NavigableSet<E> unmodifiableNavigableSet(NavigableSet<E> navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof UnmodifiableNavigableSet)) ? navigableSet : new UnmodifiableNavigableSet(navigableSet);
    }

    @SafeVarargs
    public static <B> Set<List<B>> cartesianProduct(Set<? extends B>... setArr) {
        return cartesianProduct(Arrays.asList(setArr));
    }

    @GwtCompatible(serializable = true)
    public static <E extends Enum<E>> ImmutableSet<E> immutableEnumSet(Iterable<E> iterable) {
        if (iterable instanceof ImmutableEnumSet) {
            return (ImmutableEnumSet) iterable;
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.isEmpty()) {
                return ImmutableSet.m26234of();
            }
            return ImmutableEnumSet.asImmutable(EnumSet.copyOf(collection));
        }
        Iterator<E> it2 = iterable.iterator();
        if (it2.hasNext()) {
            EnumSet of = EnumSet.of((Enum) it2.next());
            Iterators.addAll(of, it2);
            return ImmutableEnumSet.asImmutable(of);
        }
        return ImmutableSet.m26234of();
    }

    public static <E> Set<E> newConcurrentHashSet(Iterable<? extends E> iterable) {
        Set<E> newConcurrentHashSet = newConcurrentHashSet();
        Iterables.addAll(newConcurrentHashSet, iterable);
        return newConcurrentHashSet;
    }

    @GwtIncompatible
    public static <E> CopyOnWriteArraySet<E> newCopyOnWriteArraySet(Iterable<? extends E> iterable) {
        Collection newArrayList;
        if (iterable instanceof Collection) {
            newArrayList = (Collection) iterable;
        } else {
            newArrayList = Lists.newArrayList(iterable);
        }
        return new CopyOnWriteArraySet<>(newArrayList);
    }

    public static <E> HashSet<E> newHashSet(E... eArr) {
        HashSet<E> newHashSetWithExpectedSize = newHashSetWithExpectedSize(eArr.length);
        Collections.addAll(newHashSetWithExpectedSize, eArr);
        return newHashSetWithExpectedSize;
    }

    public static <E> LinkedHashSet<E> newLinkedHashSet(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new LinkedHashSet<>((Collection) iterable);
        }
        LinkedHashSet<E> newLinkedHashSet = newLinkedHashSet();
        Iterables.addAll(newLinkedHashSet, iterable);
        return newLinkedHashSet;
    }

    public static <E extends Comparable> TreeSet<E> newTreeSet(Iterable<? extends E> iterable) {
        TreeSet<E> newTreeSet = newTreeSet();
        Iterables.addAll(newTreeSet, iterable);
        return newTreeSet;
    }

    /* loaded from: classes6.dex */
    public static final class UnmodifiableNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E>, Serializable {
        private static final long serialVersionUID = 0;
        private final NavigableSet<E> delegate;

        @CheckForNull
        private transient UnmodifiableNavigableSet<E> descendingSet;
        private final SortedSet<E> unmodifiableDelegate;

        public UnmodifiableNavigableSet(NavigableSet<E> navigableSet) {
            this.delegate = (NavigableSet) Preconditions.checkNotNull(navigableSet);
            this.unmodifiableDelegate = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E ceiling(@xvk E e) {
            return this.delegate.ceiling(e);
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.unmodifiableIterator(this.delegate.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            UnmodifiableNavigableSet<E> unmodifiableNavigableSet = this.descendingSet;
            if (unmodifiableNavigableSet != null) {
                return unmodifiableNavigableSet;
            }
            UnmodifiableNavigableSet<E> unmodifiableNavigableSet2 = new UnmodifiableNavigableSet<>(this.delegate.descendingSet());
            this.descendingSet = unmodifiableNavigableSet2;
            unmodifiableNavigableSet2.descendingSet = this;
            return unmodifiableNavigableSet2;
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E floor(@xvk E e) {
            return this.delegate.floor(e);
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super E> consumer) {
            this.delegate.forEach(consumer);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(@xvk E e, boolean z) {
            return Sets.unmodifiableNavigableSet(this.delegate.headSet(e, z));
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E higher(@xvk E e) {
            return this.delegate.higher(e);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E lower(@xvk E e) {
            return this.delegate.lower(e);
        }

        @Override // java.util.Collection
        public Stream<E> parallelStream() {
            return this.delegate.parallelStream();
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super E> predicate) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public Stream<E> stream() {
            return this.delegate.stream();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(@xvk E e, boolean z, @xvk E e2, boolean z2) {
            return Sets.unmodifiableNavigableSet(this.delegate.subSet(e, z, e2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(@xvk E e, boolean z) {
            return Sets.unmodifiableNavigableSet(this.delegate.tailSet(e, z));
        }

        @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public SortedSet<E> delegate() {
            return this.unmodifiableDelegate;
        }
    }

    public static <E> HashSet<E> newHashSet(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return new HashSet<>((Collection) iterable);
        }
        return newHashSet(iterable.iterator());
    }

    public static <E> TreeSet<E> newTreeSet(Comparator<? super E> comparator) {
        return new TreeSet<>((Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <E extends Enum<E>> EnumSet<E> complementOf(Collection<E> collection, Class<E> cls) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof EnumSet) {
            return EnumSet.complementOf((EnumSet) collection);
        }
        return m26677c(collection, cls);
    }

    public static <E> HashSet<E> newHashSet(Iterator<? extends E> it2) {
        HashSet<E> newHashSet = newHashSet();
        Iterators.addAll(newHashSet, it2);
        return newHashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> SortedSet<E> filter(SortedSet<E> sortedSet, com.google.common.base.Predicate<? super E> predicate) {
        if (sortedSet instanceof C6028h) {
            C6028h c6028h = (C6028h) sortedSet;
            return new C6029i((SortedSet) c6028h.f33928e, Predicates.and(c6028h.f33929f, predicate));
        }
        return new C6029i((SortedSet) Preconditions.checkNotNull(sortedSet), (com.google.common.base.Predicate) Preconditions.checkNotNull(predicate));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    public static <E> NavigableSet<E> filter(NavigableSet<E> navigableSet, com.google.common.base.Predicate<? super E> predicate) {
        if (navigableSet instanceof C6028h) {
            C6028h c6028h = (C6028h) navigableSet;
            return new C6027g((NavigableSet) c6028h.f33928e, Predicates.and(c6028h.f33929f, predicate));
        }
        return new C6027g((NavigableSet) Preconditions.checkNotNull(navigableSet), (com.google.common.base.Predicate) Preconditions.checkNotNull(predicate));
    }
}
