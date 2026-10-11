package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.expandable.ExpandableWidget;
import java.util.List;

@Deprecated
/* loaded from: classes6.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: f */
    public static final int f33005f = 0;

    /* renamed from: g */
    public static final int f33006g = 1;

    /* renamed from: h */
    public static final int f33007h = 2;

    /* renamed from: e */
    public int f33008e;

    /* renamed from: com.google.android.material.transformation.ExpandableBehavior$a */
    /* loaded from: classes6.dex */
    public class ViewTreeObserverOnPreDrawListenerC5448a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: e */
        public final /* synthetic */ View f33009e;

        /* renamed from: f */
        public final /* synthetic */ int f33010f;

        /* renamed from: g */
        public final /* synthetic */ ExpandableWidget f33011g;

        public ViewTreeObserverOnPreDrawListenerC5448a(View view, int i, ExpandableWidget expandableWidget) {
            this.f33009e = view;
            this.f33010f = i;
            this.f33011g = expandableWidget;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f33009e.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f33008e == this.f33010f) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                ExpandableWidget expandableWidget = this.f33011g;
                expandableBehavior.onExpandedStateChange((View) expandableWidget, this.f33009e, expandableWidget.isExpanded(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f33008e = 0;
    }

    @Nullable
    public static <T extends ExpandableBehavior> T from(@NonNull View view, @NonNull Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof ExpandableBehavior) {
            return cls.cast(behavior);
        }
        throw new IllegalArgumentException("The view is not associated with ExpandableBehavior");
    }

    /* renamed from: b */
    public final boolean m25500b(boolean z) {
        if (!z) {
            return this.f33008e == 1;
        }
        int i = this.f33008e;
        return i == 0 || i == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public ExpandableWidget findExpandableWidget(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i = 0; i < size; i++) {
            View view2 = dependencies.get(i);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (ExpandableWidget) view2;
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ExpandableWidget expandableWidget = (ExpandableWidget) view2;
        if (!m25500b(expandableWidget.isExpanded())) {
            return false;
        }
        this.f33008e = expandableWidget.isExpanded() ? 1 : 2;
        return onExpandedStateChange((View) expandableWidget, view, expandableWidget.isExpanded(), true);
    }

    public abstract boolean onExpandedStateChange(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
        ExpandableWidget findExpandableWidget;
        if (ViewCompat.isLaidOut(view) || (findExpandableWidget = findExpandableWidget(coordinatorLayout, view)) == null || !m25500b(findExpandableWidget.isExpanded())) {
            return false;
        }
        int i2 = findExpandableWidget.isExpanded() ? 1 : 2;
        this.f33008e = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC5448a(view, i2, findExpandableWidget));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f33008e = 0;
    }
}
