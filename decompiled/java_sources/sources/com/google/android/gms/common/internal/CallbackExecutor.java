package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.sunia.HTREnginev2.smp;
import java.util.concurrent.ExecutorService;

@KeepForSdk
/* loaded from: classes5.dex */
public final class CallbackExecutor {
    @NonNull
    @KeepForSdk
    public static ExecutorService executorService() {
        return smp.f84301a;
    }
}
