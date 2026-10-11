package com.onyx.galaxy.note.editor.p046ui;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment$initShapeToolView$1;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.OnShapeToolDragListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, m61528d2 = {"com/onyx/galaxy/note/editor/ui/NoteScribbleFragment$initShapeToolView$1", "Lcom/onyx/galaxy/note/editor/view/toolbar/OnShapeToolDragListener;", "onDragStateChange", "", "isDragging", "", "dockType", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteScribbleFragment$initShapeToolView$1 implements OnShapeToolDragListener {

    /* renamed from: a */
    public final /* synthetic */ NoteScribbleFragment f59173a;

    public NoteScribbleFragment$initShapeToolView$1(NoteScribbleFragment noteScribbleFragment) {
        this.f59173a = noteScribbleFragment;
    }

    /* renamed from: b */
    public static final void m47035b(NoteScribbleFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m46948I1();
        this$0.m47008p1();
    }

    @Override // com.onyx.galaxy.note.editor.view.toolbar.OnShapeToolDragListener
    public void onDragStateChange(boolean isDragging, @NotNull DockType dockType) {
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.f59173a.m46992g2(isDragging ? null : dockType);
        this.f59173a.m46988e2(isDragging, dockType);
        if (!isDragging) {
            this.f59173a.m46958O0();
            this.f59173a.m46977Y1();
        }
        this.f59173a.m46971V1(isDragging, dockType);
        if (isDragging) {
            ConstraintLayout root = this.f59173a.getBinding$note_overseasRelease().getRoot();
            final NoteScribbleFragment noteScribbleFragment = this.f59173a;
            root.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.o1k
                @Override // java.lang.Runnable
                public final void run() {
                    NoteScribbleFragment$initShapeToolView$1.m47035b(NoteScribbleFragment.this);
                }
            }, ResManager.INSTANCE.getLong(C10651R.integer.times_1000));
        }
    }
}
