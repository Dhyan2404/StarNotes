package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "BoundingBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes5.dex */
public final class zbd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zbd> CREATOR = new zbe();

    @SafeParcelable.Field(m22176id = 2)
    public final int zba;

    @SafeParcelable.Field(m22176id = 3)
    public final int zbb;

    @SafeParcelable.Field(m22176id = 4)
    public final int zbc;

    @SafeParcelable.Field(m22176id = 5)
    public final int zbd;

    @SafeParcelable.Field(m22176id = 6)
    public final float zbe;

    @SafeParcelable.Constructor
    public zbd(@SafeParcelable.Param(m22177id = 2) int i, @SafeParcelable.Param(m22177id = 3) int i2, @SafeParcelable.Param(m22177id = 4) int i3, @SafeParcelable.Param(m22177id = 5) int i4, @SafeParcelable.Param(m22177id = 6) float f) {
        this.zba = i;
        this.zbb = i2;
        this.zbc = i3;
        this.zbd = i4;
        this.zbe = f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = this.zba;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, i2);
        SafeParcelWriter.writeInt(parcel, 3, this.zbb);
        SafeParcelWriter.writeInt(parcel, 4, this.zbc);
        SafeParcelWriter.writeInt(parcel, 5, this.zbd);
        SafeParcelWriter.writeFloat(parcel, 6, this.zbe);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
