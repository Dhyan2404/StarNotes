package com.sunia.HTREnginev2;

import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;

/* loaded from: classes5.dex */
public final class ckp extends qmp {

    /* renamed from: b */
    public final /* synthetic */ qkp f66925b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ckp(qkp qkpVar, jop jopVar) {
        super(jopVar);
        this.f66925b = qkpVar;
    }

    @Override // com.google.android.gms.internal.auth.zzan, com.google.android.gms.internal.auth.zzat
    public final void zzc(DeviceMetaData deviceMetaData) {
        this.f66925b.f74545d.setResult(deviceMetaData);
    }
}
