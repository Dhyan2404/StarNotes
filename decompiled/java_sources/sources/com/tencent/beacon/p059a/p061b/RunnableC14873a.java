package com.tencent.beacon.p059a.p061b;

import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.p073d.C14969b;

/* renamed from: com.tencent.beacon.a.b.a */
/* loaded from: classes10.dex */
public class RunnableC14873a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC14874b f92542a;

    public RunnableC14873a(AbstractC14874b abstractC14874b) {
        this.f92542a = abstractC14874b;
    }

    @Override // java.lang.Runnable
    public void run() {
        C14937c.m59312d().m59317a(C14969b.m59444b().m59468e() - 1);
        this.f92542a.mo58939a(0L, 1);
        this.f92542a.f92545c = false;
    }
}
