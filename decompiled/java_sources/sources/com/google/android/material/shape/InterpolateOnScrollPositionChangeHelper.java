package com.google.android.material.shape;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public class InterpolateOnScrollPositionChangeHelper {

    /* renamed from: a */
    public View f32196a;

    /* renamed from: b */
    public MaterialShapeDrawable f32197b;

    /* renamed from: c */
    public ScrollView f32198c;

    /* renamed from: d */
    public final int[] f32199d = new int[2];

    /* renamed from: e */
    public final int[] f32200e = new int[2];

    /* renamed from: f */
    public final ViewTreeObserver.OnScrollChangedListener f32201f = new ViewTreeObserverOnScrollChangedListenerC5367a();

    /* renamed from: com.google.android.material.shape.InterpolateOnScrollPositionChangeHelper$a */
    /* loaded from: classes6.dex */
    public class ViewTreeObserverOnScrollChangedListenerC5367a implements ViewTreeObserver.OnScrollChangedListener {
        public ViewTreeObserverOnScrollChangedListenerC5367a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            InterpolateOnScrollPositionChangeHelper.this.updateInterpolationForScreenPosition();
        }
    }

    public InterpolateOnScrollPositionChangeHelper(View view, MaterialShapeDrawable materialShapeDrawable, ScrollView scrollView) {
        this.f32196a = view;
        this.f32197b = materialShapeDrawable;
        this.f32198c = scrollView;
    }

    public void setContainingScrollView(ScrollView scrollView) {
        this.f32198c = scrollView;
    }

    public void setMaterialShapeDrawable(MaterialShapeDrawable materialShapeDrawable) {
        this.f32197b = materialShapeDrawable;
    }

    public void startListeningForScrollChanges(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this.f32201f);
    }

    public void stopListeningForScrollChanges(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this.f32201f);
    }

    public void updateInterpolationForScreenPosition() {
        ScrollView scrollView = this.f32198c;
        if (scrollView == null) {
            return;
        }
        if (scrollView.getChildCount() == 0) {
            throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
        }
        this.f32198c.getLocationInWindow(this.f32199d);
        this.f32198c.getChildAt(0).getLocationInWindow(this.f32200e);
        int top = (this.f32196a.getTop() - this.f32199d[1]) + this.f32200e[1];
        int height = this.f32196a.getHeight();
        int height2 = this.f32198c.getHeight();
        if (top < 0) {
            this.f32197b.setInterpolation(Math.max(0.0f, Math.min(1.0f, (top / height) + 1.0f)));
            this.f32196a.invalidate();
            return;
        }
        if (top + height > height2) {
            this.f32197b.setInterpolation(Math.max(0.0f, Math.min(1.0f, 1.0f - ((r0 - height2) / height))));
            this.f32196a.invalidate();
        } else if (this.f32197b.getInterpolation() != 1.0f) {
            this.f32197b.setInterpolation(1.0f);
            this.f32196a.invalidate();
        }
    }
}
