package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "WordBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes5.dex */
public final class zbj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zbj> CREATOR = new zbk();

    @SafeParcelable.Field(m22176id = 2)
    public final zbh[] zba;

    @SafeParcelable.Field(m22176id = 3)
    public final zbd zbb;

    @SafeParcelable.Field(m22176id = 4)
    public final zbd zbc;

    @SafeParcelable.Field(m22176id = 5)
    public final String zbd;

    @SafeParcelable.Field(m22176id = 6)
    public final float zbe;

    @SafeParcelable.Field(m22176id = 7)
    public final String zbf;

    @SafeParcelable.Field(m22176id = 8)
    public final boolean zbg;

    @SafeParcelable.Constructor
    public zbj(@SafeParcelable.Param(m22177id = 2) zbh[] zbhVarArr, @SafeParcelable.Param(m22177id = 3) zbd zbdVar, @SafeParcelable.Param(m22177id = 4) zbd zbdVar2, @SafeParcelable.Param(m22177id = 5) String str, @SafeParcelable.Param(m22177id = 6) float f, @SafeParcelable.Param(m22177id = 7) String str2, @SafeParcelable.Param(m22177id = 8) boolean z) {
        this.zba = zbhVarArr;
        this.zbb = zbdVar;
        this.zbc = zbdVar2;
        this.zbd = str;
        this.zbe = f;
        this.zbf = str2;
        this.zbg = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zbh[] zbhVarArr = this.zba;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedArray(parcel, 2, zbhVarArr, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zbb, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zbc, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.zbd, false);
        SafeParcelWriter.writeFloat(parcel, 6, this.zbe);
        SafeParcelWriter.writeString(parcel, 7, this.zbf, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zbg);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
