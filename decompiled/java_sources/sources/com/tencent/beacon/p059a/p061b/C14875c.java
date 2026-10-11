package com.tencent.beacon.p059a.p061b;

import com.tencent.beacon.base.net.BResponse;
import com.tencent.beacon.base.net.C14950d;
import com.tencent.beacon.base.net.call.Callback;
import com.tencent.beacon.base.util.C14954c;

/* renamed from: com.tencent.beacon.a.b.c */
/* loaded from: classes10.dex */
public class C14875c implements Callback<BResponse> {

    /* renamed from: a */
    final /* synthetic */ String f92547a;

    /* renamed from: b */
    final /* synthetic */ String f92548b;

    /* renamed from: c */
    final /* synthetic */ Throwable f92549c;

    /* renamed from: d */
    final /* synthetic */ AbstractC14880h f92550d;

    public C14875c(AbstractC14880h abstractC14880h, String str, String str2, Throwable th) {
        this.f92550d = abstractC14880h;
        this.f92547a = str;
        this.f92548b = str2;
        this.f92549c = th;
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onResponse(BResponse bResponse) {
        C14954c.m59391a("AttaReport", "net ret: " + bResponse.toString(), new Object[0]);
    }

    @Override // com.tencent.beacon.base.net.call.Callback
    public void onFailure(C14950d c14950d) {
        this.f92550d.m58950b(this.f92547a, this.f92548b, this.f92549c);
    }
}
