package com.google.common.util.concurrent;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Functions;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.util.concurrent.Futures;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import com.google.j2objc.annotations.RetainedWith;
import com.sunia.HTREnginev2.cyi;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.io.Closeable;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@DoNotMock("Use ClosingFuture.from(Futures.immediate*Future)")
@pnf
/* loaded from: classes6.dex */
public final class ClosingFuture<V> {

    /* renamed from: d */
    public static final Logger f35242d = Logger.getLogger(ClosingFuture.class.getName());

    /* renamed from: a */
    public final AtomicReference<State> f35243a;

    /* renamed from: b */
    public final CloseableList f35244b;

    /* renamed from: c */
    public final FluentFuture<V> f35245c;

    @FunctionalInterface
    /* loaded from: classes6.dex */
    public interface AsyncClosingCallable<V> {
        ClosingFuture<V> call(DeferredCloser deferredCloser) throws Exception;
    }

    @FunctionalInterface
    /* loaded from: classes6.dex */
    public interface AsyncClosingFunction<T, U> {
        ClosingFuture<U> apply(DeferredCloser deferredCloser, @uvk T t) throws Exception;
    }

    @FunctionalInterface
    /* loaded from: classes6.dex */
    public interface ClosingCallable<V> {
        @uvk
        V call(DeferredCloser deferredCloser) throws Exception;
    }

    @FunctionalInterface
    /* loaded from: classes6.dex */
    public interface ClosingFunction<T, U> {
        @uvk
        U apply(DeferredCloser deferredCloser, @uvk T t) throws Exception;
    }

    @DoNotMock("Use ClosingFuture.whenAllSucceed() or .whenAllComplete() instead.")
    /* loaded from: classes6.dex */
    public static class Combiner {

        /* renamed from: c */
        public static final Function<ClosingFuture<?>, FluentFuture<?>> f35246c = new C6331c();

        /* renamed from: a */
        public final CloseableList f35247a;

        /* renamed from: b */
        public final boolean f35248b;
        protected final ImmutableList<ClosingFuture<?>> inputs;

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface AsyncCombiningCallable<V> {
            ClosingFuture<V> call(DeferredCloser deferredCloser, Peeker peeker) throws Exception;
        }

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface CombiningCallable<V> {
            @uvk
            V call(DeferredCloser deferredCloser, Peeker peeker) throws Exception;
        }

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner$a */
        /* loaded from: classes6.dex */
        public class CallableC6329a implements Callable<V> {

            /* renamed from: e */
            public final /* synthetic */ CombiningCallable f35249e;

            public CallableC6329a(CombiningCallable combiningCallable) {
                this.f35249e = combiningCallable;
            }

            @Override // java.util.concurrent.Callable
            @uvk
            public V call() throws Exception {
                return (V) new Peeker(Combiner.this.inputs, null).m27682c(this.f35249e, Combiner.this.f35247a);
            }

            public String toString() {
                return this.f35249e.toString();
            }
        }

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner$b */
        /* loaded from: classes6.dex */
        public class C6330b implements AsyncCallable<V> {

            /* renamed from: a */
            public final /* synthetic */ AsyncCombiningCallable f35251a;

            public C6330b(AsyncCombiningCallable asyncCombiningCallable) {
                this.f35251a = asyncCombiningCallable;
            }

            @Override // com.google.common.util.concurrent.AsyncCallable
            public ListenableFuture<V> call() throws Exception {
                return new Peeker(Combiner.this.inputs, null).m27683d(this.f35251a, Combiner.this.f35247a);
            }

            public String toString() {
                return this.f35251a.toString();
            }
        }

        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner$c */
        /* loaded from: classes6.dex */
        public class C6331c implements Function<ClosingFuture<?>, FluentFuture<?>> {
            @Override // com.google.common.base.Function, java.util.function.Function
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public FluentFuture<?> apply(ClosingFuture<?> closingFuture) {
                return closingFuture.f35245c;
            }
        }

        public /* synthetic */ Combiner(boolean z, Iterable iterable, C6343d c6343d) {
            this(z, iterable);
        }

        /* renamed from: b */
        public final Futures.FutureCombiner<Object> m27663b() {
            return this.f35248b ? Futures.whenAllSucceed(m27664c()) : Futures.whenAllComplete(m27664c());
        }

        /* renamed from: c */
        public final ImmutableList<FluentFuture<?>> m27664c() {
            return FluentIterable.from(this.inputs).transform(f35246c).toList();
        }

        public <V> ClosingFuture<V> call(CombiningCallable<V> combiningCallable, Executor executor) {
            ClosingFuture<V> closingFuture = new ClosingFuture<>(m27663b().call(new CallableC6329a(combiningCallable), executor), (C6343d) null);
            closingFuture.f35244b.add(this.f35247a, MoreExecutors.directExecutor());
            return closingFuture;
        }

        public <V> ClosingFuture<V> callAsync(AsyncCombiningCallable<V> asyncCombiningCallable, Executor executor) {
            ClosingFuture<V> closingFuture = new ClosingFuture<>(m27663b().callAsync(new C6330b(asyncCombiningCallable), executor), (C6343d) null);
            closingFuture.f35244b.add(this.f35247a, MoreExecutors.directExecutor());
            return closingFuture;
        }

        public Combiner(boolean z, Iterable<? extends ClosingFuture<?>> iterable) {
            this.f35247a = new CloseableList(null);
            this.f35248b = z;
            this.inputs = ImmutableList.copyOf(iterable);
            Iterator<? extends ClosingFuture<?>> it2 = iterable.iterator();
            while (it2.hasNext()) {
                it2.next().m27654i(this.f35247a);
            }
        }
    }

