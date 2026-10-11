package com.sunia.HTREnginev2;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes11.dex */
public final class fhn implements Function1<Throwable, Unit> {

    /* renamed from: h */
    @NotNull
    public static final AtomicIntegerFieldUpdater f70015h = AtomicIntegerFieldUpdater.newUpdater(fhn.class, "_state");

    @Volatile
    private volatile int _state;

    /* renamed from: e */
    @NotNull
    public final Job f70016e;

    /* renamed from: f */
    public final Thread f70017f = Thread.currentThread();

    /* renamed from: g */
    @Nullable
    public DisposableHandle f70018g;

    public fhn(@NotNull Job job) {
        this.f70016e = job;
    }

    /* renamed from: a */
    public final void m54111a() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f70015h;
        while (true) {
            int i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i != 2) {
                    if (i == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        m54112b(i);
                        throw new KotlinNothingValueException();
                    }
                }
            } else if (f70015h.compareAndSet(this, i, 1)) {
                DisposableHandle disposableHandle = this.f70018g;
                if (disposableHandle != null) {
                    disposableHandle.dispose();
                    return;
                }
                return;
            }
        }
    }

    /* renamed from: b */
    public final Void m54112b(int i) {
        throw new IllegalStateException(("Illegal state " + i).toString());
    }

    /* renamed from: c */
    public void m54113c(@Nullable Throwable th) {
        int i;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = f70015h;
        do {
            i = atomicIntegerFieldUpdater2.get(this);
            if (i != 0) {
                if (i == 1 || i == 2 || i == 3) {
                    return;
                }
                m54112b(i);
                throw new KotlinNothingValueException();
            }
            atomicIntegerFieldUpdater = f70015h;
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 2));
        this.f70017f.interrupt();
        atomicIntegerFieldUpdater.set(this, 3);
    }

    /* renamed from: d */
    public final void m54114d(AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    /* renamed from: e */
    public final void m54115e() {
        int i;
        this.f70018g = this.f70016e.invokeOnCompletion(true, true, this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f70015h;
        do {
            i = atomicIntegerFieldUpdater.get(this);
            if (i != 0) {
                if (i == 2 || i == 3) {
                    return;
                }
                m54112b(i);
                throw new KotlinNothingValueException();
            }
        } while (!f70015h.compareAndSet(this, i, 0));
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        m54113c(th);
        return Unit.INSTANCE;
    }
}
