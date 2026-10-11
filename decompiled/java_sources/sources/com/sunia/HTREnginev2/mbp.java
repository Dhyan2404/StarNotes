package com.sunia.HTREnginev2;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes5.dex */
public final class mbp {

    /* renamed from: a */
    public final int f77445a;

    /* renamed from: b */
    public final ConnectionResult f77446b;

    public mbp(ConnectionResult connectionResult, int i) {
        Preconditions.checkNotNull(connectionResult);
        this.f77446b = connectionResult;
        this.f77445a = i;
    }

    /* renamed from: a */
    public final int m55586a() {
        return this.f77445a;
    }

    /* renamed from: b */
    public final ConnectionResult m55587b() {
        return this.f77446b;
    }
}
