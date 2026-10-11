package com.sunia.HTREnginev2;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n314#2,9:128\n323#2,2:141\n13#3:137\n19#3:140\n13579#4,2:138\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll\n*L\n71#1:128,9\n71#1:141,2\n78#1:137\n90#1:140\n83#1:138,2\n*E\n"})
/* renamed from: com.sunia.HTREnginev2.pk */
/* loaded from: classes11.dex */
public final class C14247pk<T> {

    /* renamed from: b */
    @NotNull
    public static final AtomicIntegerFieldUpdater f80866b = AtomicIntegerFieldUpdater.newUpdater(C14247pk.class, "notCompletedCount");

    /* renamed from: a */
    @NotNull
    public final Deferred<T>[] f80867a;

    @Volatile
    private volatile int notCompletedCount;

    @SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n11335#2:128\n11670#2,3:129\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$AwaitAllNode\n*L\n121#1:128\n121#1:129,3\n*E\n"})
    /* renamed from: com.sunia.HTREnginev2.pk$a */
    /* loaded from: classes11.dex */
    public final class a extends JobNode {

        /* renamed from: k */
        @NotNull
        public static final AtomicReferenceFieldUpdater f80868k = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer");

        @Volatile
        @Nullable
        private volatile Object _disposer;

        /* renamed from: h */
        @NotNull
        public final CancellableContinuation<List<? extends T>> f80869h;

        /* renamed from: i */
        public DisposableHandle f80870i;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull CancellableContinuation<? super List<? extends T>> cancellableContinuation) {
            this.f80869h = cancellableContinuation;
        }

        @Nullable
        /* renamed from: f */
        public final C14247pk<T>.b m56281f() {
            return (b) f80868k.get(this);
        }

        @NotNull
        /* renamed from: g */
        public final DisposableHandle m56282g() {
            DisposableHandle disposableHandle = this.f80870i;
            if (disposableHandle != null) {
                return disposableHandle;
            }
            Intrinsics.throwUninitializedPropertyAccessException("handle");
            return null;
        }

        /* renamed from: h */
        public final void m56283h(@Nullable C14247pk<T>.b bVar) {
            f80868k.set(this, bVar);
        }

        /* renamed from: i */
        public final void m56284i(@NotNull DisposableHandle disposableHandle) {
            this.f80870i = disposableHandle;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2(@Nullable Throwable th) {
            if (th != null) {
                Object tryResumeWithException = this.f80869h.tryResumeWithException(th);
                if (tryResumeWithException != null) {
                    this.f80869h.completeResume(tryResumeWithException);
                    C14247pk<T>.b m56281f = m56281f();
                    if (m56281f != null) {
                        m56281f.m56285a();
                        return;
                    }
                    return;
                }
                return;
            }
            if (C14247pk.f80866b.decrementAndGet(C14247pk.this) == 0) {
                CancellableContinuation<List<? extends T>> cancellableContinuation = this.f80869h;
                Deferred[] deferredArr = C14247pk.this.f80867a;
                ArrayList arrayList = new ArrayList(deferredArr.length);
                for (Deferred deferred : deferredArr) {
                    arrayList.add(deferred.getCompleted());
                }
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m72621constructorimpl(arrayList));
            }
        }
    }

    @SourceDebugExtension({"SMAP\nAwait.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n13579#2,2:128\n*S KotlinDebug\n*F\n+ 1 Await.kt\nkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel\n*L\n96#1:128,2\n*E\n"})
    /* renamed from: com.sunia.HTREnginev2.pk$b */
    /* loaded from: classes11.dex */
    public final class b extends CancelHandler {

        /* renamed from: e */
        @NotNull
        public final C14247pk<T>.a[] f80872e;

        public b(@NotNull C14247pk<T>.a[] aVarArr) {
            this.f80872e = aVarArr;
        }

        /* renamed from: a */
        public final void m56285a() {
            for (C14247pk<T>.a aVar : this.f80872e) {
                aVar.m56282g().dispose();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        @NotNull
        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f80872e + ']';
        }

        @Override // kotlinx.coroutines.CancelHandlerBase
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2(@Nullable Throwable th) {
            m56285a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14247pk(@NotNull Deferred<? extends T>[] deferredArr) {
        this.f80867a = deferredArr;
        this.notCompletedCount = deferredArr.length;
    }

    @Nullable
    /* renamed from: c */
    public final Object m56280c(@NotNull Continuation<? super List<? extends T>> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        int length = this.f80867a.length;
        a[] aVarArr = new a[length];
        for (int i = 0; i < length; i++) {
            Deferred deferred = this.f80867a[i];
            deferred.start();
            a aVar = new a(cancellableContinuationImpl);
            aVar.m56284i(deferred.invokeOnCompletion(aVar));
            Unit unit = Unit.INSTANCE;
            aVarArr[i] = aVar;
        }
        C14247pk<T>.b bVar = new b(aVarArr);
        for (int i2 = 0; i2 < length; i2++) {
            aVarArr[i2].m56283h(bVar);
        }
        if (cancellableContinuationImpl.isCompleted()) {
            bVar.m56285a();
        } else {
            cancellableContinuationImpl.invokeOnCancellation(bVar);
        }
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
