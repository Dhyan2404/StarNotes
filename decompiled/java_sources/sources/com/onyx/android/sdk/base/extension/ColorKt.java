package com.onyx.android.sdk.base.extension;

import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0002\b\u0007\u001a\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\n\u0010\u0004\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0002*\u00020\u0000\u001a\n\u0010\u0006\u001a\u00020\u0002*\u00020\u0000\u001a\u0012\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007\u001a\n\u0010\n\u001a\u00020\u0000*\u00020\u0000\u001a\u001e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00000\r2\u0006\u0010\f\u001a\u00020\u000bø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b\u001a\n\u0010\u0011\u001a\u00020\u000b*\u00020\u0000\u001a\u0016\u0010\u0013\u001a\u00020\u0000*\u00020\u00002\b\b\u0003\u0010\u0012\u001a\u00020\u0000H\u0007\u001a\u001c\u0010\u0016\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0015\u001a\u00020\u0007\u001a\u0018\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0017H\u0002\u001a\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0001\u001a\u00020\u0000H\u0002\u001a\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0000H\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, m61528d2 = {"", "color", "", "isColorOpaque", "hasTransparent", "isTransparent", "isDarkColor", "", "alphaRatio", "multiplyColorAlpha", "removeAlpha", "", "colorString", "Lkotlin/Result;", "parseColorSafety", Constants.GET_PARAMETER_SIG, "parseColorValueSafety", "colorToHexString", "blendColor", "similarWithoutAlpha", NotificationCompat.WearableExtender.f5054t, "minContrastRatio", "isLowContrastRatio", "", "l1", "l2", "a", "b", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_COMPONENT_STRING, "c", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Color.kt\ncom/onyx/android/sdk/base/extension/ColorKt\n+ 2 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,114:1\n117#2:115\n*S KotlinDebug\n*F\n+ 1 Color.kt\ncom/onyx/android/sdk/base/extension/ColorKt\n*L\n69#1:115\n*E\n"})
/* loaded from: classes7.dex */
public final class ColorKt {
    /* renamed from: a */
    public static final double m31909a(double d, double d2) {
        Pair pair = d > d2 ? new Pair(Double.valueOf(d), Double.valueOf(d2)) : new Pair(Double.valueOf(d2), Double.valueOf(d));
        return (((Number) pair.component1()).doubleValue() + 0.05d) / (((Number) pair.component2()).doubleValue() + 0.05d);
    }

    /* renamed from: b */
    public static final double m31910b(int i) {
        return (m31911c((i >> 16) & 255) * 0.2126d) + (m31911c((i >> 8) & 255) * 0.7152d) + (m31911c(i & 255) * 0.0722d);
    }

    /* renamed from: c */
    public static final double m31911c(int i) {
        double d = i / 255.0d;
        return d <= 0.03928d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
    }

    @NotNull
    public static final String colorToHexString(int i) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(ColorUtils.HEX_ARGB_COLOR_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    public static final boolean hasTransparent(int i) {
        return !isColorOpaque(i);
    }

    public static final boolean isColorOpaque(int i) {
        return Color.alpha(i) == 255;
    }

    public static final boolean isDarkColor(int i) {
        return i != 0 && ((((double) Color.red(i)) * 0.299d) + (((double) Color.green(i)) * 0.587d)) + (((double) Color.blue(i)) * 0.114d) < 128.0d;
    }

    public static final boolean isLowContrastRatio(@ColorInt int i, int i2, float f) {
        return m31909a(m31910b(i), m31910b(i2)) <= ((double) f);
    }

    public static /* synthetic */ boolean isLowContrastRatio$default(int i, int i2, float f, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            f = 1.25f;
        }
        return isLowContrastRatio(i, i2, f);
    }

    public static final boolean isTransparent(int i) {
        return Color.alpha(i) == 0;
    }

    public static final int multiplyColorAlpha(int i, float f) {
        int coerceIn;
        coerceIn = RangesKt___RangesKt.coerceIn((int) (Color.alpha(i) * f), 0, 255);
        return Color.argb(coerceIn, Color.red(i), Color.green(i), Color.blue(i));
    }

    @NotNull
    public static final Object parseColorSafety(@NotNull String colorString) {
        Intrinsics.checkNotNullParameter(colorString, "colorString");
        try {
            Result.Companion companion = Result.INSTANCE;
            return Result.m72621constructorimpl(Integer.valueOf(Color.parseColor(colorString)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m72621constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final int parseColorValueSafety(@NotNull String colorString) {
        Intrinsics.checkNotNullParameter(colorString, "colorString");
        Object parseColorSafety = parseColorSafety(colorString);
        if (Result.m72627isFailureimpl(parseColorSafety)) {
            parseColorSafety = null;
        }
        Integer num = (Integer) parseColorSafety;
        if (num != null) {
            return num.intValue();
        }
        return -16777216;
    }

    public static final int removeAlpha(int i) {
        return Color.argb(255, Color.red(i), Color.green(i), Color.blue(i));
    }

    @ColorInt
    public static final int similarWithoutAlpha(@ColorInt int i, @ColorInt int i2) {
        int roundToInt;
        int roundToInt2;
        int roundToInt3;
        float f = ((i >> 24) & 255) / 255.0f;
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        int red2 = Color.red(i2);
        int green2 = Color.green(i2);
        int blue2 = Color.blue(i2);
        float f2 = 1.0f - f;
        roundToInt = MathKt__MathJVMKt.roundToInt((red * f) + (red2 * f2));
        roundToInt2 = MathKt__MathJVMKt.roundToInt((green * f) + (green2 * f2));
        roundToInt3 = MathKt__MathJVMKt.roundToInt((blue * f) + (blue2 * f2));
        return Color.rgb(roundToInt, roundToInt2, roundToInt3);
    }

    public static /* synthetic */ int similarWithoutAlpha$default(int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = -1;
        }
        return similarWithoutAlpha(i, i2);
    }
}
