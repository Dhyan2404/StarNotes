package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ImageMetadataParcelCreator")
/* loaded from: classes5.dex */
public final class zzuq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuq> CREATOR = new zzur();

    @SafeParcelable.Field(getter = "getImageFormat", m22176id = 1)
    private final int zza;

    @SafeParcelable.Field(getter = "getWidth", m22176id = 2)
    private final int zzb;

    @SafeParcelable.Field(getter = "getHeight", m22176id = 3)
    private final int zzc;

    @SafeParcelable.Field(getter = "getRotation", m22176id = 4)
    private final int zzd;

    @SafeParcelable.Field(getter = "getTimestampMs", m22176id = 5)
    private final long zze;

    @SafeParcelable.Constructor
    public zzuq(@SafeParcelable.Param(m22177id = 1) int i, @SafeParcelable.Param(m22177id = 2) int i2, @SafeParcelable.Param(m22177id = 3) int i3, @SafeParcelable.Param(m22177id = 4) int i4, @SafeParcelable.Param(m22177id = 5) long j) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, i2);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeLong(parcel, 5, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
