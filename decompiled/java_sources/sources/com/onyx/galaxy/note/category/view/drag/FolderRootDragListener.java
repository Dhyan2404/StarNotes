package com.onyx.galaxy.note.category.view.drag;

import android.annotation.SuppressLint;
import android.content.ClipDescription;
import android.view.DragEvent;
import android.view.View;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.action.MoveNoteAction;
import com.onyx.galaxy.note.category.view.adapter.NoteListAdapter;
import com.onyx.galaxy.note.category.view.adapter.NotePageListAdapter;
import com.onyx.galaxy.note.common.data.NoteTreeBundle;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0003J\u0010\u0010\f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/drag/FolderRootDragListener;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "itemView", "Landroid/view/DragEvent;", "e", "", "onDrag", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "originModel", "", "c", "b", "d", "a", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFolderRootDragListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderRootDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/FolderRootDragListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,109:1\n256#2,2:110\n256#2,2:112\n*S KotlinDebug\n*F\n+ 1 FolderRootDragListener.kt\ncom/onyx/galaxy/note/category/view/drag/FolderRootDragListener\n*L\n94#1:110,2\n99#1:112,2\n*E\n"})
/* loaded from: classes9.dex */
public final class FolderRootDragListener implements View.OnDragListener {

    /* renamed from: com.onyx.galaxy.note.category.view.drag.FolderRootDragListener$a */
    /* loaded from: classes9.dex */
    public static final class C11461a<T> implements Consumer {

        /* renamed from: e */
        public static final C11461a<T> f55600e = new C11461a<>();

        /* renamed from: a */
        public final void m44578a(boolean z) {
            if (z) {
                return;
            }
            ToastUtils.INSTANCE.show(C10651R.string.move_folder_conflicted, true);
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m44578a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: a */
    public final boolean m44574a(DragEvent e) {
        Object localState = e.getLocalState();
        Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel");
        return ((SyncNoteModel) localState).isLibrary();
    }

    /* renamed from: b */
    public final void m44575b(View itemView) {
        View findViewById = itemView.findViewById(C10651R.id.v_drag_in);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        findViewById.setVisibility(0);
        itemView.invalidate();
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: c */
    public final void m44576c(SyncNoteModel originModel) {
        List mutableListOf;
        if (originModel.getParentUniqueId() == null) {
            return;
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(originModel);
        new MoveNoteAction(mutableListOf, NoteTreeBundle.INSTANCE.getFolderRootNote()).build().subscribe(C11461a.f55600e);
    }

    /* renamed from: d */
    public final void m44577d(View itemView) {
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
            m44577d(itemView);
            return false;
        }
        ClipDescription clipDescription = e.getClipDescription();
        CharSequence label = clipDescription != null ? clipDescription.getLabel() : null;
        boolean z = Intrinsics.areEqual(label, NoteListAdapter.TAG) || Intrinsics.areEqual(label, NotePageListAdapter.TAG);
        boolean areEqual = Intrinsics.areEqual(label, NoteFolderTreeDragListener.TAG);
        int action = e.getAction();
        if (action == 1) {
            return z ? m44574a(e) : areEqual;
        }
        if (action != 2) {
            if (action != 3) {
                if (action == 5) {
                    m44575b(itemView);
                    return true;
                }
                if (action != 6) {
                    return false;
                }
                m44577d(itemView);
                return true;
            }
            Object localState = e.getLocalState();
            Intrinsics.checkNotNull(localState, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.db.model.SyncNoteModel");
            m44576c((SyncNoteModel) localState);
        }
        return true;
    }
}
