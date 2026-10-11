package com.google.firebase;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import com.sunia.HTREnginev2.C13774gk;

@AutoValue
/* loaded from: classes6.dex */
public abstract class StartupTime {
    @NonNull
    public static StartupTime create(long j, long j2, long j3) {
        return new C13774gk(j, j2, j3);
    }

    @NonNull
    public static StartupTime now() {
        return create(System.currentTimeMillis(), SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
    }

    public abstract long getElapsedRealtime();

    public abstract long getEpochMillis();

    public abstract long getUptimeMillis();
}
