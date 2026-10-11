package com.google.android.gms.internal.mlkit_vision_text_bundled_common;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "TextLineParcelCreator")
/* loaded from: classes5.dex */
public final class zboi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zboi> CREATOR = new zboj();

    @SafeParcelable.Field(getter = "getText", m22176id = 1)
    private final String zba;

    @SafeParcelable.Field(getter = "getBoundingBox", m22176id = 2)
    private final Rect zbb;

    @SafeParcelable.Field(getter = "getCornerPointList", m22176id = 3)
    private final List zbc;

    @SafeParcelable.Field(getter = "getRecognizedLanguage", m22176id = 4)
    private final String zbd;

    @SafeParcelable.Field(getter = "getTextElementList", m22176id = 5)
    private final List zbe;

    @SafeParcelable.Field(getter = "getConfidence", m22176id = 6)
    private final float zbf;

    @SafeParcelable.Field(getter = "getAngle", m22176id = 7)
    private final float zbg;

    @SafeParcelable.Constructor
    public zboi(@SafeParcelable.Param(m22177id = 1) String str, @SafeParcelable.Param(m22177id = 2) Rect rect, @SafeParcelable.Param(m22177id = 3) List list, @SafeParcelable.Param(m22177id = 4) String str2, @SafeParcelable.Param(m22177id = 5) List list2, @SafeParcelable.Param(m22177id = 6) float f, @SafeParcelable.Param(m22177id = 7) float f2) {
        this.zba = str;
        this.zbb = rect;
        this.zbc = list;
        this.zbd = str2;
        this.zbe = list2;
        this.zbf = f;
        this.zbg = f2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zba;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zbb, i, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.zbc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zbd, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.zbe, false);
        SafeParcelWriter.writeFloat(parcel, 6, this.zbf);
        SafeParcelWriter.writeFloat(parcel, 7, this.zbg);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final Rect zba() {
        return this.zbb;
    }

    public final String zbb() {
        return this.zbd;
    }

    public final String zbc() {
        return this.zba;
    }

    public final List zbd() {
        return this.zbc;
    }
}
