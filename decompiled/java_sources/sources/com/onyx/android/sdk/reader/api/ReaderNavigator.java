package com.onyx.android.sdk.reader.api;

import androidx.annotation.IntRange;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u001a\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000e2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00120\u000e2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u0015\u001a\u00020\fH\u0017J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u000eH\u0016J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J)\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u000e2\u0006\u0010\u0006\u001a\u00020\u00032\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00050\u001cH\u0016¢\u0006\u0002\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u0003H\u0016J\b\u0010\u001f\u001a\u00020\u0003H\u0016J\b\u0010 \u001a\u00020\fH\u0016J\b\u0010!\u001a\u00020\fH\u0016J\b\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010%\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010'\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010(\u001a\u00020&H\u0016J\u0018\u0010)\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010*\u001a\u00020&H\u0016J\u0010\u0010+\u001a\u00020&2\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010,\u001a\u00020\u0003H\u0016J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020\fH\u0016J\u0010\u00101\u001a\u00020\u00032\u0006\u00100\u001a\u00020\fH\u0016J\u001a\u00102\u001a\u00020\u00032\u0006\u00103\u001a\u00020\u00052\b\b\u0002\u00104\u001a\u00020&H\u0016J\u0010\u00105\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u00107\u001a\u00020&H\u0016J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u00108\u001a\u0002092\u0006\u0010<\u001a\u00020=H\u0016¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/api/ReaderNavigator;", "", "firstPage", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "getChapterId", "", "position", "getChapterName", "getChapterStartPosition", "getImagePage", "Lcom/onyx/android/sdk/reader/api/ReaderImage;", "column", "", "getImages", "", "getInitPosition", "getLinkTarget", "link", "Lcom/onyx/android/sdk/reader/api/ReaderSelection;", "getLinkTargetSelection", "getLinks", "getPageIndexInCurrentChapter", "getPageLabel", "getPageLabelList", "getPageNumberByPosition", "getRichMedias", "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;", "ignoreObjIdList", "", "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;[Ljava/lang/String;)Ljava/util/List;", "getScreenEndPosition", "getScreenStartPosition", "getTotalPage", "getTotalPageCountInCurrentChapter", "getTotalReadingProgress", "", "getXPathByPosition", "gotoPosition", "", "hitPageCache", "isFirstPage", "isImagePage", "isLastPage", "isValidPosition", "lastPage", "nextPage", "nextScreen", "positionByPageIndex", "pageIndex", "positionByPositionInt", "positionByPositionString", "positionString", "useJsonPageIndexIfValid", "prevPage", "prevScreen", "supportPageId", "updateTocPageIndex", "", SyncConstant.LOCAL_TOC_DIR_NAME, "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;", "entry", "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ReaderNavigator {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static ReaderPosition firstPage(@NotNull ReaderNavigator readerNavigator) {
            return readerNavigator.positionByPageIndex(0);
        }

        @Nullable
        public static String getChapterId(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return null;
        }

        @NotNull
        public static String getChapterName(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return "";
        }

        @NotNull
        public static ReaderPosition getChapterStartPosition(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return position;
        }

        @Nullable
        public static ReaderImage getImagePage(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position, int i) {
            Intrinsics.checkNotNullParameter(position, "position");
            return null;
        }

        @NotNull
        public static List<ReaderImage> getImages(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            List<ReaderImage> emptyList;
            Intrinsics.checkNotNullParameter(position, "position");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @NotNull
        public static String getLinkTarget(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderSelection link) {
            Intrinsics.checkNotNullParameter(link, "link");
            return "";
        }

        @Nullable
        public static ReaderSelection getLinkTargetSelection(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderSelection link) {
            Intrinsics.checkNotNullParameter(link, "link");
            return null;
        }

        @NotNull
        public static List<ReaderSelection> getLinks(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            List<ReaderSelection> emptyList;
            Intrinsics.checkNotNullParameter(position, "position");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @IntRange(from = 0)
        public static int getPageIndexInCurrentChapter(@NotNull ReaderNavigator readerNavigator) {
            return 0;
        }

        @NotNull
        public static String getPageLabel(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return "";
        }

        @NotNull
        public static List<String> getPageLabelList(@NotNull ReaderNavigator readerNavigator) {
            List<String> emptyList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        public static int getPageNumberByPosition(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return 0;
        }

        @NotNull
        public static List<ReaderRichMedia> getRichMedias(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position, @NotNull String[] ignoreObjIdList) {
            List<ReaderRichMedia> emptyList;
            Intrinsics.checkNotNullParameter(position, "position");
            Intrinsics.checkNotNullParameter(ignoreObjIdList, "ignoreObjIdList");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }

        @NotNull
        public static ReaderPosition getScreenEndPosition(@NotNull ReaderNavigator readerNavigator) {
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        @NotNull
        public static ReaderPosition getScreenStartPosition(@NotNull ReaderNavigator readerNavigator) {
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        public static int getTotalPage(@NotNull ReaderNavigator readerNavigator) {
            return 0;
        }

        public static int getTotalPageCountInCurrentChapter(@NotNull ReaderNavigator readerNavigator) {
            return 0;
        }

        public static float getTotalReadingProgress(@NotNull ReaderNavigator readerNavigator) {
            return 0.0f;
        }

        @NotNull
        public static String getXPathByPosition(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return "";
        }

        public static boolean gotoPosition(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) throws ReaderException {
            Intrinsics.checkNotNullParameter(position, "position");
            return false;
        }

        public static boolean hitPageCache(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return true;
        }

        public static boolean isFirstPage(@NotNull ReaderNavigator readerNavigator) {
            return false;
        }

        public static boolean isImagePage(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position, int i) {
            Intrinsics.checkNotNullParameter(position, "position");
            return false;
        }

        public static boolean isLastPage(@NotNull ReaderNavigator readerNavigator) {
            return false;
        }

        public static boolean isValidPosition(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) {
            Intrinsics.checkNotNullParameter(position, "position");
            return false;
        }

        @NotNull
        public static ReaderPosition lastPage(@NotNull ReaderNavigator readerNavigator) {
            return readerNavigator.positionByPageIndex(readerNavigator.getTotalPage() - 1);
        }

        @NotNull
        public static ReaderPosition nextPage(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) throws ReaderException {
            Intrinsics.checkNotNullParameter(position, "position");
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        @NotNull
        public static ReaderPosition nextScreen(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) throws ReaderException {
            Intrinsics.checkNotNullParameter(position, "position");
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        @NotNull
        public static ReaderPosition positionByPageIndex(@NotNull ReaderNavigator readerNavigator, int i) {
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        @NotNull
        public static ReaderPosition positionByPositionInt(@NotNull ReaderNavigator readerNavigator, int i) {
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        @NotNull
        public static ReaderPosition positionByPositionString(@NotNull ReaderNavigator readerNavigator, @NotNull String positionString, boolean z) {
            Intrinsics.checkNotNullParameter(positionString, "positionString");
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        public static /* synthetic */ ReaderPosition positionByPositionString$default(ReaderNavigator readerNavigator, String str, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: positionByPositionString");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            return readerNavigator.positionByPositionString(str, z);
        }

        @NotNull
        public static ReaderPosition prevPage(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) throws ReaderException {
            Intrinsics.checkNotNullParameter(position, "position");
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        @NotNull
        public static ReaderPosition prevScreen(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderPosition position) throws ReaderException {
            Intrinsics.checkNotNullParameter(position, "position");
            return ReaderPositionImpl.INSTANCE.getDummy();
        }

        public static boolean supportPageId(@NotNull ReaderNavigator readerNavigator) {
            return false;
        }

        public static void updateTocPageIndex(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderDocumentTableOfContent toc) {
            Intrinsics.checkNotNullParameter(toc, "toc");
        }

        public static void updateTocPageIndex(@NotNull ReaderNavigator readerNavigator, @NotNull ReaderDocumentTableOfContentEntry entry) {
            Intrinsics.checkNotNullParameter(entry, "entry");
        }
    }

    @NotNull
    ReaderPosition firstPage();

    @Nullable
    String getChapterId(@NotNull ReaderPosition position);

    @NotNull
    String getChapterName(@NotNull ReaderPosition position);

    @NotNull
    ReaderPosition getChapterStartPosition(@NotNull ReaderPosition position);

    @Nullable
    ReaderImage getImagePage(@NotNull ReaderPosition position, int column);

    @NotNull
    List<ReaderImage> getImages(@NotNull ReaderPosition position);

    @NotNull
    ReaderPosition getInitPosition();

    @NotNull
    String getLinkTarget(@NotNull ReaderSelection link);

    @Nullable
    ReaderSelection getLinkTargetSelection(@NotNull ReaderSelection link);

    @NotNull
    List<ReaderSelection> getLinks(@NotNull ReaderPosition position);

    @IntRange(from = 0)
    int getPageIndexInCurrentChapter();

    @NotNull
    String getPageLabel(@NotNull ReaderPosition position);

    @NotNull
    List<String> getPageLabelList();

    int getPageNumberByPosition(@NotNull ReaderPosition position);

    @NotNull
    List<ReaderRichMedia> getRichMedias(@NotNull ReaderPosition position, @NotNull String[] ignoreObjIdList);

    @NotNull
    ReaderPosition getScreenEndPosition();

    @NotNull
    ReaderPosition getScreenStartPosition();

    int getTotalPage();

    int getTotalPageCountInCurrentChapter();

    float getTotalReadingProgress();

    @NotNull
    String getXPathByPosition(@NotNull ReaderPosition position);

    boolean gotoPosition(@NotNull ReaderPosition position) throws ReaderException;

    boolean hitPageCache(@NotNull ReaderPosition position);

    boolean isFirstPage();

    boolean isImagePage(@NotNull ReaderPosition position, int column);

    boolean isLastPage();

    boolean isValidPosition(@NotNull ReaderPosition position);

    @NotNull
    ReaderPosition lastPage();

    @NotNull
    ReaderPosition nextPage(@NotNull ReaderPosition position) throws ReaderException;

    @NotNull
    ReaderPosition nextScreen(@NotNull ReaderPosition position) throws ReaderException;

    @NotNull
    ReaderPosition positionByPageIndex(int pageIndex);

    @NotNull
    ReaderPosition positionByPositionInt(int pageIndex);

    @NotNull
    ReaderPosition positionByPositionString(@NotNull String positionString, boolean useJsonPageIndexIfValid);

    @NotNull
    ReaderPosition prevPage(@NotNull ReaderPosition position) throws ReaderException;

    @NotNull
    ReaderPosition prevScreen(@NotNull ReaderPosition position) throws ReaderException;

    boolean supportPageId();

    void updateTocPageIndex(@NotNull ReaderDocumentTableOfContent r1);

    void updateTocPageIndex(@NotNull ReaderDocumentTableOfContentEntry entry);
}
