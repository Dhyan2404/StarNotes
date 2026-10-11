package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* renamed from: com.google.android.play.integrity.internal.o */
/* loaded from: classes6.dex */
public abstract class AbstractBinderC5567o extends BinderC5555b implements InterfaceC5568p {
    public AbstractBinderC5567o() {
        super("com.google.android.play.core.integrity.protocol.IIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.BinderC5555b
    /* renamed from: a */
    public final boolean mo25731a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 2) {
            return false;
        }
        Bundle bundle = (Bundle) C5556c.m25732a(parcel, Bundle.CREATOR);
        C5556c.m25733b(parcel);
        mo25665b(bundle);
        return true;
    }
}
