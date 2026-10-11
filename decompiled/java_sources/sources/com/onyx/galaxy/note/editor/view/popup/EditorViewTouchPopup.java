package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.View;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\r\u001a\u00020\b8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/EditorViewTouchPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "Landroid/view/View;", Constants.ELEMNAME_ANCHOR_STRING, "", "locationOffset", "", "show", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "q", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getTouchPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPoint", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class EditorViewTouchPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final TouchPoint touchPoint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorViewTouchPopup(@NotNull Context context, @NotNull TouchPoint touchPoint) {
        super(context, null, 2, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.touchPoint = touchPoint;
    }

    @NotNull
    public final TouchPoint getTouchPoint() {
        return this.touchPoint;
    }

    public void show(@NotNull View anchor, @NotNull int[] locationOffset) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(locationOffset, "locationOffset");
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        show(anchor, this.touchPoint, ((-ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null).getWidth()) / 2) + locationOffset[0] + ((int) ViewKt.getTranslationX(anchor, true, true)), locationOffset[1]);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void show(@NotNull View anchor) {
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        show(anchor, new int[]{0, 0});
    }
}
