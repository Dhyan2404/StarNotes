package io.reactivex.rxjava3.internal.functions;

import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Function3;
import io.reactivex.rxjava3.functions.Function4;
import io.reactivex.rxjava3.functions.Function5;
import io.reactivex.rxjava3.functions.Function6;
import io.reactivex.rxjava3.functions.Function7;
import io.reactivex.rxjava3.functions.Function8;
import io.reactivex.rxjava3.functions.Function9;
import io.reactivex.rxjava3.functions.LongConsumer;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Subscription;

/* loaded from: classes10.dex */
public final class Functions {

    /* renamed from: a */
    public static final Function<Object, Object> f95018a = new C17281v();
    public static final Runnable EMPTY_RUNNABLE = new RunnableC17276q();
    public static final Action EMPTY_ACTION = new C17273n();

    /* renamed from: b */
    public static final Consumer<Object> f95019b = new C17274o();
    public static final Consumer<Throwable> ERROR_CONSUMER = new C17278s();
    public static final Consumer<Throwable> ON_ERROR_MISSING = new C17258d0();
    public static final LongConsumer EMPTY_LONG_CONSUMER = new C17275p();

    /* renamed from: c */
    public static final Predicate<Object> f95020c = new C17268i0();

    /* renamed from: d */
    public static final Predicate<Object> f95021d = new C17279t();

    /* renamed from: e */
    public static final Supplier<Object> f95022e = new C17256c0();
    public static final Consumer<Subscription> REQUEST_MAX = new C17284y();

    /* loaded from: classes10.dex */
    public static class BoundedConsumer implements Consumer<Subscription> {

        /* renamed from: e */
        public final int f95023e;

        public BoundedConsumer(int bufferSize) {
            this.f95023e = bufferSize;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Subscription s) {
            s.request(this.f95023e);
        }
    }

    /* loaded from: classes10.dex */
    public enum HashSetSupplier implements Supplier<Set<Object>> {
        INSTANCE;

        @Override // io.reactivex.rxjava3.functions.Supplier
        public Set<Object> get() {
            return new HashSet();
        }
    }

