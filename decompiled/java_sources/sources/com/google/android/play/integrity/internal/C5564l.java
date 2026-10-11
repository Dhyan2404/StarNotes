package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.google.android.play.integrity.internal.l */
/* loaded from: classes6.dex */
public final class C5564l extends C5543a implements InterfaceC5566n {
    public C5564l(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC5566n
    /* renamed from: c */
    public final void mo25743c(Bundle bundle, InterfaceC5568p interfaceC5568p) throws RemoteException {
        Parcel m25699a = m25699a();
        C5556c.m25734c(m25699a, bundle);
        m25699a.writeStrongBinder(interfaceC5568p);
        m25700b(2, m25699a);
    }
}
