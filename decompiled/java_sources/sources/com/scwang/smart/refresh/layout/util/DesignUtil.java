package com.scwang.smart.refresh.layout.util;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.scwang.smart.refresh.layout.api.RefreshKernel;
import com.scwang.smart.refresh.layout.listener.CoordinatorLayoutListener;

/* loaded from: classes9.dex */
public class DesignUtil {

    /* renamed from: com.scwang.smart.refresh.layout.util.DesignUtil$a */
    /* loaded from: classes9.dex */
    public static class C13140a implements AppBarLayout.OnOffsetChangedListener {

        /* renamed from: a */
        public final /* synthetic */ CoordinatorLayoutListener f63396a;

        public C13140a(CoordinatorLayoutListener coordinatorLayoutListener) {
            this.f63396a = coordinatorLayoutListener;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            this.f63396a.onCoordinatorUpdate(i >= 0, appBarLayout.getTotalScrollRange() + i <= 0);
        }
    }

    public static void checkCoordinatorLayout(View view, RefreshKernel refreshKernel, CoordinatorLayoutListener coordinatorLayoutListener) {
        try {
            if (view instanceof CoordinatorLayout) {
                refreshKernel.getRefreshLayout().setEnableNestedScroll(false);
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt = viewGroup.getChildAt(childCount);
                    if (childAt instanceof AppBarLayout) {
                        ((AppBarLayout) childAt).addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new C13140a(coordinatorLayoutListener));
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
