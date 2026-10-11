package com.google.android.material.carousel;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;

/* loaded from: classes6.dex */
public class CarouselSnapHelper extends SnapHelper {

    /* renamed from: g */
    public static final float f30646g = 100.0f;

    /* renamed from: h */
    public static final float f30647h = 50.0f;

    /* renamed from: e */
    public final boolean f30648e;

    /* renamed from: f */
    public RecyclerView f30649f;

    /* renamed from: com.google.android.material.carousel.CarouselSnapHelper$a */
    /* loaded from: classes6.dex */
    public class C5199a extends LinearSmoothScroller {

        /* renamed from: p */
        public final /* synthetic */ RecyclerView.LayoutManager f30650p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5199a(Context context, RecyclerView.LayoutManager layoutManager) {
            super(context);
            this.f30650p = layoutManager;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            float f;
            float f2;
            if (this.f30650p.canScrollVertically()) {
                f = displayMetrics.densityDpi;
                f2 = 50.0f;
            } else {
                f = displayMetrics.densityDpi;
                f2 = 100.0f;
            }
            return f2 / f;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
        public void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
            if (CarouselSnapHelper.this.f30649f != null) {
                CarouselSnapHelper carouselSnapHelper = CarouselSnapHelper.this;
                int[] m23339g = carouselSnapHelper.m23339g(carouselSnapHelper.f30649f.getLayoutManager(), view, true);
                int i = m23339g[0];
                int i2 = m23339g[1];
                int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i), Math.abs(i2)));
                if (calculateTimeForDeceleration > 0) {
                    action.update(i, i2, calculateTimeForDeceleration, this.mDecelerateInterpolator);
                }
            }
        }
    }

    public CarouselSnapHelper() {
        this(true);
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        super.attachToRecyclerView(recyclerView);
        this.f30649f = recyclerView;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        return m23339g(layoutManager, view, false);
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public RecyclerView.SmoothScroller createScroller(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new C5199a(this.f30649f.getContext(), layoutManager);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        return m23341i(layoutManager);
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        int itemCount;
        if (!this.f30648e || (itemCount = layoutManager.getItemCount()) == 0) {
            return -1;
        }
        int childCount = layoutManager.getChildCount();
        View view = null;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        View view2 = null;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = layoutManager.getChildAt(i5);
            if (childAt != null) {
                int m23340h = m23340h(childAt, (CarouselLayoutManager) layoutManager, false);
                if (m23340h <= 0 && m23340h > i4) {
                    view2 = childAt;
                    i4 = m23340h;
                }
                if (m23340h >= 0 && m23340h < i3) {
                    view = childAt;
                    i3 = m23340h;
                }
            }
        }
        boolean m23342j = m23342j(layoutManager, i, i2);
        if (m23342j && view != null) {
            return layoutManager.getPosition(view);
        }
        if (!m23342j && view2 != null) {
            return layoutManager.getPosition(view2);
        }
        if (m23342j) {
            view = view2;
        }
        if (view == null) {
            return -1;
        }
        int position = layoutManager.getPosition(view) + (m23343k(layoutManager) == m23342j ? -1 : 1);
        if (position < 0 || position >= itemCount) {
            return -1;
        }
        return position;
    }

    /* renamed from: g */
    public final int[] m23339g(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view, boolean z) {
        if (!(layoutManager instanceof CarouselLayoutManager)) {
            return new int[]{0, 0};
        }
        int m23340h = m23340h(view, (CarouselLayoutManager) layoutManager, z);
        return layoutManager.canScrollHorizontally() ? new int[]{m23340h, 0} : layoutManager.canScrollVertically() ? new int[]{0, m23340h} : new int[]{0, 0};
    }

    /* renamed from: h */
    public final int m23340h(@NonNull View view, CarouselLayoutManager carouselLayoutManager, boolean z) {
        return carouselLayoutManager.m23313b0(carouselLayoutManager.getPosition(view), z);
    }

    @Nullable
    /* renamed from: i */
    public final View m23341i(RecyclerView.LayoutManager layoutManager) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount != 0 && (layoutManager instanceof CarouselLayoutManager)) {
            CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) layoutManager;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = layoutManager.getChildAt(i2);
                int abs = Math.abs(carouselLayoutManager.m23313b0(layoutManager.getPosition(childAt), false));
                if (abs < i) {
                    view = childAt;
                    i = abs;
                }
            }
        }
        return view;
    }

    /* renamed from: j */
    public final boolean m23342j(RecyclerView.LayoutManager layoutManager, int i, int i2) {
        return layoutManager.canScrollHorizontally() ? i > 0 : i2 > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    public final boolean m23343k(RecyclerView.LayoutManager layoutManager) {
        PointF computeScrollVectorForPosition;
        int itemCount = layoutManager.getItemCount();
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (computeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return computeScrollVectorForPosition.x < 0.0f || computeScrollVectorForPosition.y < 0.0f;
    }

    public CarouselSnapHelper(boolean z) {
        this.f30648e = z;
    }
}
