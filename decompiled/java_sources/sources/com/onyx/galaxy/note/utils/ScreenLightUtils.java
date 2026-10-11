package com.onyx.galaxy.note.utils;

import android.app.Activity;
import com.blankj.utilcode.util.ActivityUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/galaxy/note/utils/ScreenLightUtils;", "", "()V", "globalKeepScreenOnChange", "", "isScreenOn", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ScreenLightUtils {

    @NotNull
    public static final ScreenLightUtils INSTANCE = new ScreenLightUtils();

    public final void globalKeepScreenOnChange(boolean isScreenOn) {
        for (Activity activity : ActivityUtils.getActivityList()) {
            com.onyx.android.sdk.base.extension.Activity activity2 = com.onyx.android.sdk.base.extension.Activity.INSTANCE;
            Intrinsics.checkNotNull(activity);
            activity2.keepScreenOn(activity, isScreenOn);
        }
    }
}
