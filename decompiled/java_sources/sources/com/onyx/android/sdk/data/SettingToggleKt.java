package com.onyx.android.sdk.data;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, m61528d2 = {"getSettingToggle", "Lcom/onyx/android/sdk/data/SettingToggle;", "enable", "", "sdk-statistics_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SettingToggleKt {
    @NotNull
    public static final SettingToggle getSettingToggle(boolean z) {
        return z ? SettingToggle.OPEN : SettingToggle.CLOSE;
    }
}
