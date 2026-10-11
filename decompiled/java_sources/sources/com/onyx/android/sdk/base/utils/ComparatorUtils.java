package com.onyx.android.sdk.base.utils;

import com.onyx.android.sdk.base.data.SortOrder;
import com.onyx.android.sdk.base.extension.StringKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.math.BigDecimal;
import java.text.Collator;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b!\u0010\"J\u0006\u0010\u0003\u001a\u00020\u0002J\"\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\u0007J \u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007J \u0010\f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0016\u0010\u000f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J \u0010\u0011\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0006\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\u0007J$\u0010\u0013\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00122\b\u0010\u0006\u001a\u0004\u0018\u00010\u00122\b\u0010\b\u001a\u0004\u0018\u00010\u0007J \u0010\u0014\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007J \u0010\u0016\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u00152\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0018\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\tH\u0002J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\tH\u0002R\u001e\u0010 \u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/ComparatorUtils;", "", "", "updateCollator", "", "lhs", "rhs", "Lcom/onyx/android/sdk/base/data/SortOrder;", "ascOrder", "", "numberStrComparator", "stringComparator", "onyxStringComparator", "firstString", "secondString", "onyxStringComparatorAsc", "", "longComparator", "Ljava/util/Date;", "dateComparator", "integerComparator", "", "booleanComparator", "string", gon.f71290o0, "b", "end", "Ljava/math/BigDecimal;", "a", Constants.COLLATOR_SIG, "kotlin.jvm.PlatformType", Constants.COLLATOR_SIG, "collator", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class ComparatorUtils {

    @NotNull
    public static final ComparatorUtils INSTANCE = new ComparatorUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static Collator collator = Collator.getInstance(Locale.CHINESE);

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SortOrder.values().length];
            try {
                iArr[SortOrder.Desc.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SortOrder.Asc.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: a */
    public final BigDecimal m32027a(String string, int start, int end) {
        String substring = string.substring(start, end);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return new BigDecimal(substring);
    }

    /* renamed from: b */
    public final int m32028b(String string, int start) {
        while (start < string.length() && Character.isDigit(string.charAt(start))) {
            start++;
        }
        return start;
    }

    public final int booleanComparator(boolean lhs, boolean rhs, @Nullable SortOrder ascOrder) {
        if ((ascOrder == null ? -1 : WhenMappings.$EnumSwitchMapping$0[ascOrder.ordinal()]) == 1) {
            if (lhs != rhs) {
                if (!rhs) {
                    return -1;
                }
                return 1;
            }
            return 0;
        }
        if (lhs != rhs) {
            if (!lhs) {
                return -1;
            }
            return 1;
        }
        return 0;
    }

    public final int dateComparator(@Nullable Date lhs, @Nullable Date rhs, @Nullable SortOrder ascOrder) {
        return longComparator(lhs != null ? lhs.getTime() : 0L, rhs != null ? rhs.getTime() : 0L, ascOrder);
    }

    public final int integerComparator(int lhs, int rhs, @Nullable SortOrder ascOrder) {
        return (ascOrder == null ? -1 : WhenMappings.$EnumSwitchMapping$0[ascOrder.ordinal()]) == 1 ? Intrinsics.compare(rhs, lhs) : Intrinsics.compare(lhs, rhs);
    }

    public final int longComparator(long lhs, long rhs, @Nullable SortOrder ascOrder) {
        return (ascOrder == null ? -1 : WhenMappings.$EnumSwitchMapping$0[ascOrder.ordinal()]) == 1 ? Intrinsics.compare(rhs, lhs) : Intrinsics.compare(lhs, rhs);
    }

    public final int numberStrComparator(@Nullable String lhs, @Nullable String rhs, @NotNull SortOrder ascOrder) {
        Intrinsics.checkNotNullParameter(ascOrder, "ascOrder");
        boolean isNumeric = StringUtils.isNumeric(lhs);
        boolean isNumeric2 = StringUtils.isNumeric(rhs);
        int longComparator = longComparator(isNumeric ? NumberUtils.toLong(lhs) : Long.MAX_VALUE, isNumeric2 ? NumberUtils.toLong(rhs) : Long.MAX_VALUE, ascOrder);
        if (longComparator != 0) {
            return longComparator;
        }
        if (isNumeric && isNumeric2) {
            return 0;
        }
        return WhenMappings.$EnumSwitchMapping$0[ascOrder.ordinal()] == 1 ? Collator.getInstance(Locale.CHINESE).compare(rhs, lhs) : Collator.getInstance(Locale.CHINESE).compare(lhs, rhs);
    }

    public final int onyxStringComparator(@NotNull String lhs, @NotNull String rhs, @Nullable SortOrder ascOrder) {
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        Intrinsics.checkNotNullParameter(rhs, "rhs");
        return (ascOrder == null ? -1 : WhenMappings.$EnumSwitchMapping$0[ascOrder.ordinal()]) == 2 ? onyxStringComparatorAsc(lhs, rhs) : -onyxStringComparatorAsc(lhs, rhs);
    }

    public final int onyxStringComparatorAsc(@NotNull String firstString, @NotNull String secondString) {
        Intrinsics.checkNotNullParameter(firstString, "firstString");
        Intrinsics.checkNotNullParameter(secondString, "secondString");
        String safelyGetStr = StringKt.safelyGetStr(firstString);
        String safelyGetStr2 = StringKt.safelyGetStr(secondString);
        int length = safelyGetStr.length();
        int length2 = safelyGetStr2.length();
        int i = 0;
        int i2 = 0;
        while (i < length && i2 < length2) {
            char charAt = safelyGetStr.charAt(i);
            char charAt2 = safelyGetStr2.charAt(i2);
            boolean isDigit = Character.isDigit(charAt);
            boolean isDigit2 = Character.isDigit(charAt2);
            boolean z = (isDigit || isDigit2) ? false : true;
            int compare = collator.compare(String.valueOf(charAt), String.valueOf(charAt2));
            if (z && compare == 0) {
                i++;
                i2++;
            } else {
                if (z && compare != 0) {
                    return compare;
                }
                if (isDigit != isDigit2) {
                    return isDigit ? -1 : 1;
                }
                int m32028b = m32028b(safelyGetStr, i);
                int m32028b2 = m32028b(safelyGetStr2, i2);
                int compareTo = m32027a(safelyGetStr, i, m32028b).compareTo(m32027a(safelyGetStr2, i2, m32028b2));
                if (compareTo != 0) {
                    return compareTo;
                }
                i = m32028b;
                i2 = m32028b2;
            }
        }
        return length - length2;
    }

    public final int stringComparator(@NotNull String lhs, @NotNull String rhs, @Nullable SortOrder ascOrder) {
        Intrinsics.checkNotNullParameter(lhs, "lhs");
        Intrinsics.checkNotNullParameter(rhs, "rhs");
        return onyxStringComparator(lhs, rhs, ascOrder);
    }

    public final void updateCollator() {
        collator = Collator.getInstance(LocaleUtils.INSTANCE.getCurrentLocale(ResManager.INSTANCE.getAppContext()));
    }
}
