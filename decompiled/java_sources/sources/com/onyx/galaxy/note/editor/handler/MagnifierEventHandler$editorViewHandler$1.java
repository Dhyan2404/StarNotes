package com.onyx.galaxy.note.editor.handler;

import android.view.DragEvent;
import android.view.View;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.onyx.android.sdk.universal.editor.view.EditorBundleManager;
import com.onyx.android.sdk.universal.editor.view.EditorViewHandler;
import com.onyx.galaxy.note.editor.handler.MagnifierEventHandler$editorViewHandler$1;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0014¨\u0006\u0004"}, m61528d2 = {"com/onyx/galaxy/note/editor/handler/MagnifierEventHandler$editorViewHandler$1", "Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;", "createDragListener", "Landroid/view/View$OnDragListener;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class MagnifierEventHandler$editorViewHandler$1 extends EditorViewHandler {
    public MagnifierEventHandler$editorViewHandler$1(EditorBundle editorBundle, MagnifierEventHandler magnifierEventHandler, EditorBundleManager editorBundleManager) {
        super(EventHandlerManager.MAGNIFIER, editorBundleManager, editorBundle, magnifierEventHandler);
    }

    /* renamed from: k */
    public static final boolean m46182k(View view, DragEvent dragEvent) {
        return false;
    }

    @Override // com.onyx.android.sdk.universal.editor.view.EditorViewHandler
    @NotNull
    public View.OnDragListener createDragListener() {
        return new View.OnDragListener() { // from class: com.sunia.HTREnginev2.z6j
            @Override // android.view.View.OnDragListener
            public final boolean onDrag(View view, DragEvent dragEvent) {
                boolean m46182k;
                m46182k = MagnifierEventHandler$editorViewHandler$1.m46182k(view, dragEvent);
                return m46182k;
            }
        };
    }
}
