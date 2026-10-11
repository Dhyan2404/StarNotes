package net.p110sf.saxon.s9api.streams;

import com.sunia.HTREnginev2.rym;
import com.sunia.HTREnginev2.sym;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Spliterator;
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
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import net.p110sf.saxon.s9api.XdmAtomicValue;
import net.p110sf.saxon.s9api.XdmItem;
import net.p110sf.saxon.s9api.XdmNode;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.streams.XdmStream;

/* loaded from: classes11.dex */
public class XdmStream<T extends XdmItem> implements Stream<T> {

    /* renamed from: e */
    public Stream<T> f101471e;

    public XdmStream(Stream<T> stream) {
        this.f101471e = stream;
    }

    /* renamed from: I */
    public static /* synthetic */ XdmItem m63792I(XdmItem xdmItem, XdmItem xdmItem2) {
        return xdmItem2;
    }

    /* renamed from: M */
    public static /* synthetic */ XdmItem m63793M(XdmItem xdmItem, XdmItem xdmItem2) {
        return xdmItem2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public /* synthetic */ void m63794e0(Predicate predicate, XdmItem xdmItem) {
        if (predicate.test(xdmItem)) {
            this.f101471e.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f0 */
    public /* synthetic */ void m63796f0(Predicate predicate, XdmItem xdmItem) {
        if (predicate.test(xdmItem)) {
            this.f101471e.close();
        }
    }

    @Override // java.util.stream.Stream
    public boolean allMatch(Predicate<? super T> predicate) {
        return this.f101471e.allMatch(predicate);
    }

    @Override // java.util.stream.Stream
    public boolean anyMatch(Predicate<? super T> predicate) {
        return this.f101471e.anyMatch(predicate);
    }

    public XdmAtomicValue asAtomic() {
        return (XdmAtomicValue) this.f101471e.collect(XdmCollectors.asAtomic());
    }

    public List<T> asList() {
        return (List) this.f101471e.collect(Collectors.toList());
    }

    public List<XdmAtomicValue> asListOfAtomic() {
        return (List) this.f101471e.collect(XdmCollectors.asListOfAtomic());
    }

    public List<XdmNode> asListOfNodes() {
        return (List) this.f101471e.collect(XdmCollectors.asListOfNodes());
    }

    public XdmNode asNode() {
        return (XdmNode) this.f101471e.collect(XdmCollectors.asNode());
    }

    public Optional<XdmAtomicValue> asOptionalAtomic() {
        return (Optional) this.f101471e.collect(XdmCollectors.asOptionalAtomic());
    }

    public Optional<XdmNode> asOptionalNode() {
        return (Optional) this.f101471e.collect(XdmCollectors.asOptionalNode());
    }

    public Optional<String> asOptionalString() {
        return (Optional) this.f101471e.collect(XdmCollectors.asOptionalString());
    }

    public String asString() {
        return (String) this.f101471e.collect(XdmCollectors.asString());
    }

    public XdmValue asXdmValue() {
        return (XdmValue) this.f101471e.collect(XdmCollectors.asXdmValue());
    }

    /* renamed from: at */
    public Optional<T> m63799at(int i) {
        return this.f101471e.skip(i).findFirst();
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public void close() {
        this.f101471e.close();
    }

    @Override // java.util.stream.Stream
    public <R> R collect(Supplier<R> supplier, BiConsumer<R, ? super T> biConsumer, BiConsumer<R, R> biConsumer2) {
        return (R) this.f101471e.collect(supplier, biConsumer, biConsumer2);
    }

    @Override // java.util.stream.Stream
    public long count() {
        return this.f101471e.count();
    }

    public boolean exists() {
        return this.f101471e.findFirst().isPresent();
    }

    @Override // java.util.stream.Stream
    public Optional<T> findAny() {
        return this.f101471e.findAny();
    }

    @Override // java.util.stream.Stream
    public Optional<T> findFirst() {
        return this.f101471e.findFirst();
    }

    public XdmStream<T> first() {
        return new XdmStream<>(this.f101471e.findFirst());
    }

    public T firstItem() {
        return this.f101471e.findFirst().orElse(null);
    }

    @Override // java.util.stream.Stream
    public <R> Stream<R> flatMap(Function<? super T, ? extends Stream<? extends R>> function) {
        return this.f101471e.flatMap(function);
    }

    @Override // java.util.stream.Stream
    public DoubleStream flatMapToDouble(Function<? super T, ? extends DoubleStream> function) {
        return this.f101471e.flatMapToDouble(function);
    }

    @Override // java.util.stream.Stream
    public IntStream flatMapToInt(Function<? super T, ? extends IntStream> function) {
        return this.f101471e.flatMapToInt(function);
    }

    @Override // java.util.stream.Stream
    public LongStream flatMapToLong(Function<? super T, ? extends LongStream> function) {
        return this.f101471e.flatMapToLong(function);
    }

    public <U extends XdmItem> XdmStream<U> flatMapToXdm(Step<U> step) {
        return new XdmStream<>(this.f101471e.flatMap(step));
    }

    @Override // java.util.stream.Stream
    public void forEach(Consumer<? super T> consumer) {
        this.f101471e.forEach(consumer);
    }

    @Override // java.util.stream.Stream
    public void forEachOrdered(Consumer<? super T> consumer) {
        this.f101471e.forEachOrdered(consumer);
    }

    @Override // java.util.stream.BaseStream
    public boolean isParallel() {
        return this.f101471e.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public Iterator<T> iterator() {
        return this.f101471e.iterator();
    }

    public XdmStream<T> last() {
        return new XdmStream<>(this.f101471e.reduce(new BinaryOperator() { // from class: com.sunia.HTREnginev2.gvo
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                XdmItem m63792I;
                m63792I = XdmStream.m63792I((XdmItem) obj, (XdmItem) obj2);
                return m63792I;
            }
        }));
    }

    public T lastItem() {
        return this.f101471e.reduce(new BinaryOperator() { // from class: com.sunia.HTREnginev2.evo
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                XdmItem m63793M;
                m63793M = XdmStream.m63793M((XdmItem) obj, (XdmItem) obj2);
                return m63793M;
            }
        }).orElse(null);
    }

    @Override // java.util.stream.Stream
    public <R> Stream<R> map(Function<? super T, ? extends R> function) {
        return this.f101471e.map(function);
    }

    @Override // java.util.stream.Stream
    public DoubleStream mapToDouble(ToDoubleFunction<? super T> toDoubleFunction) {
        return this.f101471e.mapToDouble(toDoubleFunction);
    }

    @Override // java.util.stream.Stream
    public IntStream mapToInt(ToIntFunction<? super T> toIntFunction) {
        return this.f101471e.mapToInt(toIntFunction);
    }

    @Override // java.util.stream.Stream
    public LongStream mapToLong(ToLongFunction<? super T> toLongFunction) {
        return this.f101471e.mapToLong(toLongFunction);
    }

    @Override // java.util.stream.Stream
    public Optional<T> max(Comparator<? super T> comparator) {
        return this.f101471e.max(comparator);
    }

    @Override // java.util.stream.Stream
    public Optional<T> min(Comparator<? super T> comparator) {
        return this.f101471e.min(comparator);
    }

    @Override // java.util.stream.Stream
    public boolean noneMatch(Predicate<? super T> predicate) {
        return this.f101471e.noneMatch(predicate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.stream.Stream
    public /* bridge */ /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
        return reduce((XdmStream<T>) obj, (BinaryOperator<XdmStream<T>>) binaryOperator);
    }

    @Override // java.util.stream.BaseStream
    public Spliterator<T> spliterator() {
        return this.f101471e.spliterator();
    }

    public XdmStream<T> subStream(int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        return i2 <= i ? new XdmStream<>(Stream.empty()) : new XdmStream<>(this.f101471e.skip(i).limit(i2 - i));
    }

    @Override // java.util.stream.Stream
    public Object[] toArray() {
        return this.f101471e.toArray();
    }

    public XdmStream<T> untilFirstExclusive(final Predicate<? super XdmItem> predicate) {
        return new XdmStream<>(this.f101471e.peek(new Consumer() { // from class: com.sunia.HTREnginev2.fvo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                XdmStream.this.m63794e0(predicate, (XdmItem) obj);
            }
        }).filter(predicate.negate()));
    }

    public XdmStream<T> untilFirstInclusive(final Predicate<? super XdmItem> predicate) {
        return new XdmStream<>(this.f101471e.peek(new Consumer() { // from class: com.sunia.HTREnginev2.dvo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                XdmStream.this.m63796f0(predicate, (XdmItem) obj);
            }
        }));
    }

    @Override // java.util.stream.Stream
    public <R, A> R collect(Collector<? super T, A, R> collector) {
        return (R) this.f101471e.collect(collector);
    }

    @Override // java.util.stream.Stream
    public XdmStream<T> distinct() {
        return new XdmStream<>(this.f101471e.distinct());
    }

    @Override // java.util.stream.Stream
    public XdmStream<T> filter(Predicate<? super T> predicate) {
        return new XdmStream<>(this.f101471e.filter(predicate));
    }

    @Override // java.util.stream.Stream
    public XdmStream<T> limit(long j) {
        return new XdmStream<>(this.f101471e.limit(j));
    }

    @Override // java.util.stream.BaseStream
    public Stream<T> onClose(Runnable runnable) {
        return new XdmStream((Stream) this.f101471e.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public Stream<T> parallel() {
        return new XdmStream((Stream) this.f101471e.parallel());
    }

    @Override // java.util.stream.Stream
    public XdmStream<T> peek(Consumer<? super T> consumer) {
        return new XdmStream<>(this.f101471e.peek(consumer));
    }

    public T reduce(T t, BinaryOperator<T> binaryOperator) {
        return this.f101471e.reduce(t, binaryOperator);
    }

    @Override // java.util.stream.BaseStream
    public Stream<T> sequential() {
        return new XdmStream((Stream) this.f101471e.sequential());
    }

    @Override // java.util.stream.Stream
    public XdmStream<T> skip(long j) {
        return new XdmStream<>(this.f101471e.skip(j));
    }

    @Override // java.util.stream.Stream
    public <A> A[] toArray(IntFunction<A[]> intFunction) {
        return (A[]) this.f101471e.toArray(intFunction);
    }

    @Override // java.util.stream.BaseStream
    public Stream<T> unordered() {
        return new XdmStream((Stream) this.f101471e.unordered());
    }

    public XdmStream(Optional<T> optional) {
        this.f101471e = (Stream) optional.map(new rym()).orElseGet(new sym());
    }

    @Override // java.util.stream.Stream
    public Optional<T> reduce(BinaryOperator<T> binaryOperator) {
        return this.f101471e.reduce(binaryOperator);
    }

    @Override // java.util.stream.Stream
    public XdmStream<T> sorted() {
        return new XdmStream<>(this.f101471e.sorted());
    }

    @Override // java.util.stream.Stream
    public <U> U reduce(U u, BiFunction<U, ? super T, U> biFunction, BinaryOperator<U> binaryOperator) {
        return (U) this.f101471e.reduce(u, biFunction, binaryOperator);
    }

    @Override // java.util.stream.Stream
    public XdmStream<T> sorted(Comparator<? super T> comparator) {
        return new XdmStream<>(this.f101471e.sorted(comparator));
    }
}
