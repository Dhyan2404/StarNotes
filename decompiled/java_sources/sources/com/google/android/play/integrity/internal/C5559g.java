package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.google.android.play.integrity.internal.g */
/* loaded from: classes6.dex */
public final class C5559g extends C5543a implements InterfaceC5561i {
    public C5559g(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC5561i
    /* renamed from: c */
    public final void mo25740c(Bundle bundle, InterfaceC5563k interfaceC5563k) throws RemoteException {
        Parcel m25699a = m25699a();
        C5556c.m25734c(m25699a, bundle);
        m25699a.writeStrongBinder(interfaceC5563k);
        m25700b(3, m25699a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.integrity.internal.InterfaceC5561i
    /* renamed from: d */
    public final void mo25741d(Bundle bundle, InterfaceC5563k interfaceC5563k) throws RemoteException {
        Parcel m25699a = m25699a();
        C5556c.m25734c(m25699a, bundle);
        m25699a.writeStrongBinder(interfaceC5563k);
        m25700b(2, m25699a);
    }
}
