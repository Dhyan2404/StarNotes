package com.google.mlkit.common.model;

import android.annotation.TargetApi;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes6.dex */
public class DownloadConditions {

    /* renamed from: a */
    public final boolean f36526a;

    /* renamed from: b */
    public final boolean f36527b;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a */
        public boolean f36528a = false;

        /* renamed from: b */
        public boolean f36529b = false;

        @NonNull
        public DownloadConditions build() {
            return new DownloadConditions(this.f36528a, this.f36529b, null);
        }

        @NonNull
        @RequiresApi(24)
        @TargetApi(24)
        public Builder requireCharging() {
            this.f36528a = true;
            return this;
        }

        @NonNull
        public Builder requireWifi() {
            this.f36529b = true;
            return this;
        }
    }

    public /* synthetic */ DownloadConditions(boolean z, boolean z2, zzb zzbVar) {
        this.f36526a = z;
        this.f36527b = z2;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DownloadConditions)) {
            return false;
        }
        DownloadConditions downloadConditions = (DownloadConditions) obj;
        return this.f36526a == downloadConditions.f36526a && this.f36527b == downloadConditions.f36527b;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f36526a), Boolean.valueOf(this.f36527b));
    }

    public boolean isChargingRequired() {
        return this.f36526a;
    }

    public boolean isWifiRequired() {
        return this.f36527b;
    }
}
