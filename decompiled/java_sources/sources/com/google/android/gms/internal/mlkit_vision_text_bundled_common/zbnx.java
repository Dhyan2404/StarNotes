package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ImageMetadataParcelCreator")
/* loaded from: classes5.dex */
public final class zbnx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zbnx> CREATOR = new zbny();

    @SafeParcelable.Field(getter = "getImageFormat", m22176id = 1)
    private final int zba;

    @SafeParcelable.Field(getter = "getWidth", m22176id = 2)
    private final int zbb;

    @SafeParcelable.Field(getter = "getHeight", m22176id = 3)
    private final int zbc;

    @SafeParcelable.Field(getter = "getRotation", m22176id = 4)
    private final int zbd;

    @SafeParcelable.Field(getter = "getTimestampMs", m22176id = 5)
    private final long zbe;

    @SafeParcelable.Constructor
    public zbnx(@SafeParcelable.Param(m22177id = 1) int i, @SafeParcelable.Param(m22177id = 2) int i2, @SafeParcelable.Param(m22177id = 3) int i3, @SafeParcelable.Param(m22177id = 4) int i4, @SafeParcelable.Param(m22177id = 5) long j) {
        this.zba = i;
        this.zbb = i2;
        this.zbc = i3;
        this.zbd = i4;
        this.zbe = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zba);
        SafeParcelWriter.writeInt(parcel, 2, this.zbb);
        SafeParcelWriter.writeInt(parcel, 3, this.zbc);
        SafeParcelWriter.writeInt(parcel, 4, this.zbd);
        SafeParcelWriter.writeLong(parcel, 5, this.zbe);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zba() {
        return this.zbc;
    }

    public final int zbb() {
        return this.zba;
    }

    public final int zbc() {
        return this.zbd;
    }

    public final int zbd() {
        return this.zbb;
    }

    public final long zbe() {
        return this.zbe;
    }
}
