package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tabs.TabLayout;

/* renamed from: com.google.android.material.tabs.a */
/* loaded from: classes6.dex */
public class C5419a {

    /* renamed from: a */
    @Dimension(unit = 0)
    public static final int f32702a = 24;

    /* renamed from: a */
    public static RectF m25168a(TabLayout tabLayout, @Nullable View view) {
        return view == null ? new RectF() : (tabLayout.isTabIndicatorFullWidth() || !(view instanceof TabLayout.TabView)) ? new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()) : m25169b((TabLayout.TabView) view, 24);
    }

    /* renamed from: b */
    public static RectF m25169b(@NonNull TabLayout.TabView tabView, @Dimension(unit = 0) int i) {
        int contentWidth = tabView.getContentWidth();
        int contentHeight = tabView.getContentHeight();
        int dpToPx = (int) ViewUtils.dpToPx(tabView.getContext(), i);
        if (contentWidth < dpToPx) {
            contentWidth = dpToPx;
        }
        int left = (tabView.getLeft() + tabView.getRight()) / 2;
        int top = (tabView.getTop() + tabView.getBottom()) / 2;
        int i2 = contentWidth / 2;
        return new RectF(left - i2, top - (contentHeight / 2), i2 + left, top + (left / 2));
    }

    /* renamed from: c */
    public void m25170c(TabLayout tabLayout, View view, @NonNull Drawable drawable) {
        RectF m25168a = m25168a(tabLayout, view);
        drawable.setBounds((int) m25168a.left, drawable.getBounds().top, (int) m25168a.right, drawable.getBounds().bottom);
    }

    /* renamed from: d */
    public void mo25171d(TabLayout tabLayout, View view, View view2, @FloatRange(from = 0.0d, m280to = 1.0d) float f, @NonNull Drawable drawable) {
        RectF m25168a = m25168a(tabLayout, view);
        RectF m25168a2 = m25168a(tabLayout, view2);
        drawable.setBounds(AnimationUtils.lerp((int) m25168a.left, (int) m25168a2.left, f), drawable.getBounds().top, AnimationUtils.lerp((int) m25168a.right, (int) m25168a2.right, f), drawable.getBounds().bottom);
    }
}
