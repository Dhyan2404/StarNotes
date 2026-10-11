package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "TextRecognizerOptionsCreator")
/* loaded from: classes5.dex */
public final class zzvh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvh> CREATOR = new zzvi();

    @SafeParcelable.Field(getter = "getConfigLabel", m22176id = 1)
    private final String zza;

    @SafeParcelable.Field(getter = "getLoggingLibraryName", m22176id = 2)
    private final String zzb;

    @Nullable
    @SafeParcelable.Field(getter = "getModelPath", m22176id = 3)
    private final String zzc;

    @SafeParcelable.Field(getter = "getIsMLKit", m22176id = 4)
    private final boolean zzd;

    @SafeParcelable.Field(getter = "getDetectionTypeValue", m22176id = 5)
    private final int zze;

    @Nullable
    @SafeParcelable.Field(getter = "getLanguageHint", m22176id = 6)
    private final String zzf;

    @SafeParcelable.Field(getter = "getEnableLowLatencyInBackground", m22176id = 7)
    private final boolean zzg;

    @SafeParcelable.Constructor
    public zzvh(@SafeParcelable.Param(m22177id = 1) String str, @SafeParcelable.Param(m22177id = 2) String str2, @Nullable @SafeParcelable.Param(m22177id = 3) String str3, @SafeParcelable.Param(m22177id = 4) boolean z, @SafeParcelable.Param(m22177id = 5) int i, @SafeParcelable.Param(m22177id = 6) String str4, @SafeParcelable.Param(m22177id = 7) boolean z2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzf = str4;
        this.zze = i;
        this.zzd = z;
        this.zzg = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeString(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzd);
        SafeParcelWriter.writeInt(parcel, 5, this.zze);
        SafeParcelWriter.writeString(parcel, 6, this.zzf, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zzg);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
