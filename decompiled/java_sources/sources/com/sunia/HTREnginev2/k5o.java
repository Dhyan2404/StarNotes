package com.sunia.HTREnginev2;

import kotlin.jvm.JvmField;
import kotlinx.coroutines.Waiter;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes11.dex */
public final class k5o {

    /* renamed from: a */
    @JvmField
    @NotNull
    public final Waiter f75116a;

    public k5o(@NotNull Waiter waiter) {
        this.f75116a = waiter;
    }

    @NotNull
    public String toString() {
        return "WaiterEB(" + this.f75116a + ')';
    }
}
