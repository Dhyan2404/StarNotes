package com.google.android.material.snackbar;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.motion.MotionUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class SnackbarContentLayout extends LinearLayout implements ContentViewCallback {

    /* renamed from: e */
    public TextView f32569e;

    /* renamed from: f */
    public Button f32570f;

    /* renamed from: g */
    public final TimeInterpolator f32571g;

    /* renamed from: h */
    public int f32572h;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: b */
    public static void m25065b(@NonNull View view, int i, int i2) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    /* renamed from: a */
    public void m25066a(float f) {
        if (f != 1.0f) {
            this.f32570f.setTextColor(MaterialColors.layer(MaterialColors.getColor(this, C5139R.attr.colorSurface), this.f32570f.getCurrentTextColor(), f));
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentIn(int i, int i2) {
        this.f32569e.setAlpha(0.0f);
        long j = i2;
        long j2 = i;
        this.f32569e.animate().alpha(1.0f).setDuration(j).setInterpolator(this.f32571g).setStartDelay(j2).start();
        if (this.f32570f.getVisibility() == 0) {
            this.f32570f.setAlpha(0.0f);
            this.f32570f.animate().alpha(1.0f).setDuration(j).setInterpolator(this.f32571g).setStartDelay(j2).start();
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentOut(int i, int i2) {
        this.f32569e.setAlpha(1.0f);
        long j = i2;
        long j2 = i;
        this.f32569e.animate().alpha(0.0f).setDuration(j).setInterpolator(this.f32571g).setStartDelay(j2).start();
        if (this.f32570f.getVisibility() == 0) {
            this.f32570f.setAlpha(1.0f);
            this.f32570f.animate().alpha(0.0f).setDuration(j).setInterpolator(this.f32571g).setStartDelay(j2).start();
        }
    }

    /* renamed from: c */
    public final boolean m25067c(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f32569e.getPaddingTop() == i2 && this.f32569e.getPaddingBottom() == i3) {
            return z;
        }
        m25065b(this.f32569e, i2, i3);
        return true;
    }

    public Button getActionView() {
        return this.f32570f;
    }

    public TextView getMessageView() {
        return this.f32569e;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f32569e = (TextView) findViewById(C5139R.id.snackbar_text);
        this.f32570f = (Button) findViewById(C5139R.id.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0047, code lost:
    
        if (m25067c(1, r0, r0 - r2) != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
    
        if (r1 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
    
        super.onMeasure(r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        if (m25067c(0, r0, r0) != false) goto L26;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            int r0 = r7.getOrientation()
            r1 = 1
            if (r0 != r1) goto Lb
            return
        Lb:
            android.content.res.Resources r0 = r7.getResources()
            int r2 = com.google.android.material.C5139R.dimen.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r2)
            android.content.res.Resources r2 = r7.getResources()
            int r3 = com.google.android.material.C5139R.dimen.design_snackbar_padding_vertical
            int r2 = r2.getDimensionPixelSize(r3)
            android.widget.TextView r3 = r7.f32569e
            android.text.Layout r3 = r3.getLayout()
            r4 = 0
            if (r3 == 0) goto L30
            int r3 = r3.getLineCount()
            if (r3 <= r1) goto L30
            r3 = r1
            goto L31
        L30:
            r3 = r4
        L31:
            if (r3 == 0) goto L4a
            int r5 = r7.f32572h
            if (r5 <= 0) goto L4a
            android.widget.Button r5 = r7.f32570f
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f32572h
            if (r5 <= r6) goto L4a
            int r2 = r0 - r2
            boolean r0 = r7.m25067c(r1, r0, r2)
            if (r0 == 0) goto L55
            goto L56
        L4a:
            if (r3 == 0) goto L4d
            goto L4e
        L4d:
            r0 = r2
        L4e:
            boolean r0 = r7.m25067c(r4, r0, r0)
            if (r0 == 0) goto L55
            goto L56
        L55:
            r1 = r4
        L56:
            if (r1 == 0) goto L5b
            super.onMeasure(r8, r9)
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public void setMaxInlineActionWidth(int i) {
        this.f32572h = i;
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32571g = MotionUtils.resolveThemeInterpolator(context, C5139R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
    }
}
