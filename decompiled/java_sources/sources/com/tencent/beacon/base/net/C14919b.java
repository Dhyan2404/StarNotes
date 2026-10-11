package com.tencent.beacon.base.net;

import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.net.call.HttpRequestEntity;
import com.tencent.beacon.base.util.C14954c;

/* renamed from: com.tencent.beacon.base.net.b */
/* loaded from: classes10.dex */
public class C14919b implements Callback<BResponse> {

    /* renamed from: a */
    final /* synthetic */ HttpRequestEntity f92677a;

    /* renamed from: b */
    final /* synthetic */ Callback f92678b;

    /* renamed from: c */
    final /* synthetic */ C14937c f92679c;

    public C14919b(C14937c c14937c, HttpRequestEntity httpRequestEntity, Callback callback) {
        this.f92679c = c14937c;
        this.f92677a = httpRequestEntity;
        this.f92678b = callback;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(BResponse bResponse) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("httpRequest: ");
            sb.append(this.f92677a.tag());
            sb.append(" request success!");
            C14954c.m59391a("[BeaconNet]", sb.toString(), new Object[0]);
            this.f92678b.onResponse(bResponse);
            this.f92679c.m59313h();
        } catch (Exception e) {
            onFailure(new C14950d(this.f92677a.tag(), "453", 200, e.getMessage(), e));
        }
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        C14954c.m59391a("[BeaconNet]", "httpRequest: " + c14950d.toString(), new Object[0]);
        this.f92679c.m59321a(c14950d);
        this.f92678b.onFailure(c14950d);
        this.f92679c.m59313h();
    }
}
