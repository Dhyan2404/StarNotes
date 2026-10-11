package com.onyx.android.sdk.reader.api;

import androidx.annotation.FloatRange;
import androidx.credentials.provider.utils.PrivilegedApp;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H&J\b\u0010\u000b\u001a\u00020\fH'J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\b\u0010\u0011\u001a\u00020\u000eH&J\b\u0010\u0012\u001a\u00020\u000eH&J\b\u0010\u0013\u001a\u00020\u000eH&J\b\u0010\u0014\u001a\u00020\u000eH&J\b\u0010\u0015\u001a\u00020\u0006H\u0016J\b\u0010\u0016\u001a\u00020\u0006H&J\b\u0010\u0017\u001a\u00020\u000eH\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u000eH&J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0004H\u0016¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderPagination;", "", "chapterList", "", "", "clearPaginationCache", "", "closePagination", "getInitPaginationPosition", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "chapterID", "getPaginationProgress", "", "hasPaginationNext", "", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/reader/api/PaginationChapterInfo;", "isAbortPagination", "isAllPaginationComplete", "isCurrentChapterPaginationComplete", "isNeedClearPaginationCache", "layoutPageForSimpleDocument", "onPaginationFinally", "onPaginationStart", "paginationNext", "setAbortPagination", "abort", "updateReaderPageInfo", "chapterId", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderPagination {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static List<String> chapterList(@NotNull ReaderPagination readerPagination) {
            List<String> emptyList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        public static void layoutPageForSimpleDocument(@NotNull ReaderPagination readerPagination) {
        }

        public static boolean onPaginationStart(@NotNull ReaderPagination readerPagination) {
            return true;
        }

        public static void updateReaderPageInfo(@NotNull ReaderPagination readerPagination, @NotNull String chapterId) {
            Intrinsics.checkNotNullParameter(chapterId, "chapterId");
        }
    }

    @NotNull
    List<String> chapterList();

    void clearPaginationCache();

    void closePagination();

    @NotNull
    ReaderPosition getInitPaginationPosition(@NotNull String chapterID);

    @FloatRange(from = 0.0d, m280to = 1.0d)
    float getPaginationProgress();

    boolean hasPaginationNext(@Nullable PaginationChapterInfo info);

    boolean isAbortPagination();

    boolean isAllPaginationComplete();

    boolean isCurrentChapterPaginationComplete();

    boolean isNeedClearPaginationCache();

    void layoutPageForSimpleDocument();

    void onPaginationFinally();

    boolean onPaginationStart();

    @Nullable
    PaginationChapterInfo paginationNext(@NotNull PaginationChapterInfo info);

    void setAbortPagination(boolean abort);

    void updateReaderPageInfo(@NotNull String chapterId);
}
