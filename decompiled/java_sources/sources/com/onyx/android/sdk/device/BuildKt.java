package com.onyx.android.sdk.device;

import android.os.Build;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0005"}, m61528d2 = {"isApiLevelAbove", "", "apiLevel", "", "isApiLevelBelow", "sdk-device_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BuildKt {
    public static final boolean isApiLevelAbove(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    public static final boolean isApiLevelBelow(int i) {
        return Build.VERSION.SDK_INT < i;
    }
}
