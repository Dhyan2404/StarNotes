package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.sunia.HTREnginev2.fnp;
import com.sunia.HTREnginev2.rmp;
import javax.annotation.Nullable;

@SafeParcelable.Class(creator = "GoogleCertificatesQueryCreator")
/* loaded from: classes5.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();

    @SafeParcelable.Field(getter = "getCallingPackage", m22176id = 1)
    private final String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getCallingCertificateBinder", m22176id = 2, type = "android.os.IBinder")
    private final rmp zzb;

    @SafeParcelable.Field(getter = "getAllowTestKeys", m22176id = 3)
    private final boolean zzc;

    @SafeParcelable.Field(defaultValue = "false", getter = "getIgnoreTestKeysOverride", m22176id = 4)
    private final boolean zzd;

    public zzs(String str, @Nullable rmp rmpVar, boolean z, boolean z2) {
        this.zza = str;
        this.zzb = rmpVar;
        this.zzc = z;
        this.zzd = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        rmp rmpVar = this.zzb;
        if (rmpVar == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            rmpVar = null;
        }
        SafeParcelWriter.writeIBinder(parcel, 2, rmpVar, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzc);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(m22177id = 1) String str, @SafeParcelable.Param(m22177id = 2) @Nullable IBinder iBinder, @SafeParcelable.Param(m22177id = 3) boolean z, @SafeParcelable.Param(m22177id = 4) boolean z2) {
        this.zza = str;
        fnp fnpVar = null;
        if (iBinder != null) {
            try {
                IObjectWrapper zzd = zzz.zzg(iBinder).zzd();
                byte[] bArr = zzd == null ? null : (byte[]) ObjectWrapper.unwrap(zzd);
                if (bArr != null) {
                    fnpVar = new fnp(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            }
        }
        this.zzb = fnpVar;
        this.zzc = z;
        this.zzd = z2;
    }
}
