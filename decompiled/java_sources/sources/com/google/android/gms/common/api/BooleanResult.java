package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;

/* loaded from: classes5.dex */
public class BooleanResult implements Result {

    /* renamed from: e */
    public final Status f29053e;

    /* renamed from: f */
    public final boolean f29054f;

    @ShowFirstParty
    @KeepForSdk
    public BooleanResult(@NonNull Status status, boolean z) {
        this.f29053e = (Status) Preconditions.checkNotNull(status, "Status must not be null");
        this.f29054f = z;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BooleanResult)) {
            return false;
        }
        BooleanResult booleanResult = (BooleanResult) obj;
        return this.f29053e.equals(booleanResult.f29053e) && this.f29054f == booleanResult.f29054f;
    }

    @Override // com.google.android.gms.common.api.Result
    @NonNull
    public Status getStatus() {
        return this.f29053e;
    }

    public boolean getValue() {
        return this.f29054f;
    }

    public final int hashCode() {
        return ((this.f29053e.hashCode() + 527) * 31) + (this.f29054f ? 1 : 0);
    }
}
