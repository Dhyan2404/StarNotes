package com.onyx.galaxy.note.editor.view.magnifier;

import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\"\u0010\u000e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$OnViewStateChangedListener;", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;", "currentType", "", "accept", "", "destroy", "a", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;", "getPreviousMode", "()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;", "setPreviousMode", "(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V", "previousMode", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class BaseMagnifierViewStateChangedHandler implements MagnifierViewportView.OnViewStateChangedListener {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public MagnifierViewportView.Mode previousMode = MagnifierViewportView.Mode.NONE;

    public abstract boolean accept(@NotNull MagnifierViewportView.Mode currentType);

    public void destroy() {
    }

    @NotNull
    public final MagnifierViewportView.Mode getPreviousMode() {
        return this.previousMode;
    }

    public final void setPreviousMode(@NotNull MagnifierViewportView.Mode mode) {
        Intrinsics.checkNotNullParameter(mode, "<set-?>");
        this.previousMode = mode;
    }
}
