package com.onyx.android.sdk.reader.api;

import android.graphics.RectF;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\"\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\"\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0006H\u0016J\"\u0010\u001e\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u000bH\u0016¨\u0006 "}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderHitTestManager;", "", "allText", "", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "pagePosition", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "firstText", "getAllCharRectList", "Landroid/graphics/RectF;", "page", "", "getPageTextInfoState", "Lcom/onyx/android/sdk/reader/api/PageTextInfoState;", "hasText", "", "lastSelectionEndOfLine", "startPosition", "lastText", "lastTextEndOfLine", "selectOnDocument", "args", "Lcom/onyx/android/sdk/reader/api/ReaderSelectTextArgs;", "selectOnScreen", gon.f71290o0, "Lcom/onyx/android/sdk/reader/api/ReaderHitTestArgs;", "end", "hitTestOptions", "Lcom/onyx/android/sdk/reader/api/ReaderHitTestOptions;", "endPosition", "selectSelection", "textNum", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderHitTestManager {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static List<ReaderSelection> allText(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition) {
            List<ReaderSelection> emptyList;
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @Nullable
        public static ReaderSelection firstText(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition) {
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            return null;
        }

        @NotNull
        public static List<RectF> getAllCharRectList(@NotNull ReaderHitTestManager readerHitTestManager, int i) {
            List<RectF> emptyList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @NotNull
        public static PageTextInfoState getPageTextInfoState(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition) {
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            return PageTextInfoState.DOCUMENT;
        }

        public static boolean hasText(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition) {
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            return false;
        }

        @Nullable
        public static ReaderSelection lastSelectionEndOfLine(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition) {
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            Intrinsics.checkNotNullParameter(startPosition, "startPosition");
            return null;
        }

        @Nullable
        public static ReaderSelection lastText(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition) {
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            return null;
        }

        @Nullable
        public static ReaderSelection lastTextEndOfLine(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition) {
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            Intrinsics.checkNotNullParameter(startPosition, "startPosition");
            return null;
        }

        @Nullable
        public static ReaderSelection selectOnDocument(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderSelectTextArgs args) {
            Intrinsics.checkNotNullParameter(args, "args");
            return null;
        }

        @Nullable
        public static ReaderSelection selectOnScreen(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderHitTestArgs start, @NotNull ReaderHitTestArgs end, @NotNull ReaderHitTestOptions hitTestOptions) {
            Intrinsics.checkNotNullParameter(start, "start");
            Intrinsics.checkNotNullParameter(end, "end");
            Intrinsics.checkNotNullParameter(hitTestOptions, "hitTestOptions");
            return null;
        }

        @Nullable
        public static ReaderSelection selectSelection(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition, int i) {
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            Intrinsics.checkNotNullParameter(startPosition, "startPosition");
            return null;
        }

        @Nullable
        public static ReaderSelection selectOnScreen(@NotNull ReaderHitTestManager readerHitTestManager, @NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition) {
            Intrinsics.checkNotNullParameter(pagePosition, "pagePosition");
            Intrinsics.checkNotNullParameter(startPosition, "startPosition");
            Intrinsics.checkNotNullParameter(endPosition, "endPosition");
            return null;
        }
    }

    @NotNull
    List<ReaderSelection> allText(@NotNull ReaderPosition pagePosition);

    @Nullable
    ReaderSelection firstText(@NotNull ReaderPosition pagePosition);

    @NotNull
    List<RectF> getAllCharRectList(int page);

    @NotNull
    PageTextInfoState getPageTextInfoState(@NotNull ReaderPosition pagePosition);

    boolean hasText(@NotNull ReaderPosition pagePosition);

    @Nullable
    ReaderSelection lastSelectionEndOfLine(@NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition);

    @Nullable
    ReaderSelection lastText(@NotNull ReaderPosition pagePosition);

    @Nullable
    ReaderSelection lastTextEndOfLine(@NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition);

    @Nullable
    ReaderSelection selectOnDocument(@NotNull ReaderSelectTextArgs args);

    @Nullable
    ReaderSelection selectOnScreen(@NotNull ReaderHitTestArgs start, @NotNull ReaderHitTestArgs end, @NotNull ReaderHitTestOptions hitTestOptions);

    @Nullable
    ReaderSelection selectOnScreen(@NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition, @NotNull ReaderPosition endPosition);

    @Nullable
    ReaderSelection selectSelection(@NotNull ReaderPosition pagePosition, @NotNull ReaderPosition startPosition, int textNum);
}
