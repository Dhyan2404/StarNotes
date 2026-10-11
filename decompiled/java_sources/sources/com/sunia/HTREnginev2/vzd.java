package com.sunia.HTREnginev2;

import Abdullah.hook;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.j2objc.annotations.Weak;
import com.sunia.HTREnginev2.vzd;
import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;
import java.util.stream.IntStream;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class vzd {

    /* JADX INFO: Add missing generic type declarations: [OutElementT] */
    /* renamed from: com.sunia.HTREnginev2.vzd$a */
    /* loaded from: classes6.dex */
    public class C14570a<OutElementT> implements Spliterator<OutElementT> {

        /* renamed from: e */
        public final /* synthetic */ Spliterator f88063e;

        /* renamed from: f */
        public final /* synthetic */ Function f88064f;

        public C14570a(Spliterator spliterator, Function function) {
            this.f88063e = spliterator;
            this.f88064f = function;
        }

        /* renamed from: c */
        public static /* synthetic */ void m57906c(Consumer consumer, Function function, Object obj) {
            consumer.accept(function.apply(obj));
        }

        /* renamed from: d */
        public static /* synthetic */ void m57907d(Consumer consumer, Function function, Object obj) {
            consumer.accept(function.apply(obj));
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.f88063e.characteristics() & (-262);
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.f88063e.estimateSize();
        }

        @Override // java.util.Spliterator
        public void forEachRemaining(final Consumer<? super OutElementT> consumer) {
            Spliterator spliterator = this.f88063e;
            final Function function = this.f88064f;
            spliterator.forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.tzd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    vzd.C14570a.m57906c(consumer, function, obj);
                }
            });
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(final Consumer<? super OutElementT> consumer) {
            Spliterator spliterator = this.f88063e;
            final Function function = this.f88064f;
            return spliterator.tryAdvance(new Consumer() { // from class: com.sunia.HTREnginev2.uzd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    vzd.C14570a.m57907d(consumer, function, obj);
                }
            });
        }

        @Override // java.util.Spliterator
        @CheckForNull
        public Spliterator<OutElementT> trySplit() {
            Spliterator trySplit = this.f88063e.trySplit();
            if (trySplit != null) {
                return vzd.m57903h(trySplit, this.f88064f);
            }
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.sunia.HTREnginev2.vzd$b */
    /* loaded from: classes6.dex */
    public class C14571b<T> implements Spliterator<T>, Consumer<T> {

        /* renamed from: e */
        @CheckForNull
        public T f88065e = null;

        /* renamed from: f */
        public final /* synthetic */ Spliterator f88066f;

        /* renamed from: g */
        public final /* synthetic */ Predicate f88067g;

        public C14571b(Spliterator spliterator, Predicate predicate) {
            this.f88066f = spliterator;
            this.f88067g = predicate;
        }

        @Override // java.util.function.Consumer
        public void accept(@xvk T t) {
            this.f88065e = t;
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.f88066f.characteristics() & 277;
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.f88066f.estimateSize() / 2;
        }

        @Override // java.util.Spliterator
        @CheckForNull
        public Comparator<? super T> getComparator() {
            return this.f88066f.getComparator();
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(Consumer<? super T> consumer) {
            while (this.f88066f.tryAdvance(this)) {
                try {
                    hook.C0007h c0007h = (Object) p5k.m56213a(this.f88065e);
                    if (this.f88067g.test(c0007h)) {
                        consumer.accept(c0007h);
                        this.f88065e = null;
                        return true;
                    }
                } finally {
                    this.f88065e = null;
                }
            }
            return false;
        }

        @Override // java.util.Spliterator
        @CheckForNull
        public Spliterator<T> trySplit() {
            Spliterator<T> trySplit = this.f88066f.trySplit();
            if (trySplit == null) {
                return null;
            }
            return vzd.m57896a(trySplit, this.f88067g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.sunia.HTREnginev2.vzd$c */
    /* loaded from: classes6.dex */
    public class C14572c<T> implements Spliterator<T> {

        /* renamed from: e */
        public final Spliterator.OfInt f88068e;

        /* renamed from: f */
        public final /* synthetic */ IntFunction f88069f;

        /* renamed from: g */
        public final /* synthetic */ int f88070g;

        /* renamed from: h */
        public final /* synthetic */ Comparator f88071h;

        public C14572c(Spliterator.OfInt ofInt, IntFunction intFunction, int i, Comparator comparator) {
            this.f88069f = intFunction;
            this.f88070g = i;
            this.f88071h = comparator;
            this.f88068e = ofInt;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: c */
        public static /* synthetic */ void m57910c(Consumer consumer, IntFunction intFunction, int i) {
            consumer.accept(intFunction.apply(i));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: d */
        public static /* synthetic */ void m57911d(Consumer consumer, IntFunction intFunction, int i) {
            consumer.accept(intFunction.apply(i));
        }

        @Override // java.util.Spliterator
        public int characteristics() {
            return this.f88070g | 16464;
        }

        @Override // java.util.Spliterator
        public long estimateSize() {
            return this.f88068e.estimateSize();
        }

        @Override // java.util.Spliterator
        public void forEachRemaining(final Consumer<? super T> consumer) {
            Spliterator.OfInt ofInt = this.f88068e;
            final IntFunction intFunction = this.f88069f;
            ofInt.forEachRemaining(new IntConsumer() { // from class: com.sunia.HTREnginev2.wzd
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    vzd.C14572c.m57910c(consumer, intFunction, i);
                }
            });
        }

        @Override // java.util.Spliterator
        @CheckForNull
        public Comparator<? super T> getComparator() {
            if (hasCharacteristics(4)) {
                return this.f88071h;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Spliterator
        public boolean tryAdvance(final Consumer<? super T> consumer) {
            Spliterator.OfInt ofInt = this.f88068e;
            final IntFunction intFunction = this.f88069f;
            return ofInt.tryAdvance(new IntConsumer() { // from class: com.sunia.HTREnginev2.xzd
                @Override // java.util.function.IntConsumer
                public final void accept(int i) {
                    vzd.C14572c.m57911d(consumer, intFunction, i);
                }
            });
        }

        @Override // java.util.Spliterator
        @CheckForNull
        public Spliterator<T> trySplit() {
            Spliterator.OfInt trySplit = this.f88068e.trySplit();
            if (trySplit == null) {
                return null;
            }
            return new C14572c(trySplit, this.f88069f, this.f88070g, this.f88071h);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vzd$d */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC14573d<InElementT, OutElementT, OutSpliteratorT extends Spliterator<OutElementT>> implements Spliterator<OutElementT> {

        /* renamed from: e */
        @Weak
        @CheckForNull
        public OutSpliteratorT f88072e;

        /* renamed from: f */
        public final Spliterator<InElementT> f88073f;

        /* renamed from: g */
        public final Function<? super InElementT, OutSpliteratorT> f88074g;

        /* renamed from: h */
        public final a<InElementT, OutSpliteratorT> f88075h;

        /* renamed from: i */
        public int f88076i;

        /* renamed from: j */
        public long f88077j;

        @FunctionalInterface
        /* renamed from: com.sunia.HTREnginev2.vzd$d$a */
        /* loaded from: classes6.dex */
        public interface a<InElementT, OutSpliteratorT extends Spliterator<?>> {
            /* renamed from: a */
            OutSpliteratorT mo52912a(@CheckForNull OutSpliteratorT outspliteratort, Spliterator<InElementT> spliterator, Function<? super InElementT, OutSpliteratorT> function, int i, long j);
        }

        public AbstractC14573d(@CheckForNull OutSpliteratorT outspliteratort, Spliterator<InElementT> spliterator, Function<? super InElementT, OutSpliteratorT> function, a<InElementT, OutSpliteratorT> aVar, int i, long j) {
            this.f88072e = outspliteratort;
            this.f88073f = spliterator;
            this.f88074g = function;
            this.f88075h = aVar;
            this.f88076i = i;
            this.f88077j = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m57914c(Consumer consumer, Object obj) {
            OutSpliteratorT apply = this.f88074g.apply(obj);
            if (apply != null) {
                apply.forEachRemaining(consumer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m57915d(Object obj) {
            this.f88072e = this.f88074g.apply(obj);
        }

        @Override // java.util.Spliterator
        public final int characteristics() {
            return this.f88076i;
        }

        @Override // java.util.Spliterator
        public final long estimateSize() {
            OutSpliteratorT outspliteratort = this.f88072e;
            if (outspliteratort != null) {
                this.f88077j = Math.max(this.f88077j, outspliteratort.estimateSize());
            }
            return Math.max(this.f88077j, 0L);
        }

        @Override // java.util.Spliterator
        public final void forEachRemaining(final Consumer<? super OutElementT> consumer) {
            OutSpliteratorT outspliteratort = this.f88072e;
            if (outspliteratort != null) {
                outspliteratort.forEachRemaining(consumer);
                this.f88072e = null;
            }
            this.f88073f.forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.yzd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    vzd.AbstractC14573d.this.m57914c(consumer, obj);
                }
            });
            this.f88077j = 0L;
        }

        @Override // java.util.Spliterator
        public final boolean tryAdvance(Consumer<? super OutElementT> consumer) {
            do {
                OutSpliteratorT outspliteratort = this.f88072e;
                if (outspliteratort != null && outspliteratort.tryAdvance(consumer)) {
                    long j = this.f88077j;
                    if (j == Long.MAX_VALUE) {
                        return true;
                    }
                    this.f88077j = j - 1;
                    return true;
                }
                this.f88072e = null;
            } while (this.f88073f.tryAdvance(new Consumer() { // from class: com.sunia.HTREnginev2.zzd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    vzd.AbstractC14573d.this.m57915d(obj);
                }
            }));
            return false;
        }

        @Override // java.util.Spliterator
        @CheckForNull
        public final OutSpliteratorT trySplit() {
            Spliterator<InElementT> trySplit = this.f88073f.trySplit();
            if (trySplit == null) {
                OutSpliteratorT outspliteratort = this.f88072e;
                if (outspliteratort == null) {
                    return null;
                }
                this.f88072e = null;
                return outspliteratort;
            }
            int i = this.f88076i & (-65);
            long estimateSize = estimateSize();
            if (estimateSize < Long.MAX_VALUE) {
                estimateSize /= 2;
                this.f88077j -= estimateSize;
                this.f88076i = i;
            }
            OutSpliteratorT mo52912a = this.f88075h.mo52912a(this.f88072e, trySplit, this.f88074g, i, estimateSize);
            this.f88072e = null;
            return mo52912a;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vzd$e */
    /* loaded from: classes6.dex */
    public static final class C14574e<InElementT> extends AbstractC14578i<InElementT, Double, DoubleConsumer, Spliterator.OfDouble> implements Spliterator.OfDouble {
        public C14574e(@CheckForNull Spliterator.OfDouble ofDouble, Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfDouble> function, int i, long j) {
            super(ofDouble, spliterator, function, new AbstractC14573d.a() { // from class: com.sunia.HTREnginev2.a0e
                @Override // com.sunia.HTREnginev2.vzd.AbstractC14573d.a
                /* renamed from: a */
                public final Spliterator mo52912a(Spliterator spliterator2, Spliterator spliterator3, Function function2, int i2, long j2) {
                    return new vzd.C14574e((Spliterator.OfDouble) spliterator2, spliterator3, function2, i2, j2);
                }
            }, i, j);
        }

        @Override // java.util.Spliterator.OfDouble
        public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
            super.forEachRemaining((C14574e<InElementT>) doubleConsumer);
        }

        @Override // java.util.Spliterator.OfDouble
        public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
            return super.tryAdvance((C14574e<InElementT>) doubleConsumer);
        }

        @Override // com.sunia.HTREnginev2.vzd.AbstractC14578i, com.sunia.HTREnginev2.vzd.AbstractC14573d, java.util.Spliterator
        @CheckForNull
        public /* bridge */ /* synthetic */ Spliterator.OfDouble trySplit() {
            return (Spliterator.OfDouble) super.trySplit();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vzd$f */
    /* loaded from: classes6.dex */
    public static final class C14575f<InElementT> extends AbstractC14578i<InElementT, Integer, IntConsumer, Spliterator.OfInt> implements Spliterator.OfInt {
        public C14575f(@CheckForNull Spliterator.OfInt ofInt, Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfInt> function, int i, long j) {
            super(ofInt, spliterator, function, new AbstractC14573d.a() { // from class: com.sunia.HTREnginev2.b0e
                @Override // com.sunia.HTREnginev2.vzd.AbstractC14573d.a
                /* renamed from: a */
                public final Spliterator mo52912a(Spliterator spliterator2, Spliterator spliterator3, Function function2, int i2, long j2) {
                    return new vzd.C14575f((Spliterator.OfInt) spliterator2, spliterator3, function2, i2, j2);
                }
            }, i, j);
        }

        @Override // java.util.Spliterator.OfInt
        public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
            super.forEachRemaining((C14575f<InElementT>) intConsumer);
        }

        @Override // java.util.Spliterator.OfInt
        public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
            return super.tryAdvance((C14575f<InElementT>) intConsumer);
        }

        @Override // com.sunia.HTREnginev2.vzd.AbstractC14578i, com.sunia.HTREnginev2.vzd.AbstractC14573d, java.util.Spliterator
        @CheckForNull
        public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
            return (Spliterator.OfInt) super.trySplit();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vzd$g */
    /* loaded from: classes6.dex */
    public static final class C14576g<InElementT> extends AbstractC14578i<InElementT, Long, LongConsumer, Spliterator.OfLong> implements Spliterator.OfLong {
        public C14576g(@CheckForNull Spliterator.OfLong ofLong, Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfLong> function, int i, long j) {
            super(ofLong, spliterator, function, new AbstractC14573d.a() { // from class: com.sunia.HTREnginev2.c0e
                @Override // com.sunia.HTREnginev2.vzd.AbstractC14573d.a
                /* renamed from: a */
                public final Spliterator mo52912a(Spliterator spliterator2, Spliterator spliterator3, Function function2, int i2, long j2) {
                    return new vzd.C14576g((Spliterator.OfLong) spliterator2, spliterator3, function2, i2, j2);
                }
            }, i, j);
        }

        @Override // java.util.Spliterator.OfLong
        public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
            super.forEachRemaining((C14576g<InElementT>) longConsumer);
        }

        @Override // java.util.Spliterator.OfLong
        public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
            return super.tryAdvance((C14576g<InElementT>) longConsumer);
        }

        @Override // com.sunia.HTREnginev2.vzd.AbstractC14578i, com.sunia.HTREnginev2.vzd.AbstractC14573d, java.util.Spliterator
        @CheckForNull
        public /* bridge */ /* synthetic */ Spliterator.OfLong trySplit() {
            return (Spliterator.OfLong) super.trySplit();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vzd$h */
    /* loaded from: classes6.dex */
    public static final class C14577h<InElementT, OutElementT> extends AbstractC14573d<InElementT, OutElementT, Spliterator<OutElementT>> {
        public C14577h(@CheckForNull Spliterator<OutElementT> spliterator, Spliterator<InElementT> spliterator2, Function<? super InElementT, Spliterator<OutElementT>> function, int i, long j) {
            super(spliterator, spliterator2, function, new AbstractC14573d.a() { // from class: com.sunia.HTREnginev2.d0e
                @Override // com.sunia.HTREnginev2.vzd.AbstractC14573d.a
                /* renamed from: a */
                public final Spliterator mo52912a(Spliterator spliterator3, Spliterator spliterator4, Function function2, int i2, long j2) {
                    return new vzd.C14577h(spliterator3, spliterator4, function2, i2, j2);
                }
            }, i, j);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.vzd$i */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC14578i<InElementT, OutElementT, OutConsumerT, OutSpliteratorT extends Spliterator.OfPrimitive<OutElementT, OutConsumerT, OutSpliteratorT>> extends AbstractC14573d<InElementT, OutElementT, OutSpliteratorT> implements Spliterator.OfPrimitive<OutElementT, OutConsumerT, OutSpliteratorT> {
        public AbstractC14578i(@CheckForNull OutSpliteratorT outspliteratort, Spliterator<InElementT> spliterator, Function<? super InElementT, OutSpliteratorT> function, AbstractC14573d.a<InElementT, OutSpliteratorT> aVar, int i, long j) {
            super(outspliteratort, spliterator, function, aVar, i, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ void m57916d(Object obj) {
            this.f88072e = (OutSpliteratorT) this.f88074g.apply(obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ void m57919g(Object obj, Object obj2) {
            Spliterator.OfPrimitive ofPrimitive = (Spliterator.OfPrimitive) this.f88074g.apply(obj2);
            if (ofPrimitive != null) {
                ofPrimitive.forEachRemaining((Spliterator.OfPrimitive) obj);
            }
        }

        @Override // java.util.Spliterator.OfPrimitive
        public final void forEachRemaining(final OutConsumerT outconsumert) {
            OutSpliteratorT outspliteratort = this.f88072e;
            if (outspliteratort != 0) {
                ((Spliterator.OfPrimitive) outspliteratort).forEachRemaining((Spliterator.OfPrimitive) outconsumert);
                this.f88072e = null;
            }
            this.f88073f.forEachRemaining(new Consumer() { // from class: com.sunia.HTREnginev2.e0e
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    vzd.AbstractC14578i.this.m57919g(outconsumert, obj);
                }
            });
            this.f88077j = 0L;
        }

        @Override // java.util.Spliterator.OfPrimitive
        public final boolean tryAdvance(OutConsumerT outconsumert) {
            do {
                OutSpliteratorT outspliteratort = this.f88072e;
                if (outspliteratort != 0 && ((Spliterator.OfPrimitive) outspliteratort).tryAdvance((Spliterator.OfPrimitive) outconsumert)) {
                    long j = this.f88077j;
                    if (j == Long.MAX_VALUE) {
                        return true;
                    }
                    this.f88077j = j - 1;
                    return true;
                }
                this.f88072e = null;
            } while (this.f88073f.tryAdvance(new Consumer() { // from class: com.sunia.HTREnginev2.f0e
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    vzd.AbstractC14578i.this.m57916d(obj);
                }
            }));
            return false;
        }

        @Override // com.sunia.HTREnginev2.vzd.AbstractC14573d, java.util.Spliterator
        @CheckForNull
        public /* bridge */ /* synthetic */ Spliterator.OfPrimitive trySplit() {
            return (Spliterator.OfPrimitive) super.trySplit();
        }
    }

    /* renamed from: a */
    public static <T> Spliterator<T> m57896a(Spliterator<T> spliterator, Predicate<? super T> predicate) {
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(predicate);
        return new C14571b(spliterator, predicate);
    }

    /* renamed from: b */
    public static <InElementT, OutElementT> Spliterator<OutElementT> m57897b(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator<OutElementT>> function, int i, long j) {
        Preconditions.checkArgument((i & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        Preconditions.checkArgument((i & 4) == 0, "flatMap does not support SORTED characteristic");
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new C14577h(null, spliterator, function, i, j);
    }

    /* renamed from: c */
    public static <InElementT> Spliterator.OfDouble m57898c(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfDouble> function, int i, long j) {
        Preconditions.checkArgument((i & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        Preconditions.checkArgument((i & 4) == 0, "flatMap does not support SORTED characteristic");
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new C14574e(null, spliterator, function, i, j);
    }

    /* renamed from: d */
    public static <InElementT> Spliterator.OfInt m57899d(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfInt> function, int i, long j) {
        Preconditions.checkArgument((i & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        Preconditions.checkArgument((i & 4) == 0, "flatMap does not support SORTED characteristic");
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new C14575f(null, spliterator, function, i, j);
    }

    /* renamed from: e */
    public static <InElementT> Spliterator.OfLong m57900e(Spliterator<InElementT> spliterator, Function<? super InElementT, Spliterator.OfLong> function, int i, long j) {
        Preconditions.checkArgument((i & 16384) == 0, "flatMap does not support SUBSIZED characteristic");
        Preconditions.checkArgument((i & 4) == 0, "flatMap does not support SORTED characteristic");
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new C14576g(null, spliterator, function, i, j);
    }

    /* renamed from: f */
    public static <T> Spliterator<T> m57901f(int i, int i2, IntFunction<T> intFunction) {
        return m57902g(i, i2, intFunction, null);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.Spliterator$OfInt] */
    /* renamed from: g */
    public static <T> Spliterator<T> m57902g(int i, int i2, IntFunction<T> intFunction, @CheckForNull Comparator<? super T> comparator) {
        if (comparator != null) {
            Preconditions.checkArgument((i2 & 4) != 0);
        }
        return new C14572c(IntStream.range(0, i).spliterator(), intFunction, i2, comparator);
    }

    /* renamed from: h */
    public static <InElementT, OutElementT> Spliterator<OutElementT> m57903h(Spliterator<InElementT> spliterator, Function<? super InElementT, ? extends OutElementT> function) {
        Preconditions.checkNotNull(spliterator);
        Preconditions.checkNotNull(function);
        return new C14570a(spliterator, function);
    }
}
