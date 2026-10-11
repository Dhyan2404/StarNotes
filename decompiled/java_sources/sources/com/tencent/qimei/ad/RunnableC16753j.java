package com.tencent.qimei.ad;

import com.tencent.qimei.p093n.C16806a;

/* renamed from: com.tencent.qimei.ad.j */
/* loaded from: classes10.dex */
public class RunnableC16753j implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C16754k f93421a;

    public RunnableC16753j(C16754k c16754k) {
        this.f93421a = c16754k;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C16754k.m59853a(this.f93421a);
        } catch (Exception e) {
            C16806a.m59992a(e);
        }
    }
}
