package com.tencent.beacon.base.net.call;

import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.NetException;

/* renamed from: com.tencent.beacon.base.net.call.b */
/* loaded from: classes10.dex */
public class C14941b implements Callback<BResponse> {

    /* renamed from: a */
    final /* synthetic */ Callback f92890a;

    /* renamed from: b */
    final /* synthetic */ C14942c f92891b;

    public C14941b(C14942c c14942c, Callback callback) {
        this.f92891b = c14942c;
        this.f92890a = callback;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(BResponse bResponse) throws NetException {
        Callback callback = this.f92890a;
        if (callback != null) {
            callback.onResponse(bResponse);
        }
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        Callback callback = this.f92890a;
        if (callback != null) {
            callback.onFailure(c14950d);
        }
    }
}
