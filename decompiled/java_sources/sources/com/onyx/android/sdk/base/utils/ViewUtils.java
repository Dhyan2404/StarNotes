package com.onyx.android.sdk.base.utils;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\n\u0010\u0007\u001a\u00020\b*\u00020\u0006¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ViewUtils;", "", "()V", "getLocationInWindow", "", "view", "Landroid/view/View;", "getLocalVisibleRectF", "Landroid/graphics/RectF;", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ViewUtils {

    @NotNull
    public static final ViewUtils INSTANCE = new ViewUtils();

    @NotNull
    public final RectF getLocalVisibleRectF(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Rect rect = new Rect();
        view.getLocalVisibleRect(rect);
        RectF rectF = RectUtils.INSTANCE.toRectF(rect);
        return rectF == null ? new RectF() : rectF;
    }

    @NotNull
    public final int[] getLocationInWindow(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr;
    }
}
