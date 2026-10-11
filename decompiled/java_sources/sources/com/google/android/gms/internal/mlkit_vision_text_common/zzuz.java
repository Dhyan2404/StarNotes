package com.google.android.gms.internal.mlkit_vision_text_common;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "TextBlockParcelCreator")
/* loaded from: classes5.dex */
public final class zzuz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuz> CREATOR = new zzva();

    @SafeParcelable.Field(getter = "getText", m22176id = 1)
    private final String zza;

    @SafeParcelable.Field(getter = "getBoundingBox", m22176id = 2)
    private final Rect zzb;

    @SafeParcelable.Field(getter = "getCornerPointList", m22176id = 3)
    private final List zzc;

    @SafeParcelable.Field(getter = "getRecognizedLanguage", m22176id = 4)
    private final String zzd;

    @SafeParcelable.Field(getter = "getTextLineList", m22176id = 5)
    private final List zze;

    @SafeParcelable.Constructor
    public zzuz(@SafeParcelable.Param(m22177id = 1) String str, @SafeParcelable.Param(m22177id = 2) Rect rect, @SafeParcelable.Param(m22177id = 3) List list, @SafeParcelable.Param(m22177id = 4) String str2, @SafeParcelable.Param(m22177id = 5) List list2) {
        this.zza = str;
        this.zzb = rect;
        this.zzc = list;
        this.zzd = str2;
        this.zze = list2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.zze, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final Rect zza() {
        return this.zzb;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zza;
    }

    public final List zzd() {
        return this.zzc;
    }

    public final List zze() {
        return this.zze;
    }
}
