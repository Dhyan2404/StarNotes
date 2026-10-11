package com.google.mlkit.common.sdkinternal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.inject.Provider;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes6.dex */
public class ExecutorSelector {

    /* renamed from: a */
    public final Provider f36554a;

    public ExecutorSelector(@NonNull Provider provider) {
        this.f36554a = provider;
    }

    @NonNull
    @KeepForSdk
    public Executor getExecutorToUse(@Nullable Executor executor) {
        return executor != null ? executor : (Executor) this.f36554a.get();
    }
}
