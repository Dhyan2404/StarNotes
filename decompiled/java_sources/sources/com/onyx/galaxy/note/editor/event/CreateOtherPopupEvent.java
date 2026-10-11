package com.onyx.galaxy.note.editor.event;

import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/event/CreateOtherPopupEvent;", "", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "a", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "getPopupView", "()Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "setPopupView", "(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;)V", "popupView", Constants.CONSTRUCTOR_NAME, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CreateOtherPopupEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public BasePopupWindow popupView;

    public CreateOtherPopupEvent(@NotNull BasePopupWindow popupView) {
        Intrinsics.checkNotNullParameter(popupView, "popupView");
        this.popupView = popupView;
    }

    @NotNull
    public final BasePopupWindow getPopupView() {
        return this.popupView;
    }

    public final void setPopupView(@NotNull BasePopupWindow basePopupWindow) {
        Intrinsics.checkNotNullParameter(basePopupWindow, "<set-?>");
        this.popupView = basePopupWindow;
    }
}
