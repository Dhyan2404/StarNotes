package com.tencent.qimei.p079aa;

import com.tencent.qimei.p089j.InterfaceC16788c;

/* renamed from: com.tencent.qimei.aa.b */
/* loaded from: classes10.dex */
public class C16735b implements InterfaceC16788c {

    /* renamed from: a */
    public final /* synthetic */ C16736c f93332a;

    public C16735b(C16736c c16736c) {
        this.f93332a = c16736c;
    }

    @Override // com.tencent.qimei.p089j.InterfaceC16788c
    /* renamed from: i */
    public void mo59799i() {
        RunnableC16739f runnableC16739f;
        synchronized (this.f93332a) {
            if (!this.f93332a.m59805a()) {
                runnableC16739f = this.f93332a.f93336d;
                if (!runnableC16739f.f93342b.get()) {
                    this.f93332a.m59806b();
                }
            }
        }
    }

    @Override // com.tencent.qimei.p089j.InterfaceC16788c
    /* renamed from: j */
    public void mo59800j() {
    }
}
