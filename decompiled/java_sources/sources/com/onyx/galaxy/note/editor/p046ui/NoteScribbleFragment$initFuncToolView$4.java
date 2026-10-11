package com.onyx.galaxy.note.editor.p046ui;

import android.graphics.Rect;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class NoteScribbleFragment$initFuncToolView$4 extends FunctionReferenceImpl implements Function0<Rect> {
    public NoteScribbleFragment$initFuncToolView$4(Object obj) {
        super(0, obj, NoteScribbleFragment.class, "getEditorContainerRect", "getEditorContainerRect$note_overseasRelease()Landroid/graphics/Rect;", 0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Rect invoke() {
        return ((NoteScribbleFragment) this.receiver).getEditorContainerRect$note_overseasRelease();
    }
}
