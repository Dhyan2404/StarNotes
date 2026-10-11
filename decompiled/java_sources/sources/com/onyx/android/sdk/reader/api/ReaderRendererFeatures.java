package com.onyx.android.sdk.reader.api;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\b\u0010\f\u001a\u00020\u0003H\u0016¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderRendererFeatures;", "", "supportChangeWritingMode", "", "supportCssOriginStyle", "supportFontEmboldenAdjustment", "supportFontEnhancementAdjustment", "supportFontGammaAdjustment", "supportFontSizeAdjustment", "supportLetterSpacingAdjustment", "supportRenderPageLink", "supportScale", "supportTypefaceAdjustment", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderRendererFeatures {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static boolean supportChangeWritingMode(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }

        public static boolean supportCssOriginStyle(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }

        public static boolean supportFontEmboldenAdjustment(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }

        public static boolean supportFontEnhancementAdjustment(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }

        public static boolean supportFontGammaAdjustment(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }

        public static boolean supportFontSizeAdjustment(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }

        public static boolean supportLetterSpacingAdjustment(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }

        public static boolean supportRenderPageLink(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }

        public static boolean supportScale(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return true;
        }

        public static boolean supportTypefaceAdjustment(@NotNull ReaderRendererFeatures readerRendererFeatures) {
            return false;
        }
    }

    boolean supportChangeWritingMode();

    boolean supportCssOriginStyle();

    boolean supportFontEmboldenAdjustment();

    boolean supportFontEnhancementAdjustment();

    boolean supportFontGammaAdjustment();

    boolean supportFontSizeAdjustment();

    boolean supportLetterSpacingAdjustment();

    boolean supportRenderPageLink();

    boolean supportScale();

    boolean supportTypefaceAdjustment();
}
