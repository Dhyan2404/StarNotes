package com.onyx.android.sdk.base.utils;

import android.content.Context;
import android.util.DisplayMetrics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.poi.util.ExtUnits;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bJ\u0016\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\bJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\bJ\u0016\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\bJ\u0016\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\bJ\u0016\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\bJ\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\bJ\u0016\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\b¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/DimenUtils;", "", "()V", "dip2px", "", "context", "Landroid/content/Context;", "dpValue", "", "dp2PxActual", "dp", "dp2PxFloat", "getCssPx", "pxValue", "mmToPx", "", "mm", "pt2px", ExtUnits.UNIT_PT, "px2DpFloat", ExtUnits.UNIT_PX, "px2dip", "px2pt", "px2sp", "sp2px", "spValue", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DimenUtils {

    @NotNull
    public static final DimenUtils INSTANCE = new DimenUtils();

    public final int dip2px(@NotNull Context context, float dpValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) ((dpValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final float dp2PxActual(float dp) {
        return dp * ResManager.INSTANCE.getAppContext().getResources().getDisplayMetrics().density;
    }

    public final float dp2PxFloat(float dp) {
        return (dp * ResManager.INSTANCE.getAppContext().getResources().getDisplayMetrics().density) + 0.5f;
    }

    public final int getCssPx(@NotNull Context context, float pxValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (((int) (pxValue / context.getResources().getDisplayMetrics().density)) * 96) / 160;
    }

    public final double mmToPx(@NotNull Context context, float mm) {
        Intrinsics.checkNotNullParameter(context, "context");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.densityDpi;
        int i2 = displayMetrics.widthPixels;
        return ((i2 / (i2 / i)) / 25.4d) * mm;
    }

    public final float pt2px(@NotNull Context context, float pt) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (pt * context.getResources().getDisplayMetrics().densityDpi) / 72;
    }

    public final float px2DpFloat(float px) {
        return (px / ResManager.INSTANCE.getAppContext().getResources().getDisplayMetrics().density) + 0.5f;
    }

    public final int px2dip(@NotNull Context context, float pxValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) ((pxValue / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final float px2pt(@NotNull Context context, float px) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (px * 72) / context.getResources().getDisplayMetrics().densityDpi;
    }

    public final int px2sp(@NotNull Context context, float pxValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) ((pxValue / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public final int sp2px(@NotNull Context context, float spValue) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) ((spValue * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }
}
