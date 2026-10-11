package com.hjq.window;

import android.view.View;
import com.hjq.window.EasyWindow;

/* renamed from: com.hjq.window.c */
/* loaded from: classes4.dex */
public final class ViewOnLongClickListenerC6941c implements View.OnLongClickListener {

    /* renamed from: e */
    public final EasyWindow<?> f38942e;

    /* renamed from: f */
    public final EasyWindow.OnLongClickListener f38943f;

    public ViewOnLongClickListenerC6941c(EasyWindow<?> easyWindow, EasyWindow.OnLongClickListener onLongClickListener) {
        this.f38942e = easyWindow;
        this.f38943f = onLongClickListener;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        EasyWindow.OnLongClickListener onLongClickListener = this.f38943f;
        if (onLongClickListener == null) {
            return false;
        }
        return onLongClickListener.onLongClick(this.f38942e, view);
    }
}
