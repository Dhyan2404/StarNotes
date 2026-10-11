package com.onyx.android.sdk.theme.config;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/theme/config/ThemeConfig;", "Ljava/io/Serializable;", "()V", "unSupportStyleList", "", "", "getUnSupportStyleList", "()Ljava/util/List;", "setUnSupportStyleList", "(Ljava/util/List;)V", "unSupportThemeList", "getUnSupportThemeList", "setUnSupportThemeList", "sdk-skinChange_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ThemeConfig implements Serializable {

    @NotNull
    private List<Integer> unSupportStyleList = new ArrayList();

    @NotNull
    private List<Integer> unSupportThemeList = new ArrayList();

    @NotNull
    public final List<Integer> getUnSupportStyleList() {
        return this.unSupportStyleList;
    }

    @NotNull
    public final List<Integer> getUnSupportThemeList() {
        return this.unSupportThemeList;
    }

    public final void setUnSupportStyleList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.unSupportStyleList = list;
    }

    public final void setUnSupportThemeList(@NotNull List<Integer> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.unSupportThemeList = list;
    }
}