    /* loaded from: classes6.dex */
    public static final class Combiner2<V1, V2> extends Combiner {

        /* renamed from: d */
        public final ClosingFuture<V1> f35253d;

        /* renamed from: e */
        public final ClosingFuture<V2> f35254e;

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface AsyncClosingFunction2<V1, V2, U> {
            ClosingFuture<U> apply(DeferredCloser deferredCloser, @uvk V1 v1, @uvk V2 v2) throws Exception;
        }

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface ClosingFunction2<V1, V2, U> {
            @uvk
            U apply(DeferredCloser deferredCloser, @uvk V1 v1, @uvk V2 v2) throws Exception;
        }

        /* JADX INFO: Add missing generic type declarations: [U] */
        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner2$a */
        /* loaded from: classes6.dex */
        public class C6332a<U> implements Combiner.CombiningCallable<U> {

            /* renamed from: a */
            public final /* synthetic */ ClosingFunction2 f35255a;

            public C6332a(ClosingFunction2 closingFunction2) {
                this.f35255a = closingFunction2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.ClosingFuture.Combiner.CombiningCallable
            @uvk
            public U call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                return (U) this.f35255a.apply(deferredCloser, peeker.getDone(Combiner2.this.f35253d), peeker.getDone(Combiner2.this.f35254e));
            }

            public String toString() {
                return this.f35255a.toString();
            }
        }

        /* JADX INFO: Add missing generic type declarations: [U] */
        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner2$b */
        /* loaded from: classes6.dex */
        public class C6333b<U> implements Combiner.AsyncCombiningCallable<U> {

            /* renamed from: a */
            public final /* synthetic */ AsyncClosingFunction2 f35257a;

            public C6333b(AsyncClosingFunction2 asyncClosingFunction2) {
                this.f35257a = asyncClosingFunction2;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.ClosingFuture.Combiner.AsyncCombiningCallable
            public ClosingFuture<U> call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                return this.f35257a.apply(deferredCloser, peeker.getDone(Combiner2.this.f35253d), peeker.getDone(Combiner2.this.f35254e));
            }

            public String toString() {
                return this.f35257a.toString();
            }
        }

        public /* synthetic */ Combiner2(ClosingFuture closingFuture, ClosingFuture closingFuture2, C6343d c6343d) {
            this(closingFuture, closingFuture2);
        }

        public <U> ClosingFuture<U> call(ClosingFunction2<V1, V2, U> closingFunction2, Executor executor) {
            return call(new C6332a(closingFunction2), executor);
        }

        public <U> ClosingFuture<U> callAsync(AsyncClosingFunction2<V1, V2, U> asyncClosingFunction2, Executor executor) {
            return callAsync(new C6333b(asyncClosingFunction2), executor);
        }

