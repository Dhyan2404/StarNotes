package com.onyx.android.sdk.base.utils;

import android.graphics.Bitmap;
import android.graphics.Color;
import com.google.android.exoplayer2.util.ColorParser;
import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.ColorKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.math3.dfp.Dfp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u001b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b0\u00101J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\fJ\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012J!\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u001e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u001c\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0014\u0010 \u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u001dR\u0014\u0010!\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u001dR\u0016\u0010$\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010&\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010#R\u0016\u0010(\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010#R\u0016\u0010*\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010#R\u0016\u0010-\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010,¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ColorUtils;", "", "", "color", "", "parseRGBColor", "red", "green", "blue", "baseColor", "", "alpha", "", Dfp.f108010j, "getColorWithAlpha", "toCSSHexColor", "toRgbaColor", "isColorLight", "Landroid/graphics/Bitmap;", "bitmap", "isColorDark", "foregroundColor", gon.f71255H, "", "calculateLuminance", "(ILjava/lang/Integer;)D", "blendColor", "blend", "HEX_COLOR_START", Constants.STRING_SIG, "HEX_CSS_COLOR_FORMAT", "HEX_ARGB_COLOR_FORMAT", "RGBA_COLOR_START", "RGB_COLOR_START", "a", "F", "RED_COLOR_LIGHT_PERCENT", "b", "GREEN_COLOR_LIGHT_PERCENT", "c", "BLUE_COLOR_LIGHT_PERCENT", "d", "LIGHT_COLOR_VALUE_INTERVAL", "e", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "DARK_COLOR_LUMINANCE_LIMIT", C6997f.f39671c, "DARK_COLOR_RATIO", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nColorUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorUtils.kt\ncom/onyx/android/sdk/base/utils/ColorUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,142:1\n731#2,9:143\n37#3,2:152\n117#4:154\n*S KotlinDebug\n*F\n+ 1 ColorUtils.kt\ncom/onyx/android/sdk/base/utils/ColorUtils\n*L\n44#1:143,9\n45#1:152,2\n67#1:154\n*E\n"})
/* loaded from: classes7.dex */
public final class ColorUtils {

    @NotNull
    public static final String HEX_ARGB_COLOR_FORMAT = "#%08X";

    @NotNull
    public static final String HEX_COLOR_START = "#";

    @NotNull
    public static final String HEX_CSS_COLOR_FORMAT = "#%06X";

    @NotNull
    public static final String RGBA_COLOR_START = "rgba";

    @NotNull
    public static final String RGB_COLOR_START = "RGB";

    @NotNull
    public static final ColorUtils INSTANCE = new ColorUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static float RED_COLOR_LIGHT_PERCENT = 0.299f;

    /* renamed from: b, reason: from kotlin metadata */
    public static float GREEN_COLOR_LIGHT_PERCENT = 0.587f;

    /* renamed from: c, reason: from kotlin metadata */
    public static float BLUE_COLOR_LIGHT_PERCENT = 0.114f;

    /* renamed from: d, reason: from kotlin metadata */
    public static float LIGHT_COLOR_VALUE_INTERVAL = 60.0f;

    /* renamed from: e, reason: from kotlin metadata */
    public static double DARK_COLOR_LUMINANCE_LIMIT = 0.3d;

    /* renamed from: f, reason: from kotlin metadata */
    public static double DARK_COLOR_RATIO = 0.7d;

