package com.tencent.beacon.base.net.call;

import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;

/* renamed from: com.tencent.beacon.base.net.call.i */
/* loaded from: classes10.dex */
public class C14948i implements InterfaceC14940a<byte[]> {

    /* renamed from: a */
    private final JceRequestEntity f92900a;

    /* renamed from: b */
    private long f92901b;

    public C14948i(JceRequestEntity jceRequestEntity) {
        this.f92900a = jceRequestEntity;
    }

    /* renamed from: a */
    public void m59349a(Callback<byte[]> callback) {
        AbstractC14874b.m58931a().mo58941a(new RunnableC14945f(this, callback));
    }

    /* renamed from: b */
    public void m59351b(Callback<byte[]> callback) {
        this.f92901b = C14953b.m59381c();
        C14937c.m59312d().m59320a(this.f92900a, new C14947h(this, callback));
    }

    /* renamed from: a */
    public void m59350a(Callback<byte[]> callback, AbstractC14874b abstractC14874b) {
        abstractC14874b.mo58941a(new RunnableC14946g(this, callback));
    }
}
