package com.tencent.beacon.event.p075b;

import androidx.annotation.Nullable;
import com.tencent.beacon.event.EventBean;
import com.tencent.beacon.event.open.BeaconEvent;
import com.tencent.beacon.event.p076c.C14988a;

/* renamed from: com.tencent.beacon.event.b.c */
/* loaded from: classes10.dex */
public abstract class AbstractC14986c {

    /* renamed from: a */
    private AbstractC14986c f93044a;

    /* renamed from: a */
    public abstract BeaconEvent mo59542a(BeaconEvent beaconEvent);

    /* renamed from: a */
    public void m59544a(AbstractC14986c abstractC14986c) {
        this.f93044a = abstractC14986c;
    }

    @Nullable
    /* renamed from: b */
    public final EventBean m59545b(BeaconEvent beaconEvent) {
        BeaconEvent mo59542a = mo59542a(beaconEvent);
        AbstractC14986c abstractC14986c = this.f93044a;
        return abstractC14986c != null ? abstractC14986c.m59545b(mo59542a) : C14988a.m59546a(mo59542a);
    }
}
