package com.hjq.window;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import com.hjq.window.EasyWindow;

/* renamed from: com.hjq.window.d */
/* loaded from: classes4.dex */
public final class ViewOnTouchListenerC6942d implements View.OnTouchListener {

    /* renamed from: e */
    public final EasyWindow<?> f38944e;

    /* renamed from: f */
    public final EasyWindow.OnTouchListener f38945f;

    public ViewOnTouchListenerC6942d(EasyWindow<?> easyWindow, EasyWindow.OnTouchListener onTouchListener) {
        this.f38944e = easyWindow;
        this.f38945f = onTouchListener;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        EasyWindow.OnTouchListener onTouchListener = this.f38945f;
        if (onTouchListener == null) {
            return false;
        }
        return onTouchListener.onTouch(this.f38944e, view, motionEvent);
    }
}
