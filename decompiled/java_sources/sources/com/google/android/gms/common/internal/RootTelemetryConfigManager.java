package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes5.dex */
public final class RootTelemetryConfigManager {

    /* renamed from: b */
    @Nullable
    public static RootTelemetryConfigManager f29368b;

    /* renamed from: c */
    public static final RootTelemetryConfiguration f29369c = new RootTelemetryConfiguration(0, false, false, 0, 0);

    /* renamed from: a */
    @Nullable
    public RootTelemetryConfiguration f29370a;

    @NonNull
    @KeepForSdk
    public static synchronized RootTelemetryConfigManager getInstance() {
        RootTelemetryConfigManager rootTelemetryConfigManager;
        synchronized (RootTelemetryConfigManager.class) {
            if (f29368b == null) {
                f29368b = new RootTelemetryConfigManager();
            }
            rootTelemetryConfigManager = f29368b;
        }
        return rootTelemetryConfigManager;
    }

    @Nullable
    @KeepForSdk
    public RootTelemetryConfiguration getConfig() {
        return this.f29370a;
    }

    @VisibleForTesting
    public final synchronized void zza(@Nullable RootTelemetryConfiguration rootTelemetryConfiguration) {
        if (rootTelemetryConfiguration == null) {
            this.f29370a = f29369c;
            return;
        }
        RootTelemetryConfiguration rootTelemetryConfiguration2 = this.f29370a;
        if (rootTelemetryConfiguration2 == null || rootTelemetryConfiguration2.getVersion() < rootTelemetryConfiguration.getVersion()) {
            this.f29370a = rootTelemetryConfiguration;
        }
    }
}
