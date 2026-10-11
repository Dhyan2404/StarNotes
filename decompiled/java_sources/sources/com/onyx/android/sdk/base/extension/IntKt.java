package com.onyx.android.sdk.base.extension;

import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0001\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001\u001a\u0012\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001¨\u0006\n"}, m61528d2 = {"defaultIfZero", "", IStyleSheet.CLASS_PLACEHOLDER, "formatNumber", "", "hasFlag", "", "flag", "safeDivide", "divisor", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nInt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Int.kt\ncom/onyx/android/sdk/base/extension/IntKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"})
/* loaded from: classes7.dex */
public final class IntKt {
    public static final int defaultIfZero(int i, int i2) {
        Integer valueOf = Integer.valueOf(i);
        if (!(valueOf.intValue() != 0)) {
            valueOf = null;
        }
        return valueOf != null ? valueOf.intValue() : i2;
    }

    @NotNull
    public static final String formatNumber(int i) {
        if (i > 9) {
            return String.valueOf(i);
        }
        StringBuilder sb = new StringBuilder();
        sb.append('0');
        sb.append(i);
        return sb.toString();
    }

    public static final boolean hasFlag(int i, int i2) {
        return (i & i2) == i2;
    }

    public static final int safeDivide(int i, int i2) {
        return i2 == 0 ? i : i / i2;
    }
}
