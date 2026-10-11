package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.concurrent.futures.ResolvableFuture;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes3.dex */
public class ryg {
    @NonNull
    /* renamed from: a */
    public static <T> ListenableFuture<T> m57043a(@NonNull Throwable th) {
        ResolvableFuture create = ResolvableFuture.create();
        create.setException(th);
        return create;
    }
}
