package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "", "getFontFamilyList", "", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;", "getOriginCssStyle", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "getStyle", "setFontEnhancement", "", SymmLQ.f108603e, "", "colorTable", "", "setStyle", "style", "setTextGamma", "gamma", "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderTextStyleManager {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @Nullable
        public static List<ReaderTextStyle.FontSpec> getFontFamilyList(@NotNull ReaderTextStyleManager readerTextStyleManager) {
            return null;
        }

        @Nullable
        public static ReaderTextStyle getOriginCssStyle(@NotNull ReaderTextStyleManager readerTextStyleManager) {
            return null;
        }

        @Nullable
        public static ReaderTextStyle getStyle(@NotNull ReaderTextStyleManager readerTextStyleManager) {
            return null;
        }

        public static void setFontEnhancement(@NotNull ReaderTextStyleManager readerTextStyleManager, int i, @NotNull int[] colorTable) {
            Intrinsics.checkNotNullParameter(colorTable, "colorTable");
        }

        public static void setStyle(@NotNull ReaderTextStyleManager readerTextStyleManager, @NotNull ReaderTextStyle style) {
            Intrinsics.checkNotNullParameter(style, "style");
        }

        public static void setTextGamma(@NotNull ReaderTextStyleManager readerTextStyleManager, float f) {
        }
    }

    @Nullable
    List<ReaderTextStyle.FontSpec> getFontFamilyList();

    @Nullable
    ReaderTextStyle getOriginCssStyle();

    @Nullable
    ReaderTextStyle getStyle();

    void setFontEnhancement(int threshold, @NotNull int[] colorTable);

    void setStyle(@NotNull ReaderTextStyle style);

    void setTextGamma(float gamma);
}
