package com.onyx.galaxy.note.category.view;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.databinding.CustomScrollBarRecycleViewBinding;
import com.onyx.galaxy.note.editor.view.adapter.BaseSwipeAbleDifferAdapter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0019\u0018\u0000 62\u00020\u0001:\u00016B\u0011\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b1\u00102B\u001b\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b1\u00103B#\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0006\u00104\u001a\u00020\u0016¢\u0006\u0004\b1\u00105J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\n\u001a\u00020\bH\u0014J\u001a\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\b\u0010\u0010\u001a\u00020\bH\u0002J\b\u0010\u0011\u001a\u00020\bH\u0002J\b\u0010\u0012\u001a\u00020\bH\u0002J\b\u0010\u0013\u001a\u00020\bH\u0003J\b\u0010\u0014\u001a\u00020\bH\u0002J\b\u0010\u0015\u001a\u00020\bH\u0002J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010!R\"\u0010(\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010!\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010)R\"\u00100\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010)\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00067"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/view/CustomScrollBarRecycleView;", "Landroid/widget/FrameLayout;", "", "getMaxScrollY", "Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;", "getAutoFitRecycleView", "", "scrollBarEnable", "", "setScrollBarEnable", "onDetachedFromWindow", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "d", "j", "c", "b", C6999h.f39688c, C6997f.f39671c, "e", "", "targetOffset", C6998g.f39679a, "Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;", "Lcom/onyx/galaxy/note/databinding/CustomScrollBarRecycleViewBinding;", "binding", "I", "hideScrollBarKey", "Landroid/animation/ObjectAnimator;", "Landroid/animation/ObjectAnimator;", "showOrHideAnimator", Constants.HASIDCALL_INDEX_SIG, "isScrollBarEnable", "i", "getScrollbarDragging", Constants.BOOLEAN_VALUE_SIG, "setScrollbarDragging", "(Z)V", "scrollbarDragging", "F", "touchY", C4921e.f26537n, "getScrollbarTop", "()F", "setScrollbarTop", "(F)V", "scrollbarTop", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CustomScrollBarRecycleView extends FrameLayout {
    public static final long HIDE_ANIM_DURATION = 300;
    public static final long HIDE_SCROLL_BAR_DELAY_TIME = 3000;
    public static final int PREVIEW_ITEMS_LIMIT_COUNT = 50;
    public static final long SHOW_ANIM_DURATION = 150;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final CustomScrollBarRecycleViewBinding binding;

    /* renamed from: f, reason: from kotlin metadata */
    public int hideScrollBarKey;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public ObjectAnimator showOrHideAnimator;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isScrollBarEnable;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean scrollbarDragging;

    /* renamed from: j, reason: from kotlin metadata */
    public float touchY;

    /* renamed from: k, reason: from kotlin metadata */
    public float scrollbarTop;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomScrollBarRecycleView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getMaxScrollY() {
        return ((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - this.binding.scrollBar.getHeight();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
    
        if (r4 != 3) goto L10;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m43919i(com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView r3, android.view.View r4, android.view.MotionEvent r5) {
        /*
            java.lang.String r4 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r4)
            int r4 = r5.getAction()
            r0 = 1
            if (r4 == 0) goto L5c
            r1 = 0
            if (r4 == r0) goto L53
            r2 = 2
            if (r4 == r2) goto L17
            r5 = 3
            if (r4 == r5) goto L53
        L15:
            r0 = r1
            goto L6d
        L17:
            boolean r4 = r3.scrollbarDragging
            if (r4 == 0) goto L15
            float r4 = r5.getRawY()
            float r5 = r3.touchY
            float r4 = r4 - r5
            r5 = 0
            float r1 = r3.getMaxScrollY()
            float r4 = kotlin.ranges.RangesKt.coerceIn(r4, r5, r1)
            r3.scrollbarTop = r4
            com.onyx.galaxy.note.databinding.CustomScrollBarRecycleViewBinding r5 = r3.binding
            com.onyx.android.sdk.theme.widgets.TintImageView r5 = r5.scrollBar
            r5.setY(r4)
            com.onyx.galaxy.note.databinding.CustomScrollBarRecycleViewBinding r4 = r3.binding
            com.onyx.galaxy.note.category.view.AutoFitRecycleView r4 = r4.recycleView
            int r4 = r4.computeVerticalScrollRange()
            com.onyx.galaxy.note.databinding.CustomScrollBarRecycleViewBinding r5 = r3.binding
            com.onyx.galaxy.note.category.view.AutoFitRecycleView r5 = r5.recycleView
            int r5 = r5.computeVerticalScrollExtent()
            float r1 = r3.scrollbarTop
            float r2 = r3.getMaxScrollY()
            float r1 = r1 / r2
            int r4 = r4 - r5
            float r4 = (float) r4
            float r1 = r1 * r4
            int r4 = (int) r1
            r3.m43925g(r4)
            goto L6d
        L53:
            r3.scrollbarDragging = r1
            r3.m43923e()
            r3.m43921c()
            goto L6d
        L5c:
            r3.m43920b()
            r3.scrollbarDragging = r0
            r3.m43924f()
            float r4 = r5.getRawY()
            float r5 = r3.scrollbarTop
            float r4 = r4 - r5
            r3.touchY = r4
        L6d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView.m43919i(com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView, android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: b */
    public final void m43920b() {
        ObjectAnimator objectAnimator = this.showOrHideAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        RxTimerUtil.INSTANCE.cancel(this.hideScrollBarKey);
    }

    /* renamed from: c */
    public final void m43921c() {
        RxTimerUtil rxTimerUtil = RxTimerUtil.INSTANCE;
        rxTimerUtil.cancel(this.hideScrollBarKey);
        this.hideScrollBarKey = rxTimerUtil.timer(3000L, TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView$hideScrollbarDelay$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                boolean z;
                CustomScrollBarRecycleViewBinding customScrollBarRecycleViewBinding;
                ObjectAnimator objectAnimator;
                CustomScrollBarRecycleViewBinding customScrollBarRecycleViewBinding2;
                z = CustomScrollBarRecycleView.this.isScrollBarEnable;
                if (z) {
                    customScrollBarRecycleViewBinding = CustomScrollBarRecycleView.this.binding;
                    if (customScrollBarRecycleViewBinding.scrollBar.getVisibility() != 0) {
                        return;
                    }
                    objectAnimator = CustomScrollBarRecycleView.this.showOrHideAnimator;
                    if (objectAnimator != null) {
                        objectAnimator.cancel();
                    }
                    CustomScrollBarRecycleView customScrollBarRecycleView = CustomScrollBarRecycleView.this;
                    customScrollBarRecycleViewBinding2 = customScrollBarRecycleView.binding;
                    TintImageView scrollBar = customScrollBarRecycleViewBinding2.scrollBar;
                    Intrinsics.checkNotNullExpressionValue(scrollBar, "scrollBar");
                    final CustomScrollBarRecycleView customScrollBarRecycleView2 = CustomScrollBarRecycleView.this;
                    customScrollBarRecycleView.showOrHideAnimator = ViewExtKt.startAlphaAnimation(scrollBar, 1.0f, 0.0f, 300L, new Function0<Unit>() { // from class: com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView$hideScrollbarDelay$1.1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            CustomScrollBarRecycleViewBinding customScrollBarRecycleViewBinding3;
                            CustomScrollBarRecycleViewBinding customScrollBarRecycleViewBinding4;
                            customScrollBarRecycleViewBinding3 = CustomScrollBarRecycleView.this.binding;
                            customScrollBarRecycleViewBinding3.scrollBar.setVisibility(8);
                            customScrollBarRecycleViewBinding4 = CustomScrollBarRecycleView.this.binding;
                            customScrollBarRecycleViewBinding4.scrollBar.setAlpha(1.0f);
                        }
                    });
                }
            }
        });
    }

    /* renamed from: d */
    public final void m43922d(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C10651R.styleable.CustomScrollBarRecycleView);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
        this.isScrollBarEnable = obtainStyledAttributes.getBoolean(C10651R.styleable.CustomScrollBarRecycleView_scrollBarEnable, false);
        int i = C10651R.styleable.CustomScrollBarRecycleView_widthLarge;
        ResManager resManager = ResManager.INSTANCE;
        float dimension = obtainStyledAttributes.getDimension(i, resManager.getDimension(C10651R.dimen.note_item_grid_pad_width));
        float dimension2 = obtainStyledAttributes.getDimension(C10651R.styleable.CustomScrollBarRecycleView_widthSmall, resManager.getDimension(C10651R.dimen.note_item_grid_phone_width));
        this.binding.recycleView.setItemWidthLarge(dimension);
        this.binding.recycleView.setItemWidthSmall(dimension2);
        if (this.isScrollBarEnable) {
            m43926h();
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: e */
    public final void m43923e() {
        RecyclerView.Adapter adapter = this.binding.recycleView.getAdapter();
        if (adapter instanceof BaseSwipeAbleDifferAdapter) {
            BaseSwipeAbleDifferAdapter baseSwipeAbleDifferAdapter = (BaseSwipeAbleDifferAdapter) adapter;
            if (baseSwipeAbleDifferAdapter.getItemCount() < 50) {
                return;
            }
            baseSwipeAbleDifferAdapter.onScrollBarDraggingRelease();
            RecyclerView.LayoutManager layoutManager = this.binding.recycleView.getLayoutManager();
            LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
            if (linearLayoutManager == null) {
                return;
            }
            baseSwipeAbleDifferAdapter.notifyItemRangeChanged(linearLayoutManager.findFirstVisibleItemPosition(), linearLayoutManager.findLastVisibleItemPosition());
        }
    }

    /* renamed from: f */
    public final void m43924f() {
        RecyclerView.Adapter adapter = this.binding.recycleView.getAdapter();
        if (adapter instanceof BaseSwipeAbleDifferAdapter) {
            BaseSwipeAbleDifferAdapter baseSwipeAbleDifferAdapter = (BaseSwipeAbleDifferAdapter) adapter;
            if (baseSwipeAbleDifferAdapter.getItemCount() < 50) {
                return;
            }
            baseSwipeAbleDifferAdapter.onScrollBarDraggingStart();
        }
    }

    /* renamed from: g */
    public final void m43925g(int targetOffset) {
        int height;
        int height2;
        RecyclerView.LayoutManager layoutManager = this.binding.recycleView.getLayoutManager();
        if (layoutManager == null) {
            return;
        }
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            int spanCount = gridLayoutManager.getSpanCount();
            View findViewByPosition = layoutManager.findViewByPosition(gridLayoutManager.findFirstVisibleItemPosition());
            if (findViewByPosition != null && (height2 = findViewByPosition.getHeight()) > 0) {
                gridLayoutManager.scrollToPositionWithOffset((targetOffset / height2) * spanCount, -(targetOffset % height2));
                return;
            }
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
            View findViewByPosition2 = layoutManager.findViewByPosition(linearLayoutManager.findFirstVisibleItemPosition());
            if (findViewByPosition2 != null && (height = findViewByPosition2.getHeight()) > 0) {
                linearLayoutManager.scrollToPositionWithOffset(targetOffset / height, -(targetOffset % height));
            }
        }
    }

    @NotNull
    public final AutoFitRecycleView getAutoFitRecycleView() {
        AutoFitRecycleView recycleView = this.binding.recycleView;
        Intrinsics.checkNotNullExpressionValue(recycleView, "recycleView");
        return recycleView;
    }

    public final boolean getScrollbarDragging() {
        return this.scrollbarDragging;
    }

    public final float getScrollbarTop() {
        return this.scrollbarTop;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: h */
    public final void m43926h() {
        if (this.isScrollBarEnable) {
            this.binding.scrollBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.moe
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m43919i;
                    m43919i = CustomScrollBarRecycleView.m43919i(CustomScrollBarRecycleView.this, view, motionEvent);
                    return m43919i;
                }
            });
            this.binding.recycleView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView$setupScrollbar$2
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int newState) {
                    boolean z;
                    Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                    super.onScrollStateChanged(recyclerView, newState);
                    z = CustomScrollBarRecycleView.this.isScrollBarEnable;
                    if (z && newState == 0 && !CustomScrollBarRecycleView.this.getScrollbarDragging()) {
                        CustomScrollBarRecycleView.this.m43921c();
                    }
                }

                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(@NotNull RecyclerView recyclerView, int dx, int dy) {
                    boolean z;
                    CustomScrollBarRecycleViewBinding customScrollBarRecycleViewBinding;
                    float maxScrollY;
                    CustomScrollBarRecycleViewBinding customScrollBarRecycleViewBinding2;
                    Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                    z = CustomScrollBarRecycleView.this.isScrollBarEnable;
                    if (z) {
                        if (!CustomScrollBarRecycleView.this.getScrollbarDragging() && (dx != 0 || dy != 0)) {
                            CustomScrollBarRecycleView.this.m43927j();
                        }
                        if (CustomScrollBarRecycleView.this.getScrollbarDragging()) {
                            return;
                        }
                        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                        int computeVerticalScrollRange = recyclerView.computeVerticalScrollRange() - recyclerView.computeVerticalScrollExtent();
                        if (computeVerticalScrollRange > 0) {
                            float f = computeVerticalScrollOffset / computeVerticalScrollRange;
                            customScrollBarRecycleViewBinding = CustomScrollBarRecycleView.this.binding;
                            TintImageView tintImageView = customScrollBarRecycleViewBinding.scrollBar;
                            maxScrollY = CustomScrollBarRecycleView.this.getMaxScrollY();
                            tintImageView.setY(f * maxScrollY);
                            CustomScrollBarRecycleView customScrollBarRecycleView = CustomScrollBarRecycleView.this;
                            customScrollBarRecycleViewBinding2 = customScrollBarRecycleView.binding;
                            customScrollBarRecycleView.setScrollbarTop(customScrollBarRecycleViewBinding2.scrollBar.getY());
                        }
                    }
                }
            });
        }
    }

    /* renamed from: j */
    public final void m43927j() {
        if (!this.isScrollBarEnable || this.binding.scrollBar.getVisibility() == 0) {
            return;
        }
        ObjectAnimator objectAnimator = this.showOrHideAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.binding.scrollBar.setAlpha(0.0f);
        this.binding.scrollBar.setVisibility(0);
        TintImageView scrollBar = this.binding.scrollBar;
        Intrinsics.checkNotNullExpressionValue(scrollBar, "scrollBar");
        this.showOrHideAnimator = ViewExtKt.startAlphaAnimation$default(scrollBar, 0.0f, 1.0f, 150L, null, 8, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        RxTimerUtil.INSTANCE.cancel(this.hideScrollBarKey);
        ObjectAnimator objectAnimator = this.showOrHideAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public final void setScrollBarEnable(boolean scrollBarEnable) {
        this.isScrollBarEnable = scrollBarEnable;
        m43926h();
    }

    public final void setScrollbarDragging(boolean z) {
        this.scrollbarDragging = z;
    }

    public final void setScrollbarTop(float f) {
        this.scrollbarTop = f;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomScrollBarRecycleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomScrollBarRecycleView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        CustomScrollBarRecycleViewBinding inflate = CustomScrollBarRecycleViewBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        this.hideScrollBarKey = -1;
        m43922d(context, attributeSet);
    }
}
