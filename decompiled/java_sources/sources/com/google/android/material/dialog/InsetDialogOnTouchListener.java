package com.google.android.material.dialog;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class InsetDialogOnTouchListener implements View.OnTouchListener {

    /* renamed from: e */
    @NonNull
    public final Dialog f31221e;

    /* renamed from: f */
    public final int f31222f;

    /* renamed from: g */
    public final int f31223g;

    /* renamed from: h */
    public final int f31224h;

    public InsetDialogOnTouchListener(@NonNull Dialog dialog, @NonNull Rect rect) {
        this.f31221e = dialog;
        this.f31222f = rect.left;
        this.f31223g = rect.top;
        this.f31224h = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
        View findViewById = view.findViewById(R.id.content);
        int left = this.f31222f + findViewById.getLeft();
        int width = findViewById.getWidth() + left;
        if (new RectF(left, this.f31223g + findViewById.getTop(), width, findViewById.getHeight() + r3).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            obtain.setAction(4);
        }
        view.performClick();
        return this.f31221e.onTouchEvent(obtain);
    }
}
