package com.sunia.HTREnginev2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;

@Deprecated
/* renamed from: com.sunia.HTREnginev2.fv */
/* loaded from: classes3.dex */
public class DialogC13743fv extends Dialog {

    /* renamed from: f */
    public static final long f70399f = 250;

    /* renamed from: g */
    public static final long f70400g = 150;

    /* renamed from: e */
    public final View f70401e;

    /* renamed from: com.sunia.HTREnginev2.fv$a */
    /* loaded from: classes3.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: e */
        public final /* synthetic */ boolean f70402e;

        public a(boolean z) {
            this.f70402e = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f70402e) {
                return;
            }
            DialogC13743fv.super.dismiss();
        }
    }

    public DialogC13743fv(Context context, View view) {
        super(context);
        this.f70401e = view;
    }

    /* renamed from: b */
    public final void m54201b(boolean z) {
        float f = z ? 0.0f : 1.0f;
        float f2 = z ? 1.0f : 0.0f;
        long j = z ? 250L : 150L;
        this.f70401e.setScaleX(f);
        this.f70401e.setScaleY(f);
        this.f70401e.animate().scaleX(f2).scaleY(f2).setDuration(j).setInterpolator(new LinearOutSlowInInterpolator()).setListener(new a(z)).start();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        m54201b(false);
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        m54201b(true);
        super.show();
    }
}
