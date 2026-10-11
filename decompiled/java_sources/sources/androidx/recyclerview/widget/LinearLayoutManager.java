package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes3.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {

    /* renamed from: A0 */
    public static final boolean f9410A0 = false;

    /* renamed from: B0 */
    public static final float f9411B0 = 0.33333334f;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;

    /* renamed from: z0 */
    public static final String f9412z0 = "LinearLayoutManager";

    /* renamed from: J */
    public boolean f9413J;

    /* renamed from: O */
    public boolean f9414O;

    /* renamed from: Q */
    public boolean f9415Q;

    /* renamed from: Z */
    public boolean f9416Z;

    /* renamed from: k0 */
    public int f9417k0;

    /* renamed from: q0 */
    public int f9418q0;

    /* renamed from: t0 */
    public boolean f9419t0;

    /* renamed from: u0 */
    public SavedState f9420u0;

    /* renamed from: v0 */
    public final C1339a f9421v0;

    /* renamed from: w */
    public int f9422w;

    /* renamed from: w0 */
    public final LayoutChunkResult f9423w0;

    /* renamed from: x */
    public C1340b f9424x;

    /* renamed from: x0 */
    public int f9425x0;

    /* renamed from: y */
    public OrientationHelper f9426y;

    /* renamed from: y0 */
    public int[] f9427y0;

    /* renamed from: z */
    public boolean f9428z;

    /* loaded from: classes3.dex */
    public static class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;

        /* renamed from: a */
        public void m5645a() {
            this.mConsumed = 0;
            this.mFinished = false;
            this.mIgnoreConsumed = false;
            this.mFocusable = false;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1338a();
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

        /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$SavedState$a */
        /* loaded from: classes3.dex */
        public class C1338a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }

        public SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
        }

        @SuppressLint({"UnknownNullness"})
        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes3.dex */
    public static class C1339a {

        /* renamed from: a */
        public OrientationHelper f9429a;

        /* renamed from: b */
        public int f9430b;

        /* renamed from: c */
        public int f9431c;

        /* renamed from: d */
        public boolean f9432d;

        /* renamed from: e */
        public boolean f9433e;

        public C1339a() {
            m5652e();
        }

        /* renamed from: a */
        public void m5648a() {
            this.f9431c = this.f9432d ? this.f9429a.getEndAfterPadding() : this.f9429a.getStartAfterPadding();
        }

        /* renamed from: b */
        public void m5649b(View view, int i) {
            if (this.f9432d) {
                this.f9431c = this.f9429a.getDecoratedEnd(view) + this.f9429a.getTotalSpaceChange();
            } else {
                this.f9431c = this.f9429a.getDecoratedStart(view);
            }
            this.f9430b = i;
        }

        /* renamed from: c */
        public void m5650c(View view, int i) {
            int totalSpaceChange = this.f9429a.getTotalSpaceChange();
            if (totalSpaceChange >= 0) {
                m5649b(view, i);
                return;
            }
            this.f9430b = i;
            if (this.f9432d) {
                int endAfterPadding = (this.f9429a.getEndAfterPadding() - totalSpaceChange) - this.f9429a.getDecoratedEnd(view);
                this.f9431c = this.f9429a.getEndAfterPadding() - endAfterPadding;
                if (endAfterPadding > 0) {
                    int decoratedMeasurement = this.f9431c - this.f9429a.getDecoratedMeasurement(view);
                    int startAfterPadding = this.f9429a.getStartAfterPadding();
                    int min = decoratedMeasurement - (startAfterPadding + Math.min(this.f9429a.getDecoratedStart(view) - startAfterPadding, 0));
                    if (min < 0) {
                        this.f9431c += Math.min(endAfterPadding, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int decoratedStart = this.f9429a.getDecoratedStart(view);
            int startAfterPadding2 = decoratedStart - this.f9429a.getStartAfterPadding();
            this.f9431c = decoratedStart;
            if (startAfterPadding2 > 0) {
                int endAfterPadding2 = (this.f9429a.getEndAfterPadding() - Math.min(0, (this.f9429a.getEndAfterPadding() - totalSpaceChange) - this.f9429a.getDecoratedEnd(view))) - (decoratedStart + this.f9429a.getDecoratedMeasurement(view));
                if (endAfterPadding2 < 0) {
                    this.f9431c -= Math.min(startAfterPadding2, -endAfterPadding2);
                }
            }
        }

        /* renamed from: d */
        public boolean m5651d(View view, RecyclerView.State state) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.isItemRemoved() && layoutParams.getViewLayoutPosition() >= 0 && layoutParams.getViewLayoutPosition() < state.getItemCount();
        }

        /* renamed from: e */
        public void m5652e() {
            this.f9430b = -1;
            this.f9431c = Integer.MIN_VALUE;
            this.f9432d = false;
            this.f9433e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f9430b + ", mCoordinate=" + this.f9431c + ", mLayoutFromEnd=" + this.f9432d + ", mValid=" + this.f9433e + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes3.dex */
    public static class C1340b {

        /* renamed from: n */
        public static final String f9434n = "LLM#LayoutState";

        /* renamed from: o */
        public static final int f9435o = -1;

        /* renamed from: p */
        public static final int f9436p = 1;

        /* renamed from: q */
        public static final int f9437q = Integer.MIN_VALUE;

        /* renamed from: r */
        public static final int f9438r = -1;

        /* renamed from: s */
        public static final int f9439s = 1;

        /* renamed from: t */
        public static final int f9440t = Integer.MIN_VALUE;

        /* renamed from: b */
        public int f9442b;

        /* renamed from: c */
        public int f9443c;

        /* renamed from: d */
        public int f9444d;

        /* renamed from: e */
        public int f9445e;

        /* renamed from: f */
        public int f9446f;

        /* renamed from: g */
        public int f9447g;

        /* renamed from: k */
        public int f9451k;

        /* renamed from: m */
        public boolean f9453m;

        /* renamed from: a */
        public boolean f9441a = true;

        /* renamed from: h */
        public int f9448h = 0;

        /* renamed from: i */
        public int f9449i = 0;

        /* renamed from: j */
        public boolean f9450j = false;

        /* renamed from: l */
        public List<RecyclerView.ViewHolder> f9452l = null;

        /* renamed from: a */
        public void m5653a() {
            m5654b(null);
        }

        /* renamed from: b */
        public void m5654b(View view) {
            View m5659g = m5659g(view);
            if (m5659g == null) {
                this.f9444d = -1;
            } else {
                this.f9444d = ((RecyclerView.LayoutParams) m5659g.getLayoutParams()).getViewLayoutPosition();
            }
        }

        /* renamed from: c */
        public boolean m5655c(RecyclerView.State state) {
            int i = this.f9444d;
            return i >= 0 && i < state.getItemCount();
        }

        /* renamed from: d */
        public void m5656d() {
            Log.d(f9434n, "avail:" + this.f9443c + ", ind:" + this.f9444d + ", dir:" + this.f9445e + ", offset:" + this.f9442b + ", layoutDir:" + this.f9446f);
        }

        /* renamed from: e */
        public View m5657e(RecyclerView.Recycler recycler) {
            if (this.f9452l != null) {
                return m5658f();
            }
            View viewForPosition = recycler.getViewForPosition(this.f9444d);
            this.f9444d += this.f9445e;
            return viewForPosition;
        }

        /* renamed from: f */
        public final View m5658f() {
            int size = this.f9452l.size();
            for (int i = 0; i < size; i++) {
                View view = this.f9452l.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.isItemRemoved() && this.f9444d == layoutParams.getViewLayoutPosition()) {
                    m5654b(view);
                    return view;
                }
            }
            return null;
        }

        /* renamed from: g */
        public View m5659g(View view) {
            int viewLayoutPosition;
            int size = this.f9452l.size();
            View view2 = null;
            int i = Integer.MAX_VALUE;
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = this.f9452l.get(i2).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.isItemRemoved() && (viewLayoutPosition = (layoutParams.getViewLayoutPosition() - this.f9444d) * this.f9445e) >= 0 && viewLayoutPosition < i) {
                    view2 = view3;
                    if (viewLayoutPosition == 0) {
                        break;
                    }
                    i = viewLayoutPosition;
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(@SuppressLint({"UnknownNullness"}) Context context) {
        this(context, 1, false);
    }

    /* renamed from: A */
    public final int m5607A(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        m5610D();
        return C1385j.m6244c(state, this.f9426y, m5614H(!this.f9416Z, true), m5613G(!this.f9416Z, true), this, this.f9416Z);
    }

    /* renamed from: B */
    public int m5608B(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.f9422w == 1) ? 1 : Integer.MIN_VALUE : this.f9422w == 0 ? 1 : Integer.MIN_VALUE : this.f9422w == 1 ? -1 : Integer.MIN_VALUE : this.f9422w == 0 ? -1 : Integer.MIN_VALUE : (this.f9422w != 1 && isLayoutRTL()) ? -1 : 1 : (this.f9422w != 1 && isLayoutRTL()) ? 1 : -1;
    }

    /* renamed from: C */
    public C1340b m5609C() {
        return new C1340b();
    }

    /* renamed from: D */
    public void m5610D() {
        if (this.f9424x == null) {
            this.f9424x = m5609C();
        }
    }

    /* renamed from: E */
    public int m5611E(RecyclerView.Recycler recycler, C1340b c1340b, RecyclerView.State state, boolean z) {
        int i = c1340b.f9443c;
        int i2 = c1340b.f9447g;
        if (i2 != Integer.MIN_VALUE) {
            if (i < 0) {
                c1340b.f9447g = i2 + i;
            }
            m5626W(recycler, c1340b);
        }
        int i3 = c1340b.f9443c + c1340b.f9448h;
        LayoutChunkResult layoutChunkResult = this.f9423w0;
        while (true) {
            if ((!c1340b.f9453m && i3 <= 0) || !c1340b.m5655c(state)) {
                break;
            }
            layoutChunkResult.m5645a();
            mo5551S(recycler, state, c1340b, layoutChunkResult);
            if (!layoutChunkResult.mFinished) {
                c1340b.f9442b += layoutChunkResult.mConsumed * c1340b.f9446f;
                if (!layoutChunkResult.mIgnoreConsumed || c1340b.f9452l != null || !state.isPreLayout()) {
                    int i4 = c1340b.f9443c;
                    int i5 = layoutChunkResult.mConsumed;
                    c1340b.f9443c = i4 - i5;
                    i3 -= i5;
                }
                int i6 = c1340b.f9447g;
                if (i6 != Integer.MIN_VALUE) {
                    int i7 = i6 + layoutChunkResult.mConsumed;
                    c1340b.f9447g = i7;
                    int i8 = c1340b.f9443c;
                    if (i8 < 0) {
                        c1340b.f9447g = i7 + i8;
                    }
                    m5626W(recycler, c1340b);
                }
                if (z && layoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - c1340b.f9443c;
    }

    /* renamed from: F */
    public final View m5612F() {
        return m5616J(0, getChildCount());
    }

    /* renamed from: G */
    public View m5613G(boolean z, boolean z2) {
        return this.f9414O ? m5617K(0, getChildCount(), z, z2) : m5617K(getChildCount() - 1, -1, z, z2);
    }

    /* renamed from: H */
    public View m5614H(boolean z, boolean z2) {
        return this.f9414O ? m5617K(getChildCount() - 1, -1, z, z2) : m5617K(0, getChildCount(), z, z2);
    }

    /* renamed from: I */
    public final View m5615I() {
        return m5616J(getChildCount() - 1, -1);
    }

    /* renamed from: J */
    public View m5616J(int i, int i2) {
        int i3;
        int i4;
        m5610D();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i);
        }
        if (this.f9426y.getDecoratedStart(getChildAt(i)) < this.f9426y.getStartAfterPadding()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.f9422w == 0 ? this.f9595i.m6073a(i, i2, i3, i4) : this.f9596j.m6073a(i, i2, i3, i4);
    }

    /* renamed from: K */
    public View m5617K(int i, int i2, boolean z, boolean z2) {
        m5610D();
        int i3 = z ? 24579 : 320;
        int i4 = z2 ? 320 : 0;
        return this.f9422w == 0 ? this.f9595i.m6073a(i, i2, i3, i4) : this.f9596j.m6073a(i, i2, i3, i4);
    }

    /* renamed from: L */
    public final View m5618L() {
        return this.f9414O ? m5612F() : m5615I();
    }

    /* renamed from: M */
    public final View m5619M() {
        return this.f9414O ? m5615I() : m5612F();
    }

    /* renamed from: N */
    public View mo5550N(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        m5610D();
        int childCount = getChildCount();
        if (z2) {
            i2 = getChildCount() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = childCount;
            i2 = 0;
            i3 = 1;
        }
        int itemCount = state.getItemCount();
        int startAfterPadding = this.f9426y.getStartAfterPadding();
        int endAfterPadding = this.f9426y.getEndAfterPadding();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i) {
            View childAt = getChildAt(i2);
            int position = getPosition(childAt);
            int decoratedStart = this.f9426y.getDecoratedStart(childAt);
            int decoratedEnd = this.f9426y.getDecoratedEnd(childAt);
            if (position >= 0 && position < itemCount) {
                if (!((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    boolean z3 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
                    boolean z4 = decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding;
                    if (!z3 && !z4) {
                        return childAt;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    /* renamed from: O */
    public final int m5620O(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.f9426y.getEndAfterPadding() - i;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -m5632c0(-endAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (endAfterPadding = this.f9426y.getEndAfterPadding() - i3) <= 0) {
            return i2;
        }
        this.f9426y.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    /* renamed from: P */
    public final int m5621P(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int startAfterPadding2 = i - this.f9426y.getStartAfterPadding();
        if (startAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -m5632c0(startAfterPadding2, recycler, state);
        int i3 = i + i2;
        if (!z || (startAfterPadding = i3 - this.f9426y.getStartAfterPadding()) <= 0) {
            return i2;
        }
        this.f9426y.offsetChildren(-startAfterPadding);
        return i2 - startAfterPadding;
    }

    /* renamed from: Q */
    public final View m5622Q() {
        return getChildAt(this.f9414O ? 0 : getChildCount() - 1);
    }

    /* renamed from: R */
    public final View m5623R() {
        return getChildAt(this.f9414O ? getChildCount() - 1 : 0);
    }

    /* renamed from: S */
    public void mo5551S(RecyclerView.Recycler recycler, RecyclerView.State state, C1340b c1340b, LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int i4;
        int decoratedMeasurementInOther;
        View m5657e = c1340b.m5657e(recycler);
        if (m5657e == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) m5657e.getLayoutParams();
        if (c1340b.f9452l == null) {
            if (this.f9414O == (c1340b.f9446f == -1)) {
                addView(m5657e);
            } else {
                addView(m5657e, 0);
            }
        } else {
            if (this.f9414O == (c1340b.f9446f == -1)) {
                addDisappearingView(m5657e);
            } else {
                addDisappearingView(m5657e, 0);
            }
        }
        measureChildWithMargins(m5657e, 0, 0);
        layoutChunkResult.mConsumed = this.f9426y.getDecoratedMeasurement(m5657e);
        if (this.f9422w == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther = getWidth() - getPaddingRight();
                i4 = decoratedMeasurementInOther - this.f9426y.getDecoratedMeasurementInOther(m5657e);
            } else {
                i4 = getPaddingLeft();
                decoratedMeasurementInOther = this.f9426y.getDecoratedMeasurementInOther(m5657e) + i4;
            }
            if (c1340b.f9446f == -1) {
                int i5 = c1340b.f9442b;
                i3 = i5;
                i2 = decoratedMeasurementInOther;
                i = i5 - layoutChunkResult.mConsumed;
            } else {
                int i6 = c1340b.f9442b;
                i = i6;
                i2 = decoratedMeasurementInOther;
                i3 = layoutChunkResult.mConsumed + i6;
            }
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther2 = this.f9426y.getDecoratedMeasurementInOther(m5657e) + paddingTop;
            if (c1340b.f9446f == -1) {
                int i7 = c1340b.f9442b;
                i2 = i7;
                i = paddingTop;
                i3 = decoratedMeasurementInOther2;
                i4 = i7 - layoutChunkResult.mConsumed;
            } else {
                int i8 = c1340b.f9442b;
                i = paddingTop;
                i2 = layoutChunkResult.mConsumed + i8;
                i3 = decoratedMeasurementInOther2;
                i4 = i8;
            }
        }
        layoutDecoratedWithMargins(m5657e, i4, i, i2, i3);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = m5657e.hasFocusable();
    }

    /* renamed from: T */
    public final void m5624T(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        if (!state.willRunPredictiveAnimations() || getChildCount() == 0 || state.isPreLayout() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
        int size = scrapList.size();
        int position = getPosition(getChildAt(0));
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView.ViewHolder viewHolder = scrapList.get(i5);
            if (!viewHolder.m5890p()) {
                if (((viewHolder.getLayoutPosition() < position) != this.f9414O ? (char) 65535 : (char) 1) == 65535) {
                    i3 += this.f9426y.getDecoratedMeasurement(viewHolder.itemView);
                } else {
                    i4 += this.f9426y.getDecoratedMeasurement(viewHolder.itemView);
                }
            }
        }
        this.f9424x.f9452l = scrapList;
        if (i3 > 0) {
            m5639j0(getPosition(m5623R()), i);
            C1340b c1340b = this.f9424x;
            c1340b.f9448h = i3;
            c1340b.f9443c = 0;
            c1340b.m5653a();
            m5611E(recycler, this.f9424x, state, false);
        }
        if (i4 > 0) {
            m5637h0(getPosition(m5622Q()), i2);
            C1340b c1340b2 = this.f9424x;
            c1340b2.f9448h = i4;
            c1340b2.f9443c = 0;
            c1340b2.m5653a();
            m5611E(recycler, this.f9424x, state, false);
        }
        this.f9424x.f9452l = null;
    }

    /* renamed from: U */
    public final void m5625U() {
        Log.d(f9412z0, "internal representation of views on the screen");
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Log.d(f9412z0, "item " + getPosition(childAt) + ", coord:" + this.f9426y.getDecoratedStart(childAt));
        }
        Log.d(f9412z0, "==============");
    }

    /* renamed from: V */
    public void mo5552V(RecyclerView.Recycler recycler, RecyclerView.State state, C1339a c1339a, int i) {
    }

    /* renamed from: W */
    public final void m5626W(RecyclerView.Recycler recycler, C1340b c1340b) {
        if (!c1340b.f9441a || c1340b.f9453m) {
            return;
        }
        int i = c1340b.f9447g;
        int i2 = c1340b.f9449i;
        if (c1340b.f9446f == -1) {
            m5628Y(recycler, i, i2);
        } else {
            m5629Z(recycler, i, i2);
        }
    }

    /* renamed from: X */
    public final void m5627X(RecyclerView.Recycler recycler, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                removeAndRecycleViewAt(i, recycler);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                removeAndRecycleViewAt(i3, recycler);
            }
        }
    }

    /* renamed from: Y */
    public final void m5628Y(RecyclerView.Recycler recycler, int i, int i2) {
        int childCount = getChildCount();
        if (i < 0) {
            return;
        }
        int end = (this.f9426y.getEnd() - i) + i2;
        if (this.f9414O) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (this.f9426y.getDecoratedStart(childAt) < end || this.f9426y.getTransformedStartWithDecoration(childAt) < end) {
                    m5627X(recycler, 0, i3);
                    return;
                }
            }
            return;
        }
        int i4 = childCount - 1;
        for (int i5 = i4; i5 >= 0; i5--) {
            View childAt2 = getChildAt(i5);
            if (this.f9426y.getDecoratedStart(childAt2) < end || this.f9426y.getTransformedStartWithDecoration(childAt2) < end) {
                m5627X(recycler, i4, i5);
                return;
            }
        }
    }

    /* renamed from: Z */
    public final void m5629Z(RecyclerView.Recycler recycler, int i, int i2) {
        if (i < 0) {
            return;
        }
        int i3 = i - i2;
        int childCount = getChildCount();
        if (!this.f9414O) {
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (this.f9426y.getDecoratedEnd(childAt) > i3 || this.f9426y.getTransformedEndWithDecoration(childAt) > i3) {
                    m5627X(recycler, 0, i4);
                    return;
                }
            }
            return;
        }
        int i5 = childCount - 1;
        for (int i6 = i5; i6 >= 0; i6--) {
            View childAt2 = getChildAt(i6);
            if (this.f9426y.getDecoratedEnd(childAt2) > i3 || this.f9426y.getTransformedEndWithDecoration(childAt2) > i3) {
                m5627X(recycler, i5, i6);
                return;
            }
        }
    }

    /* renamed from: a0 */
    public boolean m5630a0() {
        return this.f9426y.getMode() == 0 && this.f9426y.getEnd() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f9420u0 == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    /* renamed from: b0 */
    public final void m5631b0() {
        if (this.f9422w == 1 || !isLayoutRTL()) {
            this.f9414O = this.f9413J;
        } else {
            this.f9414O = !this.f9413J;
        }
    }

    /* renamed from: c0 */
    public int m5632c0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m5610D();
        this.f9424x.f9441a = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m5636g0(i2, abs, true, state);
        C1340b c1340b = this.f9424x;
        int m5611E = c1340b.f9447g + m5611E(recycler, c1340b, state, false);
        if (m5611E < 0) {
            return 0;
        }
        if (abs > m5611E) {
            i = i2 * m5611E;
        }
        this.f9426y.offsetChildren(-i);
        this.f9424x.f9451k = i;
        return i;
    }

    public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
        int i;
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if (this.f9424x.f9446f == -1) {
            i = 0;
        } else {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.f9422w == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.f9422w == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.f9422w != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        m5610D();
        m5636g0(i > 0 ? 1 : -1, Math.abs(i), true, state);
        mo5563x(state, this.f9424x, layoutPrefetchRegistry);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        boolean z;
        int i2;
        SavedState savedState = this.f9420u0;
        if (savedState == null || !savedState.hasValidAnchor()) {
            m5631b0();
            z = this.f9414O;
            i2 = this.f9417k0;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            SavedState savedState2 = this.f9420u0;
            z = savedState2.mAnchorLayoutFromEnd;
            i2 = savedState2.mAnchorPosition;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.f9425x0 && i2 >= 0 && i2 < i; i4++) {
            layoutPrefetchRegistry.addPosition(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return m5643y(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return m5644z(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return m5607A(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = (i < getPosition(getChildAt(0))) != this.f9414O ? -1 : 1;
        return this.f9422w == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return m5643y(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return m5644z(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return m5607A(state);
    }

    /* renamed from: d0 */
    public final boolean m5633d0(RecyclerView.Recycler recycler, RecyclerView.State state, C1339a c1339a) {
        View mo5550N;
        boolean z = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && c1339a.m5651d(focusedChild, state)) {
            c1339a.m5650c(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z2 = this.f9428z;
        boolean z3 = this.f9415Q;
        if (z2 != z3 || (mo5550N = mo5550N(recycler, state, c1339a.f9432d, z3)) == null) {
            return false;
        }
        c1339a.m5649b(mo5550N, getPosition(mo5550N));
        if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
            int decoratedStart = this.f9426y.getDecoratedStart(mo5550N);
            int decoratedEnd = this.f9426y.getDecoratedEnd(mo5550N);
            int startAfterPadding = this.f9426y.getStartAfterPadding();
            int endAfterPadding = this.f9426y.getEndAfterPadding();
            boolean z4 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
            if (decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding) {
                z = true;
            }
            if (z4 || z) {
                if (c1339a.f9432d) {
                    startAfterPadding = endAfterPadding;
                }
                c1339a.f9431c = startAfterPadding;
            }
        }
        return true;
    }

    /* renamed from: e0 */
    public final boolean m5634e0(RecyclerView.State state, C1339a c1339a) {
        int i;
        if (!state.isPreLayout() && (i = this.f9417k0) != -1) {
            if (i >= 0 && i < state.getItemCount()) {
                c1339a.f9430b = this.f9417k0;
                SavedState savedState = this.f9420u0;
                if (savedState != null && savedState.hasValidAnchor()) {
                    boolean z = this.f9420u0.mAnchorLayoutFromEnd;
                    c1339a.f9432d = z;
                    if (z) {
                        c1339a.f9431c = this.f9426y.getEndAfterPadding() - this.f9420u0.mAnchorOffset;
                    } else {
                        c1339a.f9431c = this.f9426y.getStartAfterPadding() + this.f9420u0.mAnchorOffset;
                    }
                    return true;
                }
                if (this.f9418q0 != Integer.MIN_VALUE) {
                    boolean z2 = this.f9414O;
                    c1339a.f9432d = z2;
                    if (z2) {
                        c1339a.f9431c = this.f9426y.getEndAfterPadding() - this.f9418q0;
                    } else {
                        c1339a.f9431c = this.f9426y.getStartAfterPadding() + this.f9418q0;
                    }
                    return true;
                }
                View findViewByPosition = findViewByPosition(this.f9417k0);
                if (findViewByPosition == null) {
                    if (getChildCount() > 0) {
                        c1339a.f9432d = (this.f9417k0 < getPosition(getChildAt(0))) == this.f9414O;
                    }
                    c1339a.m5648a();
                } else {
                    if (this.f9426y.getDecoratedMeasurement(findViewByPosition) > this.f9426y.getTotalSpace()) {
                        c1339a.m5648a();
                        return true;
                    }
                    if (this.f9426y.getDecoratedStart(findViewByPosition) - this.f9426y.getStartAfterPadding() < 0) {
                        c1339a.f9431c = this.f9426y.getStartAfterPadding();
                        c1339a.f9432d = false;
                        return true;
                    }
                    if (this.f9426y.getEndAfterPadding() - this.f9426y.getDecoratedEnd(findViewByPosition) < 0) {
                        c1339a.f9431c = this.f9426y.getEndAfterPadding();
                        c1339a.f9432d = true;
                        return true;
                    }
                    c1339a.f9431c = c1339a.f9432d ? this.f9426y.getDecoratedEnd(findViewByPosition) + this.f9426y.getTotalSpaceChange() : this.f9426y.getDecoratedStart(findViewByPosition);
                }
                return true;
            }
            this.f9417k0 = -1;
            this.f9418q0 = Integer.MIN_VALUE;
        }
        return false;
    }

    /* renamed from: f0 */
    public final void m5635f0(RecyclerView.Recycler recycler, RecyclerView.State state, C1339a c1339a) {
        if (m5634e0(state, c1339a) || m5633d0(recycler, state, c1339a)) {
            return;
        }
        c1339a.m5648a();
        c1339a.f9430b = this.f9415Q ? state.getItemCount() - 1 : 0;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View m5617K = m5617K(0, getChildCount(), true, false);
        if (m5617K == null) {
            return -1;
        }
        return getPosition(m5617K);
    }

    public int findFirstVisibleItemPosition() {
        View m5617K = m5617K(0, getChildCount(), false, true);
        if (m5617K == null) {
            return -1;
        }
        return getPosition(m5617K);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View m5617K = m5617K(getChildCount() - 1, -1, true, false);
        if (m5617K == null) {
            return -1;
        }
        return getPosition(m5617K);
    }

    public int findLastVisibleItemPosition() {
        View m5617K = m5617K(getChildCount() - 1, -1, false, true);
        if (m5617K == null) {
            return -1;
        }
        return getPosition(m5617K);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    /* renamed from: g0 */
    public final void m5636g0(int i, int i2, boolean z, RecyclerView.State state) {
        int startAfterPadding;
        this.f9424x.f9453m = m5630a0();
        this.f9424x.f9446f = i;
        int[] iArr = this.f9427y0;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, this.f9427y0[0]);
        int max2 = Math.max(0, this.f9427y0[1]);
        boolean z2 = i == 1;
        C1340b c1340b = this.f9424x;
        int i3 = z2 ? max2 : max;
        c1340b.f9448h = i3;
        if (!z2) {
            max = max2;
        }
        c1340b.f9449i = max;
        if (z2) {
            c1340b.f9448h = i3 + this.f9426y.getEndPadding();
            View m5622Q = m5622Q();
            C1340b c1340b2 = this.f9424x;
            c1340b2.f9445e = this.f9414O ? -1 : 1;
            int position = getPosition(m5622Q);
            C1340b c1340b3 = this.f9424x;
            c1340b2.f9444d = position + c1340b3.f9445e;
            c1340b3.f9442b = this.f9426y.getDecoratedEnd(m5622Q);
            startAfterPadding = this.f9426y.getDecoratedEnd(m5622Q) - this.f9426y.getEndAfterPadding();
        } else {
            View m5623R = m5623R();
            this.f9424x.f9448h += this.f9426y.getStartAfterPadding();
            C1340b c1340b4 = this.f9424x;
            c1340b4.f9445e = this.f9414O ? 1 : -1;
            int position2 = getPosition(m5623R);
            C1340b c1340b5 = this.f9424x;
            c1340b4.f9444d = position2 + c1340b5.f9445e;
            c1340b5.f9442b = this.f9426y.getDecoratedStart(m5623R);
            startAfterPadding = (-this.f9426y.getDecoratedStart(m5623R)) + this.f9426y.getStartAfterPadding();
        }
        C1340b c1340b6 = this.f9424x;
        c1340b6.f9443c = i2;
        if (z) {
            c1340b6.f9443c = i2 - startAfterPadding;
        }
        c1340b6.f9447g = startAfterPadding;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Deprecated
    public int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return this.f9426y.getTotalSpace();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.f9425x0;
    }

    public int getOrientation() {
        return this.f9422w;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.f9419t0;
    }

    public boolean getReverseLayout() {
        return this.f9413J;
    }

    public boolean getStackFromEnd() {
        return this.f9415Q;
    }

    /* renamed from: h0 */
    public final void m5637h0(int i, int i2) {
        this.f9424x.f9443c = this.f9426y.getEndAfterPadding() - i2;
        C1340b c1340b = this.f9424x;
        c1340b.f9445e = this.f9414O ? -1 : 1;
        c1340b.f9444d = i;
        c1340b.f9446f = 1;
        c1340b.f9442b = i2;
        c1340b.f9447g = Integer.MIN_VALUE;
    }

    /* renamed from: i0 */
    public final void m5638i0(C1339a c1339a) {
        m5637h0(c1339a.f9430b, c1339a.f9431c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.f9416Z;
    }

    /* renamed from: j0 */
    public final void m5639j0(int i, int i2) {
        this.f9424x.f9443c = i2 - this.f9426y.getStartAfterPadding();
        C1340b c1340b = this.f9424x;
        c1340b.f9444d = i;
        c1340b.f9445e = this.f9414O ? 1 : -1;
        c1340b.f9446f = -1;
        c1340b.f9442b = i2;
        c1340b.f9447g = Integer.MIN_VALUE;
    }

    /* renamed from: k0 */
    public final void m5640k0(C1339a c1339a) {
        m5639j0(c1339a.f9430b, c1339a.f9431c);
    }

    /* renamed from: l0 */
    public void m5641l0() {
        Log.d(f9412z0, "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int decoratedStart = this.f9426y.getDecoratedStart(getChildAt(0));
        if (this.f9414O) {
            for (int i = 1; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                int position2 = getPosition(childAt);
                int decoratedStart2 = this.f9426y.getDecoratedStart(childAt);
                if (position2 < position) {
                    m5625U();
                    StringBuilder sb = new StringBuilder();
                    sb.append("detected invalid position. loc invalid? ");
                    sb.append(decoratedStart2 < decoratedStart);
                    throw new RuntimeException(sb.toString());
                }
                if (decoratedStart2 > decoratedStart) {
                    m5625U();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i2 = 1; i2 < getChildCount(); i2++) {
            View childAt2 = getChildAt(i2);
            int position3 = getPosition(childAt2);
            int decoratedStart3 = this.f9426y.getDecoratedStart(childAt2);
            if (position3 < position) {
                m5625U();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("detected invalid position. loc invalid? ");
                sb2.append(decoratedStart3 < decoratedStart);
                throw new RuntimeException(sb2.toString());
            }
            if (decoratedStart3 < decoratedStart) {
                m5625U();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.f9419t0) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int m5608B;
        m5631b0();
        if (getChildCount() == 0 || (m5608B = m5608B(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m5610D();
        m5636g0(m5608B, (int) (this.f9426y.getTotalSpace() * 0.33333334f), false, state);
        C1340b c1340b = this.f9424x;
        c1340b.f9447g = Integer.MIN_VALUE;
        c1340b.f9441a = false;
        m5611E(recycler, c1340b, state, true);
        View m5619M = m5608B == -1 ? m5619M() : m5618L();
        View m5623R = m5608B == -1 ? m5623R() : m5622Q();
        if (!m5623R.hasFocusable()) {
            return m5619M;
        }
        if (m5619M == null) {
            return null;
        }
        return m5623R;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        int i3;
        int i4;
        int m5620O;
        int i5;
        View findViewByPosition;
        int decoratedStart;
        int i6;
        int i7 = -1;
        if (!(this.f9420u0 == null && this.f9417k0 == -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        SavedState savedState = this.f9420u0;
        if (savedState != null && savedState.hasValidAnchor()) {
            this.f9417k0 = this.f9420u0.mAnchorPosition;
        }
        m5610D();
        this.f9424x.f9441a = false;
        m5631b0();
        View focusedChild = getFocusedChild();
        C1339a c1339a = this.f9421v0;
        if (!c1339a.f9433e || this.f9417k0 != -1 || this.f9420u0 != null) {
            c1339a.m5652e();
            C1339a c1339a2 = this.f9421v0;
            c1339a2.f9432d = this.f9414O ^ this.f9415Q;
            m5635f0(recycler, state, c1339a2);
            this.f9421v0.f9433e = true;
        } else if (focusedChild != null && (this.f9426y.getDecoratedStart(focusedChild) >= this.f9426y.getEndAfterPadding() || this.f9426y.getDecoratedEnd(focusedChild) <= this.f9426y.getStartAfterPadding())) {
            this.f9421v0.m5650c(focusedChild, getPosition(focusedChild));
        }
        C1340b c1340b = this.f9424x;
        c1340b.f9446f = c1340b.f9451k >= 0 ? 1 : -1;
        int[] iArr = this.f9427y0;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, this.f9427y0[0]) + this.f9426y.getStartAfterPadding();
        int max2 = Math.max(0, this.f9427y0[1]) + this.f9426y.getEndPadding();
        if (state.isPreLayout() && (i5 = this.f9417k0) != -1 && this.f9418q0 != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(i5)) != null) {
            if (this.f9414O) {
                i6 = this.f9426y.getEndAfterPadding() - this.f9426y.getDecoratedEnd(findViewByPosition);
                decoratedStart = this.f9418q0;
            } else {
                decoratedStart = this.f9426y.getDecoratedStart(findViewByPosition) - this.f9426y.getStartAfterPadding();
                i6 = this.f9418q0;
            }
            int i8 = i6 - decoratedStart;
            if (i8 > 0) {
                max += i8;
            } else {
                max2 -= i8;
            }
        }
        C1339a c1339a3 = this.f9421v0;
        if (!c1339a3.f9432d ? !this.f9414O : this.f9414O) {
            i7 = 1;
        }
        mo5552V(recycler, state, c1339a3, i7);
        detachAndScrapAttachedViews(recycler);
        this.f9424x.f9453m = m5630a0();
        this.f9424x.f9450j = state.isPreLayout();
        this.f9424x.f9449i = 0;
        C1339a c1339a4 = this.f9421v0;
        if (c1339a4.f9432d) {
            m5640k0(c1339a4);
            C1340b c1340b2 = this.f9424x;
            c1340b2.f9448h = max;
            m5611E(recycler, c1340b2, state, false);
            C1340b c1340b3 = this.f9424x;
            i2 = c1340b3.f9442b;
            int i9 = c1340b3.f9444d;
            int i10 = c1340b3.f9443c;
            if (i10 > 0) {
                max2 += i10;
            }
            m5638i0(this.f9421v0);
            C1340b c1340b4 = this.f9424x;
            c1340b4.f9448h = max2;
            c1340b4.f9444d += c1340b4.f9445e;
            m5611E(recycler, c1340b4, state, false);
            C1340b c1340b5 = this.f9424x;
            i = c1340b5.f9442b;
            int i11 = c1340b5.f9443c;
            if (i11 > 0) {
                m5639j0(i9, i2);
                C1340b c1340b6 = this.f9424x;
                c1340b6.f9448h = i11;
                m5611E(recycler, c1340b6, state, false);
                i2 = this.f9424x.f9442b;
            }
        } else {
            m5638i0(c1339a4);
            C1340b c1340b7 = this.f9424x;
            c1340b7.f9448h = max2;
            m5611E(recycler, c1340b7, state, false);
            C1340b c1340b8 = this.f9424x;
            i = c1340b8.f9442b;
            int i12 = c1340b8.f9444d;
            int i13 = c1340b8.f9443c;
            if (i13 > 0) {
                max += i13;
            }
            m5640k0(this.f9421v0);
            C1340b c1340b9 = this.f9424x;
            c1340b9.f9448h = max;
            c1340b9.f9444d += c1340b9.f9445e;
            m5611E(recycler, c1340b9, state, false);
            C1340b c1340b10 = this.f9424x;
            i2 = c1340b10.f9442b;
            int i14 = c1340b10.f9443c;
            if (i14 > 0) {
                m5637h0(i12, i);
                C1340b c1340b11 = this.f9424x;
                c1340b11.f9448h = i14;
                m5611E(recycler, c1340b11, state, false);
                i = this.f9424x.f9442b;
            }
        }
        if (getChildCount() > 0) {
            if (this.f9414O ^ this.f9415Q) {
                int m5620O2 = m5620O(i, recycler, state, true);
                i3 = i2 + m5620O2;
                i4 = i + m5620O2;
                m5620O = m5621P(i3, recycler, state, false);
            } else {
                int m5621P = m5621P(i2, recycler, state, true);
                i3 = i2 + m5621P;
                i4 = i + m5621P;
                m5620O = m5620O(i4, recycler, state, false);
            }
            i2 = i3 + m5620O;
            i = i4 + m5620O;
        }
        m5624T(recycler, state, i2, i);
        if (state.isPreLayout()) {
            this.f9421v0.m5652e();
        } else {
            this.f9426y.onLayoutComplete();
        }
        this.f9428z = this.f9415Q;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f9420u0 = null;
        this.f9417k0 = -1;
        this.f9418q0 = Integer.MIN_VALUE;
        this.f9421v0.m5652e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f9420u0 = savedState;
            if (this.f9417k0 != -1) {
                savedState.invalidateAnchor();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        if (this.f9420u0 != null) {
            return new SavedState(this.f9420u0);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            m5610D();
            boolean z = this.f9428z ^ this.f9414O;
            savedState.mAnchorLayoutFromEnd = z;
            if (z) {
                View m5622Q = m5622Q();
                savedState.mAnchorOffset = this.f9426y.getEndAfterPadding() - this.f9426y.getDecoratedEnd(m5622Q);
                savedState.mAnchorPosition = getPosition(m5622Q);
            } else {
                View m5623R = m5623R();
                savedState.mAnchorPosition = getPosition(m5623R);
                savedState.mAnchorOffset = this.f9426y.getDecoratedStart(m5623R) - this.f9426y.getStartAfterPadding();
            }
        } else {
            savedState.invalidateAnchor();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i, int i2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        m5610D();
        m5631b0();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        char c = position < position2 ? (char) 1 : (char) 65535;
        if (this.f9414O) {
            if (c == 1) {
                scrollToPositionWithOffset(position2, this.f9426y.getEndAfterPadding() - (this.f9426y.getDecoratedStart(view2) + this.f9426y.getDecoratedMeasurement(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.f9426y.getEndAfterPadding() - this.f9426y.getDecoratedEnd(view2));
                return;
            }
        }
        if (c == 65535) {
            scrollToPositionWithOffset(position2, this.f9426y.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, this.f9426y.getDecoratedEnd(view2) - this.f9426y.getDecoratedMeasurement(view));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f9422w == 1) {
            return 0;
        }
        return m5632c0(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.f9417k0 = i;
        this.f9418q0 = Integer.MIN_VALUE;
        SavedState savedState = this.f9420u0;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.f9417k0 = i;
        this.f9418q0 = i2;
        SavedState savedState = this.f9420u0;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f9422w == 0) {
            return 0;
        }
        return m5632c0(i, recycler, state);
    }

    public void setInitialPrefetchItemCount(int i) {
        this.f9425x0 = i;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i);
        }
        assertNotInLayoutOrScroll(null);
        if (i != this.f9422w || this.f9426y == null) {
            OrientationHelper createOrientationHelper = OrientationHelper.createOrientationHelper(this, i);
            this.f9426y = createOrientationHelper;
            this.f9421v0.f9429a = createOrientationHelper;
            this.f9422w = i;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.f9419t0 = z;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.f9413J) {
            return;
        }
        this.f9413J = z;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.f9416Z = z;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.f9415Q == z) {
            return;
        }
        this.f9415Q = z;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.f9420u0 == null && this.f9428z == this.f9415Q;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /* renamed from: u */
    public boolean mo5642u() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !m5788f()) ? false : true;
    }

    /* renamed from: x */
    public void mo5563x(RecyclerView.State state, C1340b c1340b, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = c1340b.f9444d;
        if (i < 0 || i >= state.getItemCount()) {
            return;
        }
        layoutPrefetchRegistry.addPosition(i, Math.max(0, c1340b.f9447g));
    }

    /* renamed from: y */
    public final int m5643y(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        m5610D();
        return C1385j.m6242a(state, this.f9426y, m5614H(!this.f9416Z, true), m5613G(!this.f9416Z, true), this, this.f9416Z);
    }

    /* renamed from: z */
    public final int m5644z(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        m5610D();
        return C1385j.m6243b(state, this.f9426y, m5614H(!this.f9416Z, true), m5613G(!this.f9416Z, true), this, this.f9416Z, this.f9414O);
    }

    public LinearLayoutManager(@SuppressLint({"UnknownNullness"}) Context context, int i, boolean z) {
        this.f9422w = 1;
        this.f9413J = false;
        this.f9414O = false;
        this.f9415Q = false;
        this.f9416Z = true;
        this.f9417k0 = -1;
        this.f9418q0 = Integer.MIN_VALUE;
        this.f9420u0 = null;
        this.f9421v0 = new C1339a();
        this.f9423w0 = new LayoutChunkResult();
        this.f9425x0 = 2;
        this.f9427y0 = new int[2];
        setOrientation(i);
        setReverseLayout(z);
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f9422w = 1;
        this.f9413J = false;
        this.f9414O = false;
        this.f9415Q = false;
        this.f9416Z = true;
        this.f9417k0 = -1;
        this.f9418q0 = Integer.MIN_VALUE;
        this.f9420u0 = null;
        this.f9421v0 = new C1339a();
        this.f9423w0 = new LayoutChunkResult();
        this.f9425x0 = 2;
        this.f9427y0 = new int[2];
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
    }
}
