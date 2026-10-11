package com.google.android.gms.common.providers;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.ScheduledExecutorService;

@KeepForSdk
@Deprecated
/* loaded from: classes5.dex */
public class PooledExecutorsProvider {

    /* renamed from: a */
    public static PooledExecutorFactory f29442a;

    /* loaded from: classes5.dex */
    public interface PooledExecutorFactory {
        @NonNull
        @KeepForSdk
        @Deprecated
        ScheduledExecutorService newSingleThreadScheduledExecutor();
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static synchronized PooledExecutorFactory getInstance() {
        PooledExecutorFactory pooledExecutorFactory;
        synchronized (PooledExecutorsProvider.class) {
            if (f29442a == null) {
                f29442a = new C5071a();
            }
            pooledExecutorFactory = f29442a;
        }
        return pooledExecutorFactory;
    }
}
