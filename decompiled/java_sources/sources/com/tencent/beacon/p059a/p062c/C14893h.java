package com.tencent.beacon.p059a.p062c;

import com.tencent.beacon.base.util.BeaconLogger;
import com.tencent.qimei.log.IObservableLog;

/* renamed from: com.tencent.beacon.a.c.h */
/* loaded from: classes10.dex */
public class C14893h implements IObservableLog {

    /* renamed from: a */
    final /* synthetic */ BeaconLogger f92633a;

    public C14893h(BeaconLogger beaconLogger) {
        this.f92633a = beaconLogger;
    }

    @Override // com.tencent.qimei.log.IObservableLog
    public void onLog(String str) {
        this.f92633a.m59352d("qimei", str);
    }
}
