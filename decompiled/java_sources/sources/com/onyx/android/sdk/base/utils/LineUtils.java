package com.onyx.android.sdk.base.utils;

import androidx.annotation.FloatRange;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0015\u0010\u0016J(\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0007J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0007J\u0016\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002J\u0016\u0010\f\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u000f¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/LineUtils;", "", "", "startX", "startY", "endX", "endY", "getHorizontalAngle", "dx", "dy", "", "isHorizontalLine", "isVerticalLine", "", "a", "I", "UNDERLINE_HORIZONTAL_ANGLE", "b", "UNDERLINE_VERTICAL_ANGLE", "c", "RIGHT_ANGLE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class LineUtils {

    @NotNull
    public static final LineUtils INSTANCE = new LineUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final int UNDERLINE_HORIZONTAL_ANGLE = 30;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int UNDERLINE_VERTICAL_ANGLE = 30;

    /* renamed from: c, reason: from kotlin metadata */
    public static final int RIGHT_ANGLE = 90;

    @FloatRange(from = 0.0d, m280to = 90.0d)
    public final float getHorizontalAngle(float startX, float startY, float endX, float endY) {
        return getHorizontalAngle(endX - startX, startY - endY);
    }

    public final boolean isHorizontalLine(float dx, float dy) {
        return getHorizontalAngle(dx, dy) <= 30.0f;
    }

    public final boolean isVerticalLine(float dx, float dy) {
        return ((float) 90) - getHorizontalAngle(dx, dy) <= 30.0f;
    }

    @FloatRange(from = 0.0d, m280to = 90.0d)
    public final float getHorizontalAngle(float dx, float dy) {
        return (float) ((180 * Math.atan2(Math.abs(dy), Math.abs(dx))) / 3.141592653589793d);
    }
}
