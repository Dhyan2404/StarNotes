package com.google.android.gms.internal.p124firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "TotpInfoCreator")
/* loaded from: classes5.dex */
public final class zzagq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzagq> CREATOR = new zzagt();

    @SafeParcelable.Constructor
    public zzagq() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        SafeParcelWriter.finishObjectHeader(parcel, SafeParcelWriter.beginObjectHeader(parcel));
    }
}
