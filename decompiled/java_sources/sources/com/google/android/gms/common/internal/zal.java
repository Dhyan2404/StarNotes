package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

/* loaded from: classes5.dex */
public final class zal {

    /* renamed from: a */
    public final SparseIntArray f29400a;

    /* renamed from: b */
    public GoogleApiAvailabilityLight f29401b;

    public zal() {
        this(GoogleApiAvailability.getInstance());
    }

    public final int zaa(Context context, int i) {
        return this.f29400a.get(i, -1);
    }

    @ResultIgnorabilityUnspecified
    public final int zab(@NonNull Context context, @NonNull Api.Client client) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(client);
        int i = 0;
        if (!client.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = client.getMinApkVersion();
        int zaa = zaa(context, minApkVersion);
        if (zaa == -1) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.f29400a.size()) {
                    i = -1;
                    break;
                }
                int keyAt = this.f29400a.keyAt(i2);
                if (keyAt > minApkVersion && this.f29400a.get(keyAt) == 0) {
                    break;
                }
                i2++;
            }
            zaa = i == -1 ? this.f29401b.isGooglePlayServicesAvailable(context, minApkVersion) : i;
            this.f29400a.put(minApkVersion, zaa);
        }
        return zaa;
    }

    public final void zac() {
        this.f29400a.clear();
    }

    public zal(@NonNull GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.f29400a = new SparseIntArray();
        Preconditions.checkNotNull(googleApiAvailabilityLight);
        this.f29401b = googleApiAvailabilityLight;
    }
}
