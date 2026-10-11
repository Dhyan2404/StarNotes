package com.sunia.HTREnginev2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes6.dex */
public class i4o<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: e */
    public j4o f72875e;

    /* renamed from: f */
    public int f72876f;

    /* renamed from: g */
    public int f72877g;

    public i4o() {
        this.f72876f = 0;
        this.f72877g = 0;
    }

    public int getLeftAndRightOffset() {
        j4o j4oVar = this.f72875e;
        if (j4oVar != null) {
            return j4oVar.m54873d();
        }
        return 0;
    }

    public int getTopAndBottomOffset() {
        j4o j4oVar = this.f72875e;
        if (j4oVar != null) {
            return j4oVar.m54874e();
        }
        return 0;
    }

    public boolean isHorizontalOffsetEnabled() {
        j4o j4oVar = this.f72875e;
        return j4oVar != null && j4oVar.m54875f();
    }

    public boolean isVerticalOffsetEnabled() {
        j4o j4oVar = this.f72875e;
        return j4oVar != null && j4oVar.m54876g();
    }

    public void layoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        coordinatorLayout.onLayoutChild(v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        layoutChild(coordinatorLayout, v, i);
        if (this.f72875e == null) {
            this.f72875e = new j4o(v);
        }
        this.f72875e.m54877h();
        this.f72875e.m54870a();
        int i2 = this.f72876f;
        if (i2 != 0) {
            this.f72875e.m54880k(i2);
            this.f72876f = 0;
        }
        int i3 = this.f72877g;
        if (i3 == 0) {
            return true;
        }
        this.f72875e.m54879j(i3);
        this.f72877g = 0;
        return true;
    }

    public void setHorizontalOffsetEnabled(boolean z) {
        j4o j4oVar = this.f72875e;
        if (j4oVar != null) {
            j4oVar.m54878i(z);
        }
    }

    public boolean setLeftAndRightOffset(int i) {
        j4o j4oVar = this.f72875e;
        if (j4oVar != null) {
            return j4oVar.m54879j(i);
        }
        this.f72877g = i;
        return false;
    }

    public boolean setTopAndBottomOffset(int i) {
        j4o j4oVar = this.f72875e;
        if (j4oVar != null) {
            return j4oVar.m54880k(i);
        }
        this.f72876f = i;
        return false;
    }

    public void setVerticalOffsetEnabled(boolean z) {
        j4o j4oVar = this.f72875e;
        if (j4oVar != null) {
            j4oVar.m54881l(z);
        }
    }

    public i4o(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f72876f = 0;
        this.f72877g = 0;
    }
}
