package com.google.android.gms.common.util.concurrent;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.gfp;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

@KeepForSdk
/* loaded from: classes5.dex */
public class NamedThreadFactory implements ThreadFactory {

    /* renamed from: e */
    public final String f29505e;

    /* renamed from: f */
    public final ThreadFactory f29506f = Executors.defaultThreadFactory();

    @KeepForSdk
    public NamedThreadFactory(@NonNull String str) {
        Preconditions.checkNotNull(str, "Name must not be null");
        this.f29505e = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.f29506f.newThread(new gfp(runnable, 0));
        newThread.setName(this.f29505e);
        return newThread;
    }
}
