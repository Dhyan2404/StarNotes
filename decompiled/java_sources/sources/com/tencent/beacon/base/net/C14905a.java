package com.tencent.beacon.base.net;

import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.net.call.JceRequestEntity;
import com.tencent.beacon.base.util.C14954c;

/* renamed from: com.tencent.beacon.base.net.a */
/* loaded from: classes10.dex */
public class C14905a implements Callback<byte[]> {

    /* renamed from: a */
    final /* synthetic */ JceRequestEntity f92657a;

    /* renamed from: b */
    final /* synthetic */ boolean f92658b;

    /* renamed from: c */
    final /* synthetic */ Callback f92659c;

    /* renamed from: d */
    final /* synthetic */ C14937c f92660d;

    public C14905a(C14937c c14937c, JceRequestEntity jceRequestEntity, boolean z, Callback callback) {
        this.f92660d = c14937c;
        this.f92657a = jceRequestEntity;
        this.f92658b = z;
        this.f92659c = callback;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            onFailure(new C14950d(this.f92657a.getType().name(), this.f92658b ? "402" : "452", 200, "raw response == null", null));
            return;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("jceRequest: ");
            sb.append(this.f92657a.getType());
            sb.append(" request success!");
            C14954c.m59391a("[BeaconNet]", sb.toString(), new Object[0]);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("mode: ");
            sb2.append(this.f92658b ? "socket" : "http");
            C14954c.m59391a("[BeaconNet]", sb2.toString(), new Object[0]);
            this.f92659c.onResponse(bArr);
            this.f92660d.m59313h();
        } catch (Exception e) {
            onFailure(new C14950d(this.f92657a.getType().name(), this.f92658b ? "403" : "453", 200, e.getMessage(), e));
        }
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        C14954c.m59391a("[BeaconNet]", "jceRequest: " + c14950d.toString(), new Object[0]);
        this.f92660d.m59321a(c14950d);
        this.f92659c.onFailure(c14950d);
        this.f92660d.m59313h();
    }
}
