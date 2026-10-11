package com.google.firebase.auth.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.MultiFactorSession;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "DefaultMultiFactorSessionCreator")
/* loaded from: classes6.dex */
public final class zzaj extends MultiFactorSession {
    public static final Parcelable.Creator<zzaj> CREATOR = new zzam();

    @Nullable
    @SafeParcelable.Field(getter = "getIdToken", m22176id = 1)
    private String zza;

    @Nullable
    @SafeParcelable.Field(getter = "getPendingCredential", m22176id = 2)
    private String zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getPhoneMultiFactorInfoList", m22176id = 3)
    private List<PhoneMultiFactorInfo> zzc;

    @Nullable
    @SafeParcelable.Field(getter = "getTotpMultiFactorInfoList", m22176id = 4)
    private List<TotpMultiFactorInfo> zzd;

    @Nullable
    @SafeParcelable.Field(getter = "getFirebaseUser", m22176id = 5)
    private zzac zze;

    private zzaj() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeTypedList(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zze, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzac zza() {
        return this.zze;
    }

    @Nullable
    public final String zzb() {
        return this.zza;
    }

    @Nullable
    public final String zzc() {
        return this.zzb;
    }

    public final boolean zzd() {
        return this.zza != null;
    }

    @SafeParcelable.Constructor
    public zzaj(@SafeParcelable.Param(m22177id = 1) String str, @SafeParcelable.Param(m22177id = 2) String str2, @SafeParcelable.Param(m22177id = 3) List<PhoneMultiFactorInfo> list, @SafeParcelable.Param(m22177id = 4) List<TotpMultiFactorInfo> list2, @SafeParcelable.Param(m22177id = 5) zzac zzacVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = list;
        this.zzd = list2;
        this.zze = zzacVar;
    }

    public static zzaj zza(String str, @Nullable zzac zzacVar) {
        Preconditions.checkNotEmpty(str);
        zzaj zzajVar = new zzaj();
        zzajVar.zza = str;
        zzajVar.zze = zzacVar;
        return zzajVar;
    }

    public static zzaj zza(List<MultiFactorInfo> list, String str) {
        Preconditions.checkNotNull(list);
        Preconditions.checkNotEmpty(str);
        zzaj zzajVar = new zzaj();
        zzajVar.zzc = new ArrayList();
        zzajVar.zzd = new ArrayList();
        for (MultiFactorInfo multiFactorInfo : list) {
            if (multiFactorInfo instanceof PhoneMultiFactorInfo) {
                zzajVar.zzc.add((PhoneMultiFactorInfo) multiFactorInfo);
            } else if (multiFactorInfo instanceof TotpMultiFactorInfo) {
                zzajVar.zzd.add((TotpMultiFactorInfo) multiFactorInfo);
            } else {
                throw new IllegalArgumentException("MultiFactorInfo must be either PhoneMultiFactorInfo or TotpMultiFactorInfo. The factorId of this MultiFactorInfo: " + multiFactorInfo.getFactorId());
            }
        }
        zzajVar.zzb = str;
        return zzajVar;
    }
}
