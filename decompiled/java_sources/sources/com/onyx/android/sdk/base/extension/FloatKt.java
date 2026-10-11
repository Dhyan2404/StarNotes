package com.onyx.android.sdk.base.extension;

import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0004\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0001\u001a\u001c\u0010\u0003\u001a\u00020\u0004*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001\u001a\u0012\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\b\u001a\u00020\t\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0001\u001a\u0012\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\f\u001a\u00020\r¨\u0006\u000e"}, m61528d2 = {"ceil", "", Keywords.FUNC_FLOOR_STRING, "isApproximatelyEqual", "", Constants.ATTRVAL_OTHER, "tolerance", "keepFloat", "bits", "", "roundToIntFloat", "safeDivide", "divisor", "", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class FloatKt {
    public static final float ceil(float f) {
        return (float) Math.ceil(f);
    }

    public static final float floor(float f) {
        return (float) Math.floor(f);
    }

    public static final boolean isApproximatelyEqual(float f, float f2, float f3) {
        return (Float.isNaN(f2) || Float.isNaN(f) || Float.isInfinite(f2) || Float.isInfinite(f) || Math.abs(f - f2) > f3) ? false : true;
    }

    public static /* synthetic */ boolean isApproximatelyEqual$default(float f, float f2, float f3, int i, Object obj) {
        if ((i & 2) != 0) {
            f3 = 0.1f;
        }
        return isApproximatelyEqual(f, f2, f3);
    }

    public static final float keepFloat(float f, int i) {
        int roundToInt;
        float pow = (float) Math.pow(10.0f, i);
        roundToInt = MathKt__MathJVMKt.roundToInt(f * pow);
        return roundToInt / pow;
    }

    public static final float roundToIntFloat(float f) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(f);
        return roundToInt;
    }

    public static final float safeDivide(float f, @NotNull Number divisor) {
        Intrinsics.checkNotNullParameter(divisor, "divisor");
        float floatValue = divisor.floatValue();
        return (floatValue > 0.0f ? 1 : (floatValue == 0.0f ? 0 : -1)) == 0 ? f : f / floatValue;
    }
}
