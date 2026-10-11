package com.onyx.android.sdk.reader.api;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.engine.sdk.DisplayMetrics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&J\n\u0010\f\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H&¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderView;", "", "getNavigator", "Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "getPagination", "Lcom/onyx/android/sdk/reader/api/ReaderPagination;", "getReaderHitTestManager", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "getRenderer", "Lcom/onyx/android/sdk/reader/api/ReaderRenderer;", "getSearchManager", "Lcom/onyx/android/sdk/reader/api/ReaderSearchManager;", "getTextStyleManager", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyleManager;", "setupDisplayMetrics", "", "displayMetrics", "Lcom/onyx/engine/sdk/DisplayMetrics;", "updateViewSize", "size", "Lcom/onyx/android/sdk/base/data/Size;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderView {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @Nullable
        public static ReaderPagination getPagination(@NotNull ReaderView readerView) {
            return null;
        }

        public static void setupDisplayMetrics(@NotNull ReaderView readerView, @NotNull DisplayMetrics displayMetrics) {
            Intrinsics.checkNotNullParameter(displayMetrics, "displayMetrics");
        }
    }

    @NotNull
    ReaderNavigator getNavigator();

    @Nullable
    ReaderPagination getPagination();

    @NotNull
    ReaderHitTestManager getReaderHitTestManager();

    @NotNull
    ReaderRenderer getRenderer();

    @NotNull
    ReaderSearchManager getSearchManager();

    @Nullable
    ReaderTextStyleManager getTextStyleManager();

    void setupDisplayMetrics(@NotNull DisplayMetrics displayMetrics);

    void updateViewSize(@NotNull Size size);
}
