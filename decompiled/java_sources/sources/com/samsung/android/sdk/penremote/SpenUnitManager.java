package com.samsung.android.sdk.penremote;

import android.os.RemoteException;
import android.util.Log;

/* loaded from: classes9.dex */
public class SpenUnitManager {

    /* renamed from: d */
    public static final String f63336d = "SM_SDK";

    /* renamed from: a */
    public ISPenRemoteService f63337a;

    /* renamed from: b */
    public SpenUnit f63338b;

    /* renamed from: c */
    public SpenUnit f63339c;

    /* renamed from: com.samsung.android.sdk.penremote.SpenUnitManager$b */
    /* loaded from: classes9.dex */
    public static class C13122b {

        /* renamed from: a */
        public static final SpenUnitManager f63340a = new SpenUnitManager();
    }

    /* renamed from: c */
    public static SpenUnitManager m52414c() {
        return C13122b.f63340a;
    }

    /* renamed from: a */
    public final SpenUnit m52415a() {
        if (this.f63339c == null) {
            this.f63339c = new SpenUnit(1, this.f63337a);
        }
        return this.f63339c;
    }

    /* renamed from: b */
    public final SpenUnit m52416b() {
        if (this.f63338b == null) {
            this.f63338b = new SpenUnit(0, this.f63337a);
        }
        return this.f63338b;
    }

    /* renamed from: d */
    public void m52417d(ISPenRemoteService iSPenRemoteService) {
        this.f63337a = iSPenRemoteService;
        this.f63338b = null;
        this.f63339c = null;
    }

    /* renamed from: e */
    public void m52418e() {
        SpenUnit spenUnit = this.f63338b;
        if (spenUnit != null) {
            spenUnit.m52412b();
        }
        SpenUnit spenUnit2 = this.f63339c;
        if (spenUnit2 != null) {
            spenUnit2.m52412b();
        }
    }

    public SpenUnit getUnit(int i) {
        if (this.f63337a == null) {
            Log.d("SM_SDK", "Not connected. connect() is not Called first.");
            return null;
        }
        if (i == 0) {
            return m52416b();
        }
        if (i == 1) {
            return m52415a();
        }
        return null;
    }

    public void registerSpenEventListener(SpenEventListener spenEventListener, SpenUnit spenUnit) {
        try {
            spenUnit.m52413c(spenEventListener);
        } catch (RemoteException unused) {
            Log.e("SM_SDK", "RemoteException : unable to set SpenEventListener!");
        }
    }

    public void unregisterSpenEventListener(SpenUnit spenUnit) {
        spenUnit.m52412b();
    }

    public SpenUnitManager() {
    }
}
