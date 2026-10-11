package com.onyx.galaxy.note.editor.view.popup;

import android.view.View;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.galaxy.note.editor.event.KeyboardCloseEvent;
import com.onyx.galaxy.note.editor.event.KeyboardOpenEvent;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0006\u001a\u00020\u0004J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u000bH\u0007R\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/KeyboardAwareSeekBarPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;", "Landroid/view/View;", "view", "", "setContentView", "showLeftAbove", "dismiss", "Lcom/onyx/galaxy/note/editor/event/KeyboardOpenEvent;", NotificationCompat.CATEGORY_EVENT, "onKeyboardOpen", "Lcom/onyx/galaxy/note/editor/event/KeyboardCloseEvent;", "onKeyboardClose", "r", "Landroid/view/View;", "parentView", Constants.CONSTRUCTOR_NAME, "(Landroid/view/View;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class KeyboardAwareSeekBarPopup extends SeekBarPopup {

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final View parentView;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public KeyboardAwareSeekBarPopup(@org.jetbrains.annotations.NotNull android.view.View r3) {
        /*
            r2 = this;
            java.lang.String r0 = "parentView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            android.content.Context r0 = r3.getContext()
            java.lang.String r1 = "getContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0)
            r2.parentView = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.popup.KeyboardAwareSeekBarPopup.<init>(android.view.View):void");
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        GlobalBundle.INSTANCE.unregister(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardClose(@NotNull KeyboardCloseEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PopupExtKt.updateLeftAbove(this, this.parentView, -getShadowOffset());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onKeyboardOpen(@NotNull KeyboardOpenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PopupExtKt.updateLeftAbove(this, this.parentView, -getShadowOffset());
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
        setFocusable(false);
    }

    public final void showLeftAbove() {
        GlobalBundle.INSTANCE.register(this);
        View view = this.parentView;
        PopupExtKt.showLeftAbove(this, view, view, Integer.valueOf(-getShadowOffset()), Integer.valueOf(-getShadowOffset()));
    }
}
