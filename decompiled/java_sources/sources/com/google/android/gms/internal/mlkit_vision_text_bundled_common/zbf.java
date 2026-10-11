package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "LineBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes5.dex */
public final class zbf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zbf> CREATOR = new zbg();

    @SafeParcelable.Field(m22176id = 2)
    public final zbj[] zba;

    @SafeParcelable.Field(m22176id = 3)
    public final zbd zbb;

    @SafeParcelable.Field(m22176id = 4)
    public final zbd zbc;

    @SafeParcelable.Field(m22176id = 5)
    public final zbd zbd;

    @SafeParcelable.Field(m22176id = 6)
    public final String zbe;

    @SafeParcelable.Field(m22176id = 7)
    public final float zbf;

    @SafeParcelable.Field(m22176id = 8)
    public final String zbg;

    @SafeParcelable.Field(m22176id = 9)
    public final int zbh;

    @SafeParcelable.Field(m22176id = 10)
    public final boolean zbi;

    @SafeParcelable.Field(m22176id = 11)
    public final int zbj;

    @SafeParcelable.Field(m22176id = 12)
    public final int zbk;

    @SafeParcelable.Constructor
    public zbf(@SafeParcelable.Param(m22177id = 2) zbj[] zbjVarArr, @SafeParcelable.Param(m22177id = 3) zbd zbdVar, @SafeParcelable.Param(m22177id = 4) zbd zbdVar2, @SafeParcelable.Param(m22177id = 5) zbd zbdVar3, @SafeParcelable.Param(m22177id = 6) String str, @SafeParcelable.Param(m22177id = 7) float f, @SafeParcelable.Param(m22177id = 8) String str2, @SafeParcelable.Param(m22177id = 9) int i, @SafeParcelable.Param(m22177id = 10) boolean z, @SafeParcelable.Param(m22177id = 11) int i2, @SafeParcelable.Param(m22177id = 12) int i3) {
        this.zba = zbjVarArr;
        this.zbb = zbdVar;
        this.zbc = zbdVar2;
        this.zbd = zbdVar3;
        this.zbe = str;
        this.zbf = f;
        this.zbg = str2;
        this.zbh = i;
        this.zbi = z;
        this.zbj = i2;
        this.zbk = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zbj[] zbjVarArr = this.zba;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedArray(parcel, 2, zbjVarArr, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zbb, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zbc, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zbd, i, false);
        SafeParcelWriter.writeString(parcel, 6, this.zbe, false);
        SafeParcelWriter.writeFloat(parcel, 7, this.zbf);
        SafeParcelWriter.writeString(parcel, 8, this.zbg, false);
        SafeParcelWriter.writeInt(parcel, 9, this.zbh);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zbi);
        SafeParcelWriter.writeInt(parcel, 11, this.zbj);
        SafeParcelWriter.writeInt(parcel, 12, this.zbk);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