        public Combiner2(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2) {
            super(true, ImmutableList.m26163of((ClosingFuture<V2>) closingFuture, closingFuture2), null);
            this.f35253d = closingFuture;
            this.f35254e = closingFuture2;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Combiner3<V1, V2, V3> extends Combiner {

        /* renamed from: d */
        public final ClosingFuture<V1> f35259d;

        /* renamed from: e */
        public final ClosingFuture<V2> f35260e;

        /* renamed from: f */
        public final ClosingFuture<V3> f35261f;

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface AsyncClosingFunction3<V1, V2, V3, U> {
            ClosingFuture<U> apply(DeferredCloser deferredCloser, @uvk V1 v1, @uvk V2 v2, @uvk V3 v3) throws Exception;
        }

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface ClosingFunction3<V1, V2, V3, U> {
            @uvk
            U apply(DeferredCloser deferredCloser, @uvk V1 v1, @uvk V2 v2, @uvk V3 v3) throws Exception;
        }

        /* JADX INFO: Add missing generic type declarations: [U] */
        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner3$a */
        /* loaded from: classes6.dex */
        public class C6334a<U> implements Combiner.CombiningCallable<U> {

            /* renamed from: a */
            public final /* synthetic */ ClosingFunction3 f35262a;

            public C6334a(ClosingFunction3 closingFunction3) {
                this.f35262a = closingFunction3;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.ClosingFuture.Combiner.CombiningCallable
            @uvk
            public U call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                return (U) this.f35262a.apply(deferredCloser, peeker.getDone(Combiner3.this.f35259d), peeker.getDone(Combiner3.this.f35260e), peeker.getDone(Combiner3.this.f35261f));
            }

            public String toString() {
                return this.f35262a.toString();
            }
        }

        /* JADX INFO: Add missing generic type declarations: [U] */
        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner3$b */
        /* loaded from: classes6.dex */
        public class C6335b<U> implements Combiner.AsyncCombiningCallable<U> {

            /* renamed from: a */
            public final /* synthetic */ AsyncClosingFunction3 f35264a;

            public C6335b(AsyncClosingFunction3 asyncClosingFunction3) {
                this.f35264a = asyncClosingFunction3;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.ClosingFuture.Combiner.AsyncCombiningCallable
            public ClosingFuture<U> call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                return this.f35264a.apply(deferredCloser, peeker.getDone(Combiner3.this.f35259d), peeker.getDone(Combiner3.this.f35260e), peeker.getDone(Combiner3.this.f35261f));
            }

            public String toString() {
                return this.f35264a.toString();
            }
        }

        public /* synthetic */ Combiner3(ClosingFuture closingFuture, ClosingFuture closingFuture2, ClosingFuture closingFuture3, C6343d c6343d) {
            this(closingFuture, closingFuture2, closingFuture3);
        }

        public <U> ClosingFuture<U> call(ClosingFunction3<V1, V2, V3, U> closingFunction3, Executor executor) {
            return call(new C6334a(closingFunction3), executor);
        }

        public <U> ClosingFuture<U> callAsync(AsyncClosingFunction3<V1, V2, V3, U> asyncClosingFunction3, Executor executor) {
            return callAsync(new C6335b(asyncClosingFunction3), executor);
        }

        public Combiner3(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3) {
            super(true, ImmutableList.m26164of((ClosingFuture<V3>) closingFuture, (ClosingFuture<V3>) closingFuture2, closingFuture3), null);
            this.f35259d = closingFuture;
            this.f35260e = closingFuture2;
            this.f35261f = closingFuture3;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Combiner4<V1, V2, V3, V4> extends Combiner {

        /* renamed from: d */
        public final ClosingFuture<V1> f35266d;

        /* renamed from: e */
        public final ClosingFuture<V2> f35267e;

        /* renamed from: f */
        public final ClosingFuture<V3> f35268f;

        /* renamed from: g */
        public final ClosingFuture<V4> f35269g;

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface AsyncClosingFunction4<V1, V2, V3, V4, U> {
            ClosingFuture<U> apply(DeferredCloser deferredCloser, @uvk V1 v1, @uvk V2 v2, @uvk V3 v3, @uvk V4 v4) throws Exception;
        }

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface ClosingFunction4<V1, V2, V3, V4, U> {
            @uvk
            U apply(DeferredCloser deferredCloser, @uvk V1 v1, @uvk V2 v2, @uvk V3 v3, @uvk V4 v4) throws Exception;
        }

        /* JADX INFO: Add missing generic type declarations: [U] */
        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner4$a */
        /* loaded from: classes6.dex */
        public class C6336a<U> implements Combiner.CombiningCallable<U> {

            /* renamed from: a */
            public final /* synthetic */ ClosingFunction4 f35270a;

            public C6336a(ClosingFunction4 closingFunction4) {
                this.f35270a = closingFunction4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.ClosingFuture.Combiner.CombiningCallable
            @uvk
            public U call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                return (U) this.f35270a.apply(deferredCloser, peeker.getDone(Combiner4.this.f35266d), peeker.getDone(Combiner4.this.f35267e), peeker.getDone(Combiner4.this.f35268f), peeker.getDone(Combiner4.this.f35269g));
            }

            public String toString() {
                return this.f35270a.toString();
            }
        }

        /* JADX INFO: Add missing generic type declarations: [U] */
        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner4$b */
        /* loaded from: classes6.dex */
        public class C6337b<U> implements Combiner.AsyncCombiningCallable<U> {

            /* renamed from: a */
            public final /* synthetic */ AsyncClosingFunction4 f35272a;

            public C6337b(AsyncClosingFunction4 asyncClosingFunction4) {
                this.f35272a = asyncClosingFunction4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.ClosingFuture.Combiner.AsyncCombiningCallable
            public ClosingFuture<U> call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                return this.f35272a.apply(deferredCloser, peeker.getDone(Combiner4.this.f35266d), peeker.getDone(Combiner4.this.f35267e), peeker.getDone(Combiner4.this.f35268f), peeker.getDone(Combiner4.this.f35269g));
            }

            public String toString() {
                return this.f35272a.toString();
            }
        }

        public /* synthetic */ Combiner4(ClosingFuture closingFuture, ClosingFuture closingFuture2, ClosingFuture closingFuture3, ClosingFuture closingFuture4, C6343d c6343d) {
            this(closingFuture, closingFuture2, closingFuture3, closingFuture4);
        }

        public <U> ClosingFuture<U> call(ClosingFunction4<V1, V2, V3, V4, U> closingFunction4, Executor executor) {
            return call(new C6336a(closingFunction4), executor);
        }

        public <U> ClosingFuture<U> callAsync(AsyncClosingFunction4<V1, V2, V3, V4, U> asyncClosingFunction4, Executor executor) {
            return callAsync(new C6337b(asyncClosingFunction4), executor);
        }

        public Combiner4(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3, ClosingFuture<V4> closingFuture4) {
            super(true, ImmutableList.m26165of((ClosingFuture<V4>) closingFuture, (ClosingFuture<V4>) closingFuture2, (ClosingFuture<V4>) closingFuture3, closingFuture4), null);
            this.f35266d = closingFuture;
            this.f35267e = closingFuture2;
            this.f35268f = closingFuture3;
            this.f35269g = closingFuture4;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Combiner5<V1, V2, V3, V4, V5> extends Combiner {

        /* renamed from: d */
        public final ClosingFuture<V1> f35274d;

        /* renamed from: e */
        public final ClosingFuture<V2> f35275e;

        /* renamed from: f */
        public final ClosingFuture<V3> f35276f;

        /* renamed from: g */
        public final ClosingFuture<V4> f35277g;

        /* renamed from: h */
        public final ClosingFuture<V5> f35278h;

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface AsyncClosingFunction5<V1, V2, V3, V4, V5, U> {
            ClosingFuture<U> apply(DeferredCloser deferredCloser, @uvk V1 v1, @uvk V2 v2, @uvk V3 v3, @uvk V4 v4, @uvk V5 v5) throws Exception;
        }

        @FunctionalInterface
        /* loaded from: classes6.dex */
        public interface ClosingFunction5<V1, V2, V3, V4, V5, U> {
            @uvk
            U apply(DeferredCloser deferredCloser, @uvk V1 v1, @uvk V2 v2, @uvk V3 v3, @uvk V4 v4, @uvk V5 v5) throws Exception;
        }

        /* JADX INFO: Add missing generic type declarations: [U] */
        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner5$a */
        /* loaded from: classes6.dex */
        public class C6338a<U> implements Combiner.CombiningCallable<U> {

            /* renamed from: a */
            public final /* synthetic */ ClosingFunction5 f35279a;

            public C6338a(ClosingFunction5 closingFunction5) {
                this.f35279a = closingFunction5;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.ClosingFuture.Combiner.CombiningCallable
            @uvk
            public U call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                return (U) this.f35279a.apply(deferredCloser, peeker.getDone(Combiner5.this.f35274d), peeker.getDone(Combiner5.this.f35275e), peeker.getDone(Combiner5.this.f35276f), peeker.getDone(Combiner5.this.f35277g), peeker.getDone(Combiner5.this.f35278h));
            }

            public String toString() {
                return this.f35279a.toString();
            }
        }

        /* JADX INFO: Add missing generic type declarations: [U] */
        /* renamed from: com.google.common.util.concurrent.ClosingFuture$Combiner5$b */
        /* loaded from: classes6.dex */
        public class C6339b<U> implements Combiner.AsyncCombiningCallable<U> {

            /* renamed from: a */
            public final /* synthetic */ AsyncClosingFunction5 f35281a;

            public C6339b(AsyncClosingFunction5 asyncClosingFunction5) {
                this.f35281a = asyncClosingFunction5;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.util.concurrent.ClosingFuture.Combiner.AsyncCombiningCallable
            public ClosingFuture<U> call(DeferredCloser deferredCloser, Peeker peeker) throws Exception {
                return this.f35281a.apply(deferredCloser, peeker.getDone(Combiner5.this.f35274d), peeker.getDone(Combiner5.this.f35275e), peeker.getDone(Combiner5.this.f35276f), peeker.getDone(Combiner5.this.f35277g), peeker.getDone(Combiner5.this.f35278h));
            }

            public String toString() {
                return this.f35281a.toString();
            }
        }

        public /* synthetic */ Combiner5(ClosingFuture closingFuture, ClosingFuture closingFuture2, ClosingFuture closingFuture3, ClosingFuture closingFuture4, ClosingFuture closingFuture5, C6343d c6343d) {
            this(closingFuture, closingFuture2, closingFuture3, closingFuture4, closingFuture5);
        }

        public <U> ClosingFuture<U> call(ClosingFunction5<V1, V2, V3, V4, V5, U> closingFunction5, Executor executor) {
            return call(new C6338a(closingFunction5), executor);
        }

        public <U> ClosingFuture<U> callAsync(AsyncClosingFunction5<V1, V2, V3, V4, V5, U> asyncClosingFunction5, Executor executor) {
            return callAsync(new C6339b(asyncClosingFunction5), executor);
        }

        public Combiner5(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3, ClosingFuture<V4> closingFuture4, ClosingFuture<V5> closingFuture5) {
            super(true, ImmutableList.m26166of((ClosingFuture<V5>) closingFuture, (ClosingFuture<V5>) closingFuture2, (ClosingFuture<V5>) closingFuture3, (ClosingFuture<V5>) closingFuture4, closingFuture5), null);
            this.f35274d = closingFuture;
            this.f35275e = closingFuture2;
            this.f35276f = closingFuture3;
            this.f35277g = closingFuture4;
            this.f35278h = closingFuture5;
        }
    }

    /* loaded from: classes6.dex */
    public static final class DeferredCloser {

        /* renamed from: a */
        @RetainedWith
        public final CloseableList f35283a;

        public DeferredCloser(CloseableList closeableList) {
            this.f35283a = closeableList;
        }

        @CanIgnoreReturnValue
        @uvk
        public <C extends AutoCloseable> C eventuallyClose(@uvk C c, Executor executor) {
            Preconditions.checkNotNull(executor);
            if (c != null) {
                this.f35283a.add(c, executor);
            }
            return c;
        }
    }

    /* loaded from: classes6.dex */
    public static final class Peeker {

        /* renamed from: a */
        public final ImmutableList<ClosingFuture<?>> f35284a;

        /* renamed from: b */
        public volatile boolean f35285b;

        public /* synthetic */ Peeker(ImmutableList immutableList, C6343d c6343d) {
            this(immutableList);
        }

        @uvk
        /* renamed from: c */
        public final <V> V m27682c(Combiner.CombiningCallable<V> combiningCallable, CloseableList closeableList) throws Exception {
            this.f35285b = true;
            CloseableList closeableList2 = new CloseableList(null);
            try {
                return combiningCallable.call(closeableList2.closer, this);
            } finally {
                closeableList.add(closeableList2, MoreExecutors.directExecutor());
                this.f35285b = false;
            }
        }

        /* renamed from: d */
        public final <V> FluentFuture<V> m27683d(Combiner.AsyncCombiningCallable<V> asyncCombiningCallable, CloseableList closeableList) throws Exception {
            this.f35285b = true;
            CloseableList closeableList2 = new CloseableList(null);
            try {
                ClosingFuture<V> call = asyncCombiningCallable.call(closeableList2.closer, this);
                call.m27654i(closeableList);
                return call.f35245c;
            } finally {
                closeableList.add(closeableList2, MoreExecutors.directExecutor());
                this.f35285b = false;
            }
        }

        @uvk
        public final <D> D getDone(ClosingFuture<D> closingFuture) throws ExecutionException {
            Preconditions.checkState(this.f35285b);
            Preconditions.checkArgument(this.f35284a.contains(closingFuture));
            return (D) Futures.getDone(closingFuture.f35245c);
        }

        public Peeker(ImmutableList<ClosingFuture<?>> immutableList) {
            this.f35284a = (ImmutableList) Preconditions.checkNotNull(immutableList);
        }
    }

    /* loaded from: classes6.dex */
    public enum State {
        OPEN,
        SUBSUMED,
        WILL_CLOSE,
        CLOSING,
        CLOSED,
        WILL_CREATE_VALUE_AND_CLOSER
    }

    /* loaded from: classes6.dex */
    public static final class ValueAndCloser<V> {

        /* renamed from: a */
        public final ClosingFuture<? extends V> f35286a;

        public ValueAndCloser(ClosingFuture<? extends V> closingFuture) {
            this.f35286a = (ClosingFuture) Preconditions.checkNotNull(closingFuture);
        }

        public void closeAsync() {
            this.f35286a.m27658m();
        }

        @uvk
        public V get() throws ExecutionException {
            return (V) Futures.getDone(this.f35286a.f35245c);
        }
    }

    @FunctionalInterface
    /* loaded from: classes6.dex */
    public interface ValueAndCloserConsumer<V> {
        void accept(ValueAndCloser<V> valueAndCloser);
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$a */
    /* loaded from: classes6.dex */
    public class RunnableC6340a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ ValueAndCloserConsumer f35287e;

        public RunnableC6340a(ValueAndCloserConsumer valueAndCloserConsumer) {
            this.f35287e = valueAndCloserConsumer;
        }

        @Override // java.lang.Runnable
        public void run() {
            ClosingFuture.m27653q(this.f35287e, ClosingFuture.this);
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$b */
    /* loaded from: classes6.dex */
    public class RunnableC6341b implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ AutoCloseable f35289e;

        public RunnableC6341b(AutoCloseable autoCloseable) {
            this.f35289e = autoCloseable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f35289e.close();
            } catch (Exception e) {
                ClosingFuture.f35242d.log(Level.WARNING, "thrown by close()", (Throwable) e);
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$c */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class C6342c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f35290a;

        static {
            int[] iArr = new int[State.values().length];
            f35290a = iArr;
            try {
                iArr[State.SUBSUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35290a[State.WILL_CREATE_VALUE_AND_CLOSER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35290a[State.WILL_CLOSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35290a[State.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35290a[State.CLOSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f35290a[State.OPEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$d */
    /* loaded from: classes6.dex */
    public class C6343d implements FutureCallback<AutoCloseable> {

        /* renamed from: b */
        public final /* synthetic */ Executor f35292b;

        public C6343d(Executor executor) {
            this.f35292b = executor;
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onSuccess(@CheckForNull AutoCloseable autoCloseable) {
            ClosingFuture.this.f35244b.closer.eventuallyClose(autoCloseable, this.f35292b);
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public void onFailure(Throwable th) {
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$e */
    /* loaded from: classes6.dex */
    public class CallableC6344e implements Callable<V> {

        /* renamed from: e */
        public final /* synthetic */ ClosingCallable f35293e;

        public CallableC6344e(ClosingCallable closingCallable) {
            this.f35293e = closingCallable;
        }

        @Override // java.util.concurrent.Callable
        @uvk
        public V call() throws Exception {
            return (V) this.f35293e.call(ClosingFuture.this.f35244b.closer);
        }

        public String toString() {
            return this.f35293e.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$f */
    /* loaded from: classes6.dex */
    public class C6345f implements AsyncCallable<V> {

        /* renamed from: a */
        public final /* synthetic */ AsyncClosingCallable f35295a;

        public C6345f(AsyncClosingCallable asyncClosingCallable) {
            this.f35295a = asyncClosingCallable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<V> call() throws Exception {
            CloseableList closeableList = new CloseableList(null);
            try {
                ClosingFuture<V> call = this.f35295a.call(closeableList.closer);
                call.m27654i(ClosingFuture.this.f35244b);
                return call.f35245c;
            } finally {
                ClosingFuture.this.f35244b.add(closeableList, MoreExecutors.directExecutor());
            }
        }

        public String toString() {
            return this.f35295a.toString();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [U] */
    /* renamed from: com.google.common.util.concurrent.ClosingFuture$g */
    /* loaded from: classes6.dex */
    public class C6346g<U> implements AsyncFunction<V, U> {

        /* renamed from: a */
        public final /* synthetic */ ClosingFunction f35297a;

        public C6346g(ClosingFunction closingFunction) {
            this.f35297a = closingFunction;
        }

        @Override // com.google.common.util.concurrent.AsyncFunction
        public ListenableFuture<U> apply(V v) throws Exception {
            return ClosingFuture.this.f35244b.applyClosingFunction(this.f35297a, v);
        }

        public String toString() {
            return this.f35297a.toString();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [U] */
    /* renamed from: com.google.common.util.concurrent.ClosingFuture$h */
    /* loaded from: classes6.dex */
    public class C6347h<U> implements AsyncFunction<V, U> {

        /* renamed from: a */
        public final /* synthetic */ AsyncClosingFunction f35299a;

        public C6347h(AsyncClosingFunction asyncClosingFunction) {
            this.f35299a = asyncClosingFunction;
        }

        @Override // com.google.common.util.concurrent.AsyncFunction
        public ListenableFuture<U> apply(V v) throws Exception {
            return ClosingFuture.this.f35244b.applyAsyncClosingFunction(this.f35299a, v);
        }

        public String toString() {
            return this.f35299a.toString();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [U] */
    /* renamed from: com.google.common.util.concurrent.ClosingFuture$i */
    /* loaded from: classes6.dex */
    public class C6348i<U> implements AsyncClosingFunction<V, U> {

        /* renamed from: a */
        public final /* synthetic */ AsyncFunction f35301a;

        public C6348i(AsyncFunction asyncFunction) {
            this.f35301a = asyncFunction;
        }

        @Override // com.google.common.util.concurrent.ClosingFuture.AsyncClosingFunction
        public ClosingFuture<U> apply(DeferredCloser deferredCloser, V v) throws Exception {
            return ClosingFuture.from(this.f35301a.apply(v));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [W, X] */
    /* renamed from: com.google.common.util.concurrent.ClosingFuture$j */
    /* loaded from: classes6.dex */
    public class C6349j<W, X> implements AsyncFunction<X, W> {

        /* renamed from: a */
        public final /* synthetic */ ClosingFunction f35302a;

        public C6349j(ClosingFunction closingFunction) {
            this.f35302a = closingFunction;
        }

        /* JADX WARN: Incorrect types in method signature: (TX;)Lcom/google/common/util/concurrent/ListenableFuture<TW;>; */
        @Override // com.google.common.util.concurrent.AsyncFunction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListenableFuture apply(Throwable th) throws Exception {
            return ClosingFuture.this.f35244b.applyClosingFunction(this.f35302a, th);
        }

        public String toString() {
            return this.f35302a.toString();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [W, X] */
    /* renamed from: com.google.common.util.concurrent.ClosingFuture$k */
    /* loaded from: classes6.dex */
    public class C6350k<W, X> implements AsyncFunction<X, W> {

        /* renamed from: a */
        public final /* synthetic */ AsyncClosingFunction f35304a;

        public C6350k(AsyncClosingFunction asyncClosingFunction) {
            this.f35304a = asyncClosingFunction;
        }

        /* JADX WARN: Incorrect types in method signature: (TX;)Lcom/google/common/util/concurrent/ListenableFuture<TW;>; */
        @Override // com.google.common.util.concurrent.AsyncFunction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListenableFuture apply(Throwable th) throws Exception {
            return ClosingFuture.this.f35244b.applyAsyncClosingFunction(this.f35304a, th);
        }

        public String toString() {
            return this.f35304a.toString();
        }
    }

    /* renamed from: com.google.common.util.concurrent.ClosingFuture$l */
    /* loaded from: classes6.dex */
    public class RunnableC6351l implements Runnable {
        public RunnableC6351l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClosingFuture closingFuture = ClosingFuture.this;
            State state = State.WILL_CLOSE;
            State state2 = State.CLOSING;
            closingFuture.m27657l(state, state2);
            ClosingFuture.this.m27658m();
            ClosingFuture.this.m27657l(state2, State.CLOSED);
        }
    }

    public /* synthetic */ ClosingFuture(ListenableFuture listenableFuture, C6343d c6343d) {
        this(listenableFuture);
    }

    @Deprecated
    public static <C extends AutoCloseable> ClosingFuture<C> eventuallyClosing(ListenableFuture<C> listenableFuture, Executor executor) {
        Preconditions.checkNotNull(executor);
        ClosingFuture<C> closingFuture = new ClosingFuture<>(Futures.nonCancellationPropagating(listenableFuture));
        Futures.addCallback(listenableFuture, new C6343d(executor), MoreExecutors.directExecutor());
        return closingFuture;
    }

    public static <V> ClosingFuture<V> from(ListenableFuture<V> listenableFuture) {
        return new ClosingFuture<>(listenableFuture);
    }

    /* renamed from: n */
    public static void m27652n(@CheckForNull AutoCloseable autoCloseable, Executor executor) {
        if (autoCloseable == null) {
            return;
        }
        try {
            executor.execute(new RunnableC6341b(autoCloseable));
        } catch (RejectedExecutionException e) {
            Logger logger = f35242d;
            Level level = Level.WARNING;
            if (logger.isLoggable(level)) {
                logger.log(level, String.format("while submitting close to %s; will close inline", executor), (Throwable) e);
            }
            m27652n(autoCloseable, MoreExecutors.directExecutor());
        }
    }

    /* renamed from: q */
    public static <C, V extends C> void m27653q(ValueAndCloserConsumer<C> valueAndCloserConsumer, ClosingFuture<V> closingFuture) {
        valueAndCloserConsumer.accept(new ValueAndCloser<>(closingFuture));
    }

    public static <V> ClosingFuture<V> submit(ClosingCallable<V> closingCallable, Executor executor) {
        return new ClosingFuture<>(closingCallable, executor);
    }

    public static <V> ClosingFuture<V> submitAsync(AsyncClosingCallable<V> asyncClosingCallable, Executor executor) {
        return new ClosingFuture<>(asyncClosingCallable, executor);
    }

    public static Combiner whenAllComplete(Iterable<? extends ClosingFuture<?>> iterable) {
        return new Combiner(false, iterable, null);
    }

    public static Combiner whenAllSucceed(Iterable<? extends ClosingFuture<?>> iterable) {
        return new Combiner(true, iterable, null);
    }

    public static <V, U> AsyncClosingFunction<V, U> withoutCloser(AsyncFunction<V, U> asyncFunction) {
        Preconditions.checkNotNull(asyncFunction);
        return new C6348i(asyncFunction);
    }

    @CanIgnoreReturnValue
    public boolean cancel(boolean z) {
        f35242d.log(Level.FINER, "cancelling {0}", this);
        boolean cancel = this.f35245c.cancel(z);
        if (cancel) {
            m27658m();
        }
        return cancel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <X extends Throwable> ClosingFuture<V> catching(Class<X> cls, ClosingFunction<? super X, ? extends V> closingFunction, Executor executor) {
        return m27656k(cls, closingFunction, executor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <X extends Throwable> ClosingFuture<V> catchingAsync(Class<X> cls, AsyncClosingFunction<? super X, ? extends V> asyncClosingFunction, Executor executor) {
        return m27655j(cls, asyncClosingFunction, executor);
    }

    public void finalize() {
        if (this.f35243a.get().equals(State.OPEN)) {
            f35242d.log(Level.SEVERE, "Uh oh! An open ClosingFuture has leaked and will close: {0}", this);
            finishToFuture();
        }
    }

    public FluentFuture<V> finishToFuture() {
        if (!m27659o(State.OPEN, State.WILL_CLOSE)) {
            switch (C6342c.f35290a[this.f35243a.get().ordinal()]) {
                case 1:
                    throw new IllegalStateException("Cannot call finishToFuture() after deriving another step");
                case 2:
                    throw new IllegalStateException("Cannot call finishToFuture() after calling finishToValueAndCloser()");
                case 3:
                case 4:
                case 5:
                    throw new IllegalStateException("Cannot call finishToFuture() twice");
                case 6:
                    throw new AssertionError();
            }
        }
        f35242d.log(Level.FINER, "will close {0}", this);
        this.f35245c.addListener(new RunnableC6351l(), MoreExecutors.directExecutor());
        return this.f35245c;
    }

    public void finishToValueAndCloser(ValueAndCloserConsumer<? super V> valueAndCloserConsumer, Executor executor) {
        Preconditions.checkNotNull(valueAndCloserConsumer);
        if (m27659o(State.OPEN, State.WILL_CREATE_VALUE_AND_CLOSER)) {
            this.f35245c.addListener(new RunnableC6340a(valueAndCloserConsumer), executor);
            return;
        }
        int i = C6342c.f35290a[this.f35243a.get().ordinal()];
        if (i == 1) {
            throw new IllegalStateException("Cannot call finishToValueAndCloser() after deriving another step");
        }
        if (i == 2) {
            throw new IllegalStateException("Cannot call finishToValueAndCloser() twice");
        }
        if (i != 3 && i != 4 && i != 5) {
            throw new AssertionError(this.f35243a);
        }
        throw new IllegalStateException("Cannot call finishToValueAndCloser() after calling finishToFuture()");
    }

    /* renamed from: i */
    public final void m27654i(CloseableList closeableList) {
        m27657l(State.OPEN, State.SUBSUMED);
        closeableList.add(this.f35244b, MoreExecutors.directExecutor());
    }

    /* renamed from: j */
    public final <X extends Throwable, W extends V> ClosingFuture<V> m27655j(Class<X> cls, AsyncClosingFunction<? super X, W> asyncClosingFunction, Executor executor) {
        Preconditions.checkNotNull(asyncClosingFunction);
        return (ClosingFuture<V>) m27660p(this.f35245c.catchingAsync(cls, new C6350k(asyncClosingFunction), executor));
    }

    /* renamed from: k */
    public final <X extends Throwable, W extends V> ClosingFuture<V> m27656k(Class<X> cls, ClosingFunction<? super X, W> closingFunction, Executor executor) {
        Preconditions.checkNotNull(closingFunction);
        return (ClosingFuture<V>) m27660p(this.f35245c.catchingAsync(cls, new C6349j(closingFunction), executor));
    }

    /* renamed from: l */
    public final void m27657l(State state, State state2) {
        Preconditions.checkState(m27659o(state, state2), "Expected state to be %s, but it was %s", state, state2);
    }

    /* renamed from: m */
    public final void m27658m() {
        f35242d.log(Level.FINER, "closing {0}", this);
        this.f35244b.close();
    }

    /* renamed from: o */
    public final boolean m27659o(State state, State state2) {
        return cyi.m53538a(this.f35243a, state, state2);
    }

    /* renamed from: p */
    public final <U> ClosingFuture<U> m27660p(FluentFuture<U> fluentFuture) {
        ClosingFuture<U> closingFuture = new ClosingFuture<>(fluentFuture);
        m27654i(closingFuture.f35244b);
        return closingFuture;
    }

    @VisibleForTesting
    /* renamed from: r */
    public CountDownLatch m27661r() {
        return this.f35244b.whenClosedCountDown();
    }

    public ListenableFuture<?> statusFuture() {
        return Futures.nonCancellationPropagating(this.f35245c.transform(Functions.constant(null), MoreExecutors.directExecutor()));
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("state", this.f35243a.get()).addValue(this.f35245c).toString();
    }

    public <U> ClosingFuture<U> transform(ClosingFunction<? super V, U> closingFunction, Executor executor) {
        Preconditions.checkNotNull(closingFunction);
        return m27660p(this.f35245c.transformAsync(new C6346g(closingFunction), executor));
    }

    public <U> ClosingFuture<U> transformAsync(AsyncClosingFunction<? super V, U> asyncClosingFunction, Executor executor) {
        Preconditions.checkNotNull(asyncClosingFunction);
        return m27660p(this.f35245c.transformAsync(new C6347h(asyncClosingFunction), executor));
    }

    /* loaded from: classes6.dex */
    public static final class CloseableList extends IdentityHashMap<AutoCloseable, Executor> implements Closeable {
        private volatile boolean closed;
        private final DeferredCloser closer;

        @CheckForNull
        private volatile CountDownLatch whenClosed;

        private CloseableList() {
            this.closer = new DeferredCloser(this);
        }

        public void add(@CheckForNull AutoCloseable autoCloseable, Executor executor) {
            Preconditions.checkNotNull(executor);
            if (autoCloseable == null) {
                return;
            }
            synchronized (this) {
                if (this.closed) {
                    ClosingFuture.m27652n(autoCloseable, executor);
                } else {
                    put(autoCloseable, executor);
                }
            }
        }

        public <V, U> FluentFuture<U> applyAsyncClosingFunction(AsyncClosingFunction<V, U> asyncClosingFunction, @uvk V v) throws Exception {
            CloseableList closeableList = new CloseableList();
            try {
                ClosingFuture<U> apply = asyncClosingFunction.apply(closeableList.closer, v);
                apply.m27654i(closeableList);
                return apply.f35245c;
            } finally {
                add(closeableList, MoreExecutors.directExecutor());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <V, U> ListenableFuture<U> applyClosingFunction(ClosingFunction<? super V, U> closingFunction, @uvk V v) throws Exception {
            CloseableList closeableList = new CloseableList();
            try {
                return Futures.immediateFuture(closingFunction.apply(closeableList.closer, v));
            } finally {
                add(closeableList, MoreExecutors.directExecutor());
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            synchronized (this) {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                for (Map.Entry<AutoCloseable, Executor> entry : entrySet()) {
                    ClosingFuture.m27652n(entry.getKey(), entry.getValue());
                }
                clear();
                if (this.whenClosed != null) {
                    this.whenClosed.countDown();
                }
            }
        }

        public CountDownLatch whenClosedCountDown() {
            if (this.closed) {
                return new CountDownLatch(0);
            }
            synchronized (this) {
                if (this.closed) {
                    return new CountDownLatch(0);
                }
                Preconditions.checkState(this.whenClosed == null);
                CountDownLatch countDownLatch = new CountDownLatch(1);
                this.whenClosed = countDownLatch;
                return countDownLatch;
            }
        }

        public /* synthetic */ CloseableList(C6343d c6343d) {
            this();
        }
    }

    public ClosingFuture(ListenableFuture<V> listenableFuture) {
        this.f35243a = new AtomicReference<>(State.OPEN);
        this.f35244b = new CloseableList(null);
        this.f35245c = FluentFuture.from(listenableFuture);
    }

    public static Combiner whenAllComplete(ClosingFuture<?> closingFuture, ClosingFuture<?>... closingFutureArr) {
        return whenAllComplete(Lists.asList(closingFuture, closingFutureArr));
    }

    public static <V1, V2> Combiner2<V1, V2> whenAllSucceed(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2) {
        return new Combiner2<>(closingFuture, closingFuture2, null);
    }

    public static <V1, V2, V3> Combiner3<V1, V2, V3> whenAllSucceed(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3) {
        return new Combiner3<>(closingFuture, closingFuture2, closingFuture3, null);
    }

    public static <V1, V2, V3, V4> Combiner4<V1, V2, V3, V4> whenAllSucceed(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3, ClosingFuture<V4> closingFuture4) {
        return new Combiner4<>(closingFuture, closingFuture2, closingFuture3, closingFuture4, null);
    }

    public static <V1, V2, V3, V4, V5> Combiner5<V1, V2, V3, V4, V5> whenAllSucceed(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3, ClosingFuture<V4> closingFuture4, ClosingFuture<V5> closingFuture5) {
        return new Combiner5<>(closingFuture, closingFuture2, closingFuture3, closingFuture4, closingFuture5, null);
    }

    public ClosingFuture(ClosingCallable<V> closingCallable, Executor executor) {
        this.f35243a = new AtomicReference<>(State.OPEN);
        this.f35244b = new CloseableList(null);
        Preconditions.checkNotNull(closingCallable);
        TrustedListenableFutureTask m27848z = TrustedListenableFutureTask.m27848z(new CallableC6344e(closingCallable));
        executor.execute(m27848z);
        this.f35245c = m27848z;
    }

    public static Combiner whenAllSucceed(ClosingFuture<?> closingFuture, ClosingFuture<?> closingFuture2, ClosingFuture<?> closingFuture3, ClosingFuture<?> closingFuture4, ClosingFuture<?> closingFuture5, ClosingFuture<?> closingFuture6, ClosingFuture<?>... closingFutureArr) {
        return whenAllSucceed(FluentIterable.m26130of(closingFuture, closingFuture2, closingFuture3, closingFuture4, closingFuture5, closingFuture6).append(closingFutureArr));
    }

    public ClosingFuture(AsyncClosingCallable<V> asyncClosingCallable, Executor executor) {
        this.f35243a = new AtomicReference<>(State.OPEN);
        this.f35244b = new CloseableList(null);
        Preconditions.checkNotNull(asyncClosingCallable);
        TrustedListenableFutureTask m27846x = TrustedListenableFutureTask.m27846x(new C6345f(asyncClosingCallable));
        executor.execute(m27846x);
        this.f35245c = m27846x;
    }
}
