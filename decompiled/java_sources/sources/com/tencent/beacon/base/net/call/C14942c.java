package com.tencent.beacon.base.net.call;

import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.C14937c;

/* renamed from: com.tencent.beacon.base.net.call.c */
/* loaded from: classes10.dex */
public class C14942c implements InterfaceC14940a<BResponse> {

    /* renamed from: a */
    private HttpRequestEntity f92892a;

    public C14942c(HttpRequestEntity httpRequestEntity) {
        this.f92892a = httpRequestEntity;
    }

    /* renamed from: a */
    public void m59345a(Callback<BResponse> callback) {
        C14937c.m59312d().m59319a(this.f92892a, new C14941b(this, callback));
    }
}
