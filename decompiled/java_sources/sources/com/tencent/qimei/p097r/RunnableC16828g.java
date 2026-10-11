package com.tencent.qimei.p097r;

import com.tencent.qimei.sdk.IAsyncQimeiListener;
import com.tencent.qimei.sdk.Qimei;

/* renamed from: com.tencent.qimei.r.g */
/* loaded from: classes10.dex */
public class RunnableC16828g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ IAsyncQimeiListener f93629a;

    /* renamed from: b */
    public final /* synthetic */ C16833l f93630b;

    public RunnableC16828g(C16833l c16833l, IAsyncQimeiListener iAsyncQimeiListener) {
        this.f93630b = c16833l;
        this.f93629a = iAsyncQimeiListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        Qimei qimei = this.f93630b.getQimei();
        if (qimei == null || qimei.isEmpty()) {
            this.f93630b.m60057a(this.f93629a);
        } else {
            this.f93629a.onQimeiDispatch(qimei);
        }
    }
}
