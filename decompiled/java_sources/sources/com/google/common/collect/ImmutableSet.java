package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableSet;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import com.sunia.HTREnginev2.pfh;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.vzd;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.stream.Collector;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes6.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    private static final int CUTOFF = 751619276;
    private static final double DESIRED_LOAD_FACTOR = 0.7d;
    static final int MAX_TABLE_SIZE = 1073741824;
    static final int SPLITERATOR_CHARACTERISTICS = 1297;

    /* loaded from: classes6.dex */
    public static class Builder<E> extends ImmutableCollection.Builder<E> {

        /* renamed from: b */
        @CheckForNull
        public AbstractC5845d<E> f34046b;

        /* renamed from: c */
        public boolean f34047c;

        public Builder() {
            this(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableCollection.Builder add(Object obj) {
            return add((Builder<E>) obj);
        }

        /* renamed from: b */
        public Builder<E> mo26241b(Builder<E> builder) {
            Objects.requireNonNull(this.f34046b);
            Objects.requireNonNull(builder.f34046b);
            m26243d();
            this.f34046b = this.f34046b.m26256d(builder.f34046b);
            return this;
        }

        /* renamed from: c */
        public void mo26242c() {
            Objects.requireNonNull(this.f34046b);
            this.f34046b = this.f34046b.mo26248e();
        }

        /* renamed from: d */
        public final void m26243d() {
            if (this.f34047c) {
                mo26242c();
                this.f34047c = false;
            }
        }

        @VisibleForTesting
        /* renamed from: e */
        public void m26244e() {
            Objects.requireNonNull(this.f34046b);
            this.f34046b = new C5843b(this.f34046b);
        }

        public Builder(int i) {
            if (i > 0) {
                this.f34046b = new C5844c(i);
            } else {
                this.f34046b = C5842a.m26245h();
            }
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public ImmutableSet<E> build() {
            Objects.requireNonNull(this.f34046b);
            this.f34047c = true;
            AbstractC5845d<E> mo26252g = this.f34046b.mo26252g();
            this.f34046b = mo26252g;
            return mo26252g.mo26247c();
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E e) {
            Objects.requireNonNull(this.f34046b);
            Preconditions.checkNotNull(e);
            m26243d();
            this.f34046b = this.f34046b.mo26246a(e);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterable<? extends E> iterable) {
            super.addAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> addAll(Iterator<? extends E> it2) {
            super.addAll((Iterator) it2);
            return this;
        }

        public Builder(boolean z) {
            this.f34046b = null;
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        @CanIgnoreReturnValue
        public Builder<E> add(E... eArr) {
            super.add((Object[]) eArr);
            return this;
        }
    }

    @GwtCompatible
    /* loaded from: classes6.dex */
    public static abstract class CachingAsList<E> extends ImmutableSet<E> {

        @RetainedWith
        @CheckForNull
        @LazyInit
        private transient ImmutableList<E> asList;

        @Override // com.google.common.collect.ImmutableCollection
        public ImmutableList<E> asList() {
            ImmutableList<E> immutableList = this.asList;
            if (immutableList != null) {
                return immutableList;
            }
            ImmutableList<E> createAsList = createAsList();
            this.asList = createAsList;
            return createAsList;
        }

        public ImmutableList<E> createAsList() {
            return new RegularImmutableAsList(this, toArray());
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.sunia.HTREnginev2.svm
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }
    }

    /* loaded from: classes6.dex */
    public static abstract class Indexed<E> extends CachingAsList<E> {
        @Override // com.google.common.collect.ImmutableCollection
        public int copyIntoArray(Object[] objArr, int i) {
            return asList().copyIntoArray(objArr, i);
        }

        @Override // com.google.common.collect.ImmutableSet.CachingAsList
        public ImmutableList<E> createAsList() {
            return new ImmutableAsList<E>() { // from class: com.google.common.collect.ImmutableSet.Indexed.1
                @Override // java.util.List
                public E get(int i) {
                    return (E) Indexed.this.get(i);
                }

                @Override // com.google.common.collect.ImmutableAsList
                public Indexed<E> delegateCollection() {
                    return Indexed.this;
                }
            };
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super E> consumer) {
            Preconditions.checkNotNull(consumer);
            int size = size();
            for (int i = 0; i < size; i++) {
                consumer.accept(get(i));
            }
        }

        public abstract E get(int i);

        @Override // com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
        public Spliterator<E> spliterator() {
            return vzd.m57901f(size(), ImmutableSet.SPLITERATOR_CHARACTERISTICS, new IntFunction() { // from class: com.google.common.collect.q
                @Override // java.util.function.IntFunction
                public final Object apply(int i) {
                    return ImmutableSet.Indexed.this.get(i);
                }
            });
        }

        @Override // com.google.common.collect.ImmutableSet.CachingAsList, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.sunia.HTREnginev2.svm
        public UnmodifiableIterator<E> iterator() {
            return asList().iterator();
        }
    }

    /* loaded from: classes6.dex */
    public static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        public SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        public Object readResolve() {
            return ImmutableSet.copyOf(this.elements);
        }
    }

    /* renamed from: com.google.common.collect.ImmutableSet$a */
    /* loaded from: classes6.dex */
    public static final class C5842a<E> extends AbstractC5845d<E> {

        /* renamed from: c */
        public static final C5842a<Object> f34048c = new C5842a<>();

        public C5842a() {
            super(0);
        }

        /* renamed from: h */
        public static <E> AbstractC5845d<E> m26245h() {
            return f34048c;
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: a */
        public AbstractC5845d<E> mo26246a(E e) {
            return new C5844c(4).mo26246a(e);
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: c */
        public ImmutableSet<E> mo26247c() {
            return ImmutableSet.m26234of();
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: e */
        public AbstractC5845d<E> mo26248e() {
            return this;
        }
    }

    /* renamed from: com.google.common.collect.ImmutableSet$b */
    /* loaded from: classes6.dex */
    public static final class C5843b<E> extends AbstractC5845d<E> {

        /* renamed from: c */
        public final Set<Object> f34049c;

        public C5843b(AbstractC5845d<E> abstractC5845d) {
            super(abstractC5845d);
            this.f34049c = Sets.newHashSetWithExpectedSize(this.f34056b);
            for (int i = 0; i < this.f34056b; i++) {
                Set<Object> set = this.f34049c;
                E e = this.f34055a[i];
                Objects.requireNonNull(e);
                set.add(e);
            }
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: a */
        public AbstractC5845d<E> mo26246a(E e) {
            Preconditions.checkNotNull(e);
            if (this.f34049c.add(e)) {
                m26255b(e);
            }
            return this;
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: c */
        public ImmutableSet<E> mo26247c() {
            int i = this.f34056b;
            if (i == 0) {
                return ImmutableSet.m26234of();
            }
            if (i != 1) {
                return new JdkBackedImmutableSet(this.f34049c, ImmutableList.asImmutableList(this.f34055a, this.f34056b));
            }
            E e = this.f34055a[0];
            Objects.requireNonNull(e);
            return ImmutableSet.m26235of((Object) e);
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: e */
        public AbstractC5845d<E> mo26248e() {
            return new C5843b(this);
        }
    }

    public static <E> Builder<E> builder() {
        return new Builder<>();
    }

    @Beta
    public static <E> Builder<E> builderWithExpectedSize(int i) {
        szd.m57279b(i, "expectedSize");
        return new Builder<>(i);
    }

    static int chooseTableSize(int i) {
        int max = Math.max(i, 2);
        if (max >= CUTOFF) {
            Preconditions.checkArgument(max < 1073741824, "collection too large");
            return 1073741824;
        }
        int highestOneBit = Integer.highestOneBit(max - 1) << 1;
        while (highestOneBit * 0.7d < max) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <E> ImmutableSet<E> construct(int i, int i2, Object... objArr) {
        if (i == 0) {
            return m26234of();
        }
        int i3 = 0;
        if (i == 1) {
            return m26235of(objArr[0]);
        }
        AbstractC5845d abstractC5845d = new C5844c(i2);
        while (i3 < i) {
            AbstractC5845d mo26246a = abstractC5845d.mo26246a(Preconditions.checkNotNull(objArr[i3]));
            i3++;
            abstractC5845d = mo26246a;
        }
        return abstractC5845d.mo26252g().mo26247c();
    }

    private static <E> ImmutableSet<E> constructUnknownDuplication(int i, Object... objArr) {
        return construct(i, Math.max(4, IntMath.sqrt(i, RoundingMode.CEILING)), objArr);
    }

    public static <E> ImmutableSet<E> copyOf(Collection<? extends E> collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet<E> immutableSet = (ImmutableSet) collection;
            if (!immutableSet.isPartialView()) {
                return immutableSet;
            }
        } else if (collection instanceof EnumSet) {
            return copyOfEnumSet((EnumSet) collection);
        }
        Object[] array = collection.toArray();
        if (collection instanceof Set) {
            return construct(array.length, array.length, array);
        }
        return constructUnknownDuplication(array.length, array);
    }

    private static ImmutableSet copyOfEnumSet(EnumSet enumSet) {
        return ImmutableEnumSet.asImmutable(EnumSet.copyOf(enumSet));
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m26234of() {
        return RegularImmutableSet.EMPTY;
    }

    public static <E> Collector<E, ?, ImmutableSet<E>> toImmutableSet() {
        return C6116k.m26969q0();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && isHashCodeFast() && ((ImmutableSet) obj).isHashCodeFast() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.m26675a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.m26676b(this);
    }

    public boolean isHashCodeFast() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public abstract UnmodifiableIterator<E> iterator();

    @Override // com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(toArray());
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m26235of(E e) {
        return new SingletonImmutableSet(e);
    }

    /* renamed from: com.google.common.collect.ImmutableSet$d */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5845d<E> {

        /* renamed from: a */
        public E[] f34055a;

        /* renamed from: b */
        public int f34056b;

        public AbstractC5845d(int i) {
            this.f34055a = (E[]) new Object[i];
            this.f34056b = 0;
        }

        /* renamed from: a */
        public abstract AbstractC5845d<E> mo26246a(E e);

        /* renamed from: b */
        public final void m26255b(E e) {
            m26257f(this.f34056b + 1);
            E[] eArr = this.f34055a;
            int i = this.f34056b;
            this.f34056b = i + 1;
            eArr[i] = e;
        }

        /* renamed from: c */
        public abstract ImmutableSet<E> mo26247c();

        /* renamed from: d */
        public final AbstractC5845d<E> m26256d(AbstractC5845d<E> abstractC5845d) {
            for (int i = 0; i < abstractC5845d.f34056b; i++) {
                E e = abstractC5845d.f34055a[i];
                Objects.requireNonNull(e);
                this = this.mo26246a(e);
            }
            return this;
        }

        /* renamed from: e */
        public abstract AbstractC5845d<E> mo26248e();

        /* renamed from: f */
        public final void m26257f(int i) {
            E[] eArr = this.f34055a;
            if (i > eArr.length) {
                this.f34055a = (E[]) Arrays.copyOf(this.f34055a, ImmutableCollection.Builder.m26160a(eArr.length, i));
            }
        }

        /* renamed from: g */
        public AbstractC5845d<E> mo26252g() {
            return this;
        }

        public AbstractC5845d(AbstractC5845d<E> abstractC5845d) {
            E[] eArr = abstractC5845d.f34055a;
            this.f34055a = (E[]) Arrays.copyOf(eArr, eArr.length);
            this.f34056b = abstractC5845d.f34056b;
        }
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m26236of(E e, E e2) {
        return construct(2, 2, e, e2);
    }

    /* renamed from: com.google.common.collect.ImmutableSet$c */
    /* loaded from: classes6.dex */
    public static final class C5844c<E> extends AbstractC5845d<E> {

        /* renamed from: g */
        public static final int f34050g = 13;

        /* renamed from: c */
        public Object[] f34051c;

        /* renamed from: d */
        public int f34052d;

        /* renamed from: e */
        public int f34053e;

        /* renamed from: f */
        public int f34054f;

        public C5844c(int i) {
            super(i);
            this.f34051c = null;
            this.f34052d = 0;
            this.f34053e = 0;
        }

        /* renamed from: i */
        public static boolean m26249i(Object[] objArr) {
            int m26250k = m26250k(objArr.length);
            int length = objArr.length - 1;
            int i = 0;
            int i2 = 0;
            while (i < objArr.length) {
                if (i != i2 || objArr[i] != null) {
                    int i3 = i + m26250k;
                    for (int i4 = i3 - 1; i4 >= i2; i4--) {
                        if (objArr[i4 & length] == null) {
                            i2 = i3;
                            i = i4 + 1;
                        }
                    }
                    return true;
                }
                i2 = i + m26250k;
                if (objArr[(i2 - 1) & length] != null) {
                    i2 = i + 1;
                }
                i = i2;
            }
            return false;
        }

        /* renamed from: k */
        public static int m26250k(int i) {
            return IntMath.log2(i, RoundingMode.UNNECESSARY) * 13;
        }

        /* renamed from: l */
        public static Object[] m26251l(int i, Object[] objArr, int i2) {
            int i3;
            Object[] objArr2 = new Object[i];
            int i4 = i - 1;
            for (int i5 = 0; i5 < i2; i5++) {
                Object obj = objArr[i5];
                Objects.requireNonNull(obj);
                int m56256c = pfh.m56256c(obj.hashCode());
                while (true) {
                    i3 = m56256c & i4;
                    if (objArr2[i3] == null) {
                        break;
                    }
                    m56256c++;
                }
                objArr2[i3] = obj;
            }
            return objArr2;
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: a */
        public AbstractC5845d<E> mo26246a(E e) {
            Preconditions.checkNotNull(e);
            if (this.f34051c != null) {
                return m26254j(e);
            }
            if (this.f34056b == 0) {
                m26255b(e);
                return this;
            }
            m26253h(this.f34055a.length);
            this.f34056b--;
            return m26254j(this.f34055a[0]).mo26246a(e);
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: c */
        public ImmutableSet<E> mo26247c() {
            int i = this.f34056b;
            if (i == 0) {
                return ImmutableSet.m26234of();
            }
            if (i == 1) {
                E e = this.f34055a[0];
                Objects.requireNonNull(e);
                return ImmutableSet.m26235of((Object) e);
            }
            Object[] objArr = this.f34055a;
            if (i != objArr.length) {
                objArr = Arrays.copyOf(objArr, i);
            }
            int i2 = this.f34054f;
            Object[] objArr2 = this.f34051c;
            Objects.requireNonNull(objArr2);
            return new RegularImmutableSet(objArr, i2, objArr2, this.f34051c.length - 1);
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: e */
        public AbstractC5845d<E> mo26248e() {
            return new C5844c(this);
        }

        @Override // com.google.common.collect.ImmutableSet.AbstractC5845d
        /* renamed from: g */
        public AbstractC5845d<E> mo26252g() {
            if (this.f34051c == null) {
                return this;
            }
            int chooseTableSize = ImmutableSet.chooseTableSize(this.f34056b);
            if (chooseTableSize * 2 < this.f34051c.length) {
                this.f34051c = m26251l(chooseTableSize, this.f34055a, this.f34056b);
                this.f34052d = m26250k(chooseTableSize);
                this.f34053e = (int) (chooseTableSize * 0.7d);
            }
            return m26249i(this.f34051c) ? new C5843b(this) : this;
        }

        /* renamed from: h */
        public void m26253h(int i) {
            int length;
            Object[] objArr = this.f34051c;
            if (objArr == null) {
                length = ImmutableSet.chooseTableSize(i);
                this.f34051c = new Object[length];
            } else {
                if (i <= this.f34053e || objArr.length >= 1073741824) {
                    return;
                }
                length = objArr.length * 2;
                this.f34051c = m26251l(length, this.f34055a, this.f34056b);
            }
            this.f34052d = m26250k(length);
            this.f34053e = (int) (length * 0.7d);
        }

        /* renamed from: j */
        public final AbstractC5845d<E> m26254j(E e) {
            Objects.requireNonNull(this.f34051c);
            int hashCode = e.hashCode();
            int m56256c = pfh.m56256c(hashCode);
            int length = this.f34051c.length - 1;
            for (int i = m56256c; i - m56256c < this.f34052d; i++) {
                int i2 = i & length;
                Object obj = this.f34051c[i2];
                if (obj == null) {
                    m26255b(e);
                    this.f34051c[i2] = e;
                    this.f34054f += hashCode;
                    m26253h(this.f34056b);
                    return this;
                }
                if (obj.equals(e)) {
                    return this;
                }
            }
            return new C5843b(this).mo26246a(e);
        }

        public C5844c(C5844c<E> c5844c) {
            super(c5844c);
            Object[] objArr = c5844c.f34051c;
            this.f34051c = objArr == null ? null : (Object[]) objArr.clone();
            this.f34052d = c5844c.f34052d;
            this.f34053e = c5844c.f34053e;
            this.f34054f = c5844c.f34054f;
        }
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m26237of(E e, E e2, E e3) {
        return construct(3, 3, e, e2, e3);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m26238of(E e, E e2, E e3, E e4) {
        return construct(4, 4, e, e2, e3, e4);
    }

    /* renamed from: of */
    public static <E> ImmutableSet<E> m26239of(E e, E e2, E e3, E e4, E e5) {
        return construct(5, 5, e, e2, e3, e4, e5);
    }

    @SafeVarargs
    /* renamed from: of */
    public static <E> ImmutableSet<E> m26240of(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        Preconditions.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return construct(length, length, objArr);
    }

    public static <E> ImmutableSet<E> copyOf(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            return copyOf((Collection) iterable);
        }
        return copyOf(iterable.iterator());
    }

    public static <E> ImmutableSet<E> copyOf(Iterator<? extends E> it2) {
        if (!it2.hasNext()) {
            return m26234of();
        }
        E next = it2.next();
        if (!it2.hasNext()) {
            return m26235of((Object) next);
        }
        return new Builder().add((Builder) next).addAll((Iterator) it2).build();
    }

    public static <E> ImmutableSet<E> copyOf(E[] eArr) {
        int length = eArr.length;
        if (length == 0) {
            return m26234of();
        }
        if (length != 1) {
            return constructUnknownDuplication(eArr.length, (Object[]) eArr.clone());
        }
        return m26235of((Object) eArr[0]);
    }
}