    public static /* synthetic */ double calculateLuminance$default(ColorUtils colorUtils, int i, Integer num, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            num = -1;
        }
        return colorUtils.calculateLuminance(i, num);
    }

    public static /* synthetic */ int getColorWithAlpha$default(ColorUtils colorUtils, int i, float f, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = true;
        }
        return colorUtils.getColorWithAlpha(i, f, z);
    }

    public final int blend(int color, int blendColor, float alpha) {
        int roundToInt;
        int coerceIn;
        int roundToInt2;
        int coerceIn2;
        int roundToInt3;
        int coerceIn3;
        int red = Color.red(color);
        int green = Color.green(color);
        int blue = Color.blue(color);
        int red2 = Color.red(blendColor);
        int green2 = Color.green(blendColor);
        int blue2 = Color.blue(blendColor);
        float f = 1 - alpha;
        roundToInt = MathKt__MathJVMKt.roundToInt((red * f) + (red2 * alpha));
        coerceIn = RangesKt___RangesKt.coerceIn(roundToInt, 0, 255);
        roundToInt2 = MathKt__MathJVMKt.roundToInt((green * f) + (green2 * alpha));
        coerceIn2 = RangesKt___RangesKt.coerceIn(roundToInt2, 0, 255);
        roundToInt3 = MathKt__MathJVMKt.roundToInt((blue * f) + (blue2 * alpha));
        coerceIn3 = RangesKt___RangesKt.coerceIn(roundToInt3, 0, 255);
        return Color.rgb(coerceIn, coerceIn2, coerceIn3);
    }

    public final double calculateLuminance(int foregroundColor, @Nullable Integer backgroundColor) {
        if (backgroundColor != null) {
            foregroundColor = androidx.core.graphics.ColorUtils.compositeColors(foregroundColor, backgroundColor.intValue());
        }
        return androidx.core.graphics.ColorUtils.calculateLuminance(foregroundColor);
    }

    public final int getColorWithAlpha(int baseColor, float alpha, boolean multiply) {
        int coerceAtLeast;
        int coerceAtMost;
        if (multiply) {
            alpha = (((baseColor >> 24) & 255) * alpha) / 255;
        }
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(0, (int) (alpha * 255));
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(255, coerceAtLeast);
        return (coerceAtMost << 24) + (baseColor & 16777215);
    }

    public final boolean isColorDark(@NotNull Bitmap bitmap) {
        IntRange until;
        IntProgression step;
        int i;
        int i2;
        IntRange until2;
        IntProgression step2;
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        until = RangesKt___RangesKt.until(0, width);
        step = RangesKt___RangesKt.step(until, 10);
        int first = step.getFirst();
        int last = step.getLast();
        int step3 = step.getStep();
        if ((step3 > 0 && first <= last) || (step3 < 0 && last <= first)) {
            i = 0;
            i2 = 0;
            while (true) {
                until2 = RangesKt___RangesKt.until(0, height);
                step2 = RangesKt___RangesKt.step(until2, 10);
                int first2 = step2.getFirst();
                int last2 = step2.getLast();
                int step4 = step2.getStep();
                if ((step4 > 0 && first2 <= last2) || (step4 < 0 && last2 <= first2)) {
                    while (true) {
                        i2++;
                        int pixel = bitmap.getPixel(first, first2);
                        if (!ColorKt.isTransparent(pixel)) {
                            if (calculateLuminance(pixel, ColorKt.isColorOpaque(pixel) ? null : -1) < DARK_COLOR_LUMINANCE_LIMIT) {
                                i++;
                            }
                        }
                        if (first2 == last2) {
                            break;
                        }
                        first2 += step4;
                    }
                }
                if (first == last) {
                    break;
                }
                first += step3;
            }
        } else {
            i = 0;
            i2 = 0;
        }
        return ((double) i) / ((double) i2) > DARK_COLOR_RATIO;
    }

    public final boolean isColorLight(int color) {
        return ((RED_COLOR_LIGHT_PERCENT * ((float) Color.red(color))) + (GREEN_COLOR_LIGHT_PERCENT * ((float) Color.green(color)))) + (BLUE_COLOR_LIGHT_PERCENT * ((float) Color.blue(color))) > LIGHT_COLOR_VALUE_INTERVAL;
    }

    public final int parseRGBColor(int red, int green, int blue) {
        return (red << 16) | (-16777216) | (green << 8) | blue;
    }

    @NotNull
    public final String toCSSHexColor(int color) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(HEX_CSS_COLOR_FORMAT, Arrays.copyOf(new Object[]{Integer.valueOf(16777215 & color)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        return format;
    }

    @NotNull
    public final String toRgbaColor(int color) {
        return "rgba(" + Color.red(color) + ", " + Color.green(color) + ", " + Color.blue(color) + ", " + (Color.alpha(color) / 255.0f) + ')';
    }

    public final int parseRGBColor(@Nullable String color) {
        boolean startsWith$default;
        String replace$default;
        String replace$default2;
        String replace$default3;
        String replace$default4;
        List emptyList;
        CharSequence trim;
        CharSequence trim2;
        CharSequence trim3;
        if (color == null || color.length() == 0) {
            Debug.INSTANCE.m32044e(ColorUtils.class, "empty color", new Object[0]);
            return -16777216;
        }
        if (StringUtils.startsWithIgnoreCase(color, RGB_COLOR_START)) {
            replace$default = StringsKt__StringsJVMKt.replace$default(color, RGB_COLOR_START, "", false, 4, (Object) null);
            replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, ColorParser.f28273a, "", false, 4, (Object) null);
            replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, MotionUtils.f31761c, "", false, 4, (Object) null);
            replace$default4 = StringsKt__StringsJVMKt.replace$default(replace$default3, MotionUtils.f31762d, "", false, 4, (Object) null);
            List<String> split = new Regex(",").split(replace$default4, 0);
            if (!split.isEmpty()) {
                ListIterator<String> listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (!(listIterator.previous().length() == 0)) {
                        emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            String[] strArr = (String[]) emptyList.toArray(new String[0]);
            if (strArr.length != 3) {
                Debug.INSTANCE.m32044e(ColorUtils.class, "error color: " + replace$default4, new Object[0]);
            }
            MathUtils mathUtils = MathUtils.INSTANCE;
            trim = StringsKt__StringsKt.trim((CharSequence) strArr[0]);
            int parseInt = mathUtils.parseInt(trim.toString());
            trim2 = StringsKt__StringsKt.trim((CharSequence) strArr[1]);
            int parseInt2 = mathUtils.parseInt(trim2.toString());
            trim3 = StringsKt__StringsKt.trim((CharSequence) strArr[2]);
            return parseRGBColor(parseInt, parseInt2, mathUtils.parseInt(trim3.toString()));
        }
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(color, "#", false, 2, null);
        if (startsWith$default) {
            return Color.parseColor(color);
        }
        return -16777216;
    }
}
