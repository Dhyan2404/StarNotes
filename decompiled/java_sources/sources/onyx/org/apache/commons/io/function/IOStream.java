package onyx.org.apache.commons.io.function;

import com.sunia.HTREnginev2.cfi;
import com.sunia.HTREnginev2.ffi;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Optional;
import java.util.Spliterators;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import java.util.stream.Collector;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import onyx.org.apache.commons.io.IOExceptionList;
import onyx.org.apache.commons.io.function.Erase;
import onyx.org.apache.commons.io.function.IOBiConsumer;
import onyx.org.apache.commons.io.function.IOBiFunction;
import onyx.org.apache.commons.io.function.IOBinaryOperator;
import onyx.org.apache.commons.io.function.IOComparator;
import onyx.org.apache.commons.io.function.IOConsumer;
import onyx.org.apache.commons.io.function.IOFunction;
import onyx.org.apache.commons.io.function.IOPredicate;
import onyx.org.apache.commons.io.function.IOStream;
import onyx.org.apache.commons.io.function.IOSupplier;

/* loaded from: classes11.dex */
public interface IOStream<T> extends IOBaseStream<T, IOStream<T>, Stream<T>> {

    /* renamed from: onyx.org.apache.commons.io.function.IOStream$a */
    /* loaded from: classes11.dex */
    public static class C18639a implements Iterator<T> {

        /* renamed from: e */
        public T f104260e = (T) ffi.f69964a;

        /* renamed from: f */
        public final /* synthetic */ Object f104261f;

        /* renamed from: g */
        public final /* synthetic */ IOUnaryOperator f104262g;

        public C18639a(Object obj, IOUnaryOperator iOUnaryOperator) {
            this.f104261f = obj;
            this.f104262g = iOUnaryOperator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return true;
        }

        @Override // java.util.Iterator
        public T next() throws NoSuchElementException {
            try {
                T t = this.f104260e;
                T apply = t == ffi.f69964a ? (T) this.f104261f : this.f104262g.apply(t);
                this.f104260e = apply;
                return apply;
            } catch (IOException e) {
                NoSuchElementException noSuchElementException = new NoSuchElementException();
                noSuchElementException.initCause(e);
                throw noSuchElementException;
            }
        }
    }

    /* renamed from: A */
    static /* synthetic */ LongStream m65332A(IOFunction iOFunction, Object obj) {
        return (LongStream) Erase.m65267d(iOFunction, obj);
    }

    /* renamed from: N */
    static /* synthetic */ DoubleStream m65341N(IOFunction iOFunction, Object obj) {
        return (DoubleStream) Erase.m65267d(iOFunction, obj);
    }

    /* renamed from: W */
    static /* synthetic */ IOException m65350W(Integer num, IOException iOException) {
        return iOException;
    }

    static <T> IOStream<T> adapt(Stream<T> stream) {
        return cfi.adapt(stream);
    }

    /* renamed from: b */
    static /* synthetic */ void m65356b(IOConsumer iOConsumer, AtomicReference atomicReference, BiFunction biFunction, AtomicInteger atomicInteger, Object obj) {
        try {
            iOConsumer.accept(obj);
        } catch (IOException e) {
            if (atomicReference.get() == null) {
                atomicReference.set(new ArrayList());
            }
            if (biFunction != null) {
                ((List) atomicReference.get()).add(biFunction.apply(Integer.valueOf(atomicInteger.get()), e));
            }
        }
        atomicInteger.incrementAndGet();
    }

    static <T> IOStream<T> empty() {
        return cfi.adapt(Stream.empty());
    }

    static <T> IOStream<T> iterate(T t, IOUnaryOperator<T> iOUnaryOperator) {
        Objects.requireNonNull(iOUnaryOperator);
        return adapt(StreamSupport.stream(Spliterators.spliteratorUnknownSize(new C18639a(t, iOUnaryOperator), 1040), false));
    }

    /* renamed from: of */
    static <T> IOStream<T> m65371of(Iterable<T> iterable) {
        return iterable == null ? empty() : adapt(StreamSupport.stream(iterable.spliterator(), false));
    }

    /* renamed from: r */
    static /* synthetic */ Stream m65376r(IOFunction iOFunction, Object obj) {
        return ((IOStream) Erase.m65267d(iOFunction, obj)).unwrap();
    }

    /* renamed from: t */
    static /* synthetic */ IntStream m65378t(IOFunction iOFunction, Object obj) {
        return (IntStream) Erase.m65267d(iOFunction, obj);
    }

