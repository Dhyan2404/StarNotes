package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Log;

/* loaded from: classes5.dex */
public final class l5o {

    /* renamed from: e */
    public static final String f76162e = "WakeLockManager";

    /* renamed from: f */
    public static final String f76163f = "ExoPlayer:WakeLockManager";

    /* renamed from: a */
    @Nullable
    public final PowerManager f76164a;

    /* renamed from: b */
    @Nullable
    public PowerManager.WakeLock f76165b;

    /* renamed from: c */
    public boolean f76166c;

    /* renamed from: d */
    public boolean f76167d;

    public l5o(Context context) {
        this.f76164a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    /* renamed from: a */
    public void m55388a(boolean z) {
        if (z && this.f76165b == null) {
            PowerManager powerManager = this.f76164a;
            if (powerManager == null) {
                Log.m21493w(f76162e, "PowerManager is null, therefore not creating the WakeLock.");
                return;
            } else {
                PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, f76163f);
                this.f76165b = newWakeLock;
                newWakeLock.setReferenceCounted(false);
            }
        }
        this.f76166c = z;
        m55390c();
    }

    /* renamed from: b */
    public void m55389b(boolean z) {
        this.f76167d = z;
        m55390c();
    }

    @SuppressLint({"WakelockTimeout"})
    /* renamed from: c */
    public final void m55390c() {
        PowerManager.WakeLock wakeLock = this.f76165b;
        if (wakeLock == null) {
            return;
        }
        if (this.f76166c && this.f76167d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }
}
