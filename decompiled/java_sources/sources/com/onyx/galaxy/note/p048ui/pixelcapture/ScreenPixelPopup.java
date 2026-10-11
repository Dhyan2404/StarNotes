package com.onyx.galaxy.note.p048ui.pixelcapture;

import android.content.Context;
import android.view.View;
import android.widget.PopupWindow;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0019\b\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0013¢\u0006\u0004\b\u0019\u0010\u001aJR\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\b\u0010\u0011\u001a\u00020\u000fH\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0002R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelPopup;", "Landroid/widget/PopupWindow;", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/widget/PopupWindow$OnDismissListener;", "Landroid/view/View;", "v", "", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "", "onLayoutChange", "onDismiss", "a", "Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;", "e", "Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;", "rootView", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/ui/pixelcapture/ScreenPixelView;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class ScreenPixelPopup extends PopupWindow implements View.OnLayoutChangeListener, PopupWindow.OnDismissListener {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ScreenPixelView rootView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScreenPixelPopup(@NotNull Context context, @NotNull ScreenPixelView rootView) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        this.rootView = rootView;
        setBackgroundDrawable(null);
        m51347a();
    }

    /* renamed from: a */
    public final void m51347a() {
        setContentView(this.rootView);
        setOutsideTouchable(false);
        setFocusable(true);
        getContentView().addOnLayoutChangeListener(this);
        setOnDismissListener(this);
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        getContentView().removeOnLayoutChangeListener(this);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(@Nullable View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        ViewKt.getParentView(contentView).requestLayout();
    }
}