    default boolean allMatch(final IOPredicate<? super T> iOPredicate) throws IOException {
        return unwrap().allMatch(new Predicate() { // from class: com.sunia.HTREnginev2.qei
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65271h;
                m65271h = Erase.m65271h(IOPredicate.this, obj);
                return m65271h;
            }
        });
    }

    default boolean anyMatch(final IOPredicate<? super T> iOPredicate) throws IOException {
        return unwrap().anyMatch(new Predicate() { // from class: com.sunia.HTREnginev2.sei
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65271h;
                m65271h = Erase.m65271h(IOPredicate.this, obj);
                return m65271h;
            }
        });
    }

    default <R, A> R collect(Collector<? super T, A, R> collector) {
        return (R) unwrap().collect(collector);
    }

    default long count() {
        return unwrap().count();
    }

    default IOStream<T> distinct() {
        return adapt(unwrap().distinct());
    }

    default IOStream<T> filter(final IOPredicate<? super T> iOPredicate) throws IOException {
        return adapt(unwrap().filter(new Predicate() { // from class: com.sunia.HTREnginev2.yei
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65271h;
                m65271h = Erase.m65271h(IOPredicate.this, obj);
                return m65271h;
            }
        }));
    }

    default Optional<T> findAny() {
        return unwrap().findAny();
    }

    default Optional<T> findFirst() {
        return unwrap().findFirst();
    }

    default <R> IOStream<R> flatMap(final IOFunction<? super T, ? extends IOStream<? extends R>> iOFunction) throws IOException {
        return adapt(unwrap().flatMap(new Function() { // from class: com.sunia.HTREnginev2.rei
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m65376r;
                m65376r = IOStream.m65376r(IOFunction.this, obj);
                return m65376r;
            }
        }));
    }

    default DoubleStream flatMapToDouble(final IOFunction<? super T, ? extends DoubleStream> iOFunction) throws IOException {
        return unwrap().flatMapToDouble(new Function() { // from class: com.sunia.HTREnginev2.oei
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                DoubleStream m65341N;
                m65341N = IOStream.m65341N(IOFunction.this, obj);
                return m65341N;
            }
        });
    }

    default IntStream flatMapToInt(final IOFunction<? super T, ? extends IntStream> iOFunction) throws IOException {
        return unwrap().flatMapToInt(new Function() { // from class: com.sunia.HTREnginev2.lei
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                IntStream m65378t;
                m65378t = IOStream.m65378t(IOFunction.this, obj);
                return m65378t;
            }
        });
    }

    default LongStream flatMapToLong(final IOFunction<? super T, ? extends LongStream> iOFunction) throws IOException {
        return unwrap().flatMapToLong(new Function() { // from class: com.sunia.HTREnginev2.hei
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                LongStream m65332A;
                m65332A = IOStream.m65332A(IOFunction.this, obj);
                return m65332A;
            }
        });
    }

    default void forAll(IOConsumer<T> iOConsumer) throws IOExceptionList {
        forAll(iOConsumer, new BiFunction() { // from class: com.sunia.HTREnginev2.uei
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                IOException m65350W;
                m65350W = IOStream.m65350W((Integer) obj, (IOException) obj2);
                return m65350W;
            }
        });
    }

    default void forEach(final IOConsumer<? super T> iOConsumer) throws IOException {
        unwrap().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.zei
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Erase.m65265b(IOConsumer.this, obj);
            }
        });
    }

    default void forEachOrdered(final IOConsumer<? super T> iOConsumer) throws IOException {
        unwrap().forEachOrdered(new Consumer() { // from class: com.sunia.HTREnginev2.xei
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Erase.m65265b(IOConsumer.this, obj);
            }
        });
    }

    default IOStream<T> limit(long j) {
        return adapt(unwrap().limit(j));
    }

    default <R> IOStream<R> map(final IOFunction<? super T, ? extends R> iOFunction) throws IOException {
        return adapt(unwrap().map(new Function() { // from class: com.sunia.HTREnginev2.pei
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object m65267d;
                m65267d = Erase.m65267d(IOFunction.this, obj);
                return m65267d;
            }
        }));
    }

    default DoubleStream mapToDouble(ToDoubleFunction<? super T> toDoubleFunction) {
        return unwrap().mapToDouble(toDoubleFunction);
    }

    default IntStream mapToInt(ToIntFunction<? super T> toIntFunction) {
        return unwrap().mapToInt(toIntFunction);
    }

    default LongStream mapToLong(ToLongFunction<? super T> toLongFunction) {
        return unwrap().mapToLong(toLongFunction);
    }

    default Optional<T> max(final IOComparator<? super T> iOComparator) throws IOException {
        return unwrap().max(new Comparator() { // from class: com.sunia.HTREnginev2.vei
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m65268e;
                m65268e = Erase.m65268e(IOComparator.this, obj, obj2);
                return m65268e;
            }
        });
    }

    default Optional<T> min(final IOComparator<? super T> iOComparator) throws IOException {
        return unwrap().min(new Comparator() { // from class: com.sunia.HTREnginev2.eei
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m65268e;
                m65268e = Erase.m65268e(IOComparator.this, obj, obj2);
                return m65268e;
            }
        });
    }

    default boolean noneMatch(final IOPredicate<? super T> iOPredicate) throws IOException {
        return unwrap().noneMatch(new Predicate() { // from class: com.sunia.HTREnginev2.wei
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m65271h;
                m65271h = Erase.m65271h(IOPredicate.this, obj);
                return m65271h;
            }
        });
    }

    default IOStream<T> peek(final IOConsumer<? super T> iOConsumer) throws IOException {
        return adapt(unwrap().peek(new Consumer() { // from class: com.sunia.HTREnginev2.tei
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Erase.m65265b(IOConsumer.this, obj);
            }
        }));
    }

    default Optional<T> reduce(final IOBinaryOperator<T> iOBinaryOperator) throws IOException {
        return unwrap().reduce(new BinaryOperator() { // from class: com.sunia.HTREnginev2.iei
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65266c;
                m65266c = Erase.m65266c(IOBinaryOperator.this, obj, obj2);
                return m65266c;
            }
        });
    }

    default IOStream<T> skip(long j) {
        return adapt(unwrap().skip(j));
    }

    default IOStream<T> sorted() {
        return adapt(unwrap().sorted());
    }

    default Object[] toArray() {
        return unwrap().toArray();
    }

    @SafeVarargs
    /* renamed from: of */
    static <T> IOStream<T> m65373of(T... tArr) {
        return (tArr == null || tArr.length == 0) ? empty() : adapt(Arrays.stream(tArr));
    }

    default <R> R collect(final IOSupplier<R> iOSupplier, final IOBiConsumer<R, ? super T> iOBiConsumer, final IOBiConsumer<R, R> iOBiConsumer2) throws IOException {
        return (R) unwrap().collect(new Supplier() { // from class: com.sunia.HTREnginev2.bfi
            @Override // java.util.function.Supplier
            public final Object get() {
                Object m65269f;
                m65269f = Erase.m65269f(IOSupplier.this);
                return m65269f;
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fei
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Erase.m65264a(IOBiConsumer.this, obj, obj2);
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gei
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Erase.m65264a(IOBiConsumer.this, obj, obj2);
            }
        });
    }

    default void forAll(IOConsumer<T> iOConsumer, final BiFunction<Integer, IOException, IOException> biFunction) throws IOExceptionList {
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicInteger atomicInteger = new AtomicInteger();
        final IOConsumer m54107k = ffi.m54107k(iOConsumer);
        unwrap().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.mei
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                IOStream.m65356b(IOConsumer.this, atomicReference, biFunction, atomicInteger, obj);
            }
        });
        IOExceptionList.checkEmpty((List) atomicReference.get(), null);
    }

    default T reduce(T t, final IOBinaryOperator<T> iOBinaryOperator) throws IOException {
        return unwrap().reduce(t, new BinaryOperator() { // from class: com.sunia.HTREnginev2.afi
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65266c;
                m65266c = Erase.m65266c(IOBinaryOperator.this, obj, obj2);
                return m65266c;
            }
        });
    }

    default IOStream<T> sorted(final IOComparator<? super T> iOComparator) throws IOException {
        return adapt(unwrap().sorted(new Comparator() { // from class: com.sunia.HTREnginev2.nei
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m65268e;
                m65268e = Erase.m65268e(IOComparator.this, obj, obj2);
                return m65268e;
            }
        }));
    }

    default <A> A[] toArray(IntFunction<A[]> intFunction) {
        return (A[]) unwrap().toArray(intFunction);
    }

    /* renamed from: of */
    static <T> IOStream<T> m65372of(T t) {
        return adapt(Stream.of(t));
    }

    default <U> U reduce(U u, final IOBiFunction<U, ? super T, U> iOBiFunction, final IOBinaryOperator<U> iOBinaryOperator) throws IOException {
        return (U) unwrap().reduce(u, new BiFunction() { // from class: com.sunia.HTREnginev2.jei
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65266c;
                m65266c = Erase.m65266c(IOBiFunction.this, obj, obj2);
                return m65266c;
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.kei
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Object m65266c;
                m65266c = Erase.m65266c(IOBinaryOperator.this, obj, obj2);
                return m65266c;
            }
        });
    }
}
