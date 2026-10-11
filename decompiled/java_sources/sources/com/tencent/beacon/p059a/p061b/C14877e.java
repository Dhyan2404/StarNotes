package com.tencent.beacon.p059a.p061b;

import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.util.C14954c;

/* renamed from: com.tencent.beacon.a.b.e */
/* loaded from: classes10.dex */
public class C14877e implements Callback<BResponse> {

    /* renamed from: a */
    final /* synthetic */ AbstractC14880h f92557a;

    public C14877e(AbstractC14880h abstractC14880h) {
        this.f92557a = abstractC14880h;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(BResponse bResponse) {
        if (bResponse != null) {
            C14954c.m59391a("AttaReport", "oversea net ret: " + bResponse.toString(), new Object[0]);
        }
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
    }
}
