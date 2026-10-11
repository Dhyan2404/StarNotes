package com.google.android.gms.auth.api.identity;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes5.dex */
public final class zbc implements Api.ApiOptions.Optional {

    /* renamed from: e */
    public final String f28939e;

    public zbc(String str) {
        this.f28939e = str;
    }

    public final boolean equals(@Nullable Object obj) {
        return obj instanceof zbc;
    }

    public final int hashCode() {
        return Objects.hashCode(zbc.class);
    }

    public final Bundle zba() {
        Bundle bundle = new Bundle();
        bundle.putString("session_id", this.f28939e);
        return bundle;
    }

    public final String zbb() {
        return this.f28939e;
    }
}
