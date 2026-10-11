package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;

/* renamed from: com.google.android.play.integrity.internal.m */
/* loaded from: classes6.dex */
public abstract class AbstractBinderC5565m extends BinderC5555b implements InterfaceC5566n {
    /* renamed from: b */
    public static InterfaceC5566n m25744b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
        return queryLocalInterface instanceof InterfaceC5566n ? (InterfaceC5566n) queryLocalInterface : new C5564l(iBinder);
    }
}
