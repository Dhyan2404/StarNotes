package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

@KeepForSdk
/* loaded from: classes5.dex */
public class TelemetryLoggingOptions implements Api.ApiOptions.Optional {

    @NonNull
    public static final TelemetryLoggingOptions zaa = builder().build();

    /* renamed from: e */
    @Nullable
    public final String f29373e;

    @KeepForSdk
    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a */
        @Nullable
        public String f29374a;

        public Builder() {
        }

        @NonNull
        @KeepForSdk
        public TelemetryLoggingOptions build() {
            return new TelemetryLoggingOptions(this.f29374a, null);
        }

        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public Builder setApi(@Nullable String str) {
            this.f29374a = str;
            return this;
        }

        public /* synthetic */ Builder(zaac zaacVar) {
        }
    }

    public /* synthetic */ TelemetryLoggingOptions(String str, zaad zaadVar) {
        this.f29373e = str;
    }

    @NonNull
    @KeepForSdk
    public static Builder builder() {
        return new Builder(null);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TelemetryLoggingOptions) {
            return Objects.equal(this.f29373e, ((TelemetryLoggingOptions) obj).f29373e);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f29373e);
    }

    @NonNull
    public final Bundle zaa() {
        Bundle bundle = new Bundle();
        String str = this.f29373e;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }
}
