package com.google.android.gms.auth.api.signin.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

@KeepForSdk
/* loaded from: classes5.dex */
public class HashAccumulator {

    /* renamed from: a */
    public int f28958a = 1;

    @NonNull
    @CanIgnoreReturnValue
    @KeepForSdk
    public HashAccumulator addObject(@Nullable Object obj) {
        this.f28958a = (this.f28958a * 31) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    @KeepForSdk
    public int hash() {
        return this.f28958a;
    }

    @NonNull
    @CanIgnoreReturnValue
    public final HashAccumulator zaa(boolean z) {
        this.f28958a = (this.f28958a * 31) + (z ? 1 : 0);
        return this;
    }
}
