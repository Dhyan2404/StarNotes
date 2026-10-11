package com.onyx.android.sdk.extension;

import android.app.Dialog;
import android.view.Window;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u001a\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"SCREEN_PADDING", "", "setLayout", "", "Landroid/app/Dialog;", "width", "", "height", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DialogKt {
    public static final float SCREEN_PADDING = 15.0f;

    public static final void setLayout(@NotNull Dialog dialog, int i, int i2) {
        Intrinsics.checkNotNullParameter(dialog, "<this>");
        Window window = dialog.getWindow();
        if (window != null) {
            float f = i;
            ResManager resManager = ResManager.INSTANCE;
            if (f > resManager.getScreenWidth()) {
                i = (int) (resManager.getScreenWidth() - DimenUtils.INSTANCE.dp2PxFloat(30.0f));
            }
            window.setLayout(i, i2);
        }
    }
}
