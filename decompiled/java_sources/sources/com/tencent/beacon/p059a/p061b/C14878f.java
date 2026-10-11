package com.tencent.beacon.p059a.p061b;

import android.util.Log;
import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.call.Callback;

/* renamed from: com.tencent.beacon.a.b.f */
/* loaded from: classes10.dex */
public class C14878f implements Callback<BResponse> {

    /* renamed from: a */
    final /* synthetic */ RunnableC14879g f92558a;

    public C14878f(RunnableC14879g runnableC14879g) {
        this.f92558a = runnableC14879g;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(BResponse bResponse) {
        Log.e("AttaReport", "report success attaCode: " + this.f92558a.f92560b);
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        Log.e("AttaReport", "report failure attaCode: " + this.f92558a.f92560b + " errorMsg: " + c14950d.f92905d);
    }
}
