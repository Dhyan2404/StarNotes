package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.C5042a;
import com.sunia.HTREnginev2.lng;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements lng, RecyclerView.SmoothScroller.ScrollVectorProvider {

    /* renamed from: J0 */
    public static final String f28779J0 = "FlexboxLayoutManager";

    /* renamed from: K0 */
    public static final Rect f28780K0 = new Rect();

    /* renamed from: L0 */
    public static final boolean f28781L0 = false;

    /* renamed from: M0 */
    public static final /* synthetic */ boolean f28782M0 = false;

    /* renamed from: A0 */
    public int f28783A0;

    /* renamed from: B0 */
    public int f28784B0;

    /* renamed from: C0 */
    public int f28785C0;

    /* renamed from: D0 */
    public boolean f28786D0;

    /* renamed from: E0 */
    public SparseArray<View> f28787E0;

    /* renamed from: F0 */
    public final Context f28788F0;

    /* renamed from: G0 */
    public View f28789G0;

    /* renamed from: H0 */
    public int f28790H0;

    /* renamed from: I0 */
    public C5042a.b f28791I0;

    /* renamed from: J */
    public int f28792J;

    /* renamed from: O */
    public boolean f28793O;

    /* renamed from: Q */
    public boolean f28794Q;

    /* renamed from: Z */
    public List<FlexLine> f28795Z;

    /* renamed from: k0 */
    public final C5042a f28796k0;

    /* renamed from: q0 */
    public RecyclerView.Recycler f28797q0;

    /* renamed from: t0 */
    public RecyclerView.State f28798t0;

    /* renamed from: u0 */
    public C5040c f28799u0;

    /* renamed from: v0 */
    public C5039b f28800v0;

    /* renamed from: w */
    public int f28801w;

    /* renamed from: w0 */
    public OrientationHelper f28802w0;

    /* renamed from: x */
    public int f28803x;

    /* renamed from: x0 */
    public OrientationHelper f28804x0;

    /* renamed from: y */
    public int f28805y;

    /* renamed from: y0 */
    public SavedState f28806y0;

    /* renamed from: z */
    public int f28807z;

    /* renamed from: z0 */
    public int f28808z0;

    /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$b */
    /* loaded from: classes5.dex */
    public class C5039b {

        /* renamed from: i */
        public static final /* synthetic */ boolean f28809i = false;

        /* renamed from: a */
        public int f28810a;

        /* renamed from: b */
        public int f28811b;

        /* renamed from: c */
        public int f28812c;

        /* renamed from: d */
        public int f28813d;

        /* renamed from: e */
        public boolean f28814e;

        /* renamed from: f */
        public boolean f28815f;

        /* renamed from: g */
        public boolean f28816g;

        public C5039b() {
            this.f28813d = 0;
        }

        /* renamed from: l */
        public static /* synthetic */ int m21790l(C5039b c5039b, int i) {
            int i2 = c5039b.f28813d + i;
            c5039b.f28813d = i2;
            return i2;
        }

        /* renamed from: r */
        public final void m21796r() {
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.f28793O) {
                this.f28812c = this.f28814e ? FlexboxLayoutManager.this.f28802w0.getEndAfterPadding() : FlexboxLayoutManager.this.f28802w0.getStartAfterPadding();
            } else {
                this.f28812c = this.f28814e ? FlexboxLayoutManager.this.f28802w0.getEndAfterPadding() : FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f28802w0.getStartAfterPadding();
            }
        }

        /* renamed from: s */
        public final void m21797s(View anchor) {
            OrientationHelper orientationHelper = FlexboxLayoutManager.this.f28803x == 0 ? FlexboxLayoutManager.this.f28804x0 : FlexboxLayoutManager.this.f28802w0;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() || !FlexboxLayoutManager.this.f28793O) {
                if (this.f28814e) {
                    this.f28812c = orientationHelper.getDecoratedEnd(anchor) + orientationHelper.getTotalSpaceChange();
                } else {
                    this.f28812c = orientationHelper.getDecoratedStart(anchor);
                }
            } else if (this.f28814e) {
                this.f28812c = orientationHelper.getDecoratedStart(anchor) + orientationHelper.getTotalSpaceChange();
            } else {
                this.f28812c = orientationHelper.getDecoratedEnd(anchor);
            }
            this.f28810a = FlexboxLayoutManager.this.getPosition(anchor);
            this.f28816g = false;
            int[] iArr = FlexboxLayoutManager.this.f28796k0.f28837c;
            int i = this.f28810a;
            if (i == -1) {
                i = 0;
            }
            int i2 = iArr[i];
            this.f28811b = i2 != -1 ? i2 : 0;
            if (FlexboxLayoutManager.this.f28795Z.size() > this.f28811b) {
                this.f28810a = ((FlexLine) FlexboxLayoutManager.this.f28795Z.get(this.f28811b)).f28755o;
            }
        }

        /* renamed from: t */
        public final void m21798t() {
            this.f28810a = -1;
            this.f28811b = -1;
            this.f28812c = Integer.MIN_VALUE;
            this.f28815f = false;
            this.f28816g = false;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) {
                if (FlexboxLayoutManager.this.f28803x == 0) {
                    this.f28814e = FlexboxLayoutManager.this.f28801w == 1;
                    return;
                } else {
                    this.f28814e = FlexboxLayoutManager.this.f28803x == 2;
                    return;
                }
            }
            if (FlexboxLayoutManager.this.f28803x == 0) {
                this.f28814e = FlexboxLayoutManager.this.f28801w == 3;
            } else {
                this.f28814e = FlexboxLayoutManager.this.f28803x == 2;
            }
        }

        @NonNull
        public String toString() {
            return "AnchorInfo{mPosition=" + this.f28810a + ", mFlexLinePosition=" + this.f28811b + ", mCoordinate=" + this.f28812c + ", mPerpendicularCoordinate=" + this.f28813d + ", mLayoutFromEnd=" + this.f28814e + ", mValid=" + this.f28815f + ", mAssignedFromSavedState=" + this.f28816g + '}';
        }
    }

    /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$c */
    /* loaded from: classes5.dex */
    public static class C5040c {

        /* renamed from: k */
        public static final int f28818k = Integer.MIN_VALUE;

        /* renamed from: l */
        public static final int f28819l = -1;

        /* renamed from: m */
        public static final int f28820m = 1;

        /* renamed from: n */
        public static final int f28821n = 1;

        /* renamed from: a */
        public int f28822a;

        /* renamed from: b */
        public boolean f28823b;

        /* renamed from: c */
        public int f28824c;

        /* renamed from: d */
        public int f28825d;

        /* renamed from: e */
        public int f28826e;

        /* renamed from: f */
        public int f28827f;

        /* renamed from: g */
        public int f28828g;

        /* renamed from: h */
        public int f28829h;

        /* renamed from: i */
        public int f28830i;

        /* renamed from: j */
        public boolean f28831j;

        public C5040c() {
            this.f28829h = 1;
            this.f28830i = 1;
        }

        /* renamed from: c */
        public static /* synthetic */ int m21804c(C5040c c5040c, int i) {
            int i2 = c5040c.f28826e + i;
            c5040c.f28826e = i2;
            return i2;
        }

        /* renamed from: d */
        public static /* synthetic */ int m21805d(C5040c c5040c, int i) {
            int i2 = c5040c.f28826e - i;
            c5040c.f28826e = i2;
            return i2;
        }

        /* renamed from: i */
        public static /* synthetic */ int m21810i(C5040c c5040c, int i) {
            int i2 = c5040c.f28822a - i;
            c5040c.f28822a = i2;
            return i2;
        }

        /* renamed from: l */
        public static /* synthetic */ int m21813l(C5040c c5040c) {
            int i = c5040c.f28824c;
            c5040c.f28824c = i + 1;
            return i;
        }

        /* renamed from: m */
        public static /* synthetic */ int m21814m(C5040c c5040c) {
            int i = c5040c.f28824c;
            c5040c.f28824c = i - 1;
            return i;
        }

        /* renamed from: n */
        public static /* synthetic */ int m21815n(C5040c c5040c, int i) {
            int i2 = c5040c.f28824c + i;
            c5040c.f28824c = i2;
            return i2;
        }

        /* renamed from: q */
        public static /* synthetic */ int m21818q(C5040c c5040c, int i) {
            int i2 = c5040c.f28827f + i;
            c5040c.f28827f = i2;
            return i2;
        }

        /* renamed from: u */
        public static /* synthetic */ int m21822u(C5040c c5040c, int i) {
            int i2 = c5040c.f28825d + i;
            c5040c.f28825d = i2;
            return i2;
        }

        /* renamed from: v */
        public static /* synthetic */ int m21823v(C5040c c5040c, int i) {
            int i2 = c5040c.f28825d - i;
            c5040c.f28825d = i2;
            return i2;
        }

        /* renamed from: D */
        public final boolean m21828D(RecyclerView.State state, List<FlexLine> flexLines) {
            int i;
            int i2 = this.f28825d;
            return i2 >= 0 && i2 < state.getItemCount() && (i = this.f28824c) >= 0 && i < flexLines.size();
        }

        @NonNull
        public String toString() {
            return "LayoutState{mAvailable=" + this.f28822a + ", mFlexLinePosition=" + this.f28824c + ", mPosition=" + this.f28825d + ", mOffset=" + this.f28826e + ", mScrollingOffset=" + this.f28827f + ", mLastScrollDelta=" + this.f28828g + ", mItemDirection=" + this.f28829h + ", mLayoutDirection=" + this.f28830i + '}';
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    /* renamed from: h */
    public static boolean m21726h(int childSize, int spec, int dimension) {
        int mode = View.MeasureSpec.getMode(spec);
        int size = View.MeasureSpec.getSize(spec);
        if (dimension > 0 && childSize != dimension) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= childSize;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == childSize;
        }
        return true;
    }

    /* renamed from: t */
    private boolean m21727t(View child, int widthSpec, int heightSpec, RecyclerView.LayoutParams lp) {
        return (!child.isLayoutRequested() && isMeasurementCacheEnabled() && m21726h(child.getWidth(), widthSpec, ((ViewGroup.MarginLayoutParams) lp).width) && m21726h(child.getHeight(), heightSpec, ((ViewGroup.MarginLayoutParams) lp).height)) ? false : true;
    }

    /* renamed from: E */
    public final boolean m21731E(View view, int scrollingOffset) {
        return (isMainAxisDirectionHorizontal() || !this.f28793O) ? this.f28802w0.getDecoratedStart(view) >= this.f28802w0.getEnd() - scrollingOffset : this.f28802w0.getDecoratedEnd(view) <= scrollingOffset;
    }

    /* renamed from: F */
    public final boolean m21732F(View view, int scrollingOffset) {
        return (isMainAxisDirectionHorizontal() || !this.f28793O) ? this.f28802w0.getDecoratedEnd(view) <= scrollingOffset : this.f28802w0.getEnd() - this.f28802w0.getDecoratedStart(view) <= scrollingOffset;
    }

    /* renamed from: G */
    public final void m21733G() {
        this.f28795Z.clear();
        this.f28800v0.m21798t();
        this.f28800v0.f28813d = 0;
    }

    /* renamed from: H */
    public final int m21734H(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        m21738L();
        View m21740N = m21740N(itemCount);
        View m21742P = m21742P(itemCount);
        if (state.getItemCount() == 0 || m21740N == null || m21742P == null) {
            return 0;
        }
        return Math.min(this.f28802w0.getTotalSpace(), this.f28802w0.getDecoratedEnd(m21742P) - this.f28802w0.getDecoratedStart(m21740N));
    }

    /* renamed from: I */
    public final int m21735I(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View m21740N = m21740N(itemCount);
        View m21742P = m21742P(itemCount);
        if (state.getItemCount() != 0 && m21740N != null && m21742P != null) {
            int position = getPosition(m21740N);
            int position2 = getPosition(m21742P);
            int abs = Math.abs(this.f28802w0.getDecoratedEnd(m21742P) - this.f28802w0.getDecoratedStart(m21740N));
            int i = this.f28796k0.f28837c[position];
            if (i != 0 && i != -1) {
                return Math.round((i * (abs / ((r4[position2] - i) + 1))) + (this.f28802w0.getStartAfterPadding() - this.f28802w0.getDecoratedStart(m21740N)));
            }
        }
        return 0;
    }

    /* renamed from: J */
    public final int m21736J(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View m21740N = m21740N(itemCount);
        View m21742P = m21742P(itemCount);
        if (state.getItemCount() == 0 || m21740N == null || m21742P == null) {
            return 0;
        }
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.f28802w0.getDecoratedEnd(m21742P) - this.f28802w0.getDecoratedStart(m21740N)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1)) * state.getItemCount());
    }

    /* renamed from: K */
    public final void m21737K() {
        if (this.f28799u0 == null) {
            this.f28799u0 = new C5040c();
        }
    }

    /* renamed from: L */
    public final void m21738L() {
        if (this.f28802w0 != null) {
            return;
        }
        if (isMainAxisDirectionHorizontal()) {
            if (this.f28803x == 0) {
                this.f28802w0 = OrientationHelper.createHorizontalHelper(this);
                this.f28804x0 = OrientationHelper.createVerticalHelper(this);
                return;
            } else {
                this.f28802w0 = OrientationHelper.createVerticalHelper(this);
                this.f28804x0 = OrientationHelper.createHorizontalHelper(this);
                return;
            }
        }
        if (this.f28803x == 0) {
            this.f28802w0 = OrientationHelper.createVerticalHelper(this);
            this.f28804x0 = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.f28802w0 = OrientationHelper.createHorizontalHelper(this);
            this.f28804x0 = OrientationHelper.createVerticalHelper(this);
        }
    }

    /* renamed from: M */
    public final int m21739M(RecyclerView.Recycler recycler, RecyclerView.State state, C5040c layoutState) {
        if (layoutState.f28827f != Integer.MIN_VALUE) {
            if (layoutState.f28822a < 0) {
                C5040c.m21818q(layoutState, layoutState.f28822a);
            }
            m21761i0(recycler, layoutState);
        }
        int i = layoutState.f28822a;
        int i2 = layoutState.f28822a;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i3 = 0;
        while (true) {
            if ((i2 > 0 || this.f28799u0.f28823b) && layoutState.m21828D(state, this.f28795Z)) {
                FlexLine flexLine = this.f28795Z.get(layoutState.f28824c);
                layoutState.f28825d = flexLine.f28755o;
                i3 += m21758f0(flexLine, layoutState);
                if (isMainAxisDirectionHorizontal || !this.f28793O) {
                    C5040c.m21804c(layoutState, flexLine.getCrossSize() * layoutState.f28830i);
                } else {
                    C5040c.m21805d(layoutState, flexLine.getCrossSize() * layoutState.f28830i);
                }
                i2 -= flexLine.getCrossSize();
            }
        }
        C5040c.m21810i(layoutState, i3);
        if (layoutState.f28827f != Integer.MIN_VALUE) {
            C5040c.m21818q(layoutState, i3);
            if (layoutState.f28822a < 0) {
                C5040c.m21818q(layoutState, layoutState.f28822a);
            }
            m21761i0(recycler, layoutState);
        }
        return i - layoutState.f28822a;
    }

    /* renamed from: N */
    public final View m21740N(int itemCount) {
        View m21745S = m21745S(0, getChildCount(), itemCount);
        if (m21745S == null) {
            return null;
        }
        int i = this.f28796k0.f28837c[getPosition(m21745S)];
        if (i == -1) {
            return null;
        }
        return m21741O(m21745S, this.f28795Z.get(i));
    }

    /* renamed from: O */
    public final View m21741O(View firstView, FlexLine firstVisibleLine) {
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i = firstVisibleLine.f28748h;
        for (int i2 = 1; i2 < i; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f28793O || isMainAxisDirectionHorizontal) {
                    if (this.f28802w0.getDecoratedStart(firstView) <= this.f28802w0.getDecoratedStart(childAt)) {
                    }
                    firstView = childAt;
                } else {
                    if (this.f28802w0.getDecoratedEnd(firstView) >= this.f28802w0.getDecoratedEnd(childAt)) {
                    }
                    firstView = childAt;
                }
            }
        }
        return firstView;
    }

    /* renamed from: P */
    public final View m21742P(int itemCount) {
        View m21745S = m21745S(getChildCount() - 1, -1, itemCount);
        if (m21745S == null) {
            return null;
        }
        return m21743Q(m21745S, this.f28795Z.get(this.f28796k0.f28837c[getPosition(m21745S)]));
    }

    /* renamed from: Q */
    public final View m21743Q(View lastView, FlexLine lastVisibleLine) {
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int childCount = (getChildCount() - lastVisibleLine.f28748h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (!this.f28793O || isMainAxisDirectionHorizontal) {
                    if (this.f28802w0.getDecoratedEnd(lastView) >= this.f28802w0.getDecoratedEnd(childAt)) {
                    }
                    lastView = childAt;
                } else {
                    if (this.f28802w0.getDecoratedStart(lastView) <= this.f28802w0.getDecoratedStart(childAt)) {
                    }
                    lastView = childAt;
                }
            }
        }
        return lastView;
    }

    /* renamed from: R */
    public final View m21744R(int fromIndex, int toIndex, boolean completelyVisible) {
        int i = toIndex > fromIndex ? 1 : -1;
        while (fromIndex != toIndex) {
            View childAt = getChildAt(fromIndex);
            if (m21757e0(childAt, completelyVisible)) {
                return childAt;
            }
            fromIndex += i;
        }
        return null;
    }

    /* renamed from: S */
    public final View m21745S(int start, int end, int itemCount) {
        int position;
        m21738L();
        m21737K();
        int startAfterPadding = this.f28802w0.getStartAfterPadding();
        int endAfterPadding = this.f28802w0.getEndAfterPadding();
        int i = end > start ? 1 : -1;
        View view = null;
        View view2 = null;
        while (start != end) {
            View childAt = getChildAt(start);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < itemCount) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.f28802w0.getDecoratedStart(childAt) >= startAfterPadding && this.f28802w0.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            start += i;
        }
        return view != null ? view : view2;
    }

    /* renamed from: T */
    public final int m21746T(int endOffset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int i;
        int endAfterPadding;
        if (!isMainAxisDirectionHorizontal() && this.f28793O) {
            int startAfterPadding = endOffset - this.f28802w0.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i = m21754b0(startAfterPadding, recycler, state);
        } else {
            int endAfterPadding2 = this.f28802w0.getEndAfterPadding() - endOffset;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            i = -m21754b0(-endAfterPadding2, recycler, state);
        }
        int i2 = endOffset + i;
        if (!canOffsetChildren || (endAfterPadding = this.f28802w0.getEndAfterPadding() - i2) <= 0) {
            return i;
        }
        this.f28802w0.offsetChildren(endAfterPadding);
        return endAfterPadding + i;
    }

    /* renamed from: U */
    public final int m21747U(int startOffset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int i;
        int startAfterPadding;
        if (isMainAxisDirectionHorizontal() || !this.f28793O) {
            int startAfterPadding2 = startOffset - this.f28802w0.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            i = -m21754b0(startAfterPadding2, recycler, state);
        } else {
            int endAfterPadding = this.f28802w0.getEndAfterPadding() - startOffset;
            if (endAfterPadding <= 0) {
                return 0;
            }
            i = m21754b0(-endAfterPadding, recycler, state);
        }
        int i2 = startOffset + i;
        if (!canOffsetChildren || (startAfterPadding = i2 - this.f28802w0.getStartAfterPadding()) <= 0) {
            return i;
        }
        this.f28802w0.offsetChildren(-startAfterPadding);
        return i - startAfterPadding;
    }

    /* renamed from: V */
    public final int m21748V(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    /* renamed from: W */
    public final View m21749W() {
        return getChildAt(0);
    }

    /* renamed from: X */
    public final int m21750X(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    /* renamed from: Y */
    public final int m21751Y(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    /* renamed from: Z */
    public final int m21752Z(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    /* renamed from: a0 */
    public int m21753a0(int position) {
        return this.f28796k0.f28837c[position];
    }

    /* renamed from: b0 */
    public final int m21754b0(int delta, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || delta == 0) {
            return 0;
        }
        m21738L();
        int i = 1;
        this.f28799u0.f28831j = true;
        boolean z = !isMainAxisDirectionHorizontal() && this.f28793O;
        if (!z ? delta <= 0 : delta >= 0) {
            i = -1;
        }
        int abs = Math.abs(delta);
        m21772t0(i, abs);
        int m21739M = this.f28799u0.f28827f + m21739M(recycler, state, this.f28799u0);
        if (m21739M < 0) {
            return 0;
        }
        if (z) {
            if (abs > m21739M) {
                delta = (-i) * m21739M;
            }
        } else if (abs > m21739M) {
            delta = i * m21739M;
        }
        this.f28802w0.offsetChildren(-delta);
        this.f28799u0.f28828g = delta;
        return delta;
    }

    /* renamed from: c0 */
    public final int m21755c0(int delta) {
        int i;
        if (getChildCount() == 0 || delta == 0) {
            return 0;
        }
        m21738L();
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        View view = this.f28789G0;
        int width = isMainAxisDirectionHorizontal ? view.getWidth() : view.getHeight();
        int width2 = isMainAxisDirectionHorizontal ? getWidth() : getHeight();
        if (!(getLayoutDirection() == 1)) {
            if (delta > 0) {
                return Math.min((width2 - this.f28800v0.f28813d) - width, delta);
            }
            if (this.f28800v0.f28813d + delta < 0) {
                i = this.f28800v0.f28813d;
                delta = -i;
            }
            return delta;
        }
        int abs = Math.abs(delta);
        if (delta < 0) {
            return -Math.min((width2 + this.f28800v0.f28813d) - width, abs);
        }
        if (this.f28800v0.f28813d + delta > 0) {
            i = this.f28800v0.f28813d;
            delta = -i;
        }
        return delta;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (this.f28803x == 0) {
            return isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            int width = getWidth();
            View view = this.f28789G0;
            if (width <= (view != null ? view.getWidth() : 0)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (this.f28803x == 0) {
            return !isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            return true;
        }
        int height = getHeight();
        View view = this.f28789G0;
        return height > (view != null ? view.getHeight() : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams lp) {
        return lp instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        return m21734H(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return m21735I(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return m21736J(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int targetPosition) {
        View childAt;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        int i = targetPosition < getPosition(childAt) ? -1 : 1;
        return isMainAxisDirectionHorizontal() ? new PointF(0.0f, i) : new PointF(i, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        return m21734H(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return m21735I(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return m21736J(state);
    }

    /* renamed from: d0 */
    public boolean m21756d0() {
        return this.f28793O;
    }

    /* renamed from: e0 */
    public final boolean m21757e0(View view, boolean completelyVisible) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int m21750X = m21750X(view);
        int m21752Z = m21752Z(view);
        int m21751Y = m21751Y(view);
        int m21748V = m21748V(view);
        return completelyVisible ? (paddingLeft <= m21750X && width >= m21751Y) && (paddingTop <= m21752Z && height >= m21748V) : (m21750X >= width || m21751Y >= paddingLeft) && (m21752Z >= height || m21748V >= paddingTop);
    }

    /* renamed from: f0 */
    public final int m21758f0(FlexLine flexLine, C5040c layoutState) {
        return isMainAxisDirectionHorizontal() ? m21759g0(flexLine, layoutState) : m21760h0(flexLine, layoutState);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View m21744R = m21744R(0, getChildCount(), true);
        if (m21744R == null) {
            return -1;
        }
        return getPosition(m21744R);
    }

    public int findFirstVisibleItemPosition() {
        View m21744R = m21744R(0, getChildCount(), false);
        if (m21744R == null) {
            return -1;
        }
        return getPosition(m21744R);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View m21744R = m21744R(getChildCount() - 1, -1, true);
        if (m21744R == null) {
            return -1;
        }
        return getPosition(m21744R);
    }

    public int findLastVisibleItemPosition() {
        View m21744R = m21744R(getChildCount() - 1, -1, false);
        if (m21744R == null) {
            return -1;
        }
        return getPosition(m21744R);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ce  */
    /* renamed from: g0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m21759g0(com.google.android.flexbox.FlexLine r22, com.google.android.flexbox.FlexboxLayoutManager.C5040c r23) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.m21759g0(com.google.android.flexbox.FlexLine, com.google.android.flexbox.FlexboxLayoutManager$c):int");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context c, AttributeSet attrs) {
        return new LayoutParams(c, attrs);
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getAlignContent() {
        return 5;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getAlignItems() {
        return this.f28807z;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getChildHeightMeasureSpec(int heightSpec, int padding, int childDimension) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), padding, childDimension, canScrollVertically());
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getChildWidthMeasureSpec(int widthSpec, int padding, int childDimension) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), padding, childDimension, canScrollHorizontally());
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getDecorationLengthCrossAxis(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (isMainAxisDirectionHorizontal()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getDecorationLengthMainAxis(View view, int index, int indexInFlexLine) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (isMainAxisDirectionHorizontal()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getFlexDirection() {
        return this.f28801w;
    }

    @Override // com.sunia.HTREnginev2.lng
    public View getFlexItemAt(int index) {
        View view = this.f28787E0.get(index);
        return view != null ? view : this.f28797q0.getViewForPosition(index);
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getFlexItemCount() {
        return this.f28798t0.getItemCount();
    }

    @Override // com.sunia.HTREnginev2.lng
    @NonNull
    public List<FlexLine> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f28795Z.size());
        int size = this.f28795Z.size();
        for (int i = 0; i < size; i++) {
            FlexLine flexLine = this.f28795Z.get(i);
            if (flexLine.getItemCount() != 0) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    @Override // com.sunia.HTREnginev2.lng
    public List<FlexLine> getFlexLinesInternal() {
        return this.f28795Z;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getFlexWrap() {
        return this.f28803x;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getJustifyContent() {
        return this.f28805y;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getLargestMainSize() {
        if (this.f28795Z.size() == 0) {
            return 0;
        }
        int size = this.f28795Z.size();
        int i = Integer.MIN_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            i = Math.max(i, this.f28795Z.get(i2).f28745e);
        }
        return i;
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getMaxLine() {
        return this.f28792J;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.f28786D0;
    }

    @Override // com.sunia.HTREnginev2.lng
    public View getReorderedFlexItemAt(int index) {
        return getFlexItemAt(index);
    }

    @Override // com.sunia.HTREnginev2.lng
    public int getSumOfCrossSize() {
        int size = this.f28795Z.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f28795Z.get(i2).f28747g;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4  */
    /* renamed from: h0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m21760h0(com.google.android.flexbox.FlexLine r26, com.google.android.flexbox.FlexboxLayoutManager.C5040c r27) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.m21760h0(com.google.android.flexbox.FlexLine, com.google.android.flexbox.FlexboxLayoutManager$c):int");
    }

    /* renamed from: i0 */
    public final void m21761i0(RecyclerView.Recycler recycler, C5040c layoutState) {
        if (layoutState.f28831j) {
            if (layoutState.f28830i == -1) {
                m21763k0(recycler, layoutState);
            } else {
                m21764l0(recycler, layoutState);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    @Override // com.sunia.HTREnginev2.lng
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.f28801w;
        return i == 0 || i == 1;
    }

    /* renamed from: j0 */
    public final void m21762j0(RecyclerView.Recycler recycler, int startIndex, int endIndex) {
        while (endIndex >= startIndex) {
            removeAndRecycleViewAt(endIndex, recycler);
            endIndex--;
        }
    }

    /* renamed from: k0 */
    public final void m21763k0(RecyclerView.Recycler recycler, C5040c layoutState) {
        int childCount;
        int i;
        View childAt;
        int i2;
        if (layoutState.f28827f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(childCount - 1)) == null || (i2 = this.f28796k0.f28837c[getPosition(childAt)]) == -1) {
            return;
        }
        FlexLine flexLine = this.f28795Z.get(i2);
        int i3 = i;
        while (true) {
            if (i3 < 0) {
                break;
            }
            View childAt2 = getChildAt(i3);
            if (childAt2 != null) {
                if (!m21731E(childAt2, layoutState.f28827f)) {
                    break;
                }
                if (flexLine.f28755o != getPosition(childAt2)) {
                    continue;
                } else if (i2 <= 0) {
                    childCount = i3;
                    break;
                } else {
                    i2 += layoutState.f28830i;
                    flexLine = this.f28795Z.get(i2);
                    childCount = i3;
                }
            }
            i3--;
        }
        m21762j0(recycler, childCount, i);
    }

    /* renamed from: l0 */
    public final void m21764l0(RecyclerView.Recycler recycler, C5040c layoutState) {
        int childCount;
        View childAt;
        if (layoutState.f28827f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(0)) == null) {
            return;
        }
        int i = this.f28796k0.f28837c[getPosition(childAt)];
        int i2 = -1;
        if (i == -1) {
            return;
        }
        FlexLine flexLine = this.f28795Z.get(i);
        int i3 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt2 = getChildAt(i3);
            if (childAt2 != null) {
                if (!m21732F(childAt2, layoutState.f28827f)) {
                    break;
                }
                if (flexLine.f28756p != getPosition(childAt2)) {
                    continue;
                } else if (i >= this.f28795Z.size() - 1) {
                    i2 = i3;
                    break;
                } else {
                    i += layoutState.f28830i;
                    flexLine = this.f28795Z.get(i);
                    i2 = i3;
                }
            }
            i3++;
        }
        m21762j0(recycler, 0, i2);
    }

    /* renamed from: m0 */
    public final void m21765m0() {
        int heightMode = isMainAxisDirectionHorizontal() ? getHeightMode() : getWidthMode();
        this.f28799u0.f28823b = heightMode == 0 || heightMode == Integer.MIN_VALUE;
    }

    /* renamed from: n0 */
    public final void m21766n0() {
        int layoutDirection = getLayoutDirection();
        int i = this.f28801w;
        if (i == 0) {
            this.f28793O = layoutDirection == 1;
            this.f28794Q = this.f28803x == 2;
            return;
        }
        if (i == 1) {
            this.f28793O = layoutDirection != 1;
            this.f28794Q = this.f28803x == 2;
            return;
        }
        if (i == 2) {
            boolean z = layoutDirection == 1;
            this.f28793O = z;
            if (this.f28803x == 2) {
                this.f28793O = !z;
            }
            this.f28794Q = false;
            return;
        }
        if (i != 3) {
            this.f28793O = false;
            this.f28794Q = false;
            return;
        }
        boolean z2 = layoutDirection == 1;
        this.f28793O = z2;
        if (this.f28803x == 2) {
            this.f28793O = !z2;
        }
        this.f28794Q = true;
    }

    /* renamed from: o0 */
    public final boolean m21767o0(RecyclerView.State state, C5039b anchorInfo) {
        if (getChildCount() == 0) {
            return false;
        }
        View m21742P = anchorInfo.f28814e ? m21742P(state.getItemCount()) : m21740N(state.getItemCount());
        if (m21742P == null) {
            return false;
        }
        anchorInfo.m21797s(m21742P);
        if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
            if (this.f28802w0.getDecoratedStart(m21742P) >= this.f28802w0.getEndAfterPadding() || this.f28802w0.getDecoratedEnd(m21742P) < this.f28802w0.getStartAfterPadding()) {
                anchorInfo.f28812c = anchorInfo.f28814e ? this.f28802w0.getEndAfterPadding() : this.f28802w0.getStartAfterPadding();
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter oldAdapter, RecyclerView.Adapter newAdapter) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f28789G0 = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        if (this.f28786D0) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsAdded(recyclerView, positionStart, itemCount);
        m21770r0(positionStart);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(@NonNull RecyclerView recyclerView, int from, int to, int itemCount) {
        super.onItemsMoved(recyclerView, from, to, itemCount);
        m21770r0(Math.min(from, to));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsRemoved(recyclerView, positionStart, itemCount);
        m21770r0(positionStart);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int positionStart, int itemCount, Object payload) {
        super.onItemsUpdated(recyclerView, positionStart, itemCount, payload);
        m21770r0(positionStart);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        this.f28797q0 = recycler;
        this.f28798t0 = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        m21766n0();
        m21738L();
        m21737K();
        this.f28796k0.m21874t(itemCount);
        this.f28796k0.m21875u(itemCount);
        this.f28796k0.m21873s(itemCount);
        this.f28799u0.f28831j = false;
        SavedState savedState = this.f28806y0;
        if (savedState != null && savedState.hasValidAnchor(itemCount)) {
            this.f28808z0 = this.f28806y0.mAnchorPosition;
        }
        if (!this.f28800v0.f28815f || this.f28808z0 != -1 || this.f28806y0 != null) {
            this.f28800v0.m21798t();
            m21769q0(state, this.f28800v0);
            this.f28800v0.f28815f = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (this.f28800v0.f28814e) {
            m21774v0(this.f28800v0, false, true);
        } else {
            m21773u0(this.f28800v0, false, true);
        }
        m21771s0(itemCount);
        m21739M(recycler, state, this.f28799u0);
        if (this.f28800v0.f28814e) {
            i2 = this.f28799u0.f28826e;
            m21773u0(this.f28800v0, true, false);
            m21739M(recycler, state, this.f28799u0);
            i = this.f28799u0.f28826e;
        } else {
            i = this.f28799u0.f28826e;
            m21774v0(this.f28800v0, true, false);
            m21739M(recycler, state, this.f28799u0);
            i2 = this.f28799u0.f28826e;
        }
        if (getChildCount() > 0) {
            if (this.f28800v0.f28814e) {
                m21747U(i2 + m21746T(i, recycler, state, true), recycler, state, false);
            } else {
                m21746T(i + m21747U(i2, recycler, state, true), recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f28806y0 = null;
        this.f28808z0 = -1;
        this.f28783A0 = Integer.MIN_VALUE;
        this.f28790H0 = -1;
        this.f28800v0.m21798t();
        this.f28787E0.clear();
    }

    @Override // com.sunia.HTREnginev2.lng
    public void onNewFlexItemAdded(View view, int index, int indexInFlexLine, FlexLine flexLine) {
        calculateItemDecorationsForChild(view, f28780K0);
        if (isMainAxisDirectionHorizontal()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            flexLine.f28745e += leftDecorationWidth;
            flexLine.f28746f += leftDecorationWidth;
        } else {
            int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
            flexLine.f28745e += topDecorationHeight;
            flexLine.f28746f += topDecorationHeight;
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void onNewFlexLineAdded(FlexLine flexLine) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            this.f28806y0 = (SavedState) state;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.f28806y0 != null) {
            return new SavedState(this.f28806y0);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            View m21749W = m21749W();
            savedState.mAnchorPosition = getPosition(m21749W);
            savedState.mAnchorOffset = this.f28802w0.getDecoratedStart(m21749W) - this.f28802w0.getStartAfterPadding();
        } else {
            savedState.invalidateAnchor();
        }
        return savedState;
    }

    /* renamed from: p0 */
    public final boolean m21768p0(RecyclerView.State state, C5039b anchorInfo, SavedState savedState) {
        int i;
        View childAt;
        if (!state.isPreLayout() && (i = this.f28808z0) != -1) {
            if (i >= 0 && i < state.getItemCount()) {
                anchorInfo.f28810a = this.f28808z0;
                anchorInfo.f28811b = this.f28796k0.f28837c[anchorInfo.f28810a];
                SavedState savedState2 = this.f28806y0;
                if (savedState2 != null && savedState2.hasValidAnchor(state.getItemCount())) {
                    anchorInfo.f28812c = this.f28802w0.getStartAfterPadding() + savedState.mAnchorOffset;
                    anchorInfo.f28816g = true;
                    anchorInfo.f28811b = -1;
                    return true;
                }
                if (this.f28783A0 != Integer.MIN_VALUE) {
                    if (isMainAxisDirectionHorizontal() || !this.f28793O) {
                        anchorInfo.f28812c = this.f28802w0.getStartAfterPadding() + this.f28783A0;
                    } else {
                        anchorInfo.f28812c = this.f28783A0 - this.f28802w0.getEndPadding();
                    }
                    return true;
                }
                View findViewByPosition = findViewByPosition(this.f28808z0);
                if (findViewByPosition == null) {
                    if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                        anchorInfo.f28814e = this.f28808z0 < getPosition(childAt);
                    }
                    anchorInfo.m21796r();
                } else {
                    if (this.f28802w0.getDecoratedMeasurement(findViewByPosition) > this.f28802w0.getTotalSpace()) {
                        anchorInfo.m21796r();
                        return true;
                    }
                    if (this.f28802w0.getDecoratedStart(findViewByPosition) - this.f28802w0.getStartAfterPadding() < 0) {
                        anchorInfo.f28812c = this.f28802w0.getStartAfterPadding();
                        anchorInfo.f28814e = false;
                        return true;
                    }
                    if (this.f28802w0.getEndAfterPadding() - this.f28802w0.getDecoratedEnd(findViewByPosition) < 0) {
                        anchorInfo.f28812c = this.f28802w0.getEndAfterPadding();
                        anchorInfo.f28814e = true;
                        return true;
                    }
                    anchorInfo.f28812c = anchorInfo.f28814e ? this.f28802w0.getDecoratedEnd(findViewByPosition) + this.f28802w0.getTotalSpaceChange() : this.f28802w0.getDecoratedStart(findViewByPosition);
                }
                return true;
            }
            this.f28808z0 = -1;
            this.f28783A0 = Integer.MIN_VALUE;
        }
        return false;
    }

    /* renamed from: q0 */
    public final void m21769q0(RecyclerView.State state, C5039b anchorInfo) {
        if (m21768p0(state, anchorInfo, this.f28806y0) || m21767o0(state, anchorInfo)) {
            return;
        }
        anchorInfo.m21796r();
        anchorInfo.f28810a = 0;
        anchorInfo.f28811b = 0;
    }

    /* renamed from: r0 */
    public final void m21770r0(int positionStart) {
        if (positionStart >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f28796k0.m21874t(childCount);
        this.f28796k0.m21875u(childCount);
        this.f28796k0.m21873s(childCount);
        if (positionStart >= this.f28796k0.f28837c.length) {
            return;
        }
        this.f28790H0 = positionStart;
        View m21749W = m21749W();
        if (m21749W == null) {
            return;
        }
        this.f28808z0 = getPosition(m21749W);
        if (isMainAxisDirectionHorizontal() || !this.f28793O) {
            this.f28783A0 = this.f28802w0.getDecoratedStart(m21749W) - this.f28802w0.getStartAfterPadding();
        } else {
            this.f28783A0 = this.f28802w0.getDecoratedEnd(m21749W) + this.f28802w0.getEndPadding();
        }
    }

    /* renamed from: s0 */
    public final void m21771s0(int childCount) {
        boolean z;
        int i;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        if (isMainAxisDirectionHorizontal()) {
            int i2 = this.f28784B0;
            z = (i2 == Integer.MIN_VALUE || i2 == width) ? false : true;
            i = this.f28799u0.f28823b ? this.f28788F0.getResources().getDisplayMetrics().heightPixels : this.f28799u0.f28822a;
        } else {
            int i3 = this.f28785C0;
            z = (i3 == Integer.MIN_VALUE || i3 == height) ? false : true;
            i = this.f28799u0.f28823b ? this.f28788F0.getResources().getDisplayMetrics().widthPixels : this.f28799u0.f28822a;
        }
        int i4 = i;
        this.f28784B0 = width;
        this.f28785C0 = height;
        int i5 = this.f28790H0;
        if (i5 == -1 && (this.f28808z0 != -1 || z)) {
            if (this.f28800v0.f28814e) {
                return;
            }
            this.f28795Z.clear();
            this.f28791I0.m21881a();
            if (isMainAxisDirectionHorizontal()) {
                this.f28796k0.m21859e(this.f28791I0, makeMeasureSpec, makeMeasureSpec2, i4, this.f28800v0.f28810a, this.f28795Z);
            } else {
                this.f28796k0.m21862h(this.f28791I0, makeMeasureSpec, makeMeasureSpec2, i4, this.f28800v0.f28810a, this.f28795Z);
            }
            this.f28795Z = this.f28791I0.f28840a;
            this.f28796k0.m21870p(makeMeasureSpec, makeMeasureSpec2);
            this.f28796k0.m21852X();
            C5039b c5039b = this.f28800v0;
            c5039b.f28811b = this.f28796k0.f28837c[c5039b.f28810a];
            this.f28799u0.f28824c = this.f28800v0.f28811b;
            return;
        }
        int min = i5 != -1 ? Math.min(i5, this.f28800v0.f28810a) : this.f28800v0.f28810a;
        this.f28791I0.m21881a();
        if (isMainAxisDirectionHorizontal()) {
            if (this.f28795Z.size() > 0) {
                this.f28796k0.m21864j(this.f28795Z, min);
                this.f28796k0.m21856b(this.f28791I0, makeMeasureSpec, makeMeasureSpec2, i4, min, this.f28800v0.f28810a, this.f28795Z);
            } else {
                this.f28796k0.m21873s(childCount);
                this.f28796k0.m21858d(this.f28791I0, makeMeasureSpec, makeMeasureSpec2, i4, 0, this.f28795Z);
            }
        } else if (this.f28795Z.size() > 0) {
            this.f28796k0.m21864j(this.f28795Z, min);
            this.f28796k0.m21856b(this.f28791I0, makeMeasureSpec2, makeMeasureSpec, i4, min, this.f28800v0.f28810a, this.f28795Z);
        } else {
            this.f28796k0.m21873s(childCount);
            this.f28796k0.m21861g(this.f28791I0, makeMeasureSpec, makeMeasureSpec2, i4, 0, this.f28795Z);
        }
        this.f28795Z = this.f28791I0.f28840a;
        this.f28796k0.m21871q(makeMeasureSpec, makeMeasureSpec2, min);
        this.f28796k0.m21853Y(min);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!isMainAxisDirectionHorizontal() || this.f28803x == 0) {
            int m21754b0 = m21754b0(dx, recycler, state);
            this.f28787E0.clear();
            return m21754b0;
        }
        int m21755c0 = m21755c0(dx);
        C5039b.m21790l(this.f28800v0, m21755c0);
        this.f28804x0.offsetChildren(-m21755c0);
        return m21755c0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int position) {
        this.f28808z0 = position;
        this.f28783A0 = Integer.MIN_VALUE;
        SavedState savedState = this.f28806y0;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (isMainAxisDirectionHorizontal() || (this.f28803x == 0 && !isMainAxisDirectionHorizontal())) {
            int m21754b0 = m21754b0(dy, recycler, state);
            this.f28787E0.clear();
            return m21754b0;
        }
        int m21755c0 = m21755c0(dy);
        C5039b.m21790l(this.f28800v0, m21755c0);
        this.f28804x0.offsetChildren(-m21755c0);
        return m21755c0;
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setAlignContent(int alignContent) {
        throw new UnsupportedOperationException("Setting the alignContent in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to use this attribute.");
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setAlignItems(int alignItems) {
        int i = this.f28807z;
        if (i != alignItems) {
            if (i == 4 || alignItems == 4) {
                removeAllViews();
                m21733G();
            }
            this.f28807z = alignItems;
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setFlexDirection(int flexDirection) {
        if (this.f28801w != flexDirection) {
            removeAllViews();
            this.f28801w = flexDirection;
            this.f28802w0 = null;
            this.f28804x0 = null;
            m21733G();
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setFlexLines(List<FlexLine> flexLines) {
        this.f28795Z = flexLines;
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setFlexWrap(int flexWrap) {
        if (flexWrap == 2) {
            throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
        }
        int i = this.f28803x;
        if (i != flexWrap) {
            if (i == 0 || flexWrap == 0) {
                removeAllViews();
                m21733G();
            }
            this.f28803x = flexWrap;
            this.f28802w0 = null;
            this.f28804x0 = null;
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setJustifyContent(int justifyContent) {
        if (this.f28805y != justifyContent) {
            this.f28805y = justifyContent;
            requestLayout();
        }
    }

    @Override // com.sunia.HTREnginev2.lng
    public void setMaxLine(int maxLine) {
        if (this.f28792J != maxLine) {
            this.f28792J = maxLine;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean recycleChildrenOnDetach) {
        this.f28786D0 = recycleChildrenOnDetach;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(position);
        startSmoothScroll(linearSmoothScroller);
    }

    /* renamed from: t0 */
    public final void m21772t0(int layoutDirection, int absDelta) {
        this.f28799u0.f28830i = layoutDirection;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        boolean z = !isMainAxisDirectionHorizontal && this.f28793O;
        if (layoutDirection == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            if (childAt == null) {
                return;
            }
            this.f28799u0.f28826e = this.f28802w0.getDecoratedEnd(childAt);
            int position = getPosition(childAt);
            View m21743Q = m21743Q(childAt, this.f28795Z.get(this.f28796k0.f28837c[position]));
            this.f28799u0.f28829h = 1;
            C5040c c5040c = this.f28799u0;
            c5040c.f28825d = position + c5040c.f28829h;
            if (this.f28796k0.f28837c.length <= this.f28799u0.f28825d) {
                this.f28799u0.f28824c = -1;
            } else {
                C5040c c5040c2 = this.f28799u0;
                c5040c2.f28824c = this.f28796k0.f28837c[c5040c2.f28825d];
            }
            if (z) {
                this.f28799u0.f28826e = this.f28802w0.getDecoratedStart(m21743Q);
                this.f28799u0.f28827f = (-this.f28802w0.getDecoratedStart(m21743Q)) + this.f28802w0.getStartAfterPadding();
                C5040c c5040c3 = this.f28799u0;
                c5040c3.f28827f = Math.max(c5040c3.f28827f, 0);
            } else {
                this.f28799u0.f28826e = this.f28802w0.getDecoratedEnd(m21743Q);
                this.f28799u0.f28827f = this.f28802w0.getDecoratedEnd(m21743Q) - this.f28802w0.getEndAfterPadding();
            }
            if ((this.f28799u0.f28824c == -1 || this.f28799u0.f28824c > this.f28795Z.size() - 1) && this.f28799u0.f28825d <= getFlexItemCount()) {
                int i = absDelta - this.f28799u0.f28827f;
                this.f28791I0.m21881a();
                if (i > 0) {
                    if (isMainAxisDirectionHorizontal) {
                        this.f28796k0.m21858d(this.f28791I0, makeMeasureSpec, makeMeasureSpec2, i, this.f28799u0.f28825d, this.f28795Z);
                    } else {
                        this.f28796k0.m21861g(this.f28791I0, makeMeasureSpec, makeMeasureSpec2, i, this.f28799u0.f28825d, this.f28795Z);
                    }
                    this.f28796k0.m21871q(makeMeasureSpec, makeMeasureSpec2, this.f28799u0.f28825d);
                    this.f28796k0.m21853Y(this.f28799u0.f28825d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            if (childAt2 == null) {
                return;
            }
            this.f28799u0.f28826e = this.f28802w0.getDecoratedStart(childAt2);
            int position2 = getPosition(childAt2);
            View m21741O = m21741O(childAt2, this.f28795Z.get(this.f28796k0.f28837c[position2]));
            this.f28799u0.f28829h = 1;
            int i2 = this.f28796k0.f28837c[position2];
            if (i2 == -1) {
                i2 = 0;
            }
            if (i2 > 0) {
                this.f28799u0.f28825d = position2 - this.f28795Z.get(i2 - 1).getItemCount();
            } else {
                this.f28799u0.f28825d = -1;
            }
            this.f28799u0.f28824c = i2 > 0 ? i2 - 1 : 0;
            if (z) {
                this.f28799u0.f28826e = this.f28802w0.getDecoratedEnd(m21741O);
                this.f28799u0.f28827f = this.f28802w0.getDecoratedEnd(m21741O) - this.f28802w0.getEndAfterPadding();
                C5040c c5040c4 = this.f28799u0;
                c5040c4.f28827f = Math.max(c5040c4.f28827f, 0);
            } else {
                this.f28799u0.f28826e = this.f28802w0.getDecoratedStart(m21741O);
                this.f28799u0.f28827f = (-this.f28802w0.getDecoratedStart(m21741O)) + this.f28802w0.getStartAfterPadding();
            }
        }
        C5040c c5040c5 = this.f28799u0;
        c5040c5.f28822a = absDelta - c5040c5.f28827f;
    }

    /* renamed from: u0 */
    public final void m21773u0(C5039b anchorInfo, boolean fromNextLine, boolean considerInfinite) {
        if (considerInfinite) {
            m21765m0();
        } else {
            this.f28799u0.f28823b = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.f28793O) {
            this.f28799u0.f28822a = this.f28802w0.getEndAfterPadding() - anchorInfo.f28812c;
        } else {
            this.f28799u0.f28822a = anchorInfo.f28812c - getPaddingRight();
        }
        this.f28799u0.f28825d = anchorInfo.f28810a;
        this.f28799u0.f28829h = 1;
        this.f28799u0.f28830i = 1;
        this.f28799u0.f28826e = anchorInfo.f28812c;
        this.f28799u0.f28827f = Integer.MIN_VALUE;
        this.f28799u0.f28824c = anchorInfo.f28811b;
        if (!fromNextLine || this.f28795Z.size() <= 1 || anchorInfo.f28811b < 0 || anchorInfo.f28811b >= this.f28795Z.size() - 1) {
            return;
        }
        FlexLine flexLine = this.f28795Z.get(anchorInfo.f28811b);
        C5040c.m21813l(this.f28799u0);
        C5040c.m21822u(this.f28799u0, flexLine.getItemCount());
    }

    @Override // com.sunia.HTREnginev2.lng
    public void updateViewCache(int position, View view) {
        this.f28787E0.put(position, view);
    }

    /* renamed from: v0 */
    public final void m21774v0(C5039b anchorInfo, boolean fromPreviousLine, boolean considerInfinite) {
        if (considerInfinite) {
            m21765m0();
        } else {
            this.f28799u0.f28823b = false;
        }
        if (isMainAxisDirectionHorizontal() || !this.f28793O) {
            this.f28799u0.f28822a = anchorInfo.f28812c - this.f28802w0.getStartAfterPadding();
        } else {
            this.f28799u0.f28822a = (this.f28789G0.getWidth() - anchorInfo.f28812c) - this.f28802w0.getStartAfterPadding();
        }
        this.f28799u0.f28825d = anchorInfo.f28810a;
        this.f28799u0.f28829h = 1;
        this.f28799u0.f28830i = -1;
        this.f28799u0.f28826e = anchorInfo.f28812c;
        this.f28799u0.f28827f = Integer.MIN_VALUE;
        this.f28799u0.f28824c = anchorInfo.f28811b;
        if (!fromPreviousLine || anchorInfo.f28811b <= 0 || this.f28795Z.size() <= anchorInfo.f28811b) {
            return;
        }
        FlexLine flexLine = this.f28795Z.get(anchorInfo.f28811b);
        C5040c.m21814m(this.f28799u0);
        C5040c.m21823v(this.f28799u0, flexLine.getItemCount());
    }

    /* loaded from: classes5.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5037a();
        private int mAnchorOffset;
        private int mAnchorPosition;

        /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$SavedState$a */
        /* loaded from: classes5.dex */
        public class C5037a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel source) {
                return new SavedState(source);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasValidAnchor(int itemCount) {
            int i = this.mAnchorPosition;
            return i >= 0 && i < itemCount;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public String toString() {
            return "SavedState{mAnchorPosition=" + this.mAnchorPosition + ", mAnchorOffset=" + this.mAnchorOffset + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.mAnchorPosition);
            dest.writeInt(this.mAnchorOffset);
        }

        public SavedState() {
        }

        private SavedState(Parcel in) {
            this.mAnchorPosition = in.readInt();
            this.mAnchorOffset = in.readInt();
        }

        private SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
        }
    }

    public FlexboxLayoutManager(Context context, int flexDirection) {
        this(context, flexDirection, 1);
    }

    public FlexboxLayoutManager(Context context, int flexDirection, int flexWrap) {
        this.f28792J = -1;
        this.f28795Z = new ArrayList();
        this.f28796k0 = new C5042a(this);
        this.f28800v0 = new C5039b();
        this.f28808z0 = -1;
        this.f28783A0 = Integer.MIN_VALUE;
        this.f28784B0 = Integer.MIN_VALUE;
        this.f28785C0 = Integer.MIN_VALUE;
        this.f28787E0 = new SparseArray<>();
        this.f28790H0 = -1;
        this.f28791I0 = new C5042a.b();
        setFlexDirection(flexDirection);
        setFlexWrap(flexWrap);
        setAlignItems(4);
        this.f28788F0 = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int positionStart, int itemCount) {
        super.onItemsUpdated(recyclerView, positionStart, itemCount);
        m21770r0(positionStart);
    }

    /* loaded from: classes5.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new C5036a();
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private boolean mWrapBefore;

        /* renamed from: com.google.android.flexbox.FlexboxLayoutManager$LayoutParams$a */
        /* loaded from: classes5.dex */
        public class C5036a implements Parcelable.Creator<LayoutParams> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public LayoutParams createFromParcel(Parcel source) {
                return new LayoutParams(source);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public LayoutParams[] newArray(int size) {
                return new LayoutParams[size];
            }
        }

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return 1;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setAlignSelf(int alignSelf) {
            this.mAlignSelf = alignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexBasisPercent(float flexBasisPercent) {
            this.mFlexBasisPercent = flexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexGrow(float flexGrow) {
            this.mFlexGrow = flexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexShrink(float flexShrink) {
            this.mFlexShrink = flexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setHeight(int height) {
            ((ViewGroup.MarginLayoutParams) this).height = height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxHeight(int maxHeight) {
            this.mMaxHeight = maxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxWidth(int maxWidth) {
            this.mMaxWidth = maxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinHeight(int minHeight) {
            this.mMinHeight = minHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int minWidth) {
            this.mMinWidth = minWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setOrder(int order) {
            throw new UnsupportedOperationException("Setting the order in the FlexboxLayoutManager is not supported. Use FlexboxLayout if you need to reorder using the attribute.");
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWidth(int width) {
            ((ViewGroup.MarginLayoutParams) this).width = width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWrapBefore(boolean wrapBefore) {
            this.mWrapBefore = wrapBefore;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(int width, int height) {
            super(width, height);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(RecyclerView.LayoutParams source) {
            super(source);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(LayoutParams source) {
            super((RecyclerView.LayoutParams) source);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mFlexGrow = source.mFlexGrow;
            this.mFlexShrink = source.mFlexShrink;
            this.mAlignSelf = source.mAlignSelf;
            this.mFlexBasisPercent = source.mFlexBasisPercent;
            this.mMinWidth = source.mMinWidth;
            this.mMinHeight = source.mMinHeight;
            this.mMaxWidth = source.mMaxWidth;
            this.mMaxHeight = source.mMaxHeight;
            this.mWrapBefore = source.mWrapBefore;
        }

        public LayoutParams(Parcel in) {
            super(-2, -2);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mFlexGrow = in.readFloat();
            this.mFlexShrink = in.readFloat();
            this.mAlignSelf = in.readInt();
            this.mFlexBasisPercent = in.readFloat();
            this.mMinWidth = in.readInt();
            this.mMinHeight = in.readInt();
            this.mMaxWidth = in.readInt();
            this.mMaxHeight = in.readInt();
            this.mWrapBefore = in.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = in.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = in.readInt();
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this.f28792J = -1;
        this.f28795Z = new ArrayList();
        this.f28796k0 = new C5042a(this);
        this.f28800v0 = new C5039b();
        this.f28808z0 = -1;
        this.f28783A0 = Integer.MIN_VALUE;
        this.f28784B0 = Integer.MIN_VALUE;
        this.f28785C0 = Integer.MIN_VALUE;
        this.f28787E0 = new SparseArray<>();
        this.f28790H0 = -1;
        this.f28791I0 = new C5042a.b();
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attrs, defStyleAttr, defStyleRes);
        int i = properties.orientation;
        if (i != 0) {
            if (i == 1) {
                if (properties.reverseLayout) {
                    setFlexDirection(3);
                } else {
                    setFlexDirection(2);
                }
            }
        } else if (properties.reverseLayout) {
            setFlexDirection(1);
        } else {
            setFlexDirection(0);
        }
        setFlexWrap(1);
        setAlignItems(4);
        this.f28788F0 = context;
    }
}
