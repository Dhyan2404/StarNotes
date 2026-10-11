package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;

@KeepForSdk
/* loaded from: classes5.dex */
public final class ApiKey<O extends Api.ApiOptions> {

    /* renamed from: a */
    public final int f29080a;

    /* renamed from: b */
    public final Api f29081b;

    /* renamed from: c */
    @Nullable
    public final Api.ApiOptions f29082c;

    /* renamed from: d */
    @Nullable
    public final String f29083d;

    public ApiKey(Api api, @Nullable Api.ApiOptions apiOptions, @Nullable String str) {
        this.f29081b = api;
        this.f29082c = apiOptions;
        this.f29083d = str;
        this.f29080a = Objects.hashCode(api, apiOptions, str);
    }

    @NonNull
    @KeepForSdk
    public static <O extends Api.ApiOptions> ApiKey<O> getSharedApiKey(@NonNull Api<O> api, @Nullable O o, @Nullable String str) {
        return new ApiKey<>(api, o, str);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        return Objects.equal(this.f29081b, apiKey.f29081b) && Objects.equal(this.f29082c, apiKey.f29082c) && Objects.equal(this.f29083d, apiKey.f29083d);
    }

    public final int hashCode() {
        return this.f29080a;
    }

    @NonNull
    public final String zaa() {
        return this.f29081b.zad();
    }
}
