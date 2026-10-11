package com.sunia.HTREnginev2;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.sync.SemaphoreKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,397:1\n371#1,2:398\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n384#1:398,2\n*E\n"})
/* loaded from: classes11.dex */
public final class ugm extends Segment<ugm> {

    /* renamed from: h */
    @NotNull
    public final AtomicReferenceArray f86472h;

    public ugm(long j, @Nullable ugm ugmVar, int i) {
        super(j, ugmVar, i);
        int i2;
        i2 = SemaphoreKt.f98734f;
        this.f86472h = new AtomicReferenceArray(i2);
    }

    /* renamed from: e */
    public final boolean m57618e(int i, @Nullable Object obj, @Nullable Object obj2) {
        return r1n.m56886a(m57620g(), i, obj, obj2);
    }

    @Nullable
    /* renamed from: f */
    public final Object m57619f(int i) {
        return m57620g().get(i);
    }

    @NotNull
    /* renamed from: g */
    public final AtomicReferenceArray m57620g() {
        return this.f86472h;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public int getNumberOfSlots() {
        int i;
        i = SemaphoreKt.f98734f;
        return i;
    }

    @Nullable
    /* renamed from: h */
    public final Object m57621h(int i, @Nullable Object obj) {
        return m57620g().getAndSet(i, obj);
    }

    /* renamed from: i */
    public final void m57622i(int i, @Nullable Object obj) {
        m57620g().set(i, obj);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public void onCancellation(int i, @Nullable Throwable th, @NotNull CoroutineContext coroutineContext) {
        Symbol symbol;
        symbol = SemaphoreKt.f98733e;
        m57620g().set(i, symbol);
        onSlotCleaned();
    }

    @NotNull
    public String toString() {
        return "SemaphoreSegment[id=" + this.id + ", hashCode=" + hashCode() + ']';
    }
}
