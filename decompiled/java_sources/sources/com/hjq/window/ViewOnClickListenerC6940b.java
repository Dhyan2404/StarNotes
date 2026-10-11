package com.hjq.window;

import android.view.View;
import com.hjq.window.EasyWindow;

/* renamed from: com.hjq.window.b */
/* loaded from: classes4.dex */
public final class ViewOnClickListenerC6940b implements View.OnClickListener {

    /* renamed from: e */
    public final EasyWindow<?> f38940e;

    /* renamed from: f */
    public final EasyWindow.OnClickListener f38941f;

    public ViewOnClickListenerC6940b(EasyWindow<?> easyWindow, EasyWindow.OnClickListener onClickListener) {
        this.f38940e = easyWindow;
        this.f38941f = onClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EasyWindow.OnClickListener onClickListener = this.f38941f;
        if (onClickListener == null) {
            return;
        }
        onClickListener.onClick(this.f38940e, view);
    }
}
