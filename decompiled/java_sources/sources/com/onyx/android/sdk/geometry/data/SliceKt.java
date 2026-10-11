package com.onyx.android.sdk.geometry.data;

import com.onyx.android.sdk.base.extension.AnyKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u001d\u0010\u0003\u001a\u00020\u0004*\u0004\u0018\u00010\u0002\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000\u001a\f\u0010\u0005\u001a\u00020\u0004*\u0004\u0018\u00010\u0002¨\u0006\u0006"}, m61528d2 = {"getDebugString", "", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "isValid", "", "isValidContentNote", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SliceKt {
    @NotNull
    public static final String getDebugString(@Nullable SliceInfo sliceInfo) {
        if (sliceInfo == null) {
            return "null";
        }
        return AnyKt.toSimpleNameString(sliceInfo) + ", type = " + sliceInfo.getType() + ", id = " + sliceInfo.getBoxInfo().getId() + ", actualScale = " + sliceInfo.getBoxInfo().getActualScale() + ", isValid = " + isValid(sliceInfo) + ", isHighQuality = " + sliceInfo.getIsHighQuality() + ", state = " + sliceInfo.getState();
    }

    public static final boolean isValid(@Nullable SliceInfo sliceInfo) {
        if (sliceInfo == null) {
            return false;
        }
        return sliceInfo.getSafeBitmap().isValid();
    }

    public static final boolean isValidContentNote(@Nullable SliceInfo sliceInfo) {
        return sliceInfo != null && sliceInfo.isContentNote() && sliceInfo.getSafeBitmap().isValid();
    }
}
