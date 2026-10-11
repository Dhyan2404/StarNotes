package com.onyx.galaxy.note.editor.view.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.chad.library.adapter4.viewholder.DataBindingHolder;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.databinding.ItemNotePageThumbnailBinding;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00040\u0003B\u0005¢\u0006\u0002\u0010\u0005J\u001d\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH&¢\u0006\u0002\u0010\u000bJ&\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nH\u0014J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/adapter/BasePageThumbnailListAdapter;", "T", "", "Lcom/onyx/galaxy/note/editor/view/adapter/BasePageListAdapter;", "Lcom/onyx/galaxy/note/databinding/ItemNotePageThumbnailBinding;", "()V", "createItemModel", "editorBundle", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", FirebaseAnalytics.Param.INDEX, "", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Ljava/lang/Object;", "onCreateViewHolder", "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;", "context", "Landroid/content/Context;", "parent", "Landroid/view/ViewGroup;", "viewType", "setPageCount", "", "pageCount", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public abstract class BasePageThumbnailListAdapter<T> extends BasePageListAdapter<T, ItemNotePageThumbnailBinding> {
    @NotNull
    public abstract T createItemModel(@NotNull EditorBundle editorBundle, int index);

    public final void setPageCount(int pageCount) {
        EditorBundle editorBundle = getEditorBundle();
        if (editorBundle == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < pageCount; i++) {
            arrayList.add(createItemModel(editorBundle, i));
        }
        submitList(arrayList);
    }

    @Override // com.chad.library.adapter4.BaseQuickAdapter
    @NotNull
    public DataBindingHolder<ItemNotePageThumbnailBinding> onCreateViewHolder(@NotNull Context context, @NotNull ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parent, "parent");
        ItemNotePageThumbnailBinding inflate = ItemNotePageThumbnailBinding.inflate(LayoutInflater.from(context), parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return new DataBindingHolder<>(inflate);
    }
}
