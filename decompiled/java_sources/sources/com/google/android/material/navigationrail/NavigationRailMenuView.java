package com.google.android.material.navigationrail;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.sunia.HTREnginev2.zsj;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class NavigationRailMenuView extends NavigationBarMenuView {

    /* renamed from: B0 */
    @Px
    public int f31884B0;

    /* renamed from: C0 */
    public final FrameLayout.LayoutParams f31885C0;

    public NavigationRailMenuView(@NonNull Context context) {
        super(context);
        this.f31884B0 = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        this.f31885C0 = layoutParams;
        layoutParams.gravity = 49;
        setLayoutParams(layoutParams);
        setItemActiveIndicatorResizeable(true);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuView
    @NonNull
    public NavigationBarItemView createNavigationBarItemView(@NonNull Context context) {
        return new zsj(context);
    }

    @Px
    public int getItemMinimumHeight() {
        return this.f31884B0;
    }

    public int getMenuGravity() {
        return this.f31885C0.gravity;
    }

    /* renamed from: k */
    public boolean m24411k() {
        return (this.f31885C0.gravity & 112) == 48;
    }

    /* renamed from: l */
    public final int m24412l(int i, int i2, int i3) {
        int max = i2 / Math.max(1, i3);
        int i4 = this.f31884B0;
        if (i4 == -1) {
            i4 = View.MeasureSpec.getSize(i);
        }
        return View.MeasureSpec.makeMeasureSpec(Math.min(i4, max), 0);
    }

    /* renamed from: m */
    public final int m24413m(View view, int i, int i2) {
        if (view.getVisibility() == 8) {
            return 0;
        }
        view.measure(i, i2);
        return view.getMeasuredHeight();
    }

    /* renamed from: n */
    public final int m24414n(int i, int i2, int i3, View view) {
        int m24412l = view == null ? m24412l(i, i2, i3) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 0);
        int childCount = getChildCount();
        int i4 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt != view) {
                i4 += m24413m(childAt, i, m24412l);
            }
        }
        return i4;
    }

    /* renamed from: o */
    public final int m24415o(int i, int i2, int i3) {
        int i4;
        View childAt = getChildAt(getSelectedItemPosition());
        if (childAt != null) {
            i4 = m24413m(childAt, i, m24412l(i, i2, i3));
            i2 -= i4;
            i3--;
        } else {
            i4 = 0;
        }
        return i4 + m24414n(i, i2, i3, childAt);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + i6;
                childAt.layout(0, i6, i5, measuredHeight);
                i6 = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = getMenu().getVisibleItems().size();
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.resolveSizeAndState((size2 <= 1 || !isShifting(getLabelVisibilityMode(), size2)) ? m24414n(i, size, size2, null) : m24415o(i, size, size2), i2, 0));
    }

    public void setItemMinimumHeight(@Px int i) {
        if (this.f31884B0 != i) {
            this.f31884B0 = i;
            requestLayout();
        }
    }

    public void setMenuGravity(int i) {
        FrameLayout.LayoutParams layoutParams = this.f31885C0;
        if (layoutParams.gravity != i) {
            layoutParams.gravity = i;
            setLayoutParams(layoutParams);
        }
    }
}
