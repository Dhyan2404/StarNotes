package com.onyx.galaxy.note.common.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.PopupWindow;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016R\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/FullScreenPopup;", "Landroid/widget/PopupWindow;", "Landroid/view/View;", "view", "", "setContentView", Constants.ELEMNAME_ANCHOR_STRING, "showAsDropDown", "dismiss", "Landroid/content/Context;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class FullScreenPopup extends PopupWindow {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullScreenPopup(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // android.widget.PopupWindow
    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setContentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.setContentView(view);
        setWidth(-1);
        setHeight(-1);
        setOutsideTouchable(false);
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(C10651R.style.popupWindowAnimationFullScreen);
        setFocusable(true);
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(@Nullable View anchor) {
        super.showAsDropDown(anchor);
    }
}