    /* loaded from: classes10.dex */
    public enum NaturalComparator implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object o1, Object o2) {
            return ((Comparable) o1).compareTo(o2);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$a */
    /* loaded from: classes10.dex */
    public static final class C17251a<T> implements Consumer<T> {

        /* renamed from: e */
        public final Action f95024e;

        public C17251a(Action action) {
            this.f95024e = action;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(T t) throws Throwable {
            this.f95024e.run();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$a0 */
    /* loaded from: classes10.dex */
    public static final class C17252a0<T> implements Consumer<Throwable> {

        /* renamed from: e */
        public final Consumer<? super Notification<T>> f95025e;

        public C17252a0(Consumer<? super Notification<T>> onNotification) {
            this.f95025e = onNotification;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Throwable v) throws Throwable {
            this.f95025e.accept(Notification.createOnError(v));
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$b */
    /* loaded from: classes10.dex */
    public static final class C17253b<T1, T2, R> implements Function<Object[], R> {

        /* renamed from: e */
        public final BiFunction<? super T1, ? super T2, ? extends R> f95026e;

        public C17253b(BiFunction<? super T1, ? super T2, ? extends R> f) {
            this.f95026e = f;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public R apply(Object[] a) throws Throwable {
            if (a.length == 2) {
                return this.f95026e.apply(a[0], a[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + a.length);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$b0 */
    /* loaded from: classes10.dex */
    public static final class C17254b0<T> implements Consumer<T> {

        /* renamed from: e */
        public final Consumer<? super Notification<T>> f95027e;

        public C17254b0(Consumer<? super Notification<T>> onNotification) {
            this.f95027e = onNotification;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(T v) throws Throwable {
            this.f95027e.accept(Notification.createOnNext(v));
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$c */
    /* loaded from: classes10.dex */
    public static final class C17255c<T1, T2, T3, R> implements Function<Object[], R> {

        /* renamed from: e */
        public final Function3<T1, T2, T3, R> f95028e;

        public C17255c(Function3<T1, T2, T3, R> f) {
            this.f95028e = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Throwable {
            if (objArr.length == 3) {
                return (R) this.f95028e.apply(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$c0 */
    /* loaded from: classes10.dex */
    public static final class C17256c0 implements Supplier<Object> {
        @Override // io.reactivex.rxjava3.functions.Supplier
        public Object get() {
            return null;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$d */
    /* loaded from: classes10.dex */
    public static final class C17257d<T1, T2, T3, T4, R> implements Function<Object[], R> {

        /* renamed from: e */
        public final Function4<T1, T2, T3, T4, R> f95029e;

        public C17257d(Function4<T1, T2, T3, T4, R> f) {
            this.f95029e = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Throwable {
            if (objArr.length == 4) {
                return (R) this.f95029e.apply(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$d0 */
    /* loaded from: classes10.dex */
    public static final class C17258d0 implements Consumer<Throwable> {
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Throwable error) {
            RxJavaPlugins.onError(new OnErrorNotImplementedException(error));
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$e */
    /* loaded from: classes10.dex */
    public static final class C17259e<T1, T2, T3, T4, T5, R> implements Function<Object[], R> {

        /* renamed from: e */
        public final Function5<T1, T2, T3, T4, T5, R> f95030e;

        public C17259e(Function5<T1, T2, T3, T4, T5, R> f) {
            this.f95030e = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Throwable {
            if (objArr.length == 5) {
                return (R) this.f95030e.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$e0 */
    /* loaded from: classes10.dex */
    public static final class C17260e0<T> implements Function<T, Timed<T>> {

        /* renamed from: e */
        public final TimeUnit f95031e;

        /* renamed from: f */
        public final Scheduler f95032f;

        public C17260e0(TimeUnit unit, Scheduler scheduler) {
            this.f95031e = unit;
            this.f95032f = scheduler;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Timed<T> apply(T t) {
            return new Timed<>(t, this.f95032f.now(this.f95031e), this.f95031e);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$f */
    /* loaded from: classes10.dex */
    public static final class C17261f<T1, T2, T3, T4, T5, T6, R> implements Function<Object[], R> {

        /* renamed from: e */
        public final Function6<T1, T2, T3, T4, T5, T6, R> f95033e;

        public C17261f(Function6<T1, T2, T3, T4, T5, T6, R> f) {
            this.f95033e = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Throwable {
            if (objArr.length == 6) {
                return (R) this.f95033e.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$f0 */
    /* loaded from: classes10.dex */
    public static final class C17262f0<K, T> implements BiConsumer<Map<K, T>, T> {

        /* renamed from: a */
        public final Function<? super T, ? extends K> f95034a;

        public C17262f0(Function<? super T, ? extends K> keySelector) {
            this.f95034a = keySelector;
        }

        @Override // io.reactivex.rxjava3.functions.BiConsumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Map<K, T> m, T t) throws Throwable {
            m.put(this.f95034a.apply(t), t);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$g */
    /* loaded from: classes10.dex */
    public static final class C17263g<T1, T2, T3, T4, T5, T6, T7, R> implements Function<Object[], R> {

        /* renamed from: e */
        public final Function7<T1, T2, T3, T4, T5, T6, T7, R> f95035e;

        public C17263g(Function7<T1, T2, T3, T4, T5, T6, T7, R> f) {
            this.f95035e = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Throwable {
            if (objArr.length == 7) {
                return (R) this.f95035e.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$g0 */
    /* loaded from: classes10.dex */
    public static final class C17264g0<K, V, T> implements BiConsumer<Map<K, V>, T> {

        /* renamed from: a */
        public final Function<? super T, ? extends V> f95036a;

        /* renamed from: b */
        public final Function<? super T, ? extends K> f95037b;

        public C17264g0(Function<? super T, ? extends V> valueSelector, Function<? super T, ? extends K> keySelector) {
            this.f95036a = valueSelector;
            this.f95037b = keySelector;
        }

        @Override // io.reactivex.rxjava3.functions.BiConsumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Map<K, V> m, T t) throws Throwable {
            m.put(this.f95037b.apply(t), this.f95036a.apply(t));
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$h */
    /* loaded from: classes10.dex */
    public static final class C17265h<T1, T2, T3, T4, T5, T6, T7, T8, R> implements Function<Object[], R> {

        /* renamed from: e */
        public final Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> f95038e;

        public C17265h(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> f) {
            this.f95038e = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Throwable {
            if (objArr.length == 8) {
                return (R) this.f95038e.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$h0 */
    /* loaded from: classes10.dex */
    public static final class C17266h0<K, V, T> implements BiConsumer<Map<K, Collection<V>>, T> {

        /* renamed from: a */
        public final Function<? super K, ? extends Collection<? super V>> f95039a;

        /* renamed from: b */
        public final Function<? super T, ? extends V> f95040b;

        /* renamed from: c */
        public final Function<? super T, ? extends K> f95041c;

        public C17266h0(Function<? super K, ? extends Collection<? super V>> collectionFactory, Function<? super T, ? extends V> valueSelector, Function<? super T, ? extends K> keySelector) {
            this.f95039a = collectionFactory;
            this.f95040b = valueSelector;
            this.f95041c = keySelector;
        }

        @Override // io.reactivex.rxjava3.functions.BiConsumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Map<K, Collection<V>> m, T t) throws Throwable {
            K apply = this.f95041c.apply(t);
            Collection<? super V> collection = (Collection) m.get(apply);
            if (collection == null) {
                collection = this.f95039a.apply(apply);
                m.put(apply, collection);
            }
            collection.add(this.f95040b.apply(t));
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$i */
    /* loaded from: classes10.dex */
    public static final class C17267i<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements Function<Object[], R> {

        /* renamed from: e */
        public final Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f95042e;

        public C17267i(Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f) {
            this.f95042e = f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public R apply(Object[] objArr) throws Throwable {
            if (objArr.length == 9) {
                return (R) this.f95042e.apply(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$i0 */
    /* loaded from: classes10.dex */
    public static final class C17268i0 implements Predicate<Object> {
        @Override // io.reactivex.rxjava3.functions.Predicate
        public boolean test(Object o) {
            return true;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$j */
    /* loaded from: classes10.dex */
    public static final class C17269j<T> implements Supplier<List<T>> {

        /* renamed from: e */
        public final int f95043e;

        public C17269j(int capacity) {
            this.f95043e = capacity;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> get() {
            return new ArrayList(this.f95043e);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$k */
    /* loaded from: classes10.dex */
    public static final class C17270k<T> implements Predicate<T> {

        /* renamed from: e */
        public final BooleanSupplier f95044e;

        public C17270k(BooleanSupplier supplier) {
            this.f95044e = supplier;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public boolean test(T t) throws Throwable {
            return !this.f95044e.getAsBoolean();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$l */
    /* loaded from: classes10.dex */
    public static final class C17271l<T, U> implements Function<T, U> {

        /* renamed from: e */
        public final Class<U> f95045e;

        public C17271l(Class<U> clazz) {
            this.f95045e = clazz;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public U apply(T t) {
            return this.f95045e.cast(t);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$m */
    /* loaded from: classes10.dex */
    public static final class C17272m<T, U> implements Predicate<T> {

        /* renamed from: e */
        public final Class<U> f95046e;

        public C17272m(Class<U> clazz) {
            this.f95046e = clazz;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public boolean test(T t) {
            return this.f95046e.isInstance(t);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$n */
    /* loaded from: classes10.dex */
    public static final class C17273n implements Action {
        @Override // io.reactivex.rxjava3.functions.Action
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$o */
    /* loaded from: classes10.dex */
    public static final class C17274o implements Consumer<Object> {
        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Object v) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$p */
    /* loaded from: classes10.dex */
    public static final class C17275p implements LongConsumer {
        @Override // io.reactivex.rxjava3.functions.LongConsumer
        public void accept(long v) {
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$q */
    /* loaded from: classes10.dex */
    public static final class RunnableC17276q implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$r */
    /* loaded from: classes10.dex */
    public static final class C17277r<T> implements Predicate<T> {

        /* renamed from: e */
        public final T f95047e;

        public C17277r(T value) {
            this.f95047e = value;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public boolean test(T t) {
            return Objects.equals(t, this.f95047e);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$s */
    /* loaded from: classes10.dex */
    public static final class C17278s implements Consumer<Throwable> {
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Throwable error) {
            RxJavaPlugins.onError(error);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$t */
    /* loaded from: classes10.dex */
    public static final class C17279t implements Predicate<Object> {
        @Override // io.reactivex.rxjava3.functions.Predicate
        public boolean test(Object o) {
            return false;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$u */
    /* loaded from: classes10.dex */
    public static final class C17280u implements Action {

        /* renamed from: e */
        public final Future<?> f95048e;

        public C17280u(Future<?> future) {
            this.f95048e = future;
        }

        @Override // io.reactivex.rxjava3.functions.Action
        public void run() throws Exception {
            this.f95048e.get();
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$v */
    /* loaded from: classes10.dex */
    public static final class C17281v implements Function<Object, Object> {
        @Override // io.reactivex.rxjava3.functions.Function
        public Object apply(Object v) {
            return v;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$w */
    /* loaded from: classes10.dex */
    public static final class CallableC17282w<T, U> implements Callable<U>, Supplier<U>, Function<T, U> {

        /* renamed from: e */
        public final U f95049e;

        public CallableC17282w(U value) {
            this.f95049e = value;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public U apply(T t) {
            return this.f95049e;
        }

        @Override // java.util.concurrent.Callable
        public U call() {
            return this.f95049e;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public U get() {
            return this.f95049e;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$x */
    /* loaded from: classes10.dex */
    public static final class C17283x<T> implements Function<List<T>, List<T>> {

        /* renamed from: e */
        public final Comparator<? super T> f95050e;

        public C17283x(Comparator<? super T> comparator) {
            this.f95050e = comparator;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<T> apply(List<T> v) {
            Collections.sort(v, this.f95050e);
            return v;
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$y */
    /* loaded from: classes10.dex */
    public static final class C17284y implements Consumer<Subscription> {
        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(Subscription t) {
            t.request(Long.MAX_VALUE);
        }
    }

    /* renamed from: io.reactivex.rxjava3.internal.functions.Functions$z */
    /* loaded from: classes10.dex */
    public static final class C17285z<T> implements Action {

        /* renamed from: e */
        public final Consumer<? super Notification<T>> f95051e;

        public C17285z(Consumer<? super Notification<T>> onNotification) {
            this.f95051e = onNotification;
        }

        @Override // io.reactivex.rxjava3.functions.Action
        public void run() throws Throwable {
            this.f95051e.accept(Notification.createOnComplete());
        }
    }

    public Functions() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Consumer<T> actionConsumer(Action action) {
        return new C17251a(action);
    }

    @NonNull
    public static <T> Predicate<T> alwaysFalse() {
        return (Predicate<T>) f95021d;
    }

    @NonNull
    public static <T> Predicate<T> alwaysTrue() {
        return (Predicate<T>) f95020c;
    }

    public static <T> Consumer<T> boundedConsumer(int bufferSize) {
        return new BoundedConsumer(bufferSize);
    }

    @NonNull
    public static <T, U> Function<T, U> castFunction(@NonNull Class<U> target) {
        return new C17271l(target);
    }

    public static <T> Supplier<List<T>> createArrayList(int capacity) {
        return new C17269j(capacity);
    }

    public static <T> Supplier<Set<T>> createHashSet() {
        return HashSetSupplier.INSTANCE;
    }

    public static <T> Consumer<T> emptyConsumer() {
        return (Consumer<T>) f95019b;
    }

    public static <T> Predicate<T> equalsWith(T value) {
        return new C17277r(value);
    }

    @NonNull
    public static Action futureAction(@NonNull Future<?> future) {
        return new C17280u(future);
    }

    @NonNull
    public static <T> Function<T, T> identity() {
        return (Function<T, T>) f95018a;
    }

    public static <T, U> Predicate<T> isInstanceOf(Class<U> clazz) {
        return new C17272m(clazz);
    }

    @NonNull
    public static <T> Callable<T> justCallable(@NonNull T value) {
        return new CallableC17282w(value);
    }

    @NonNull
    public static <T, U> Function<T, U> justFunction(@NonNull U value) {
        return new CallableC17282w(value);
    }

    @NonNull
    public static <T> Supplier<T> justSupplier(@NonNull T value) {
        return new CallableC17282w(value);
    }

    public static <T> Function<List<T>, List<T>> listSorter(final Comparator<? super T> comparator) {
        return new C17283x(comparator);
    }

    public static <T> Comparator<T> naturalComparator() {
        return NaturalComparator.INSTANCE;
    }

    public static <T> Action notificationOnComplete(Consumer<? super Notification<T>> onNotification) {
        return new C17285z(onNotification);
    }

    public static <T> Consumer<Throwable> notificationOnError(Consumer<? super Notification<T>> onNotification) {
        return new C17252a0(onNotification);
    }

    public static <T> Consumer<T> notificationOnNext(Consumer<? super Notification<T>> onNotification) {
        return new C17254b0(onNotification);
    }

    @NonNull
    public static <T> Supplier<T> nullSupplier() {
        return (Supplier<T>) f95022e;
    }

    public static <T> Predicate<T> predicateReverseFor(BooleanSupplier supplier) {
        return new C17270k(supplier);
    }

    public static <T> Function<T, Timed<T>> timestampWith(TimeUnit unit, Scheduler scheduler) {
        return new C17260e0(unit, scheduler);
    }

    @NonNull
    public static <T1, T2, R> Function<Object[], R> toFunction(@NonNull BiFunction<? super T1, ? super T2, ? extends R> f) {
        return new C17253b(f);
    }

    public static <T, K> BiConsumer<Map<K, T>, T> toMapKeySelector(final Function<? super T, ? extends K> keySelector) {
        return new C17262f0(keySelector);
    }

    public static <T, K, V> BiConsumer<Map<K, V>, T> toMapKeyValueSelector(final Function<? super T, ? extends K> keySelector, final Function<? super T, ? extends V> valueSelector) {
        return new C17264g0(valueSelector, keySelector);
    }

    public static <T, K, V> BiConsumer<Map<K, Collection<V>>, T> toMultimapKeyValueSelector(final Function<? super T, ? extends K> keySelector, final Function<? super T, ? extends V> valueSelector, final Function<? super K, ? extends Collection<? super V>> collectionFactory) {
        return new C17266h0(collectionFactory, valueSelector, keySelector);
    }

    @NonNull
    public static <T1, T2, T3, R> Function<Object[], R> toFunction(@NonNull Function3<T1, T2, T3, R> f) {
        return new C17255c(f);
    }

    @NonNull
    public static <T1, T2, T3, T4, R> Function<Object[], R> toFunction(@NonNull Function4<T1, T2, T3, T4, R> f) {
        return new C17257d(f);
    }

    @NonNull
    public static <T1, T2, T3, T4, T5, R> Function<Object[], R> toFunction(@NonNull Function5<T1, T2, T3, T4, T5, R> f) {
        return new C17259e(f);
    }

    @NonNull
    public static <T1, T2, T3, T4, T5, T6, R> Function<Object[], R> toFunction(@NonNull Function6<T1, T2, T3, T4, T5, T6, R> f) {
        return new C17261f(f);
    }

    @NonNull
    public static <T1, T2, T3, T4, T5, T6, T7, R> Function<Object[], R> toFunction(@NonNull Function7<T1, T2, T3, T4, T5, T6, T7, R> f) {
        return new C17263g(f);
    }

    @NonNull
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Function<Object[], R> toFunction(@NonNull Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> f) {
        return new C17265h(f);
    }

    @NonNull
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Function<Object[], R> toFunction(@NonNull Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f) {
        return new C17267i(f);
    }
}
