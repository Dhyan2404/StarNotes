package com.onyx.galaxy.note.category.view.adapter;

import androidx.recyclerview.widget.DiffUtil;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0004J$\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J$\u0010\t\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¨\u0006\n"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/TreeNodeDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/onyx/android/sdk/base/data/Tree;", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "()V", "areContentsTheSame", "", "oldItem", "newItem", "areItemsTheSame", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class TreeNodeDiffCallback extends DiffUtil.ItemCallback<Tree<SyncNoteModel>> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(@NotNull Tree<SyncNoteModel> oldItem, @NotNull Tree<SyncNoteModel> newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        SyncNoteModel item = oldItem.getItem();
        Intrinsics.checkNotNull(item);
        String uniqueId = item.getUniqueId();
        SyncNoteModel item2 = newItem.getItem();
        Intrinsics.checkNotNull(item2);
        if (Intrinsics.areEqual(uniqueId, item2.getUniqueId())) {
            SyncNoteModel item3 = oldItem.getItem();
            Intrinsics.checkNotNull(item3);
            long updatedAt = item3.getUpdatedAt();
            SyncNoteModel item4 = newItem.getItem();
            Intrinsics.checkNotNull(item4);
            if (updatedAt == item4.getUpdatedAt()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(@NotNull Tree<SyncNoteModel> oldItem, @NotNull Tree<SyncNoteModel> newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        SyncNoteModel item = oldItem.getItem();
        Intrinsics.checkNotNull(item);
        String uniqueId = item.getUniqueId();
        SyncNoteModel item2 = newItem.getItem();
        Intrinsics.checkNotNull(item2);
        if (Intrinsics.areEqual(uniqueId, item2.getUniqueId())) {
            SyncNoteModel item3 = oldItem.getItem();
            Intrinsics.checkNotNull(item3);
            long updatedAt = item3.getUpdatedAt();
            SyncNoteModel item4 = newItem.getItem();
            Intrinsics.checkNotNull(item4);
            if (updatedAt == item4.getUpdatedAt()) {
                return true;
            }
        }
        return false;
    }
}
