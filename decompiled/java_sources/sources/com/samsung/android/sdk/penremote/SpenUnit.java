package com.samsung.android.sdk.penremote;

import android.os.RemoteException;
import com.samsung.android.sdk.penremote.ISpenEventListener;

/* loaded from: classes9.dex */
public class SpenUnit {
    public static final int TYPE_AIR_MOTION = 1;
    public static final int TYPE_BUTTON = 0;

    /* renamed from: e */
    public static final String f63330e = "SM_SDK";

    /* renamed from: a */
    public SpenEventListener f63331a;

    /* renamed from: b */
    public int f63332b;

    /* renamed from: c */
    public ISPenRemoteService f63333c;

    /* renamed from: d */
    public ISpenEventListener f63334d = new BinderC13120a();

    /* renamed from: com.samsung.android.sdk.penremote.SpenUnit$a */
    /* loaded from: classes9.dex */
    public class BinderC13120a extends ISpenEventListener.Stub {
        public BinderC13120a() {
        }

        @Override // com.samsung.android.sdk.penremote.ISpenEventListener
        public void onEvent(SpenEvent spenEvent) {
            if (SpenUnit.this.f63331a != null) {
                SpenUnit.this.f63331a.onEvent(spenEvent);
            }
        }
    }

    public SpenUnit(int i, ISPenRemoteService iSPenRemoteService) {
        this.f63332b = -1;
        this.f63332b = i;
        this.f63333c = iSPenRemoteService;
    }

    /* renamed from: b */
    public void m52412b() {
        this.f63331a = null;
        ISpenEventListener iSpenEventListener = this.f63334d;
        if (iSpenEventListener == null) {
            return;
        }
        try {
            this.f63333c.unregisterSpenEventListener(this.f63332b, iSpenEventListener);
        } catch (RemoteException unused) {
        }
    }

    /* renamed from: c */
    public void m52413c(SpenEventListener spenEventListener) throws RemoteException {
        ISPenRemoteService iSPenRemoteService = this.f63333c;
        if (iSPenRemoteService == null) {
            throw new RemoteException("SpenRemote is not connected.");
        }
        this.f63331a = spenEventListener;
        iSPenRemoteService.registerSpenEventListener(this.f63332b, this.f63334d);
    }
}
