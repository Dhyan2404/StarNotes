package com.google.android.gms.internal.mlkit_vision_text_common;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "TextSymbolParcelCreator")
/* loaded from: classes5.dex */
public final class zzvj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvj> CREATOR = new zzvk();

    @SafeParcelable.Field(getter = "getText", m22176id = 1)
    private final String zza;

    @SafeParcelable.Field(getter = "getBoundingBox", m22176id = 2)
    private final Rect zzb;

    @SafeParcelable.Field(getter = "getCornerPointList", m22176id = 3)
    private final List zzc;

    @SafeParcelable.Field(getter = "getConfidence", m22176id = 4)
    private final float zzd;

    @SafeParcelable.Field(getter = "getAngle", m22176id = 5)
    private final float zze;

    @SafeParcelable.Constructor
    public zzvj(@SafeParcelable.Param(m22177id = 1) String str, @SafeParcelable.Param(m22177id = 2) Rect rect, @SafeParcelable.Param(m22177id = 3) List list, @SafeParcelable.Param(m22177id = 4) float f, @SafeParcelable.Param(m22177id = 5) float f2) {
        this.zza = str;
        this.zzb = rect;
        this.zzc = list;
        this.zzd = f;
        this.zze = f2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeFloat(parcel, 4, this.zzd);
        SafeParcelWriter.writeFloat(parcel, 5, this.zze);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final float zza() {
        return this.zze;
    }

    public final float zzb() {
        return this.zzd;
    }

    public final Rect zzc() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zza;
    }

    public final List zze() {
        return this.zzc;
    }
}
