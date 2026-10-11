package com.alibaba.sdk.android.oss.network;

import okhttp3.Call;

/* loaded from: classes3.dex */
public class CancellationHandler {

    /* renamed from: a */
    public volatile boolean f13332a;

    /* renamed from: b */
    public volatile Call f13333b;

    public void cancel() {
        if (this.f13333b != null) {
            this.f13333b.cancel();
        }
        this.f13332a = true;
    }

    public boolean isCancelled() {
        return this.f13332a;
    }

    public void setCall(Call call) {
        this.f13333b = call;
    }
}
