package com.onyx.android.sdk.universal.editor.doc;

import android.graphics.RectF;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.data.BoxCellInfo;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.onyx.android.sdk.universal.editor.data.MovePageArgs;
import com.onyx.android.sdk.universal.editor.data.PageMarginArgs;
import com.onyx.android.sdk.universal.editor.data.VirtualDocOpenResultInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH&J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\f\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0016\u0010\u0014\u001a\u00020\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H&J\b\u0010\u0018\u001a\u00020\u0019H&J\b\u0010\u001a\u001a\u00020\u0003H&J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u0003H&J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0003H&J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\u000e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0016H&J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0012\u0010 \u001a\u0004\u0018\u00010\u00032\u0006\u0010!\u001a\u00020\u0005H&J\u0012\u0010 \u001a\u0004\u0018\u00010\u00032\u0006\u0010\"\u001a\u00020#H&J\u0012\u0010 \u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\b\u0010$\u001a\u00020#H&J\u0010\u0010%\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0013H&J\u000e\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030\u0016H&J\u0010\u0010'\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0018\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010*\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010)\u001a\u00020#H\u0016J\u0018\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\u00162\b\b\u0002\u0010.\u001a\u00020\u0013H&J\n\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0016\u00101\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u00102\u001a\u000203H&J\u0010\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u000206H&J\u0012\u00107\u001a\u0004\u0018\u00010\u00032\u0006\u00108\u001a\u00020\nH&J\b\u00109\u001a\u00020\u0006H&J\b\u0010:\u001a\u00020;H&J\u000e\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00170=H&J\u0010\u0010>\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\b\u0010?\u001a\u00020\u0011H\u0016J\u0010\u0010@\u001a\u00020\u00112\u0006\u0010A\u001a\u00020-H&J\u0010\u0010B\u001a\u00020\u00062\u0006\u00108\u001a\u00020\nH&J\u0010\u0010C\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0018\u0010D\u001a\u00020\u00062\u0006\u0010)\u001a\u00020#2\u0006\u0010E\u001a\u00020FH&J\u0010\u0010G\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010H\u001a\u00020\u00062\u0006\u0010I\u001a\u00020\u0013H\u0016J\u0010\u0010J\u001a\u00020\u00062\u0006\u0010K\u001a\u00020LH&J\u0016\u0010M\u001a\u00020\u00112\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H&¨\u0006N"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;", "", "addPage", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "boxCellInfo", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", "", "virtualPage", "boxInfoSnapshot", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "clearPage", "close", "copyPage", "copyPageArgs", "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "deleteBookmark", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "deleteTocEntry", "tocEntries", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "ensureGlobalNotePage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "ensureGlobalPage", "ensureNotePage", "getCoverPage", "getCoverPageId", "getDirtyVirtualPages", "getNotePage", "getVirtualPage", "cellInfo", FirebaseAnalytics.Param.INDEX, "", "getVirtualPageCount", "getVirtualPageIndex", "getVirtualPageList", "gotoPage", "insertPage", "pageIndex", "isCoverPage", "isNeedUpdateCover", "loadBookmarkList", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "keyword", "loadGeoLayoutBackground", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "loadTocEntries", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "movePage", "movePageArgs", "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "obtainVirtualPage", "boxInfo", "onDocCreated", "onDocOpened", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", "readTableOfContent", "Lcom/onyx/android/sdk/base/data/Tree;", "removePage", "save", "updateBookmark", "model", "updateBoxInfo", "updateCoverPage", "updateOriginPageRectF", "newOriginRectF", "Landroid/graphics/RectF;", "updatePage", "updatePageIdOnInit", "currentPageId", "updatePageMargin", "args", "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", "updateTocEntry", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface VirtualDocPolicy {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        @NotNull
        public static VirtualPage addPage(@NotNull VirtualDocPolicy virtualDocPolicy, @NotNull BoxCellInfo boxCellInfo) {
            Intrinsics.checkNotNullParameter(boxCellInfo, "boxCellInfo");
            return new VirtualPage();
        }

        @NotNull
        public static String getCoverPageId(@NotNull VirtualDocPolicy virtualDocPolicy) {
            return "";
        }

        public static boolean isNeedUpdateCover(@NotNull VirtualDocPolicy virtualDocPolicy, int i) {
            return false;
        }

        public static /* synthetic */ List loadBookmarkList$default(VirtualDocPolicy virtualDocPolicy, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadBookmarkList");
            }
            if ((i & 1) != 0) {
                str = "";
            }
            return virtualDocPolicy.loadBookmarkList(str);
        }

        @Nullable
        public static GeoLayout loadGeoLayoutBackground(@NotNull VirtualDocPolicy virtualDocPolicy) {
            return null;
        }

        public static boolean save(@NotNull VirtualDocPolicy virtualDocPolicy) {
            return false;
        }

        public static void updatePageIdOnInit(@NotNull VirtualDocPolicy virtualDocPolicy, @NotNull String currentPageId) {
            Intrinsics.checkNotNullParameter(currentPageId, "currentPageId");
        }
    }

    @NotNull
    VirtualPage addPage(@NotNull BoxCellInfo boxCellInfo);

    void addPage(@NotNull VirtualPage virtualPage);

    @NotNull
    List<BoxInfo> boxInfoSnapshot();

    void clearPage(@NotNull VirtualPage virtualPage);

    void close();

    @NotNull
    VirtualPage copyPage(@NotNull CopyPageArgs copyPageArgs);

    boolean deleteBookmark(@NotNull String pageId);

    boolean deleteTocEntry(@NotNull List<VirtualTocModel> tocEntries);

    @NotNull
    NotePage ensureGlobalNotePage();

    @NotNull
    VirtualPage ensureGlobalPage();

    @NotNull
    NotePage ensureNotePage(@NotNull VirtualPage virtualPage);

    @Nullable
    VirtualPage getCoverPage();

    @NotNull
    String getCoverPageId();

    @NotNull
    List<VirtualPage> getDirtyVirtualPages();

    @Nullable
    NotePage getNotePage(@NotNull VirtualPage virtualPage);

    @Nullable
    VirtualPage getVirtualPage(int index);

    @Nullable
    VirtualPage getVirtualPage(@NotNull BoxCellInfo cellInfo);

    @Nullable
    VirtualPage getVirtualPage(@NotNull String pageId);

    int getVirtualPageCount();

    int getVirtualPageIndex(@NotNull String pageId);

    @NotNull
    List<VirtualPage> getVirtualPageList();

    boolean gotoPage(@NotNull VirtualPage virtualPage);

    void insertPage(int pageIndex, @NotNull VirtualPage virtualPage);

    boolean isCoverPage(@NotNull String pageId);

    boolean isNeedUpdateCover(int pageIndex);

    @NotNull
    List<VirtualBookmarkModel> loadBookmarkList(@NotNull String keyword);

    @Nullable
    GeoLayout loadGeoLayoutBackground();

    @NotNull
    List<VirtualTocModel> loadTocEntries(@NotNull CBQueryArgs queryArgs);

    void movePage(@NotNull MovePageArgs movePageArgs);

    @Nullable
    VirtualPage obtainVirtualPage(@NotNull BoxInfo boxInfo);

    void onDocCreated();

    @NotNull
    VirtualDocOpenResultInfo onDocOpened();

    @NotNull
    Tree<VirtualTocModel> readTableOfContent();

    void removePage(@NotNull VirtualPage virtualPage);

    boolean save();

    boolean updateBookmark(@NotNull VirtualBookmarkModel model);

    void updateBoxInfo(@NotNull BoxInfo boxInfo);

    void updateCoverPage(@NotNull VirtualPage virtualPage);

    void updateOriginPageRectF(int pageIndex, @NotNull RectF newOriginRectF);

    void updatePage(@NotNull VirtualPage virtualPage);

    void updatePageIdOnInit(@NotNull String currentPageId);

    void updatePageMargin(@NotNull PageMarginArgs args);

    boolean updateTocEntry(@NotNull List<VirtualTocModel> tocEntries);
}
