package com.onyx.galaxy.note.category.view;

import android.view.View;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H&¨\u0006\f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/OnNoteEventListener;", "", "onItemClicked", "", "note", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "onItemLongClicked", "itemView", "Landroid/view/View;", "onNoteMoved", "from", "target", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface OnNoteEventListener {
    void onItemClicked(@NotNull SyncNoteModel note);

    void onItemLongClicked(@NotNull View itemView);

    void onNoteMoved(@NotNull View itemView, @NotNull SyncNoteModel from, @NotNull SyncNoteModel target);
}
