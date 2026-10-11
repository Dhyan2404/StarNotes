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
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000b\u001a\u00020\u0004H\u0016J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0016\u0010\u0013\u001a\u00020\u00102\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0006H\u0016J\u0010\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u0016J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015H\u0016J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00062\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010#\u001a\u00020\"H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00060\u0015H\u0016J\u0010\u0010&\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\"2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010)\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0016\u0010*\u001a\b\u0012\u0004\u0012\u00020+0\u00152\u0006\u0010,\u001a\u00020\u0012H\u0016J\u0016\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u000202H\u0016J\u0012\u00103\u001a\u0004\u0018\u00010\u00062\u0006\u00104\u001a\u00020\tH\u0016J\b\u00105\u001a\u00020\u0004H\u0016J\b\u00106\u001a\u000207H\u0016J\u000e\u00108\u001a\b\u0012\u0004\u0012\u00020\u001609H\u0016J\u0010\u0010:\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010;\u001a\u00020\u00102\u0006\u0010<\u001a\u00020+H\u0016J\u0010\u0010=\u001a\u00020\u00042\u0006\u00104\u001a\u00020\tH\u0016J\u0010\u0010>\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010?\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\"2\u0006\u0010@\u001a\u00020AH\u0016J\u0010\u0010B\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010C\u001a\u00020\u00042\u0006\u0010D\u001a\u00020EH\u0016J\u0016\u0010F\u001a\u00020\u00102\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0016¨\u0006G"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/doc/ReaderDocPolicy;", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;", "()V", "addPage", "", "virtualPage", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "boxInfoSnapshot", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "clearPage", "close", "copyPage", "copyPageArgs", "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "deleteBookmark", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "deleteTocEntry", "tocEntries", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "ensureGlobalNotePage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "ensureGlobalPage", "ensureNotePage", "getCoverPage", "getDirtyVirtualPages", "getNotePage", "getVirtualPage", "cellInfo", "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;", FirebaseAnalytics.Param.INDEX, "", "getVirtualPageCount", "getVirtualPageIndex", "getVirtualPageList", "gotoPage", "insertPage", "pageIndex", "isCoverPage", "loadBookmarkList", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "keyword", "loadTocEntries", "queryArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "movePage", "movePageArgs", "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;", "obtainVirtualPage", "boxInfo", "onDocCreated", "onDocOpened", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", "readTableOfContent", "Lcom/onyx/android/sdk/base/data/Tree;", "removePage", "updateBookmark", "model", "updateBoxInfo", "updateCoverPage", "updateOriginPageRectF", "newOriginRectF", "Landroid/graphics/RectF;", "updatePage", "updatePageMargin", "args", "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;", "updateTocEntry", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderDocPolicy implements VirtualDocPolicy {
    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public VirtualPage addPage(@NotNull BoxCellInfo boxCellInfo) {
        return VirtualDocPolicy.DefaultImpls.addPage(this, boxCellInfo);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<BoxInfo> boxInfoSnapshot() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void clearPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void close() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public VirtualPage copyPage(@NotNull CopyPageArgs copyPageArgs) {
        Intrinsics.checkNotNullParameter(copyPageArgs, "copyPageArgs");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean deleteBookmark(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean deleteTocEntry(@NotNull List<VirtualTocModel> tocEntries) {
        Intrinsics.checkNotNullParameter(tocEntries, "tocEntries");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public NotePage ensureGlobalNotePage() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public VirtualPage ensureGlobalPage() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public NotePage ensureNotePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage getCoverPage() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public String getCoverPageId() {
        return VirtualDocPolicy.DefaultImpls.getCoverPageId(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<VirtualPage> getDirtyVirtualPages() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public NotePage getNotePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage getVirtualPage(int index) {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public int getVirtualPageCount() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public int getVirtualPageIndex(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<VirtualPage> getVirtualPageList() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean gotoPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void insertPage(int pageIndex, @NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean isCoverPage(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean isNeedUpdateCover(int i) {
        return VirtualDocPolicy.DefaultImpls.isNeedUpdateCover(this, i);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<VirtualBookmarkModel> loadBookmarkList(@NotNull String keyword) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public GeoLayout loadGeoLayoutBackground() {
        return VirtualDocPolicy.DefaultImpls.loadGeoLayoutBackground(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public List<VirtualTocModel> loadTocEntries(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void movePage(@NotNull MovePageArgs movePageArgs) {
        Intrinsics.checkNotNullParameter(movePageArgs, "movePageArgs");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage obtainVirtualPage(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void onDocCreated() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public VirtualDocOpenResultInfo onDocOpened() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @NotNull
    public Tree<VirtualTocModel> readTableOfContent() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void removePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean save() {
        return VirtualDocPolicy.DefaultImpls.save(this);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean updateBookmark(@NotNull VirtualBookmarkModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updateBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "boxInfo");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updateCoverPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updateOriginPageRectF(int pageIndex, @NotNull RectF newOriginRectF) {
        Intrinsics.checkNotNullParameter(newOriginRectF, "newOriginRectF");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updatePage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updatePageIdOnInit(@NotNull String str) {
        VirtualDocPolicy.DefaultImpls.updatePageIdOnInit(this, str);
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void updatePageMargin(@NotNull PageMarginArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public boolean updateTocEntry(@NotNull List<VirtualTocModel> tocEntries) {
        Intrinsics.checkNotNullParameter(tocEntries, "tocEntries");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    public void addPage(@NotNull VirtualPage virtualPage) {
        Intrinsics.checkNotNullParameter(virtualPage, "virtualPage");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage getVirtualPage(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy
    @Nullable
    public VirtualPage getVirtualPage(@NotNull BoxCellInfo cellInfo) {
        Intrinsics.checkNotNullParameter(cellInfo, "cellInfo");
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }
}
