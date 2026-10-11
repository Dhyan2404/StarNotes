package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.PopupCommonDeleteBinding;
import com.onyx.galaxy.note.editor.view.popup.CommonDeletePopup;
import com.onyx.galaxy.note.p048ui.view.BubbleDrawable;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\t¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/CommonDeletePopup;", "Landroid/widget/PopupWindow;", "", "b", "Ljava/lang/Runnable;", "a", "Ljava/lang/Runnable;", "callback", "Lcom/onyx/galaxy/note/databinding/PopupCommonDeleteBinding;", "Lcom/onyx/galaxy/note/databinding/PopupCommonDeleteBinding;", "binding", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/Runnable;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CommonDeletePopup extends PopupWindow {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Runnable callback;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final PopupCommonDeleteBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonDeletePopup(@NotNull Context context, @NotNull Runnable callback) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
        PopupCommonDeleteBinding inflate = PopupCommonDeleteBinding.inflate(LayoutInflater.from(context));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        setBackgroundDrawable(new BubbleDrawable());
        m48608b();
    }

    /* renamed from: c */
    public static final void m48607c(CommonDeletePopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
        this$0.callback.run();
    }

    /* renamed from: b */
    public final void m48608b() {
        setContentView(this.binding.getRoot());
        setOutsideTouchable(true);
        setFocusable(true);
        if (BuildKt.isApiLevelAbove(29)) {
            setTouchModal(false);
        }
        ResManager resManager = ResManager.INSTANCE;
        setWidth(resManager.getDimensionPixelSize(C10651R.dimen.color_delete_popup_width));
        setHeight(resManager.getDimensionPixelSize(C10651R.dimen.color_delete_popup_height));
        this.binding.deleteButton.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.a5e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CommonDeletePopup.m48607c(CommonDeletePopup.this, view);
            }
        });
    }
}
