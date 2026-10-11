package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.annotation.NonNull;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public static final int DEFAULT_SPAN_COUNT = -1;

    /* renamed from: L0 */
    public static final boolean f9320L0 = false;

    /* renamed from: M0 */
    public static final String f9321M0 = "GridLayoutManager";

    /* renamed from: C0 */
    public boolean f9322C0;

    /* renamed from: D0 */
    public int f9323D0;

    /* renamed from: E0 */
    public int[] f9324E0;

    /* renamed from: F0 */
    public View[] f9325F0;

    /* renamed from: G0 */
    public final SparseIntArray f9326G0;

    /* renamed from: H0 */
    public final SparseIntArray f9327H0;

    /* renamed from: I0 */
    public SpanSizeLookup f9328I0;

    /* renamed from: J0 */
    public final Rect f9329J0;

    /* renamed from: K0 */
    public boolean f9330K0;

    /* loaded from: classes3.dex */
    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanIndex(int i, int i2) {
            return i % i2;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            return 1;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class SpanSizeLookup {

        /* renamed from: a */
        public final SparseIntArray f9333a = new SparseIntArray();

        /* renamed from: b */
        public final SparseIntArray f9334b = new SparseIntArray();

        /* renamed from: c */
        public boolean f9335c = false;

        /* renamed from: d */
        public boolean f9336d = false;

        /* renamed from: a */
        public static int m5567a(SparseIntArray sparseIntArray, int i) {
            int size = sparseIntArray.size() - 1;
            int i2 = 0;
            while (i2 <= size) {
                int i3 = (i2 + size) >>> 1;
                if (sparseIntArray.keyAt(i3) < i) {
                    i2 = i3 + 1;
                } else {
                    size = i3 - 1;
                }
            }
            int i4 = i2 - 1;
            if (i4 < 0 || i4 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i4);
        }

        /* renamed from: b */
        public int m5568b(int i, int i2) {
            if (!this.f9336d) {
                return getSpanGroupIndex(i, i2);
            }
            int i3 = this.f9334b.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int spanGroupIndex = getSpanGroupIndex(i, i2);
            this.f9334b.put(i, spanGroupIndex);
            return spanGroupIndex;
        }

        /* renamed from: c */
        public int m5569c(int i, int i2) {
            if (!this.f9335c) {
                return getSpanIndex(i, i2);
            }
            int i3 = this.f9333a.get(i, -1);
            if (i3 != -1) {
                return i3;
            }
            int spanIndex = getSpanIndex(i, i2);
            this.f9333a.put(i, spanIndex);
            return spanIndex;
        }

        public int getSpanGroupIndex(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int m5567a;
            if (!this.f9336d || (m5567a = m5567a(this.f9334b, i)) == -1) {
                i3 = 0;
                i4 = 0;
                i5 = 0;
            } else {
                i3 = this.f9334b.get(m5567a);
                i4 = m5567a + 1;
                i5 = m5569c(m5567a, i2) + getSpanSize(m5567a);
                if (i5 == i2) {
                    i3++;
                    i5 = 0;
                }
            }
            int spanSize = getSpanSize(i);
            while (i4 < i) {
                int spanSize2 = getSpanSize(i4);
                i5 += spanSize2;
                if (i5 == i2) {
                    i3++;
                    i5 = 0;
                } else if (i5 > i2) {
                    i3++;
                    i5 = spanSize2;
                }
                i4++;
            }
            return i5 + spanSize > i2 ? i3 + 1 : i3;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002b -> B:10:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002d -> B:10:0x0030). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002f -> B:10:0x0030). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int getSpanIndex(int r6, int r7) {
            /*
                r5 = this;
                int r0 = r5.getSpanSize(r6)
                r1 = 0
                if (r0 != r7) goto L8
                return r1
            L8:
                boolean r2 = r5.f9335c
                if (r2 == 0) goto L20
                android.util.SparseIntArray r2 = r5.f9333a
                int r2 = m5567a(r2, r6)
                if (r2 < 0) goto L20
                android.util.SparseIntArray r3 = r5.f9333a
                int r3 = r3.get(r2)
                int r4 = r5.getSpanSize(r2)
                int r3 = r3 + r4
                goto L30
            L20:
                r2 = r1
                r3 = r2
            L22:
                if (r2 >= r6) goto L33
                int r4 = r5.getSpanSize(r2)
                int r3 = r3 + r4
                if (r3 != r7) goto L2d
                r3 = r1
                goto L30
            L2d:
                if (r3 <= r7) goto L30
                r3 = r4
            L30:
                int r2 = r2 + 1
                goto L22
            L33:
                int r0 = r0 + r3
                if (r0 > r7) goto L37
                return r3
            L37:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup.getSpanIndex(int, int):int");
        }

        public abstract int getSpanSize(int i);

        public void invalidateSpanGroupIndexCache() {
            this.f9334b.clear();
        }

        public void invalidateSpanIndexCache() {
            this.f9333a.clear();
        }

        public boolean isSpanGroupIndexCacheEnabled() {
            return this.f9336d;
        }

        public boolean isSpanIndexCacheEnabled() {
            return this.f9335c;
        }

        public void setSpanGroupIndexCacheEnabled(boolean z) {
            if (!z) {
                this.f9334b.clear();
            }
            this.f9336d = z;
        }

        public void setSpanIndexCacheEnabled(boolean z) {
            if (!z) {
                this.f9334b.clear();
            }
            this.f9335c = z;
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f9322C0 = false;
        this.f9323D0 = -1;
        this.f9326G0 = new SparseIntArray();
        this.f9327H0 = new SparseIntArray();
        this.f9328I0 = new DefaultSpanSizeLookup();
        this.f9329J0 = new Rect();
        setSpanCount(RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2).spanCount);
    }

    /* renamed from: p0 */
    public static int[] m5546p0(int[] iArr, int i, int i2) {
        int i3;
        if (iArr == null || iArr.length != i + 1 || iArr[iArr.length - 1] != i2) {
            iArr = new int[i + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i2 / i;
        int i6 = i2 % i;
        int i7 = 0;
        for (int i8 = 1; i8 <= i; i8++) {
            i4 += i6;
            if (i4 <= 0 || i - i4 >= i6) {
                i3 = i5;
            } else {
                i3 = i5 + 1;
                i4 -= i;
            }
            i7 += i3;
            iArr[i8] = i7;
        }
        return iArr;
    }

    /* renamed from: A0 */
    public final void m5547A0(View view, int i, boolean z) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = layoutParams.mDecorInsets;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int m5561v0 = m5561v0(layoutParams.f9331e, layoutParams.f9332f);
        if (this.f9422w == 1) {
            i3 = RecyclerView.LayoutManager.getChildMeasureSpec(m5561v0, i, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, false);
            i2 = RecyclerView.LayoutManager.getChildMeasureSpec(this.f9426y.getTotalSpace(), getHeightMode(), i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            int childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(m5561v0, i, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, false);
            int childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(this.f9426y.getTotalSpace(), getWidthMode(), i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, true);
            i2 = childMeasureSpec;
            i3 = childMeasureSpec2;
        }
        m5548B0(view, i3, i2, z);
    }

    /* renamed from: B0 */
    public final void m5548B0(View view, int i, int i2, boolean z) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? m5802v(view, i, i2, layoutParams) : m5801t(view, i, i2, layoutParams)) {
            view.measure(i, i2);
        }
    }

    /* renamed from: C0 */
    public final void m5549C0() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        m5555o0(height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: N */
    public View mo5550N(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i;
        int i2;
        int childCount = getChildCount();
        int i3 = 1;
        if (z2) {
            i2 = getChildCount() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = childCount;
            i2 = 0;
        }
        int itemCount = state.getItemCount();
        m5610D();
        int startAfterPadding = this.f9426y.getStartAfterPadding();
        int endAfterPadding = this.f9426y.getEndAfterPadding();
        View view = null;
        View view2 = null;
        while (i2 != i) {
            View childAt = getChildAt(i2);
            int position = getPosition(childAt);
            if (position >= 0 && position < itemCount && m5564x0(recycler, state, position) == 0) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f9426y.getDecoratedStart(childAt) < endAfterPadding && this.f9426y.getDecoratedEnd(childAt) >= startAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x009f, code lost:
    
        r21.mFinished = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a1, code lost:
    
        return;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo5551S(androidx.recyclerview.widget.RecyclerView.Recycler r18, androidx.recyclerview.widget.RecyclerView.State r19, androidx.recyclerview.widget.LinearLayoutManager.C1340b r20, androidx.recyclerview.widget.LinearLayoutManager.LayoutChunkResult r21) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo5551S(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, androidx.recyclerview.widget.LinearLayoutManager$b, androidx.recyclerview.widget.LinearLayoutManager$LayoutChunkResult):void");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: V */
    public void mo5552V(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.C1339a c1339a, int i) {
        super.mo5552V(recycler, state, c1339a, i);
        m5549C0();
        if (state.getItemCount() > 0 && !state.isPreLayout()) {
            m5559t0(recycler, state, c1339a, i);
        }
        m5560u0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return this.f9330K0 ? m5557r0(state) : super.computeHorizontalScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return this.f9330K0 ? m5558s0(state) : super.computeHorizontalScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return this.f9330K0 ? m5557r0(state) : super.computeVerticalScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return this.f9330K0 ? m5558s0(state) : super.computeVerticalScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.f9422w == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f9422w == 1) {
            return this.f9323D0;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return m5562w0(recycler, state, state.getItemCount() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f9422w == 0) {
            return this.f9323D0;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return m5562w0(recycler, state, state.getItemCount() - 1) + 1;
    }

    public int getSpanCount() {
        return this.f9323D0;
    }

    public SpanSizeLookup getSpanSizeLookup() {
        return this.f9328I0;
    }

    public boolean isUsingSpansToEstimateScrollbarDimensions() {
        return this.f9330K0;
    }

    /* renamed from: m0 */
    public final void m5553m0(RecyclerView.Recycler recycler, RecyclerView.State state, int i, boolean z) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        if (z) {
            i4 = 1;
            i3 = i;
            i2 = 0;
        } else {
            i2 = i - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View view = this.f9325F0[i2];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int m5565y0 = m5565y0(recycler, state, getPosition(view));
            layoutParams.f9332f = m5565y0;
            layoutParams.f9331e = i5;
            i5 += m5565y0;
            i2 += i4;
        }
    }

    /* renamed from: n0 */
    public final void m5554n0() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            this.f9326G0.put(viewLayoutPosition, layoutParams.getSpanSize());
            this.f9327H0.put(viewLayoutPosition, layoutParams.getSpanIndex());
        }
    }

    /* renamed from: o0 */
    public final void m5555o0(int i) {
        this.f9324E0 = m5546p0(this.f9324E0, this.f9323D0, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d6, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00f6, code lost:
    
        if (r13 == (r2 > r7)) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0107  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onFocusSearchFailed(android.view.View r24, int r25, androidx.recyclerview.widget.RecyclerView.Recycler r26, androidx.recyclerview.widget.RecyclerView.State r27) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(GridView.class.getName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.m5791j(view, accessibilityNodeInfoCompat);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int m5562w0 = m5562w0(recycler, state, layoutParams2.getViewLayoutPosition());
        if (this.f9422w == 0) {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), m5562w0, 1, false, false));
        } else {
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(m5562w0, 1, layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), false, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.f9328I0.invalidateSpanIndexCache();
        this.f9328I0.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f9328I0.invalidateSpanIndexCache();
        this.f9328I0.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.f9328I0.invalidateSpanIndexCache();
        this.f9328I0.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.f9328I0.invalidateSpanIndexCache();
        this.f9328I0.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        this.f9328I0.invalidateSpanIndexCache();
        this.f9328I0.invalidateSpanGroupIndexCache();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.isPreLayout()) {
            m5554n0();
        }
        super.onLayoutChildren(recycler, state);
        m5556q0();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f9322C0 = false;
    }

    /* renamed from: q0 */
    public final void m5556q0() {
        this.f9326G0.clear();
        this.f9327H0.clear();
    }

    /* renamed from: r0 */
    public final int m5557r0(RecyclerView.State state) {
        if (getChildCount() != 0 && state.getItemCount() != 0) {
            m5610D();
            boolean isSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            View m5614H = m5614H(!isSmoothScrollbarEnabled, true);
            View m5613G = m5613G(!isSmoothScrollbarEnabled, true);
            if (m5614H != null && m5613G != null) {
                int m5568b = this.f9328I0.m5568b(getPosition(m5614H), this.f9323D0);
                int m5568b2 = this.f9328I0.m5568b(getPosition(m5613G), this.f9323D0);
                int max = this.f9414O ? Math.max(0, ((this.f9328I0.m5568b(state.getItemCount() - 1, this.f9323D0) + 1) - Math.max(m5568b, m5568b2)) - 1) : Math.max(0, Math.min(m5568b, m5568b2));
                if (isSmoothScrollbarEnabled) {
                    return Math.round((max * (Math.abs(this.f9426y.getDecoratedEnd(m5613G) - this.f9426y.getDecoratedStart(m5614H)) / ((this.f9328I0.m5568b(getPosition(m5613G), this.f9323D0) - this.f9328I0.m5568b(getPosition(m5614H), this.f9323D0)) + 1))) + (this.f9426y.getStartAfterPadding() - this.f9426y.getDecoratedStart(m5614H)));
                }
                return max;
            }
        }
        return 0;
    }

    /* renamed from: s0 */
    public final int m5558s0(RecyclerView.State state) {
        if (getChildCount() != 0 && state.getItemCount() != 0) {
            m5610D();
            View m5614H = m5614H(!isSmoothScrollbarEnabled(), true);
            View m5613G = m5613G(!isSmoothScrollbarEnabled(), true);
            if (m5614H != null && m5613G != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.f9328I0.m5568b(state.getItemCount() - 1, this.f9323D0) + 1;
                }
                int decoratedEnd = this.f9426y.getDecoratedEnd(m5613G) - this.f9426y.getDecoratedStart(m5614H);
                int m5568b = this.f9328I0.m5568b(getPosition(m5614H), this.f9323D0);
                return (int) ((decoratedEnd / ((this.f9328I0.m5568b(getPosition(m5613G), this.f9323D0) - m5568b) + 1)) * (this.f9328I0.m5568b(state.getItemCount() - 1, this.f9323D0) + 1));
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        m5549C0();
        m5560u0();
        return super.scrollHorizontallyBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        m5549C0();
        m5560u0();
        return super.scrollVerticallyBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int chooseSize;
        int chooseSize2;
        if (this.f9324E0 == null) {
            super.setMeasuredDimension(rect, i, i2);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f9422w == 1) {
            chooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, rect.height() + paddingTop, getMinimumHeight());
            int[] iArr = this.f9324E0;
            chooseSize = RecyclerView.LayoutManager.chooseSize(i, iArr[iArr.length - 1] + paddingLeft, getMinimumWidth());
        } else {
            chooseSize = RecyclerView.LayoutManager.chooseSize(i, rect.width() + paddingLeft, getMinimumWidth());
            int[] iArr2 = this.f9324E0;
            chooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, iArr2[iArr2.length - 1] + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    public void setSpanCount(int i) {
        if (i == this.f9323D0) {
            return;
        }
        this.f9322C0 = true;
        if (i >= 1) {
            this.f9323D0 = i;
            this.f9328I0.invalidateSpanIndexCache();
            requestLayout();
        } else {
            throw new IllegalArgumentException("Span count should be at least 1. Provided " + i);
        }
    }

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        this.f9328I0 = spanSizeLookup;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    public void setUsingSpansToEstimateScrollbarDimensions(boolean z) {
        this.f9330K0 = z;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.f9420u0 == null && !this.f9322C0;
    }

    /* renamed from: t0 */
    public final void m5559t0(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.C1339a c1339a, int i) {
        boolean z = i == 1;
        int m5564x0 = m5564x0(recycler, state, c1339a.f9430b);
        if (z) {
            while (m5564x0 > 0) {
                int i2 = c1339a.f9430b;
                if (i2 <= 0) {
                    return;
                }
                int i3 = i2 - 1;
                c1339a.f9430b = i3;
                m5564x0 = m5564x0(recycler, state, i3);
            }
            return;
        }
        int itemCount = state.getItemCount() - 1;
        int i4 = c1339a.f9430b;
        while (i4 < itemCount) {
            int i5 = i4 + 1;
            int m5564x02 = m5564x0(recycler, state, i5);
            if (m5564x02 <= m5564x0) {
                break;
            }
            i4 = i5;
            m5564x0 = m5564x02;
        }
        c1339a.f9430b = i4;
    }

    /* renamed from: u0 */
    public final void m5560u0() {
        View[] viewArr = this.f9325F0;
        if (viewArr == null || viewArr.length != this.f9323D0) {
            this.f9325F0 = new View[this.f9323D0];
        }
    }

    /* renamed from: v0 */
    public int m5561v0(int i, int i2) {
        if (this.f9422w != 1 || !isLayoutRTL()) {
            int[] iArr = this.f9324E0;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f9324E0;
        int i3 = this.f9323D0;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    /* renamed from: w0 */
    public final int m5562w0(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return this.f9328I0.m5568b(i, this.f9323D0);
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return this.f9328I0.m5568b(convertPreLayoutPositionToPostLayout, this.f9323D0);
        }
        Log.w(f9321M0, "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: x */
    public void mo5563x(RecyclerView.State state, LinearLayoutManager.C1340b c1340b, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = this.f9323D0;
        for (int i2 = 0; i2 < this.f9323D0 && c1340b.m5655c(state) && i > 0; i2++) {
            int i3 = c1340b.f9444d;
            layoutPrefetchRegistry.addPosition(i3, Math.max(0, c1340b.f9447g));
            i -= this.f9328I0.getSpanSize(i3);
            c1340b.f9444d += c1340b.f9445e;
        }
    }

    /* renamed from: x0 */
    public final int m5564x0(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return this.f9328I0.m5569c(i, this.f9323D0);
        }
        int i2 = this.f9327H0.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return this.f9328I0.m5569c(convertPreLayoutPositionToPostLayout, this.f9323D0);
        }
        Log.w(f9321M0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    /* renamed from: y0 */
    public final int m5565y0(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        if (!state.isPreLayout()) {
            return this.f9328I0.getSpanSize(i);
        }
        int i2 = this.f9326G0.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(i);
        if (convertPreLayoutPositionToPostLayout != -1) {
            return this.f9328I0.getSpanSize(convertPreLayoutPositionToPostLayout);
        }
        Log.w(f9321M0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    /* renamed from: z0 */
    public final void m5566z0(float f, int i) {
        m5555o0(Math.max(Math.round(f * this.f9323D0), i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;

        /* renamed from: e */
        public int f9331e;

        /* renamed from: f */
        public int f9332f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f9331e = -1;
            this.f9332f = 0;
        }

        public int getSpanIndex() {
            return this.f9331e;
        }

        public int getSpanSize() {
            return this.f9332f;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f9331e = -1;
            this.f9332f = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f9331e = -1;
            this.f9332f = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f9331e = -1;
            this.f9332f = 0;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.f9331e = -1;
            this.f9332f = 0;
        }
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.f9322C0 = false;
        this.f9323D0 = -1;
        this.f9326G0 = new SparseIntArray();
        this.f9327H0 = new SparseIntArray();
        this.f9328I0 = new DefaultSpanSizeLookup();
        this.f9329J0 = new Rect();
        setSpanCount(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.f9322C0 = false;
        this.f9323D0 = -1;
        this.f9326G0 = new SparseIntArray();
        this.f9327H0 = new SparseIntArray();
        this.f9328I0 = new DefaultSpanSizeLookup();
        this.f9329J0 = new Rect();
        setSpanCount(i);
    }
}
