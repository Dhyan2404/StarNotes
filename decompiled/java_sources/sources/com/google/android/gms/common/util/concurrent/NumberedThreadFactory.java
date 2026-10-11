package com.google.android.gms.common.util.concurrent;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.sunia.HTREnginev2.gfp;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.collections4.IteratorUtils;

@KeepForSdk
/* loaded from: classes5.dex */
public class NumberedThreadFactory implements ThreadFactory {

    /* renamed from: e */
    public final String f29507e;

    /* renamed from: f */
    public final AtomicInteger f29508f = new AtomicInteger();

    /* renamed from: g */
    public final ThreadFactory f29509g = Executors.defaultThreadFactory();

    @KeepForSdk
    public NumberedThreadFactory(@NonNull String str) {
        Preconditions.checkNotNull(str, "Name must not be null");
        this.f29507e = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    @NonNull
    public final Thread newThread(@NonNull Runnable runnable) {
        Thread newThread = this.f29509g.newThread(new gfp(runnable, 0));
        newThread.setName(this.f29507e + IteratorUtils.f104923a + this.f29508f.getAndIncrement() + IteratorUtils.f104924b);
        return newThread;
    }
}
