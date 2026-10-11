package com.onyx.galaxy.note.editor.view.adapter;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.PageDataModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0014\u0010\t\u001a\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/PageThumbnailListAdapter;", "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;", "Lcom/onyx/android/sdk/universal/editor/data/PageDataModel;", "()V", "createItemModel", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", FirebaseAnalytics.Param.INDEX, "", "setPageData", "", "virtualPageList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public class PageThumbnailListAdapter extends BasePageThumbnailListAdapter<PageDataModel> {
    public final void setPageData(@NotNull List<VirtualPageModel> virtualPageList) {
        Intrinsics.checkNotNullParameter(virtualPageList, "virtualPageList");
        EditorBundle editorBundle = getEditorBundle();
        if (editorBundle == null) {
            return;
        }
        submitList(PageDataModel.INSTANCE.fromVirtualPageList(editorBundle, virtualPageList));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.galaxy.note.editor.view.adapter.BasePageThumbnailListAdapter
    @NotNull
    public PageDataModel createItemModel(@NotNull EditorBundle editorBundle, int index) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        return new PageDataModel(editorBundle, index, null, null, null, 28, null);
    }
}
