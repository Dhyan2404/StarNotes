package com.onyx.android.sdk.reader.api;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.onyx.android.sdk.reader.impl.ReaderPageTypeImpl;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\bH\u0016J\u0018\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\bH\u0016J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderPageDataProvider;", "", "beginLookupPageData", "", "endLookupPageData", "getLastSentence", "Lcom/onyx/android/sdk/reader/api/ReaderSentence;", "position", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getPageContentMatrix", "Landroid/graphics/Matrix;", "page", "", "getPageOriginSize", "Landroid/graphics/RectF;", "getPageParagraphList", "", "", "getPageSizeWithDpi", "dpi", "", "getPageText", "getSentence", "sentenceStartPosition", "getText", "startPosition", "endPosition", "hasAnnotationData", "", "pageType", "Lcom/onyx/android/sdk/reader/api/ReaderPageType;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderPageDataProvider {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static void beginLookupPageData(@NotNull ReaderPageDataProvider readerPageDataProvider) {
        }

        public static void endLookupPageData(@NotNull ReaderPageDataProvider readerPageDataProvider) {
        }

        @Nullable
        public static ReaderSentence getLastSentence(@NotNull ReaderPageDataProvider readerPageDataProvider, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return null;
        }

        @NotNull
        public static Matrix getPageContentMatrix(@NotNull ReaderPageDataProvider readerPageDataProvider, int i) {
            return new Matrix();
        }

        @NotNull
        public static RectF getPageOriginSize(@NotNull ReaderPageDataProvider readerPageDataProvider, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return new RectF();
        }

        @NotNull
        public static List<String> getPageParagraphList(@NotNull ReaderPageDataProvider readerPageDataProvider, @NotNull ReaderPosition position) {
            List<String> emptyList;
            Intrinsics.checkNotNullParameter(position, "position");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @NotNull
        public static RectF getPageSizeWithDpi(@NotNull ReaderPageDataProvider readerPageDataProvider, @NotNull ReaderPosition position, float f) {
            Intrinsics.checkNotNullParameter(position, "position");
            return readerPageDataProvider.getPageOriginSize(position);
        }

        @Nullable
        public static String getPageText(@NotNull ReaderPageDataProvider readerPageDataProvider, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return null;
        }

        @Nullable
        public static ReaderSentence getSentence(@NotNull ReaderPageDataProvider readerPageDataProvider, @NotNull ReaderPosition position, @Nullable ReaderPosition readerPosition) {
            Intrinsics.checkNotNullParameter(position, "position");
            return null;
        }

        @NotNull
        public static String getText(@NotNull ReaderPageDataProvider readerPageDataProvider, @NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition) {
            Intrinsics.checkNotNullParameter(startPosition, "startPosition");
            Intrinsics.checkNotNullParameter(endPosition, "endPosition");
            return "";
        }

        public static boolean hasAnnotationData(@NotNull ReaderPageDataProvider readerPageDataProvider, int i) {
            return false;
        }

        @NotNull
        public static ReaderPageType pageType(@NotNull ReaderPageDataProvider readerPageDataProvider, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return ReaderPageTypeImpl.INSTANCE.getDummy();
        }
    }

    void beginLookupPageData();

    void endLookupPageData();

    @Nullable
    ReaderSentence getLastSentence(@NotNull ReaderPosition position);

    @NotNull
    Matrix getPageContentMatrix(int page);

    @NotNull
    RectF getPageOriginSize(@NotNull ReaderPosition position);

    @NotNull
    List<String> getPageParagraphList(@NotNull ReaderPosition position);

    @NotNull
    RectF getPageSizeWithDpi(@NotNull ReaderPosition position, float dpi);

    @Nullable
    String getPageText(@NotNull ReaderPosition position);

    @Nullable
    ReaderSentence getSentence(@NotNull ReaderPosition position, @Nullable ReaderPosition sentenceStartPosition);

    @NotNull
    String getText(@NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition);

    boolean hasAnnotationData(int page);

    @NotNull
    ReaderPageType pageType(@NotNull ReaderPosition position);
}
