package com.sunia.HTREnginev2;

import android.content.Context;
import android.net.wifi.WifiManager;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Log;

/* loaded from: classes5.dex */
public final class g7o {

    /* renamed from: e */
    public static final String f70769e = "WifiLockManager";

    /* renamed from: f */
    public static final String f70770f = "ExoPlayer:WifiLockManager";

    /* renamed from: a */
    @Nullable
    public final WifiManager f70771a;

    /* renamed from: b */
    @Nullable
    public WifiManager.WifiLock f70772b;

    /* renamed from: c */
    public boolean f70773c;

    /* renamed from: d */
    public boolean f70774d;

    public g7o(Context context) {
        this.f70771a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    /* renamed from: a */
    public void m54236a(boolean z) {
        if (z && this.f70772b == null) {
            WifiManager wifiManager = this.f70771a;
            if (wifiManager == null) {
                Log.m21493w(f70769e, "WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, f70770f);
                this.f70772b = createWifiLock;
                createWifiLock.setReferenceCounted(false);
            }
        }
        this.f70773c = z;
        m54238c();
    }

    /* renamed from: b */
    public void m54237b(boolean z) {
        this.f70774d = z;
        m54238c();
    }

    /* renamed from: c */
    public final void m54238c() {
        WifiManager.WifiLock wifiLock = this.f70772b;
        if (wifiLock == null) {
            return;
        }
        if (this.f70773c && this.f70774d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }
}
