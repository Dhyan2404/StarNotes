package com.tencent.qimei.p096q;

/* renamed from: com.tencent.qimei.q.g */
/* loaded from: classes10.dex */
public class RunnableC16819g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C16815c f93579a;

    /* renamed from: b */
    public final /* synthetic */ String f93580b;

    /* renamed from: c */
    public final /* synthetic */ String f93581c;

    /* renamed from: d */
    public final /* synthetic */ String f93582d;

    /* renamed from: e */
    public final /* synthetic */ C16821i f93583e;

    public RunnableC16819g(C16821i c16821i, C16815c c16815c, String str, String str2, String str3) {
        this.f93583e = c16821i;
        this.f93579a = c16815c;
        this.f93580b = str;
        this.f93581c = str2;
        this.f93582d = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f93583e) {
            this.f93583e.m60024a(this.f93579a, this.f93580b, this.f93581c, this.f93582d);
        }
    }
}
