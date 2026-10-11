package com.onyx.galaxy.note.category.view.drag;

import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.category.event.NoteListDragEndEvent;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/NoteListDragListener;", "Landroid/view/View$OnDragListener;", "()V", "onDrag", "", "v", "Landroid/view/View;", "e", "Landroid/view/DragEvent;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteListDragListener implements View.OnDragListener {
    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View v, @NotNull DragEvent e) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(e, "e");
        if (e.getAction() == 4) {
            DocCollectionBundle.INSTANCE.postEvent(new NoteListDragEndEvent());
            return true;
        }
        ClipDescription clipDescription = e.getClipDescription();
        CharSequence label = clipDescription != null ? clipDescription.getLabel() : null;
        return Intrinsics.areEqual(label, NoteListAdapter.TAG) || Intrinsics.areEqual(label, NotePageListAdapter.TAG);
    }
}
