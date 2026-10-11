package com.onyx.galaxy.note.editor.p046ui;

import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.ToolDragView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m61528d2 = {"<anonymous>", "", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteScribbleFragment$updateViewByTouchMode$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ DockType $dockType;
    final /* synthetic */ ToolDragView $it;
    final /* synthetic */ NoteScribbleFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteScribbleFragment$updateViewByTouchMode$1$1(NoteScribbleFragment noteScribbleFragment, DockType dockType, ToolDragView toolDragView) {
        super(0);
        this.this$0 = noteScribbleFragment;
        this.$dockType = dockType;
        this.$it = toolDragView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(NoteScribbleFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47008p1();
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.m46988e2(false, this.$dockType);
        this.this$0.m46992g2(this.$dockType);
        this.$it.updateView();
        ToolDragView toolDragView = this.this$0.getBinding$note_overseasRelease().shapeAndTool.getToolDragView();
        final NoteScribbleFragment noteScribbleFragment = this.this$0;
        toolDragView.post(new Runnable() { // from class: com.onyx.galaxy.note.editor.ui.d
            @Override // java.lang.Runnable
            public final void run() {
                NoteScribbleFragment$updateViewByTouchMode$1$1.invoke$lambda$0(NoteScribbleFragment.this);
            }
        });
    }
}
