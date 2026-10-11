package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* renamed from: com.google.android.play.integrity.internal.h */
/* loaded from: classes6.dex */
public abstract class AbstractBinderC5560h extends BinderC5555b implements InterfaceC5561i {
    /* renamed from: b */
    public static InterfaceC5561i m25742b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
        return queryLocalInterface instanceof InterfaceC5561i ? (InterfaceC5561i) queryLocalInterface : new C5559g(iBinder);
    }
}
