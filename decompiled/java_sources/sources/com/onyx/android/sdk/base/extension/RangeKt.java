package com.onyx.android.sdk.base.extension;

import com.onyx.android.sdk.base.utils.MathUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedRange;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u001a-\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u00032\u0006\u0010\u0004\u001a\u0002H\u0001¢\u0006\u0002\u0010\u0005\u001a\u001e\u0010\u0006\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u001a\u0010\u0010\u000b\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\t0\u0003\u001a\u0010\u0010\u000b\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\f0\u0003¨\u0006\r"}, m61528d2 = {"clamp", "T", "", "Lorg/apache/commons/lang3/Range;", "value", "(Lorg/apache/commons/lang3/Range;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "intersected", "", "Lkotlin/ranges/ClosedRange;", "", Constants.ATTRVAL_OTHER, "length", "", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RangeKt {
    @NotNull
    public static final <T extends Comparable<? super T>> T clamp(@NotNull Range<T> range, @NotNull T value) {
        Intrinsics.checkNotNullParameter(range, "<this>");
        Intrinsics.checkNotNullParameter(value, "value");
        MathUtils mathUtils = MathUtils.INSTANCE;
        T minimum = range.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        T maximum = range.getMaximum();
        Intrinsics.checkNotNullExpressionValue(maximum, "getMaximum(...)");
        return (T) mathUtils.clamp(value, minimum, maximum);
    }

    public static final boolean intersected(@NotNull ClosedRange<Float> closedRange, @NotNull ClosedRange<Float> other) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (closedRange.isEmpty() || other.isEmpty()) {
            return false;
        }
        android.util.Range range = androidx.core.util.RangeKt.toRange(closedRange);
        android.util.Range range2 = androidx.core.util.RangeKt.toRange(other);
        return range.contains((android.util.Range) range2.getLower()) || range.contains((android.util.Range) range2.getUpper()) || range2.contains((android.util.Range) range.getLower()) || range2.contains((android.util.Range) range.getUpper());
    }

    public static final float length(@NotNull Range<Float> range) {
        Intrinsics.checkNotNullParameter(range, "<this>");
        float floatValue = range.getMaximum().floatValue();
        Float minimum = range.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        return floatValue - minimum.floatValue();
    }

    /* renamed from: length, reason: collision with other method in class */
    public static final int m72177length(@NotNull Range<Integer> range) {
        Intrinsics.checkNotNullParameter(range, "<this>");
        int intValue = range.getMaximum().intValue();
        Integer minimum = range.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        return intValue - minimum.intValue();
    }
}
