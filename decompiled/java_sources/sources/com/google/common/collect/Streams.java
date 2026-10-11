package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Streams;
import com.google.common.math.LongMath;
import com.google.errorprone.annotations.InlineMe;
import com.google.errorprone.annotations.InlineMeValidationDisabled;
import com.sunia.HTREnginev2.h0n;
import com.sunia.HTREnginev2.p5k;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.PrimitiveIterator;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;
import java.util.function.Supplier;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class Streams {

    /* loaded from: classes6.dex */
    public interface DoubleFunctionWithIndex<R> {
        @xvk
        R apply(double d, long j);
    }

    /* loaded from: classes6.dex */
    public interface FunctionWithIndex<T, R> {
        @xvk
        R apply(@xvk T t, long j);
    }

    /* loaded from: classes6.dex */
    public interface IntFunctionWithIndex<R> {
        @xvk
        R apply(int i, long j);
    }

    /* loaded from: classes6.dex */
    public interface LongFunctionWithIndex<R> {
        @xvk
        R apply(long j, long j2);
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: com.google.common.collect.Streams$a */
    /* loaded from: classes6.dex */
    public class C6053a<R> extends Spliterators.AbstractSpliterator<R> {

        /* renamed from: e */
        public final /* synthetic */ Iterator f34446e;

        /* renamed from: f */
        public final /* synthetic */ Iterator f34447f;

        /* renamed from: g */
        public final /* synthetic */ BiFunction f34448g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6053a(long j, int i, Iterator it2, Iterator it3, BiFunction biFunction) {
            super(j, i);
            this.f34446e = it2;
            this.f34447f = it3;
            this.f34448g = biFunction;
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!this.f34446e.hasNext() || !this.f34447f.hasNext()) {
                return false;
            }
            consumer.accept((Object) this.f34448g.apply(this.f34446e.next(), this.f34447f.next()));
            return true;
        }
    }

    /* renamed from: com.google.common.collect.Streams$b */
    /* loaded from: classes6.dex */
    public class C6054b {

        /* renamed from: a */
        public boolean f34449a = false;

        /* renamed from: b */
        @CheckForNull
        public T f34450b = null;

        /* renamed from: a */
        public T m26734a() {
            T t = this.f34450b;
            Objects.requireNonNull(t);
            return t;
        }

        /* renamed from: b */
        public void m26735b(T t) {
            this.f34449a = true;
            this.f34450b = t;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R, T] */
    /* renamed from: com.google.common.collect.Streams$c */
    /* loaded from: classes6.dex */
    public class C6055c<R, T> extends AbstractC6063k<Spliterator<T>, R, C6055c> implements Consumer<T> {

        /* renamed from: g */
        @CheckForNull
        public T f34451g;

        /* renamed from: h */
        public final /* synthetic */ FunctionWithIndex f34452h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0000: IPUT (r4 I:com.google.common.collect.Streams$FunctionWithIndex), (r0 I:com.google.common.collect.Streams$c) com.google.common.collect.Streams.c.h com.google.common.collect.Streams$FunctionWithIndex, block:B:1:0x0000 */
        public C6055c(Spliterator spliterator, Spliterator<T> spliterator2, long j) {
            super(spliterator, spliterator2);
            FunctionWithIndex functionWithIndex;
            this.f34452h = functionWithIndex;
        }

        @Override // java.util.function.Consumer
        public void accept(@xvk T t) {
            this.f34451g = t;
        }

        @Override // com.google.common.collect.Streams.AbstractC6063k
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C6055c mo26736a(Spliterator<T> spliterator, long j) {
            return new C6055c(spliterator, j, this.f34452h);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!this.f34471e.tryAdvance(this)) {
                return false;
            }
            try {
                FunctionWithIndex functionWithIndex = this.f34452h;
                Object m56213a = p5k.m56213a(this.f34451g);
                long j = this.f34472f;
                this.f34472f = 1 + j;
                consumer.accept((Object) functionWithIndex.apply(m56213a, j));
                this.f34451g = null;
                return true;
            } catch (Throwable th) {
                this.f34451g = null;
                throw th;
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: com.google.common.collect.Streams$d */
    /* loaded from: classes6.dex */
    public class C6056d<R> extends Spliterators.AbstractSpliterator<R> {

        /* renamed from: e */
        public long f34453e;

        /* renamed from: f */
        public final /* synthetic */ Iterator f34454f;

        /* renamed from: g */
        public final /* synthetic */ FunctionWithIndex f34455g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6056d(long j, int i, Iterator it2, FunctionWithIndex functionWithIndex) {
            super(j, i);
            this.f34454f = it2;
            this.f34455g = functionWithIndex;
            this.f34453e = 0L;
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!this.f34454f.hasNext()) {
                return false;
            }
            FunctionWithIndex functionWithIndex = this.f34455g;
            Object next = this.f34454f.next();
            long j = this.f34453e;
            this.f34453e = 1 + j;
            consumer.accept((Object) functionWithIndex.apply(next, j));
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: com.google.common.collect.Streams$e */
    /* loaded from: classes6.dex */
    public class C6057e<R> extends AbstractC6063k<Spliterator.OfInt, R, C6057e> implements IntConsumer, Spliterator<R> {

        /* renamed from: g */
        public int f34456g;

        /* renamed from: h */
        public final /* synthetic */ IntFunctionWithIndex f34457h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0000: IPUT (r4 I:com.google.common.collect.Streams$IntFunctionWithIndex), (r0 I:com.google.common.collect.Streams$e) com.google.common.collect.Streams.e.h com.google.common.collect.Streams$IntFunctionWithIndex, block:B:1:0x0000 */
        public C6057e(Spliterator.OfInt ofInt, Spliterator.OfInt ofInt2, long j) {
            super(ofInt, ofInt2);
            IntFunctionWithIndex intFunctionWithIndex;
            this.f34457h = intFunctionWithIndex;
        }

        @Override // java.util.function.IntConsumer
        public void accept(int i) {
            this.f34456g = i;
        }

        @Override // com.google.common.collect.Streams.AbstractC6063k
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C6057e mo26736a(Spliterator.OfInt ofInt, long j) {
            return new C6057e(ofInt, j, this.f34457h);
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!((Spliterator.OfInt) this.f34471e).tryAdvance((IntConsumer) this)) {
                return false;
            }
            IntFunctionWithIndex intFunctionWithIndex = this.f34457h;
            int i = this.f34456g;
            long j = this.f34472f;
            this.f34472f = 1 + j;
            consumer.accept((Object) intFunctionWithIndex.apply(i, j));
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: com.google.common.collect.Streams$f */
    /* loaded from: classes6.dex */
    public class C6058f<R> extends Spliterators.AbstractSpliterator<R> {

        /* renamed from: e */
        public long f34458e;

        /* renamed from: f */
        public final /* synthetic */ PrimitiveIterator.OfInt f34459f;

        /* renamed from: g */
        public final /* synthetic */ IntFunctionWithIndex f34460g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6058f(long j, int i, PrimitiveIterator.OfInt ofInt, IntFunctionWithIndex intFunctionWithIndex) {
            super(j, i);
            this.f34459f = ofInt;
            this.f34460g = intFunctionWithIndex;
            this.f34458e = 0L;
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!this.f34459f.hasNext()) {
                return false;
            }
            IntFunctionWithIndex intFunctionWithIndex = this.f34460g;
            int nextInt = this.f34459f.nextInt();
            long j = this.f34458e;
            this.f34458e = 1 + j;
            consumer.accept((Object) intFunctionWithIndex.apply(nextInt, j));
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: com.google.common.collect.Streams$g */
    /* loaded from: classes6.dex */
    public class C6059g<R> extends AbstractC6063k<Spliterator.OfLong, R, C6059g> implements LongConsumer, Spliterator<R> {

        /* renamed from: g */
        public long f34461g;

        /* renamed from: h */
        public final /* synthetic */ LongFunctionWithIndex f34462h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0000: IPUT (r4 I:com.google.common.collect.Streams$LongFunctionWithIndex), (r0 I:com.google.common.collect.Streams$g) com.google.common.collect.Streams.g.h com.google.common.collect.Streams$LongFunctionWithIndex, block:B:1:0x0000 */
        public C6059g(Spliterator.OfLong ofLong, Spliterator.OfLong ofLong2, long j) {
            super(ofLong, ofLong2);
            LongFunctionWithIndex longFunctionWithIndex;
            this.f34462h = longFunctionWithIndex;
        }

        @Override // java.util.function.LongConsumer
        public void accept(long j) {
            this.f34461g = j;
        }

        @Override // com.google.common.collect.Streams.AbstractC6063k
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C6059g mo26736a(Spliterator.OfLong ofLong, long j) {
            return new C6059g(ofLong, j, this.f34462h);
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!((Spliterator.OfLong) this.f34471e).tryAdvance((LongConsumer) this)) {
                return false;
            }
            LongFunctionWithIndex longFunctionWithIndex = this.f34462h;
            long j = this.f34461g;
            long j2 = this.f34472f;
            this.f34472f = 1 + j2;
            consumer.accept((Object) longFunctionWithIndex.apply(j, j2));
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: com.google.common.collect.Streams$h */
    /* loaded from: classes6.dex */
    public class C6060h<R> extends Spliterators.AbstractSpliterator<R> {

        /* renamed from: e */
        public long f34463e;

        /* renamed from: f */
        public final /* synthetic */ PrimitiveIterator.OfLong f34464f;

        /* renamed from: g */
        public final /* synthetic */ LongFunctionWithIndex f34465g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6060h(long j, int i, PrimitiveIterator.OfLong ofLong, LongFunctionWithIndex longFunctionWithIndex) {
            super(j, i);
            this.f34464f = ofLong;
            this.f34465g = longFunctionWithIndex;
            this.f34463e = 0L;
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!this.f34464f.hasNext()) {
                return false;
            }
            LongFunctionWithIndex longFunctionWithIndex = this.f34465g;
            long nextLong = this.f34464f.nextLong();
            long j = this.f34463e;
            this.f34463e = 1 + j;
            consumer.accept((Object) longFunctionWithIndex.apply(nextLong, j));
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: com.google.common.collect.Streams$i */
    /* loaded from: classes6.dex */
    public class C6061i<R> extends AbstractC6063k<Spliterator.OfDouble, R, C6061i> implements DoubleConsumer, Spliterator<R> {

        /* renamed from: g */
        public double f34466g;

        /* renamed from: h */
        public final /* synthetic */ DoubleFunctionWithIndex f34467h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 4, insn: 0x0000: IPUT (r4 I:com.google.common.collect.Streams$DoubleFunctionWithIndex), (r0 I:com.google.common.collect.Streams$i) com.google.common.collect.Streams.i.h com.google.common.collect.Streams$DoubleFunctionWithIndex, block:B:1:0x0000 */
        public C6061i(Spliterator.OfDouble ofDouble, Spliterator.OfDouble ofDouble2, long j) {
            super(ofDouble, ofDouble2);
            DoubleFunctionWithIndex doubleFunctionWithIndex;
            this.f34467h = doubleFunctionWithIndex;
        }

        @Override // java.util.function.DoubleConsumer
        public void accept(double d) {
            this.f34466g = d;
        }

        @Override // com.google.common.collect.Streams.AbstractC6063k
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public C6061i mo26736a(Spliterator.OfDouble ofDouble, long j) {
            return new C6061i(ofDouble, j, this.f34467h);
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!((Spliterator.OfDouble) this.f34471e).tryAdvance((DoubleConsumer) this)) {
                return false;
            }
            DoubleFunctionWithIndex doubleFunctionWithIndex = this.f34467h;
            double d = this.f34466g;
            long j = this.f34472f;
            this.f34472f = 1 + j;
            consumer.accept((Object) doubleFunctionWithIndex.apply(d, j));
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: com.google.common.collect.Streams$j */
    /* loaded from: classes6.dex */
    public class C6062j<R> extends Spliterators.AbstractSpliterator<R> {

        /* renamed from: e */
        public long f34468e;

        /* renamed from: f */
        public final /* synthetic */ PrimitiveIterator.OfDouble f34469f;

        /* renamed from: g */
        public final /* synthetic */ DoubleFunctionWithIndex f34470g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6062j(long j, int i, PrimitiveIterator.OfDouble ofDouble, DoubleFunctionWithIndex doubleFunctionWithIndex) {
            super(j, i);
            this.f34469f = ofDouble;
            this.f34470g = doubleFunctionWithIndex;
            this.f34468e = 0L;
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super R> consumer) {
            if (!this.f34469f.hasNext()) {
                return false;
            }
            DoubleFunctionWithIndex doubleFunctionWithIndex = this.f34470g;
            double nextDouble = this.f34469f.nextDouble();
            long j = this.f34468e;
            this.f34468e = 1 + j;
            consumer.accept((Object) doubleFunctionWithIndex.apply(nextDouble, j));
            return true;
        }
    }

    /* renamed from: com.google.common.collect.Streams$k */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6063k<F extends Spliterator<?>, R, S extends AbstractC6063k<F, R, S>> implements Spliterator<R> {

        /* renamed from: e */
        public final F f34471e;

        /* renamed from: f */
        public long f34472f;

        public AbstractC6063k(F f, long j) {
            this.f34471e = f;
            this.f34472f = j;
        }

        /* renamed from: a */
        public abstract S mo26736a(F f, long j);

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Spliterator
        @CheckForNull
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public S trySplit() {
            Spliterator trySplit = this.f34471e.trySplit();
            if (trySplit == null) {
                return null;
            }
            S s = (S) mo26736a(trySplit, this.f34472f);
            this.f34472f += trySplit.getExactSizeIfKnown();
            return s;
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.f34471e.characteristics() & 16464;
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.f34471e.estimateSize();
        }
    }

    /* renamed from: com.google.common.collect.Streams$l */
    /* loaded from: classes6.dex */
    public static class C6064l<A, B> {

        /* renamed from: a */
        @xvk
        public final A f34473a;

        /* renamed from: b */
        @xvk
        public final B f34474b;

        public C6064l(@xvk A a, @xvk B b) {
            this.f34473a = a;
            this.f34474b = b;
        }
    }

    @SafeVarargs
    public static <T> Stream<T> concat(final Stream<? extends T>... streamArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder(streamArr.length);
        long j = 0;
        int i = 336;
        boolean z = false;
        for (Stream<? extends T> stream : streamArr) {
            z |= stream.isParallel();
            Spliterator<? extends T> spliterator = stream.spliterator();
            builder.add((ImmutableList.Builder) spliterator);
            i &= spliterator.characteristics();
            j = LongMath.saturatedAdd(j, spliterator.estimateSize());
        }
        return (Stream) StreamSupport.stream(vzd.m57897b(builder.build().spliterator(), new Function() { // from class: com.sunia.HTREnginev2.k0n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator m26725k;
                m26725k = Streams.m26725k((Spliterator) obj);
                return m26725k;
            }
        }, i, j), z).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.l0n
            @Override // java.lang.Runnable
            public final void run() {
                Streams.m26724j(streamArr);
            }
        });
    }

    public static <T> Optional<T> findLast(Stream<T> stream) {
        final C6054b c6054b = new C6054b();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.addLast(stream.spliterator());
        while (!arrayDeque.isEmpty()) {
            Spliterator<T> spliterator = (Spliterator) arrayDeque.removeLast();
            if (spliterator.getExactSizeIfKnown() != 0) {
                if (spliterator.hasCharacteristics(16384)) {
                    while (true) {
                        Spliterator<T> trySplit = spliterator.trySplit();
                        if (trySplit == null || trySplit.getExactSizeIfKnown() == 0) {
                            break;
                        }
                        if (spliterator.getExactSizeIfKnown() == 0) {
                            spliterator = trySplit;
                            break;
                        }
                    }
                    spliterator.forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.x0n
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            Streams.C6054b.this.m26735b(obj);
                        }
                    });
                    return Optional.of(c6054b.m26734a());
                }
                Spliterator<T> trySplit2 = spliterator.trySplit();
                if (trySplit2 != null && trySplit2.getExactSizeIfKnown() != 0) {
                    arrayDeque.addLast(trySplit2);
                    arrayDeque.addLast(spliterator);
                } else {
                    spliterator.forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.x0n
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            Streams.C6054b.this.m26735b(obj);
                        }
                    });
                    if (c6054b.f34449a) {
                        return Optional.of(c6054b.m26734a());
                    }
                }
            }
        }
        return Optional.empty();
    }

    @Beta
    public static <A, B> void forEachPair(Stream<A> stream, Stream<B> stream2, final BiConsumer<? super A, ? super B> biConsumer) {
        Preconditions.checkNotNull(biConsumer);
        if (stream.isParallel() || stream2.isParallel()) {
            zip(stream, stream2, new BiFunction() { // from class: com.sunia.HTREnginev2.v0n
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return new Streams.C6064l(obj, obj2);
                }
            }).forEach(new Consumer() { // from class: com.sunia.HTREnginev2.w0n
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Streams.m26733s(biConsumer, (Streams.C6064l) obj);
                }
            });
            return;
        }
        Iterator<A> it2 = stream.iterator();
        Iterator<B> it3 = stream2.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            biConsumer.accept(it2.next(), it3.next());
        }
    }

    /* renamed from: j */
    public static void m26724j(BaseStream<?, ?>[] baseStreamArr) {
        for (BaseStream<?, ?> baseStream : baseStreamArr) {
            baseStream.close();
        }
    }

    /* renamed from: k */
    public static /* synthetic */ Spliterator m26725k(Spliterator spliterator) {
        return spliterator;
    }

    /* renamed from: m */
    public static /* synthetic */ Spliterator.OfInt m26727m(Spliterator.OfInt ofInt) {
        return ofInt;
    }

    public static <T, R> Stream<R> mapWithIndex(Stream<T> stream, FunctionWithIndex<? super T, ? extends R> functionWithIndex) {
        Preconditions.checkNotNull(stream);
        Preconditions.checkNotNull(functionWithIndex);
        boolean isParallel = stream.isParallel();
        Spliterator<T> spliterator = stream.spliterator();
        if (!spliterator.hasCharacteristics(16384)) {
            return (Stream) StreamSupport.stream(new C6056d(spliterator.estimateSize(), spliterator.characteristics() & 80, Spliterators.iterator(spliterator), functionWithIndex), isParallel).onClose(new h0n(stream));
        }
        return (Stream) StreamSupport.stream(new C6055c(spliterator, 0L, functionWithIndex), isParallel).onClose(new h0n(stream));
    }

    /* renamed from: o */
    public static /* synthetic */ Spliterator.OfLong m26729o(Spliterator.OfLong ofLong) {
        return ofLong;
    }

    /* renamed from: q */
    public static /* synthetic */ Spliterator.OfDouble m26731q(Spliterator.OfDouble ofDouble) {
        return ofDouble;
    }

    /* renamed from: s */
    public static /* synthetic */ void m26733s(BiConsumer biConsumer, C6064l c6064l) {
        biConsumer.accept(c6064l.f34473a, c6064l.f34474b);
    }

    public static <T> Stream<T> stream(Iterable<T> iterable) {
        if (iterable instanceof Collection) {
            return ((Collection) iterable).stream();
        }
        return StreamSupport.stream(iterable.spliterator(), false);
    }

    @Beta
    public static <A, B, R> Stream<R> zip(Stream<A> stream, Stream<B> stream2, BiFunction<? super A, ? super B, R> biFunction) {
        Preconditions.checkNotNull(stream);
        Preconditions.checkNotNull(stream2);
        Preconditions.checkNotNull(biFunction);
        boolean z = stream.isParallel() || stream2.isParallel();
        Spliterator<A> spliterator = stream.spliterator();
        Spliterator<B> spliterator2 = stream2.spliterator();
        return (Stream) ((Stream) StreamSupport.stream(new C6053a(Math.min(spliterator.estimateSize(), spliterator2.estimateSize()), spliterator.characteristics() & spliterator2.characteristics() & 80, Spliterators.iterator(spliterator), Spliterators.iterator(spliterator2), biFunction), z).onClose(new h0n(stream))).onClose(new h0n(stream2));
    }

    @Beta
    @InlineMe(replacement = "collection.stream()")
    @Deprecated
    public static <T> Stream<T> stream(Collection<T> collection) {
        return collection.stream();
    }

    @Beta
    public static <T> Stream<T> stream(Iterator<T> it2) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(it2, 0), false);
    }

    @Beta
    public static <T> Stream<T> stream(com.google.common.base.Optional<T> optional) {
        return optional.isPresent() ? Stream.of(optional.get()) : Stream.empty();
    }

    @Beta
    @InlineMe(replacement = "optional.stream()")
    @InlineMeValidationDisabled("Java 9+ API only")
    public static <T> Stream<T> stream(Optional<T> optional) {
        return optional.isPresent() ? Stream.of(optional.get()) : Stream.empty();
    }

    @Beta
    @InlineMe(replacement = "optional.stream()")
    @InlineMeValidationDisabled("Java 9+ API only")
    public static IntStream stream(OptionalInt optionalInt) {
        return optionalInt.isPresent() ? IntStream.of(optionalInt.getAsInt()) : IntStream.empty();
    }

    @Beta
    @InlineMe(replacement = "optional.stream()")
    @InlineMeValidationDisabled("Java 9+ API only")
    public static LongStream stream(OptionalLong optionalLong) {
        return optionalLong.isPresent() ? LongStream.of(optionalLong.getAsLong()) : LongStream.empty();
    }

    @Beta
    @InlineMe(replacement = "optional.stream()")
    @InlineMeValidationDisabled("Java 9+ API only")
    public static DoubleStream stream(OptionalDouble optionalDouble) {
        return optionalDouble.isPresent() ? DoubleStream.of(optionalDouble.getAsDouble()) : DoubleStream.empty();
    }

    public static IntStream concat(final IntStream... intStreamArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder(intStreamArr.length);
        long j = 0;
        int i = 336;
        boolean z = false;
        for (IntStream intStream : intStreamArr) {
            z |= intStream.isParallel();
            Spliterator<Integer> spliterator = intStream.spliterator();
            builder.add((ImmutableList.Builder) spliterator);
            i &= spliterator.characteristics();
            j = LongMath.saturatedAdd(j, spliterator.estimateSize());
        }
        return (IntStream) StreamSupport.intStream(vzd.m57899d(builder.build().spliterator(), new Function() { // from class: com.sunia.HTREnginev2.q0n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator.OfInt m26727m;
                m26727m = Streams.m26727m((Spliterator.OfInt) obj);
                return m26727m;
            }
        }, i, j), z).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.r0n
            @Override // java.lang.Runnable
            public final void run() {
                Streams.m26724j(intStreamArr);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Spliterator$OfInt, java.util.Spliterator] */
    public static <R> Stream<R> mapWithIndex(final IntStream intStream, IntFunctionWithIndex<R> intFunctionWithIndex) {
        Preconditions.checkNotNull(intStream);
        Preconditions.checkNotNull(intFunctionWithIndex);
        boolean isParallel = intStream.isParallel();
        ?? spliterator = intStream.spliterator();
        if (!spliterator.hasCharacteristics(16384)) {
            return (Stream) StreamSupport.stream(new C6058f(spliterator.estimateSize(), spliterator.characteristics() & 80, Spliterators.iterator((Spliterator.OfInt) spliterator), intFunctionWithIndex), isParallel).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.j0n
                @Override // java.lang.Runnable
                public final void run() {
                    intStream.close();
                }
            });
        }
        return (Stream) StreamSupport.stream(new C6057e(spliterator, 0L, intFunctionWithIndex), isParallel).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.j0n
            @Override // java.lang.Runnable
            public final void run() {
                intStream.close();
            }
        });
    }

    public static OptionalInt findLast(IntStream intStream) {
        return (OptionalInt) findLast(intStream.boxed()).map(new Function() { // from class: com.sunia.HTREnginev2.b1n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return OptionalInt.of(((Integer) obj).intValue());
            }
        }).orElseGet(new Supplier() { // from class: com.sunia.HTREnginev2.i0n
            @Override // java.util.function.Supplier
            public final Object get() {
                return OptionalInt.empty();
            }
        });
    }

    public static LongStream concat(final LongStream... longStreamArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder(longStreamArr.length);
        long j = 0;
        int i = 336;
        boolean z = false;
        for (LongStream longStream : longStreamArr) {
            z |= longStream.isParallel();
            Spliterator<Long> spliterator = longStream.spliterator();
            builder.add((ImmutableList.Builder) spliterator);
            i &= spliterator.characteristics();
            j = LongMath.saturatedAdd(j, spliterator.estimateSize());
        }
        return (LongStream) StreamSupport.longStream(vzd.m57900e(builder.build().spliterator(), new Function() { // from class: com.sunia.HTREnginev2.y0n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator.OfLong m26729o;
                m26729o = Streams.m26729o((Spliterator.OfLong) obj);
                return m26729o;
            }
        }, i, j), z).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.z0n
            @Override // java.lang.Runnable
            public final void run() {
                Streams.m26724j(longStreamArr);
            }
        });
    }

    public static OptionalLong findLast(LongStream longStream) {
        return (OptionalLong) findLast(longStream.boxed()).map(new Function() { // from class: com.sunia.HTREnginev2.o0n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return OptionalLong.of(((Long) obj).longValue());
            }
        }).orElseGet(new Supplier() { // from class: com.sunia.HTREnginev2.p0n
            @Override // java.util.function.Supplier
            public final Object get() {
                return OptionalLong.empty();
            }
        });
    }

    public static OptionalDouble findLast(DoubleStream doubleStream) {
        return (OptionalDouble) findLast(doubleStream.boxed()).map(new Function() { // from class: com.sunia.HTREnginev2.s0n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return OptionalDouble.of(((Double) obj).doubleValue());
            }
        }).orElseGet(new Supplier() { // from class: com.sunia.HTREnginev2.u0n
            @Override // java.util.function.Supplier
            public final Object get() {
                return OptionalDouble.empty();
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Spliterator$OfLong, java.util.Spliterator] */
    public static <R> Stream<R> mapWithIndex(final LongStream longStream, LongFunctionWithIndex<R> longFunctionWithIndex) {
        Preconditions.checkNotNull(longStream);
        Preconditions.checkNotNull(longFunctionWithIndex);
        boolean isParallel = longStream.isParallel();
        ?? spliterator = longStream.spliterator();
        if (!spliterator.hasCharacteristics(16384)) {
            return (Stream) StreamSupport.stream(new C6060h(spliterator.estimateSize(), spliterator.characteristics() & 80, Spliterators.iterator((Spliterator.OfLong) spliterator), longFunctionWithIndex), isParallel).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.t0n
                @Override // java.lang.Runnable
                public final void run() {
                    longStream.close();
                }
            });
        }
        return (Stream) StreamSupport.stream(new C6059g(spliterator, 0L, longFunctionWithIndex), isParallel).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.t0n
            @Override // java.lang.Runnable
            public final void run() {
                longStream.close();
            }
        });
    }

    public static DoubleStream concat(final DoubleStream... doubleStreamArr) {
        ImmutableList.Builder builder = new ImmutableList.Builder(doubleStreamArr.length);
        long j = 0;
        int i = 336;
        boolean z = false;
        for (DoubleStream doubleStream : doubleStreamArr) {
            z |= doubleStream.isParallel();
            Spliterator<Double> spliterator = doubleStream.spliterator();
            builder.add((ImmutableList.Builder) spliterator);
            i &= spliterator.characteristics();
            j = LongMath.saturatedAdd(j, spliterator.estimateSize());
        }
        return (DoubleStream) StreamSupport.doubleStream(vzd.m57898c(builder.build().spliterator(), new Function() { // from class: com.sunia.HTREnginev2.m0n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator.OfDouble m26731q;
                m26731q = Streams.m26731q((Spliterator.OfDouble) obj);
                return m26731q;
            }
        }, i, j), z).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.n0n
            @Override // java.lang.Runnable
            public final void run() {
                Streams.m26724j(doubleStreamArr);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Spliterator$OfDouble, java.util.Spliterator] */
    public static <R> Stream<R> mapWithIndex(final DoubleStream doubleStream, DoubleFunctionWithIndex<R> doubleFunctionWithIndex) {
        Preconditions.checkNotNull(doubleStream);
        Preconditions.checkNotNull(doubleFunctionWithIndex);
        boolean isParallel = doubleStream.isParallel();
        ?? spliterator = doubleStream.spliterator();
        if (!spliterator.hasCharacteristics(16384)) {
            return (Stream) StreamSupport.stream(new C6062j(spliterator.estimateSize(), spliterator.characteristics() & 80, Spliterators.iterator((Spliterator.OfDouble) spliterator), doubleFunctionWithIndex), isParallel).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.a1n
                @Override // java.lang.Runnable
                public final void run() {
                    doubleStream.close();
                }
            });
        }
        return (Stream) StreamSupport.stream(new C6061i(spliterator, 0L, doubleFunctionWithIndex), isParallel).onClose(new Runnable() { // from class: com.sunia.HTREnginev2.a1n
            @Override // java.lang.Runnable
            public final void run() {
                doubleStream.close();
            }
        });
    }
}
