package com.sunia.HTREnginev2;

import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final /* synthetic */ class i7k implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((Throwable) obj).setStackTrace((StackTraceElement[]) obj2);
    }
}
