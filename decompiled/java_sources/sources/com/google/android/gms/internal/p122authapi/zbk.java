package com.google.android.gms.internal.p122authapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

/* loaded from: classes5.dex */
final class zbk extends zbd {
    private final BaseImplementation.ResultHolder zba;

    public zbk(BaseImplementation.ResultHolder resultHolder) {
        this.zba = resultHolder;
    }

    @Override // com.google.android.gms.internal.p122authapi.zbd, com.google.android.gms.internal.p122authapi.zbs
    public final void zbc(Status status) {
        this.zba.setResult(status);
    }
}
