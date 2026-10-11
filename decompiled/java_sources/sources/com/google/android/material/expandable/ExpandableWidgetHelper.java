package com.google.android.material.expandable;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes6.dex */
public final class ExpandableWidgetHelper {

    /* renamed from: a */
    @NonNull
    public final View f31257a;

    /* renamed from: b */
    public boolean f31258b = false;

    /* renamed from: c */
    @IdRes
    public int f31259c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public ExpandableWidgetHelper(ExpandableWidget expandableWidget) {
        this.f31257a = (View) expandableWidget;
    }

    /* renamed from: a */
    public final void m24041a() {
        ViewParent parent = this.f31257a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f31257a);
        }
    }

    @IdRes
    public int getExpandedComponentIdHint() {
        return this.f31259c;
    }

    public boolean isExpanded() {
        return this.f31258b;
    }

    public void onRestoreInstanceState(@NonNull Bundle bundle) {
        this.f31258b = bundle.getBoolean("expanded", false);
        this.f31259c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f31258b) {
            m24041a();
        }
    }

    @NonNull
    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f31258b);
        bundle.putInt("expandedComponentIdHint", this.f31259c);
        return bundle;
    }

    public boolean setExpanded(boolean z) {
        if (this.f31258b == z) {
            return false;
        }
        this.f31258b = z;
        m24041a();
        return true;
    }

    public void setExpandedComponentIdHint(@IdRes int i) {
        this.f31259c = i;
    }
}
