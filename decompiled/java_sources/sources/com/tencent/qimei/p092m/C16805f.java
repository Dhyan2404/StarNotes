package com.tencent.qimei.p092m;

import com.tencent.qimei.p093n.C16806a;

/* renamed from: com.tencent.qimei.m.f */
/* loaded from: classes10.dex */
public class C16805f {

    /* renamed from: a */
    public final Object f93548a;

    /* renamed from: b */
    public int f93549b;

    public C16805f(Object obj, int i) {
        this.f93548a = obj;
        this.f93549b = i;
    }

    /* renamed from: a */
    public void m59987a() {
        synchronized (this.f93548a) {
            this.f93548a.notifyAll();
        }
    }

    /* renamed from: b */
    public void m59988b() {
        try {
            synchronized (this.f93548a) {
                this.f93548a.wait(this.f93549b);
            }
        } catch (InterruptedException e) {
            C16806a.m59992a(e);
        }
    }
}
