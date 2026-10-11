package com.tencent.beacon.module;

import android.content.Context;
import com.tencent.beacon.base.net.p066b.RunnableC14936e;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p073d.C14968a;
import com.tencent.beacon.p073d.C14969b;
import com.tencent.beacon.p073d.C14975h;
import com.tencent.beacon.p073d.RunnableC14976i;

/* loaded from: classes10.dex */
public class StrategyModule implements BeaconModule {

    /* renamed from: a */
    private static final Object f93249a = new Object();

    /* renamed from: c */
    private RunnableC14976i f93251c;

    /* renamed from: e */
    private boolean f93253e = false;

    /* renamed from: d */
    private C14969b f93252d = C14969b.m59444b();

    /* renamed from: b */
    private C14968a f93250b = C14968a.m59436a();

    public StrategyModule() {
        C14975h.m59499d().m59501a(this.f93250b);
        this.f93251c = new RunnableC14976i(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public synchronized void m59700d() {
        if (!this.f93251c.m59523a()) {
            AbstractC14874b.m58931a().mo58941a(this.f93251c);
        }
    }

    /* renamed from: c */
    public boolean m59704c() {
        boolean z;
        synchronized (f93249a) {
            z = this.f93253e;
        }
        return z;
    }

    @Override // com.tencent.beacon.module.BeaconModule
    /* renamed from: a */
    public void mo59665a(Context context) {
        C14954c.m59392a("[module] strategy module > TRUE", new Object[0]);
        this.f93251c.m59526b();
        m59700d();
        RunnableC14936e.m59309a(context, new RunnableC14936e.a() { // from class: com.tencent.beacon.module.StrategyModule.1
            @Override // com.tencent.beacon.base.net.p066b.RunnableC14936e.a
            /* renamed from: a */
            public void mo59020a() {
                synchronized (StrategyModule.this) {
                    if (!StrategyModule.this.m59704c() && !StrategyModule.this.f93251c.m59523a()) {
                        StrategyModule.this.m59700d();
                    }
                }
            }

            @Override // com.tencent.beacon.base.net.p066b.RunnableC14936e.a
            /* renamed from: b */
            public void mo59021b() {
            }
        });
    }

    /* renamed from: b */
    public C14969b m59703b() {
        return this.f93252d;
    }

    /* renamed from: a */
    public void m59702a(boolean z) {
        synchronized (f93249a) {
            this.f93253e = z;
        }
    }

    /* renamed from: a */
    public C14968a m59701a() {
        return this.f93250b;
    }
}
