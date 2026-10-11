package com.onyx.galaxy.note.category.view.adapter;

import androidx.recyclerview.widget.DiffUtil;
import com.onyx.android.sdk.universal.editor.bean.NoteSearchBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/adapter/NoteSearchBeanDiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;", "()V", "areContentsTheSame", "", "oldItem", "newItem", "areItemsTheSame", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteSearchBeanDiffCallback extends DiffUtil.ItemCallback<NoteSearchBean> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areContentsTheSame(@NotNull NoteSearchBean oldItem, @NotNull NoteSearchBean newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem.getNoteModel().getUniqueId(), newItem.getNoteModel().getUniqueId()) && Intrinsics.areEqual(oldItem.getPageId(), newItem.getPageId()) && oldItem.getPageIndex() == newItem.getPageIndex() && oldItem.getType() == newItem.getType() && oldItem.getPageUpdatedAt() == newItem.getPageUpdatedAt();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    public boolean areItemsTheSame(@NotNull NoteSearchBean oldItem, @NotNull NoteSearchBean newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem.getNoteModel().getUniqueId(), newItem.getNoteModel().getUniqueId()) && Intrinsics.areEqual(oldItem.getPageId(), newItem.getPageId()) && oldItem.getPageIndex() == newItem.getPageIndex() && oldItem.getType() == newItem.getType();
    }
}
