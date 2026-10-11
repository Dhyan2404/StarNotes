package com.google.firebase.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;

@KeepForSdk
/* loaded from: classes6.dex */
public class InternalTokenResult {

    /* renamed from: a */
    @Nullable
    public String f36028a;

    @KeepForSdk
    public InternalTokenResult(@Nullable String str) {
        this.f36028a = str;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof InternalTokenResult) {
            return Objects.equal(this.f36028a, ((InternalTokenResult) obj).f36028a);
        }
        return false;
    }

    @Nullable
    @KeepForSdk
    public String getToken() {
        return this.f36028a;
    }

    public int hashCode() {
        return Objects.hashCode(this.f36028a);
    }

    @NonNull
    public String toString() {
        return Objects.toStringHelper(this).add("token", this.f36028a).toString();
    }
}
