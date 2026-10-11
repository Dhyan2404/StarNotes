package com.sunia.HTREnginev2;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

/* loaded from: classes6.dex */
public abstract class tfh extends i4o<View> {

    /* renamed from: h */
    public final Rect f85264h;

    /* renamed from: i */
    public final Rect f85265i;

    /* renamed from: j */
    public int f85266j;

    /* renamed from: k */
    public int f85267k;

    public tfh() {
        this.f85264h = new Rect();
        this.f85265i = new Rect();
        this.f85266j = 0;
    }

    /* renamed from: f */
    public static int m57369f(int i) {
        if (i == 0) {
            return 8388659;
        }
        return i;
    }

    @Nullable
    /* renamed from: a */
    public abstract View mo22914a(List<View> list);

    /* renamed from: b */
    public final int m57370b(View view) {
        if (this.f85267k == 0) {
            return 0;
        }
        float mo22915c = mo22915c(view);
        int i = this.f85267k;
        return MathUtils.clamp((int) (mo22915c * i), 0, i);
    }

    /* renamed from: c */
    public float mo22915c(View view) {
        return 1.0f;
    }

    /* renamed from: d */
    public int mo22916d(@NonNull View view) {
        return view.getMeasuredHeight();
    }

    /* renamed from: e */
    public final int m57371e() {
        return this.f85266j;
    }

    public final int getOverlayTop() {
        return this.f85267k;
    }

    @Override // com.sunia.HTREnginev2.i4o
    public void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
        View mo22914a = mo22914a(coordinatorLayout.getDependencies(view));
        if (mo22914a == null) {
            super.layoutChild(coordinatorLayout, view, i);
            this.f85266j = 0;
            return;
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
        Rect rect = this.f85264h;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, mo22914a.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((coordinatorLayout.getHeight() + mo22914a.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
            rect.left += lastWindowInsets.getSystemWindowInsetLeft();
            rect.right -= lastWindowInsets.getSystemWindowInsetRight();
        }
        Rect rect2 = this.f85265i;
        GravityCompat.apply(m57369f(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int m57370b = m57370b(mo22914a);
        view.layout(rect2.left, rect2.top - m57370b, rect2.right, rect2.bottom - m57370b);
        this.f85266j = rect2.top - mo22914a.getBottom();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
        View mo22914a;
        WindowInsetsCompat lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (mo22914a = mo22914a(coordinatorLayout.getDependencies(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (ViewCompat.getFitsSystemWindows(mo22914a) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.getSystemWindowInsetTop() + lastWindowInsets.getSystemWindowInsetBottom();
        }
        int mo22916d = size + mo22916d(mo22914a);
        int measuredHeight = mo22914a.getMeasuredHeight();
        if (shouldHeaderOverlapScrollingChild()) {
            view.setTranslationY(-measuredHeight);
        } else {
            view.setTranslationY(0.0f);
            mo22916d -= measuredHeight;
        }
        coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec(mo22916d, i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    public final void setOverlayTop(int i) {
        this.f85267k = i;
    }

    public boolean shouldHeaderOverlapScrollingChild() {
        return false;
    }

    public tfh(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f85264h = new Rect();
        this.f85265i = new Rect();
        this.f85266j = 0;
    }
}
