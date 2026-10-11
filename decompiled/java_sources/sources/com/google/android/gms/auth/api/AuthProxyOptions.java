package com.google.android.gms.auth.api;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes5.dex */
public final class AuthProxyOptions implements Api.ApiOptions.Optional {

    @NonNull
    public static final AuthProxyOptions zza = new AuthProxyOptions(new Bundle(), null);

    /* renamed from: e */
    public final Bundle f28863e;

    public /* synthetic */ AuthProxyOptions(Bundle bundle, zzb zzbVar) {
        this.f28863e = bundle;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AuthProxyOptions) {
            return Objects.checkBundlesEquality(this.f28863e, ((AuthProxyOptions) obj).f28863e);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f28863e);
    }

    @NonNull
    public final Bundle zza() {
        return new Bundle(this.f28863e);
    }
}
