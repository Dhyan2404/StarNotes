package com.onyx.android.sdk.base.extension;

import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, m61528d2 = {"isApiLevelAbove", "", "apiLevel", "", "isApiLevelBelow", "isCPUArchitectureSupported", "cPUArchitecture", "", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class BuildKt {
    public static final boolean isApiLevelAbove(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    public static final boolean isApiLevelBelow(int i) {
        return Build.VERSION.SDK_INT < i;
    }

    public static final boolean isCPUArchitectureSupported(@NotNull String cPUArchitecture) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(cPUArchitecture, "cPUArchitecture");
        String[] strArr = Build.SUPPORTED_ABIS;
        Intrinsics.checkNotNull(strArr);
        for (String str : strArr) {
            Intrinsics.checkNotNull(str);
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) cPUArchitecture, false, 2, (Object) null);
            if (contains$default) {
                return true;
            }
        }
        return false;
    }
}
