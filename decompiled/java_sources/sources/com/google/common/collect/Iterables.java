package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Iterables;
import com.google.common.collect.Streams;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.lae;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Supplier;
import java.util.stream.Stream;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public final class Iterables {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$a */
    /* loaded from: classes6.dex */
    public class C5854a<T> implements Function<Iterable<? extends T>, Iterator<? extends T>> {
        @Override // com.google.common.base.Function, java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Iterator<? extends T> apply(Iterable<? extends T> iterable) {
            return iterable.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$b */
    /* loaded from: classes6.dex */
    public class C5855b<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34072f;

        public C5855b(Iterable iterable) {
            this.f34072f = iterable;
        }

        /* renamed from: d */
        public static /* synthetic */ Iterable m26333d(Iterable iterable) {
            return iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.cycle(this.f34072f);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            final Iterable iterable = this.f34072f;
            return Stream.generate(new Supplier() { // from class: com.sunia.HTREnginev2.gqi
                @Override // java.util.function.Supplier
                public final Object get() {
                    Iterable m26333d;
                    m26333d = Iterables.C5855b.m26333d(iterable);
                    return m26333d;
                }
            }).flatMap(new java.util.function.Function() { // from class: com.sunia.HTREnginev2.hqi
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Streams.stream((Iterable) obj);
                }
            }).spliterator();
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return String.valueOf(this.f34072f.toString()).concat(" (cycled)");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$c */
    /* loaded from: classes6.dex */
    public class C5856c<T> extends FluentIterable<List<T>> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34073f;

        /* renamed from: g */
        public final /* synthetic */ int f34074g;

        public C5856c(Iterable iterable, int i) {
            this.f34073f = iterable;
            this.f34074g = i;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return Iterators.partition(this.f34073f.iterator(), this.f34074g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$d */
    /* loaded from: classes6.dex */
    public class C5857d<T> extends FluentIterable<List<T>> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34075f;

        /* renamed from: g */
        public final /* synthetic */ int f34076g;

        public C5857d(Iterable iterable, int i) {
            this.f34075f = iterable;
            this.f34076g = i;
        }

        @Override // java.lang.Iterable
        public Iterator<List<T>> iterator() {
            return Iterators.paddedPartition(this.f34075f.iterator(), this.f34076g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$e */
    /* loaded from: classes6.dex */
    public class C5858e<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34077f;

        /* renamed from: g */
        public final /* synthetic */ Predicate f34078g;

        public C5858e(Iterable iterable, Predicate predicate) {
            this.f34077f = iterable;
            this.f34078g = predicate;
        }

        /* renamed from: d */
        public static /* synthetic */ void m26335d(Predicate predicate, Consumer consumer, Object obj) {
            if (predicate.test(obj)) {
                consumer.accept(obj);
            }
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super T> consumer) {
            Preconditions.checkNotNull(consumer);
            Iterable iterable = this.f34077f;
            final Predicate predicate = this.f34078g;
            iterable.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.iqi
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Iterables.C5858e.m26335d(Predicate.this, consumer, obj);
                }
            });
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.filter(this.f34077f.iterator(), this.f34078g);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return vzd.m57896a(this.f34077f.spliterator(), this.f34078g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$f */
    /* loaded from: classes6.dex */
    public class C5859f<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34079f;

        /* renamed from: g */
        public final /* synthetic */ Function f34080g;

        public C5859f(Iterable iterable, Function function) {
            this.f34079f = iterable;
            this.f34080g = function;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: d */
        public static /* synthetic */ void m26337d(Consumer consumer, Function function, Object obj) {
            consumer.accept(function.apply(obj));
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super T> consumer) {
            Preconditions.checkNotNull(consumer);
            Iterable iterable = this.f34079f;
            final Function function = this.f34080g;
            iterable.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.jqi
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Iterables.C5859f.m26337d(consumer, function, obj);
                }
            });
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.f34079f.iterator(), this.f34080g);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return vzd.m57903h(this.f34079f.spliterator(), this.f34080g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$g */
    /* loaded from: classes6.dex */
    public class C5860g<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34081f;

        /* renamed from: g */
        public final /* synthetic */ int f34082g;

        /* renamed from: com.google.common.collect.Iterables$g$a */
        /* loaded from: classes6.dex */
        public class a implements Iterator<T> {

            /* renamed from: e */
            public boolean f34083e = true;

            /* renamed from: f */
            public final /* synthetic */ Iterator f34084f;

            public a(C5860g c5860g, Iterator it2) {
                this.f34084f = it2;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f34084f.hasNext();
            }

            @Override // java.util.Iterator
            @xvk
            public T next() {
                T t = (T) this.f34084f.next();
                this.f34083e = false;
                return t;
            }

            @Override // java.util.Iterator
            public void remove() {
                szd.m57282e(!this.f34083e);
                this.f34084f.remove();
            }
        }

        public C5860g(Iterable iterable, int i) {
            this.f34081f = iterable;
            this.f34082g = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f34081f;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f34082g), list.size()).iterator();
            }
            Iterator<T> it2 = iterable.iterator();
            Iterators.advance(it2, this.f34082g);
            return new a(this, it2);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            Iterable iterable = this.f34081f;
            if (!(iterable instanceof List)) {
                return Streams.stream(iterable).skip(this.f34082g).spliterator();
            }
            List list = (List) iterable;
            return list.subList(Math.min(list.size(), this.f34082g), list.size()).spliterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$h */
    /* loaded from: classes6.dex */
    public class C5861h<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34085f;

        /* renamed from: g */
        public final /* synthetic */ int f34086g;

        public C5861h(Iterable iterable, int i) {
            this.f34085f = iterable;
            this.f34086g = i;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.limit(this.f34085f.iterator(), this.f34086g);
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return Streams.stream(this.f34085f).limit(this.f34086g).spliterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$i */
    /* loaded from: classes6.dex */
    public class C5862i<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34087f;

        public C5862i(Iterable iterable) {
            this.f34087f = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            Iterable iterable = this.f34087f;
            return iterable instanceof Queue ? new lae((Queue) iterable) : Iterators.consumingIterator(iterable.iterator());
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return "Iterables.consumingIterable(...)";
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.Iterables$j */
    /* loaded from: classes6.dex */
    public class C5863j<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f34088f;

        /* renamed from: g */
        public final /* synthetic */ Comparator f34089g;

        public C5863j(Iterable iterable, Comparator comparator) {
            this.f34088f = iterable;
            this.f34089g = comparator;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.mergeSorted(Iterables.transform(this.f34088f, Iterables.m26330f()), this.f34089g);
        }
    }

    /* renamed from: com.google.common.collect.Iterables$k */
    /* loaded from: classes6.dex */
    public static final class C5864k<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final Iterable<? extends T> f34090f;

        public /* synthetic */ C5864k(Iterable iterable, C5855b c5855b) {
            this(iterable);
        }

        @Override // java.lang.Iterable
        public void forEach(Consumer<? super T> consumer) {
            this.f34090f.forEach(consumer);
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.unmodifiableIterator(this.f34090f.iterator());
        }

        @Override // java.lang.Iterable
        public Spliterator<T> spliterator() {
            return this.f34090f.spliterator();
        }

        @Override // com.google.common.collect.FluentIterable
        public String toString() {
            return this.f34090f.toString();
        }

        public C5864k(Iterable<? extends T> iterable) {
            this.f34090f = iterable;
        }
    }

    /* renamed from: a */
    public static <E> Collection<E> m26325a(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable.iterator());
    }

    @CanIgnoreReturnValue
    public static <T> boolean addAll(Collection<T> collection, Iterable<? extends T> iterable) {
        return iterable instanceof Collection ? collection.addAll((Collection) iterable) : Iterators.addAll(collection, ((Iterable) Preconditions.checkNotNull(iterable)).iterator());
    }

    public static <T> boolean all(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.all(iterable.iterator(), predicate);
    }

    public static <T> boolean any(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.any(iterable.iterator(), predicate);
    }

    @xvk
    /* renamed from: b */
    public static <T> T m26326b(List<T> list) {
        return list.get(list.size() - 1);
    }

    @CheckForNull
    /* renamed from: c */
    public static <T> T m26327c(Iterable<T> iterable, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(predicate);
        Iterator<T> it2 = iterable.iterator();
        while (it2.hasNext()) {
            T next = it2.next();
            if (predicate.apply(next)) {
                it2.remove();
                return next;
            }
        }
        return null;
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return FluentIterable.concat(iterable, iterable2);
    }

    public static <T> Iterable<T> consumingIterable(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new C5862i(iterable);
    }

    public static boolean contains(Iterable<? extends Object> iterable, @CheckForNull Object obj) {
        return iterable instanceof Collection ? Collections2.m26077e((Collection) iterable, obj) : Iterators.contains(iterable.iterator(), obj);
    }

    public static <T> Iterable<T> cycle(Iterable<T> iterable) {
        Preconditions.checkNotNull(iterable);
        return new C5855b(iterable);
    }

    /* renamed from: d */
    public static Object[] m26328d(Iterable<?> iterable) {
        return m26325a(iterable).toArray();
    }

    /* renamed from: e */
    public static <T> T[] m26329e(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) m26325a(iterable).toArray(tArr);
    }

    public static boolean elementsEqual(Iterable<?> iterable, Iterable<?> iterable2) {
        if ((iterable instanceof Collection) && (iterable2 instanceof Collection) && ((Collection) iterable).size() != ((Collection) iterable2).size()) {
            return false;
        }
        return Iterators.elementsEqual(iterable.iterator(), iterable2.iterator());
    }

    /* renamed from: f */
    public static <T> Function<Iterable<? extends T>, Iterator<? extends T>> m26330f() {
        return new C5854a();
    }

    public static <T> Iterable<T> filter(Iterable<T> iterable, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(predicate);
        return new C5858e(iterable, predicate);
    }

    @xvk
    public static <T> T find(Iterable<T> iterable, Predicate<? super T> predicate) {
        return (T) Iterators.find(iterable.iterator(), predicate);
    }

    public static int frequency(Iterable<?> iterable, @CheckForNull Object obj) {
        return iterable instanceof Multiset ? ((Multiset) iterable).count(obj) : iterable instanceof Set ? ((Set) iterable).contains(obj) ? 1 : 0 : Iterators.frequency(iterable.iterator(), obj);
    }

    @xvk
    public static <T> T get(Iterable<T> iterable, int i) {
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof List) {
            return (T) ((List) iterable).get(i);
        }
        return (T) Iterators.get(iterable.iterator(), i);
    }

    @xvk
    public static <T> T getFirst(Iterable<? extends T> iterable, @xvk T t) {
        return (T) Iterators.getNext(iterable.iterator(), t);
    }

    @xvk
    public static <T> T getLast(Iterable<T> iterable) {
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (!list.isEmpty()) {
                return (T) m26326b(list);
            }
            throw new NoSuchElementException();
        }
        return (T) Iterators.getLast(iterable.iterator());
    }

    @xvk
    public static <T> T getOnlyElement(Iterable<T> iterable) {
        return (T) Iterators.getOnlyElement(iterable.iterator());
    }

    public static <T> int indexOf(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.indexOf(iterable.iterator(), predicate);
    }

    public static boolean isEmpty(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    public static <T> Iterable<T> limit(Iterable<T> iterable, int i) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i >= 0, "limit is negative");
        return new C5861h(iterable, i);
    }

    @Beta
    public static <T> Iterable<T> mergeSorted(Iterable<? extends Iterable<? extends T>> iterable, Comparator<? super T> comparator) {
        Preconditions.checkNotNull(iterable, "iterables");
        Preconditions.checkNotNull(comparator, "comparator");
        return new C5864k(new C5863j(iterable, comparator), null);
    }

    public static <T> Iterable<List<T>> paddedPartition(Iterable<T> iterable, int i) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i > 0);
        return new C5857d(iterable, i);
    }

    public static <T> Iterable<List<T>> partition(Iterable<T> iterable, int i) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i > 0);
        return new C5856c(iterable, i);
    }

    @CanIgnoreReturnValue
    public static boolean removeAll(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).removeAll((Collection) Preconditions.checkNotNull(collection)) : Iterators.removeAll(iterable.iterator(), collection);
    }

    @CanIgnoreReturnValue
    public static <T> boolean removeIf(Iterable<T> iterable, Predicate<? super T> predicate) {
        return iterable instanceof Collection ? ((Collection) iterable).removeIf(predicate) : Iterators.removeIf(iterable.iterator(), predicate);
    }

    @CanIgnoreReturnValue
    public static boolean retainAll(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).retainAll((Collection) Preconditions.checkNotNull(collection)) : Iterators.retainAll(iterable.iterator(), collection);
    }

    public static int size(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).size() : Iterators.size(iterable.iterator());
    }

    public static <T> Iterable<T> skip(Iterable<T> iterable, int i) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkArgument(i >= 0, "number to skip cannot be negative");
        return new C5860g(iterable, i);
    }

    @GwtIncompatible
    public static <T> T[] toArray(Iterable<? extends T> iterable, Class<T> cls) {
        return (T[]) m26329e(iterable, ObjectArrays.newArray(cls, 0));
    }

    public static String toString(Iterable<?> iterable) {
        return Iterators.toString(iterable.iterator());
    }

    public static <F, T> Iterable<T> transform(Iterable<F> iterable, Function<? super F, ? extends T> function) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(function);
        return new C5859f(iterable, function);
    }

    public static <T> Optional<T> tryFind(Iterable<T> iterable, Predicate<? super T> predicate) {
        return Iterators.tryFind(iterable.iterator(), predicate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Iterable<T> unmodifiableIterable(Iterable<? extends T> iterable) {
        Preconditions.checkNotNull(iterable);
        return ((iterable instanceof C5864k) || (iterable instanceof ImmutableCollection)) ? iterable : new C5864k(iterable, null);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return FluentIterable.concat(iterable, iterable2, iterable3);
    }

    @CheckForNull
    public static <T> T find(Iterable<? extends T> iterable, Predicate<? super T> predicate, @CheckForNull T t) {
        return (T) Iterators.find(iterable.iterator(), predicate, t);
    }

    @xvk
    public static <T> T getOnlyElement(Iterable<? extends T> iterable, @xvk T t) {
        return (T) Iterators.getOnlyElement(iterable.iterator(), t);
    }

    public static <T> Iterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return FluentIterable.concat(iterable, iterable2, iterable3, iterable4);
    }

    @SafeVarargs
    public static <T> Iterable<T> cycle(T... tArr) {
        return cycle(Lists.newArrayList(tArr));
    }

    @SafeVarargs
    public static <T> Iterable<T> concat(Iterable<? extends T>... iterableArr) {
        return FluentIterable.concat(iterableArr);
    }

    @GwtIncompatible
    public static <T> Iterable<T> filter(Iterable<?> iterable, Class<T> cls) {
        Preconditions.checkNotNull(iterable);
        Preconditions.checkNotNull(cls);
        return filter(iterable, Predicates.instanceOf(cls));
    }

    @Deprecated
    public static <E> Iterable<E> unmodifiableIterable(ImmutableCollection<E> immutableCollection) {
        return (Iterable) Preconditions.checkNotNull(immutableCollection);
    }

    public static <T> Iterable<T> concat(Iterable<? extends Iterable<? extends T>> iterable) {
        return FluentIterable.concat(iterable);
    }

    @xvk
    public static <T> T get(Iterable<? extends T> iterable, int i, @xvk T t) {
        Preconditions.checkNotNull(iterable);
        Iterators.m26339b(i);
        if (iterable instanceof List) {
            List m26371b = Lists.m26371b(iterable);
            return i < m26371b.size() ? (T) m26371b.get(i) : t;
        }
        Iterator<? extends T> it2 = iterable.iterator();
        Iterators.advance(it2, i);
        return (T) Iterators.getNext(it2, t);
    }

    @xvk
    public static <T> T getLast(Iterable<? extends T> iterable, @xvk T t) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return t;
            }
            if (iterable instanceof List) {
                return (T) m26326b(Lists.m26371b(iterable));
            }
        }
        return (T) Iterators.getLast(iterable.iterator(), t);
    }
}
