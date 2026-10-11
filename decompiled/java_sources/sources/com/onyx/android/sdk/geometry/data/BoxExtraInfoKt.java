package com.onyx.android.sdk.geometry.data;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0001¨\u0006\u0002"}, m61528d2 = {"copyOrNull", "Lcom/onyx/android/sdk/geometry/data/BoxExtraInfo;", "sdk-geometry_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BoxExtraInfoKt {
    @Nullable
    public static final BoxExtraInfo copyOrNull(@Nullable BoxExtraInfo boxExtraInfo) {
        if (boxExtraInfo != null) {
            return boxExtraInfo.copy();
        }
        return null;
    }
}
