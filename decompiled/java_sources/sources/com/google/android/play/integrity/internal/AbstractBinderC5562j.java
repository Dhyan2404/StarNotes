package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.google.android.play.integrity.internal.j */
/* loaded from: classes6.dex */
public abstract class AbstractBinderC5562j extends BinderC5555b implements InterfaceC5563k {
    public AbstractBinderC5562j() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.BinderC5555b
    /* renamed from: a */
    public final boolean mo25731a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            Bundle bundle = (Bundle) C5556c.m25732a(parcel, Bundle.CREATOR);
            C5556c.m25733b(parcel);
            mo25677e(bundle);
            return true;
        }
        if (i == 3) {
            Bundle bundle2 = (Bundle) C5556c.m25732a(parcel, Bundle.CREATOR);
            C5556c.m25733b(parcel);
            mo25675c(bundle2);
            return true;
        }
        if (i == 4) {
            Bundle bundle3 = (Bundle) C5556c.m25732a(parcel, Bundle.CREATOR);
            C5556c.m25733b(parcel);
            mo25676d(bundle3);
            return true;
        }
        if (i != 5) {
            return false;
        }
        Bundle bundle4 = (Bundle) C5556c.m25732a(parcel, Bundle.CREATOR);
        C5556c.m25733b(parcel);
        mo25674b(bundle4);
        return true;
    }
}
