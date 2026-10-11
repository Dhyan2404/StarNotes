package com.onyx.galaxy.note.category.view.drag;

import android.annotation.SuppressLint;
import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import com.onyx.android.sdk.replicator.note.bean.NoteModelBean;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.UpdateNoteAction;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0003J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/NoTagDragListener;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "itemView", "Landroid/view/DragEvent;", "e", "", "onDrag", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "originModel", "", "b", "a", "c", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoTagDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoTagDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoTagDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,93:1\n256#2,2:94\n256#2,2:96\n*S KotlinDebug\n*F\n+ 1 NoTagDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/NoTagDragListener\n*L\n84#1:94,2\n89#1:96,2\n*E\n"})
/* loaded from: classes9.dex */
public final class NoTagDragListener implements View.OnDragListener {
    /* renamed from: a */
    public final void m44579a(View itemView) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        findViewById.setVisibility(0);
        itemView.invalidate();
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: b */
    public final void m44580b(SyncNoteModel originModel) {
        List listOf;
        if (originModel.getTagIdList().isEmpty()) {
            return;
        }
        originModel.getTagIdList().clear();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(originModel);
        new UpdateNoteAction(listOf, false, false, 6, null).build().subscribe();
    }

    /* renamed from: c */
    public final void m44581c(View itemView) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        findViewById.setVisibility(8);
        itemView.invalidate();
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(@NotNull View itemView, @NotNull DragEvent e) {
        Intrinsics.checkNotNullParameter(itemView, "itemView");
        Intrinsics.checkNotNullParameter(e, "e");
        if (e.getAction() == 4) {
            m44581c(itemView);
            return false;
        }
        ClipDescription clipDescription = e.getClipDescription();
        if (!Intrinsics.areEqual(clipDescription != null ? clipDescription.getLabel() : null, NoteListAdapter.TAG)) {
            return false;
        }
        Object localState = e.getLocalState();
        if (!(localState instanceof NoteModelBean)) {
            Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel");
        }
        SyncNoteModel syncNoteModel = (SyncNoteModel) localState;
        int action = e.getAction();
        if (action == 1) {
            return syncNoteModel.isDocument();
        }
        if (action != 2) {
            if (action != 3) {
                if (action == 5) {
                    m44579a(itemView);
                    return true;
                }
                if (action != 6) {
                    return false;
                }
                m44581c(itemView);
                return true;
            }
            m44580b(syncNoteModel);
        }
        return true;
    }
}
