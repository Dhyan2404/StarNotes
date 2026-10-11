package com.sunia.HTREnginev2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,428:1\n1#2:429\n314#3,11:430\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowSlot\n*L\n298#1:430,11\n*E\n"})
/* loaded from: classes11.dex */
public final class dym extends AbstractSharedFlowSlot<StateFlowImpl<?>> {

    /* renamed from: a */
    @NotNull
    public static final AtomicReferenceFieldUpdater f68378a = AtomicReferenceFieldUpdater.newUpdater(dym.class, Object.class, "_state");

    @Volatile
    @Nullable
    private volatile Object _state;

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean allocateLocked(@NotNull StateFlowImpl<?> stateFlowImpl) {
        Symbol symbol;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f68378a;
        if (atomicReferenceFieldUpdater.get(this) != null) {
            return false;
        }
        symbol = StateFlowKt.f98523a;
        atomicReferenceFieldUpdater.set(this, symbol);
        return true;
    }

    @Nullable
    /* renamed from: c */
    public final Object m53868c(@NotNull Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Symbol symbol;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(intercepted, 1);
        cancellableContinuationImpl.initCancellability();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f68378a;
        symbol = StateFlowKt.f98523a;
        if (!C14434t4.m57298a(atomicReferenceFieldUpdater, this, symbol, cancellableContinuationImpl)) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m72621constructorimpl(Unit.INSTANCE));
        }
        Object result = cancellableContinuationImpl.getResult();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (result == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return result == coroutine_suspended2 ? result : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Continuation<Unit>[] freeLocked(@NotNull StateFlowImpl<?> stateFlowImpl) {
        f68378a.set(this, null);
        return AbstractSharedFlowKt.EMPTY_RESUMES;
    }

    /* renamed from: e */
    public final void m53870e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    /* renamed from: f */
    public final void m53871f() {
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f68378a;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return;
            }
            symbol = StateFlowKt.f98524b;
            if (obj == symbol) {
                return;
            }
            symbol2 = StateFlowKt.f98523a;
            if (obj == symbol2) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f68378a;
                symbol3 = StateFlowKt.f98524b;
                if (C14434t4.m57298a(atomicReferenceFieldUpdater2, this, obj, symbol3)) {
                    return;
                }
            } else {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f68378a;
                symbol4 = StateFlowKt.f98523a;
                if (C14434t4.m57298a(atomicReferenceFieldUpdater3, this, obj, symbol4)) {
                    Result.Companion companion = Result.INSTANCE;
                    ((CancellableContinuationImpl) obj).resumeWith(Result.m72621constructorimpl(Unit.INSTANCE));
                    return;
                }
            }
        }
    }

    /* renamed from: g */
    public final boolean m53872g() {
        Symbol symbol;
        Symbol symbol2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f68378a;
        symbol = StateFlowKt.f98523a;
        Object andSet = atomicReferenceFieldUpdater.getAndSet(this, symbol);
        Intrinsics.checkNotNull(andSet);
        symbol2 = StateFlowKt.f98524b;
        return andSet == symbol2;
    }
}
