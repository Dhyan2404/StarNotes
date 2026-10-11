package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes3.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {

    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;

    /* renamed from: H0 */
    public static final String f9750H0 = "StaggeredGridLManager";
    public static final int HORIZONTAL = 0;

    /* renamed from: I0 */
    public static final boolean f9751I0 = false;

    /* renamed from: J0 */
    public static final int f9752J0 = Integer.MIN_VALUE;

    /* renamed from: K0 */
    public static final float f9753K0 = 0.33333334f;
    public static final int VERTICAL = 1;

    /* renamed from: A0 */
    public int f9754A0;

    /* renamed from: F0 */
    public int[] f9759F0;

    /* renamed from: J */
    public int f9761J;

    /* renamed from: O */
    public int f9762O;

    /* renamed from: Q */
    @NonNull
    public final C1381f f9763Q;

    /* renamed from: q0 */
    public BitSet f9766q0;

    /* renamed from: x */
    public C1371c[] f9772x;

    /* renamed from: x0 */
    public boolean f9773x0;

    /* renamed from: y */
    @NonNull
    public OrientationHelper f9774y;

    /* renamed from: y0 */
    public boolean f9775y0;

    /* renamed from: z */
    @NonNull
    public OrientationHelper f9776z;

    /* renamed from: z0 */
    public SavedState f9777z0;

    /* renamed from: w */
    public int f9770w = -1;

    /* renamed from: Z */
    public boolean f9764Z = false;

    /* renamed from: k0 */
    public boolean f9765k0 = false;

    /* renamed from: t0 */
    public int f9767t0 = -1;

    /* renamed from: u0 */
    public int f9768u0 = Integer.MIN_VALUE;

    /* renamed from: v0 */
    public LazySpanLookup f9769v0 = new LazySpanLookup();

    /* renamed from: w0 */
    public int f9771w0 = 2;

    /* renamed from: B0 */
    public final Rect f9755B0 = new Rect();

    /* renamed from: C0 */
    public final C1370b f9756C0 = new C1370b();

    /* renamed from: D0 */
    public boolean f9757D0 = false;

    /* renamed from: E0 */
    public boolean f9758E0 = true;

    /* renamed from: G0 */
    public final Runnable f9760G0 = new RunnableC1369a();

    /* loaded from: classes3.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;

        /* renamed from: e */
        public C1371c f9778e;

        /* renamed from: f */
        public boolean f9779f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public final int getSpanIndex() {
            C1371c c1371c = this.f9778e;
            if (c1371c == null) {
                return -1;
            }
            return c1371c.f9796e;
        }

        public boolean isFullSpan() {
            return this.f9779f;
        }

        public void setFullSpan(boolean z) {
            this.f9779f = z;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1368a();
        boolean mAnchorLayoutFromEnd;
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

        /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$SavedState$a */
        /* loaded from: classes3.dex */
        public class C1368a implements Parcelable.Creator<SavedState> {
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

        public void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        public void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mVisibleAnchorPosition);
            parcel.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                parcel.writeIntArray(this.mSpanOffsets);
            }
            parcel.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                parcel.writeIntArray(this.mSpanLookup);
            }
            parcel.writeInt(this.mReverseLayout ? 1 : 0);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            parcel.writeInt(this.mLastLayoutRTL ? 1 : 0);
            parcel.writeList(this.mFullSpanItems);
        }

        public SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mVisibleAnchorPosition = parcel.readInt();
            int readInt = parcel.readInt();
            this.mSpanOffsetsSize = readInt;
            if (readInt > 0) {
                int[] iArr = new int[readInt];
                this.mSpanOffsets = iArr;
                parcel.readIntArray(iArr);
            }
            int readInt2 = parcel.readInt();
            this.mSpanLookupSize = readInt2;
            if (readInt2 > 0) {
                int[] iArr2 = new int[readInt2];
                this.mSpanLookup = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.mReverseLayout = parcel.readInt() == 1;
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
            this.mLastLayoutRTL = parcel.readInt() == 1;
            this.mFullSpanItems = parcel.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState savedState) {
            this.mSpanOffsetsSize = savedState.mSpanOffsetsSize;
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mVisibleAnchorPosition = savedState.mVisibleAnchorPosition;
            this.mSpanOffsets = savedState.mSpanOffsets;
            this.mSpanLookupSize = savedState.mSpanLookupSize;
            this.mSpanLookup = savedState.mSpanLookup;
            this.mReverseLayout = savedState.mReverseLayout;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = savedState.mLastLayoutRTL;
            this.mFullSpanItems = savedState.mFullSpanItems;
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$a */
    /* loaded from: classes3.dex */
    public class RunnableC1369a implements Runnable {
        public RunnableC1369a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.m5963D();
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$b */
    /* loaded from: classes3.dex */
    public class C1370b {

        /* renamed from: a */
        public int f9784a;

        /* renamed from: b */
        public int f9785b;

        /* renamed from: c */
        public boolean f9786c;

        /* renamed from: d */
        public boolean f9787d;

        /* renamed from: e */
        public boolean f9788e;

        /* renamed from: f */
        public int[] f9789f;

        public C1370b() {
            m6034c();
        }

        /* renamed from: a */
        public void m6032a() {
            this.f9785b = this.f9786c ? StaggeredGridLayoutManager.this.f9774y.getEndAfterPadding() : StaggeredGridLayoutManager.this.f9774y.getStartAfterPadding();
        }

        /* renamed from: b */
        public void m6033b(int i) {
            if (this.f9786c) {
                this.f9785b = StaggeredGridLayoutManager.this.f9774y.getEndAfterPadding() - i;
            } else {
                this.f9785b = StaggeredGridLayoutManager.this.f9774y.getStartAfterPadding() + i;
            }
        }

        /* renamed from: c */
        public void m6034c() {
            this.f9784a = -1;
            this.f9785b = Integer.MIN_VALUE;
            this.f9786c = false;
            this.f9787d = false;
            this.f9788e = false;
            int[] iArr = this.f9789f;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
        }

        /* renamed from: d */
        public void m6035d(C1371c[] c1371cArr) {
            int length = c1371cArr.length;
            int[] iArr = this.f9789f;
            if (iArr == null || iArr.length < length) {
                this.f9789f = new int[StaggeredGridLayoutManager.this.f9772x.length];
            }
            for (int i = 0; i < length; i++) {
                this.f9789f[i] = c1371cArr[i].m6057u(Integer.MIN_VALUE);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$c */
    /* loaded from: classes3.dex */
    public class C1371c {

        /* renamed from: g */
        public static final int f9791g = Integer.MIN_VALUE;

        /* renamed from: a */
        public ArrayList<View> f9792a = new ArrayList<>();

        /* renamed from: b */
        public int f9793b = Integer.MIN_VALUE;

        /* renamed from: c */
        public int f9794c = Integer.MIN_VALUE;

        /* renamed from: d */
        public int f9795d = 0;

        /* renamed from: e */
        public final int f9796e;

        public C1371c(int i) {
            this.f9796e = i;
        }

        /* renamed from: A */
        public void m6036A(int i) {
            this.f9793b = i;
            this.f9794c = i;
        }

        /* renamed from: a */
        public void m6037a(View view) {
            LayoutParams m6055s = m6055s(view);
            m6055s.f9778e = this;
            this.f9792a.add(view);
            this.f9794c = Integer.MIN_VALUE;
            if (this.f9792a.size() == 1) {
                this.f9793b = Integer.MIN_VALUE;
            }
            if (m6055s.isItemRemoved() || m6055s.isItemChanged()) {
                this.f9795d += StaggeredGridLayoutManager.this.f9774y.getDecoratedMeasurement(view);
            }
        }

        /* renamed from: b */
        public void m6038b(boolean z, int i) {
            int m6053q = z ? m6053q(Integer.MIN_VALUE) : m6057u(Integer.MIN_VALUE);
            m6041e();
            if (m6053q == Integer.MIN_VALUE) {
                return;
            }
            if (!z || m6053q >= StaggeredGridLayoutManager.this.f9774y.getEndAfterPadding()) {
                if (z || m6053q <= StaggeredGridLayoutManager.this.f9774y.getStartAfterPadding()) {
                    if (i != Integer.MIN_VALUE) {
                        m6053q += i;
                    }
                    this.f9794c = m6053q;
                    this.f9793b = m6053q;
                }
            }
        }

        /* renamed from: c */
        public void m6039c() {
            LazySpanLookup.FullSpanItem m6018f;
            ArrayList<View> arrayList = this.f9792a;
            View view = arrayList.get(arrayList.size() - 1);
            LayoutParams m6055s = m6055s(view);
            this.f9794c = StaggeredGridLayoutManager.this.f9774y.getDecoratedEnd(view);
            if (m6055s.f9779f && (m6018f = StaggeredGridLayoutManager.this.f9769v0.m6018f(m6055s.getViewLayoutPosition())) != null && m6018f.mGapDir == 1) {
                this.f9794c += m6018f.getGapForSpan(this.f9796e);
            }
        }

        /* renamed from: d */
        public void m6040d() {
            LazySpanLookup.FullSpanItem m6018f;
            View view = this.f9792a.get(0);
            LayoutParams m6055s = m6055s(view);
            this.f9793b = StaggeredGridLayoutManager.this.f9774y.getDecoratedStart(view);
            if (m6055s.f9779f && (m6018f = StaggeredGridLayoutManager.this.f9769v0.m6018f(m6055s.getViewLayoutPosition())) != null && m6018f.mGapDir == -1) {
                this.f9793b -= m6018f.getGapForSpan(this.f9796e);
            }
        }

        /* renamed from: e */
        public void m6041e() {
            this.f9792a.clear();
            m6058v();
            this.f9795d = 0;
        }

        /* renamed from: f */
        public int m6042f() {
            return StaggeredGridLayoutManager.this.f9764Z ? m6050n(this.f9792a.size() - 1, -1, true) : m6050n(0, this.f9792a.size(), true);
        }

        /* renamed from: g */
        public int m6043g() {
            return StaggeredGridLayoutManager.this.f9764Z ? m6049m(this.f9792a.size() - 1, -1, true) : m6049m(0, this.f9792a.size(), true);
        }

        /* renamed from: h */
        public int m6044h() {
            return StaggeredGridLayoutManager.this.f9764Z ? m6050n(this.f9792a.size() - 1, -1, false) : m6050n(0, this.f9792a.size(), false);
        }

        /* renamed from: i */
        public int m6045i() {
            return StaggeredGridLayoutManager.this.f9764Z ? m6050n(0, this.f9792a.size(), true) : m6050n(this.f9792a.size() - 1, -1, true);
        }

        /* renamed from: j */
        public int m6046j() {
            return StaggeredGridLayoutManager.this.f9764Z ? m6049m(0, this.f9792a.size(), true) : m6049m(this.f9792a.size() - 1, -1, true);
        }

        /* renamed from: k */
        public int m6047k() {
            return StaggeredGridLayoutManager.this.f9764Z ? m6050n(0, this.f9792a.size(), false) : m6050n(this.f9792a.size() - 1, -1, false);
        }

        /* renamed from: l */
        public int m6048l(int i, int i2, boolean z, boolean z2, boolean z3) {
            int startAfterPadding = StaggeredGridLayoutManager.this.f9774y.getStartAfterPadding();
            int endAfterPadding = StaggeredGridLayoutManager.this.f9774y.getEndAfterPadding();
            int i3 = i2 > i ? 1 : -1;
            while (i != i2) {
                View view = this.f9792a.get(i);
                int decoratedStart = StaggeredGridLayoutManager.this.f9774y.getDecoratedStart(view);
                int decoratedEnd = StaggeredGridLayoutManager.this.f9774y.getDecoratedEnd(view);
                boolean z4 = false;
                boolean z5 = !z3 ? decoratedStart >= endAfterPadding : decoratedStart > endAfterPadding;
                if (!z3 ? decoratedEnd > startAfterPadding : decoratedEnd >= startAfterPadding) {
                    z4 = true;
                }
                if (z5 && z4) {
                    if (z && z2) {
                        if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        if (z2) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                        if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    }
                }
                i += i3;
            }
            return -1;
        }

        /* renamed from: m */
        public int m6049m(int i, int i2, boolean z) {
            return m6048l(i, i2, false, false, z);
        }

        /* renamed from: n */
        public int m6050n(int i, int i2, boolean z) {
            return m6048l(i, i2, z, true, false);
        }

        /* renamed from: o */
        public int m6051o() {
            return this.f9795d;
        }

        /* renamed from: p */
        public int m6052p() {
            int i = this.f9794c;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m6039c();
            return this.f9794c;
        }

        /* renamed from: q */
        public int m6053q(int i) {
            int i2 = this.f9794c;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f9792a.size() == 0) {
                return i;
            }
            m6039c();
            return this.f9794c;
        }

        /* renamed from: r */
        public View m6054r(int i, int i2) {
            View view = null;
            if (i2 != -1) {
                int size = this.f9792a.size() - 1;
                while (size >= 0) {
                    View view2 = this.f9792a.get(size);
                    StaggeredGridLayoutManager staggeredGridLayoutManager = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f9764Z && staggeredGridLayoutManager.getPosition(view2) >= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f9764Z && staggeredGridLayoutManager2.getPosition(view2) <= i) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f9792a.size();
                int i3 = 0;
                while (i3 < size2) {
                    View view3 = this.f9792a.get(i3);
                    StaggeredGridLayoutManager staggeredGridLayoutManager3 = StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f9764Z && staggeredGridLayoutManager3.getPosition(view3) <= i) {
                        break;
                    }
                    StaggeredGridLayoutManager staggeredGridLayoutManager4 = StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f9764Z && staggeredGridLayoutManager4.getPosition(view3) >= i) || !view3.hasFocusable()) {
                        break;
                    }
                    i3++;
                    view = view3;
                }
            }
            return view;
        }

        /* renamed from: s */
        public LayoutParams m6055s(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        /* renamed from: t */
        public int m6056t() {
            int i = this.f9793b;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            m6040d();
            return this.f9793b;
        }

        /* renamed from: u */
        public int m6057u(int i) {
            int i2 = this.f9793b;
            if (i2 != Integer.MIN_VALUE) {
                return i2;
            }
            if (this.f9792a.size() == 0) {
                return i;
            }
            m6040d();
            return this.f9793b;
        }

        /* renamed from: v */
        public void m6058v() {
            this.f9793b = Integer.MIN_VALUE;
            this.f9794c = Integer.MIN_VALUE;
        }

        /* renamed from: w */
        public void m6059w(int i) {
            int i2 = this.f9793b;
            if (i2 != Integer.MIN_VALUE) {
                this.f9793b = i2 + i;
            }
            int i3 = this.f9794c;
            if (i3 != Integer.MIN_VALUE) {
                this.f9794c = i3 + i;
            }
        }

        /* renamed from: x */
        public void m6060x() {
            int size = this.f9792a.size();
            View remove = this.f9792a.remove(size - 1);
            LayoutParams m6055s = m6055s(remove);
            m6055s.f9778e = null;
            if (m6055s.isItemRemoved() || m6055s.isItemChanged()) {
                this.f9795d -= StaggeredGridLayoutManager.this.f9774y.getDecoratedMeasurement(remove);
            }
            if (size == 1) {
                this.f9793b = Integer.MIN_VALUE;
            }
            this.f9794c = Integer.MIN_VALUE;
        }

        /* renamed from: y */
        public void m6061y() {
            View remove = this.f9792a.remove(0);
            LayoutParams m6055s = m6055s(remove);
            m6055s.f9778e = null;
            if (this.f9792a.size() == 0) {
                this.f9794c = Integer.MIN_VALUE;
            }
            if (m6055s.isItemRemoved() || m6055s.isItemChanged()) {
                this.f9795d -= StaggeredGridLayoutManager.this.f9774y.getDecoratedMeasurement(remove);
            }
            this.f9793b = Integer.MIN_VALUE;
        }

        /* renamed from: z */
        public void m6062z(View view) {
            LayoutParams m6055s = m6055s(view);
            m6055s.f9778e = this;
            this.f9792a.add(0, view);
            this.f9793b = Integer.MIN_VALUE;
            if (this.f9792a.size() == 1) {
                this.f9794c = Integer.MIN_VALUE;
            }
            if (m6055s.isItemRemoved() || m6055s.isItemChanged()) {
                this.f9795d += StaggeredGridLayoutManager.this.f9774y.getDecoratedMeasurement(view);
            }
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setSpanCount(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        this.f9763Q = new C1381f();
        m5971L();
    }

    /* renamed from: A */
    public boolean m5960A() {
        int m6057u = this.f9772x[0].m6057u(Integer.MIN_VALUE);
        for (int i = 1; i < this.f9770w; i++) {
            if (this.f9772x[i].m6057u(Integer.MIN_VALUE) != m6057u) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: B */
    public final void m5961B(View view, LayoutParams layoutParams, C1381f c1381f) {
        if (c1381f.f9954e == 1) {
            if (layoutParams.f9779f) {
                m6009x(view);
                return;
            } else {
                layoutParams.f9778e.m6037a(view);
                return;
            }
        }
        if (layoutParams.f9779f) {
            m5994i0(view);
        } else {
            layoutParams.f9778e.m6062z(view);
        }
    }

    /* renamed from: C */
    public final int m5962C(int i) {
        if (getChildCount() == 0) {
            return this.f9765k0 ? 1 : -1;
        }
        return (i < m5980U()) != this.f9765k0 ? -1 : 1;
    }

    /* renamed from: D */
    public boolean m5963D() {
        int m5980U;
        int m5981V;
        if (getChildCount() == 0 || this.f9771w0 == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f9765k0) {
            m5980U = m5981V();
            m5981V = m5980U();
        } else {
            m5980U = m5980U();
            m5981V = m5981V();
        }
        if (m5980U == 0 && m5988c0() != null) {
            this.f9769v0.m6014b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.f9757D0) {
            return false;
        }
        int i = this.f9765k0 ? -1 : 1;
        int i2 = m5981V + 1;
        LazySpanLookup.FullSpanItem m6017e = this.f9769v0.m6017e(m5980U, i2, i, true);
        if (m6017e == null) {
            this.f9757D0 = false;
            this.f9769v0.m6016d(i2);
            return false;
        }
        LazySpanLookup.FullSpanItem m6017e2 = this.f9769v0.m6017e(m5980U, m6017e.mPosition, i * (-1), true);
        if (m6017e2 == null) {
            this.f9769v0.m6016d(m6017e.mPosition);
        } else {
            this.f9769v0.m6016d(m6017e2.mPosition + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    /* renamed from: E */
    public final boolean m5964E(C1371c c1371c) {
        if (this.f9765k0) {
            if (c1371c.m6052p() < this.f9774y.getEndAfterPadding()) {
                ArrayList<View> arrayList = c1371c.f9792a;
                return !c1371c.m6055s(arrayList.get(arrayList.size() - 1)).f9779f;
            }
        } else if (c1371c.m6056t() > this.f9774y.getStartAfterPadding()) {
            return !c1371c.m6055s(c1371c.f9792a.get(0)).f9779f;
        }
        return false;
    }

    /* renamed from: F */
    public final int m5965F(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C1385j.m6242a(state, this.f9774y, m5975P(!this.f9758E0), m5974O(!this.f9758E0), this, this.f9758E0);
    }

    /* renamed from: G */
    public final int m5966G(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C1385j.m6243b(state, this.f9774y, m5975P(!this.f9758E0), m5974O(!this.f9758E0), this, this.f9758E0, this.f9765k0);
    }

    /* renamed from: H */
    public final int m5967H(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return C1385j.m6244c(state, this.f9774y, m5975P(!this.f9758E0), m5974O(!this.f9758E0), this, this.f9758E0);
    }

    /* renamed from: I */
    public final int m5968I(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.f9761J == 1) ? 1 : Integer.MIN_VALUE : this.f9761J == 0 ? 1 : Integer.MIN_VALUE : this.f9761J == 1 ? -1 : Integer.MIN_VALUE : this.f9761J == 0 ? -1 : Integer.MIN_VALUE : (this.f9761J != 1 && isLayoutRTL()) ? -1 : 1 : (this.f9761J != 1 && isLayoutRTL()) ? 1 : -1;
    }

    /* renamed from: J */
    public final LazySpanLookup.FullSpanItem m5969J(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.f9770w];
        for (int i2 = 0; i2 < this.f9770w; i2++) {
            fullSpanItem.mGapPerSpan[i2] = i - this.f9772x[i2].m6053q(i);
        }
        return fullSpanItem;
    }

    /* renamed from: K */
    public final LazySpanLookup.FullSpanItem m5970K(int i) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.f9770w];
        for (int i2 = 0; i2 < this.f9770w; i2++) {
            fullSpanItem.mGapPerSpan[i2] = this.f9772x[i2].m6057u(i) - i;
        }
        return fullSpanItem;
    }

    /* renamed from: L */
    public final void m5971L() {
        this.f9774y = OrientationHelper.createOrientationHelper(this, this.f9761J);
        this.f9776z = OrientationHelper.createOrientationHelper(this, 1 - this.f9761J);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* renamed from: M */
    public final int m5972M(RecyclerView.Recycler recycler, C1381f c1381f, RecyclerView.State state) {
        C1371c c1371c;
        int decoratedMeasurement;
        int i;
        int i2;
        int decoratedMeasurement2;
        boolean z;
        ?? r9 = 0;
        this.f9766q0.set(0, this.f9770w, true);
        int i3 = this.f9763Q.f9958i ? c1381f.f9954e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : c1381f.f9954e == 1 ? c1381f.f9956g + c1381f.f9951b : c1381f.f9955f - c1381f.f9951b;
        m6002q0(c1381f.f9954e, i3);
        int endAfterPadding = this.f9765k0 ? this.f9774y.getEndAfterPadding() : this.f9774y.getStartAfterPadding();
        boolean z2 = false;
        while (c1381f.m6216a(state) && (this.f9763Q.f9958i || !this.f9766q0.isEmpty())) {
            View m6217b = c1381f.m6217b(recycler);
            LayoutParams layoutParams = (LayoutParams) m6217b.getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            int m6019g = this.f9769v0.m6019g(viewLayoutPosition);
            boolean z3 = m6019g == -1 ? true : r9;
            if (z3) {
                c1371c = layoutParams.f9779f ? this.f9772x[r9] : m5986a0(c1381f);
                this.f9769v0.m6026n(viewLayoutPosition, c1371c);
            } else {
                c1371c = this.f9772x[m6019g];
            }
            C1371c c1371c2 = c1371c;
            layoutParams.f9778e = c1371c2;
            if (c1381f.f9954e == 1) {
                addView(m6217b);
            } else {
                addView(m6217b, r9);
            }
            m5990e0(m6217b, layoutParams, r9);
            if (c1381f.f9954e == 1) {
                int m5982W = layoutParams.f9779f ? m5982W(endAfterPadding) : c1371c2.m6053q(endAfterPadding);
                int decoratedMeasurement3 = this.f9774y.getDecoratedMeasurement(m6217b) + m5982W;
                if (z3 && layoutParams.f9779f) {
                    LazySpanLookup.FullSpanItem m5969J = m5969J(m5982W);
                    m5969J.mGapDir = -1;
                    m5969J.mPosition = viewLayoutPosition;
                    this.f9769v0.m6013a(m5969J);
                }
                i = decoratedMeasurement3;
                decoratedMeasurement = m5982W;
            } else {
                int m5985Z = layoutParams.f9779f ? m5985Z(endAfterPadding) : c1371c2.m6057u(endAfterPadding);
                decoratedMeasurement = m5985Z - this.f9774y.getDecoratedMeasurement(m6217b);
                if (z3 && layoutParams.f9779f) {
                    LazySpanLookup.FullSpanItem m5970K = m5970K(m5985Z);
                    m5970K.mGapDir = 1;
                    m5970K.mPosition = viewLayoutPosition;
                    this.f9769v0.m6013a(m5970K);
                }
                i = m5985Z;
            }
            if (layoutParams.f9779f && c1381f.f9953d == -1) {
                if (z3) {
                    this.f9757D0 = true;
                } else {
                    if (!(c1381f.f9954e == 1 ? m6012z() : m5960A())) {
                        LazySpanLookup.FullSpanItem m6018f = this.f9769v0.m6018f(viewLayoutPosition);
                        if (m6018f != null) {
                            m6018f.mHasUnwantedGapAfter = true;
                        }
                        this.f9757D0 = true;
                    }
                }
            }
            m5961B(m6217b, layoutParams, c1381f);
            if (isLayoutRTL() && this.f9761J == 1) {
                int endAfterPadding2 = layoutParams.f9779f ? this.f9776z.getEndAfterPadding() : this.f9776z.getEndAfterPadding() - (((this.f9770w - 1) - c1371c2.f9796e) * this.f9762O);
                decoratedMeasurement2 = endAfterPadding2;
                i2 = endAfterPadding2 - this.f9776z.getDecoratedMeasurement(m6217b);
            } else {
                int startAfterPadding = layoutParams.f9779f ? this.f9776z.getStartAfterPadding() : (c1371c2.f9796e * this.f9762O) + this.f9776z.getStartAfterPadding();
                i2 = startAfterPadding;
                decoratedMeasurement2 = this.f9776z.getDecoratedMeasurement(m6217b) + startAfterPadding;
            }
            if (this.f9761J == 1) {
                layoutDecoratedWithMargins(m6217b, i2, decoratedMeasurement, decoratedMeasurement2, i);
            } else {
                layoutDecoratedWithMargins(m6217b, decoratedMeasurement, i2, i, decoratedMeasurement2);
            }
            if (layoutParams.f9779f) {
                m6002q0(this.f9763Q.f9954e, i3);
            } else {
                m6008w0(c1371c2, this.f9763Q.f9954e, i3);
            }
            m5995j0(recycler, this.f9763Q);
            if (this.f9763Q.f9957h && m6217b.hasFocusable()) {
                if (layoutParams.f9779f) {
                    this.f9766q0.clear();
                } else {
                    z = false;
                    this.f9766q0.set(c1371c2.f9796e, false);
                    r9 = z;
                    z2 = true;
                }
            }
            z = false;
            r9 = z;
            z2 = true;
        }
        int i4 = r9;
        if (!z2) {
            m5995j0(recycler, this.f9763Q);
        }
        int startAfterPadding2 = this.f9763Q.f9954e == -1 ? this.f9774y.getStartAfterPadding() - m5985Z(this.f9774y.getStartAfterPadding()) : m5982W(this.f9774y.getEndAfterPadding()) - this.f9774y.getEndAfterPadding();
        return startAfterPadding2 > 0 ? Math.min(c1381f.f9951b, startAfterPadding2) : i4;
    }

    /* renamed from: N */
    public final int m5973N(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int position = getPosition(getChildAt(i2));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    /* renamed from: O */
    public View m5974O(boolean z) {
        int startAfterPadding = this.f9774y.getStartAfterPadding();
        int endAfterPadding = this.f9774y.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.f9774y.getDecoratedStart(childAt);
            int decoratedEnd = this.f9774y.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd <= endAfterPadding || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* renamed from: P */
    public View m5975P(boolean z) {
        int startAfterPadding = this.f9774y.getStartAfterPadding();
        int endAfterPadding = this.f9774y.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int decoratedStart = this.f9774y.getDecoratedStart(childAt);
            if (this.f9774y.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart >= startAfterPadding || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    /* renamed from: Q */
    public int m5976Q() {
        View m5974O = this.f9765k0 ? m5974O(true) : m5975P(true);
        if (m5974O == null) {
            return -1;
        }
        return getPosition(m5974O);
    }

    /* renamed from: R */
    public final int m5977R(int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < i) {
                return position;
            }
        }
        return 0;
    }

    /* renamed from: S */
    public final void m5978S(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int m5982W = m5982W(Integer.MIN_VALUE);
        if (m5982W != Integer.MIN_VALUE && (endAfterPadding = this.f9774y.getEndAfterPadding() - m5982W) > 0) {
            int i = endAfterPadding - (-m6000o0(-endAfterPadding, recycler, state));
            if (!z || i <= 0) {
                return;
            }
            this.f9774y.offsetChildren(i);
        }
    }

    /* renamed from: T */
    public final void m5979T(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding;
        int m5985Z = m5985Z(Integer.MAX_VALUE);
        if (m5985Z != Integer.MAX_VALUE && (startAfterPadding = m5985Z - this.f9774y.getStartAfterPadding()) > 0) {
            int m6000o0 = startAfterPadding - m6000o0(startAfterPadding, recycler, state);
            if (!z || m6000o0 <= 0) {
                return;
            }
            this.f9774y.offsetChildren(-m6000o0);
        }
    }

    /* renamed from: U */
    public int m5980U() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    /* renamed from: V */
    public int m5981V() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    /* renamed from: W */
    public final int m5982W(int i) {
        int m6053q = this.f9772x[0].m6053q(i);
        for (int i2 = 1; i2 < this.f9770w; i2++) {
            int m6053q2 = this.f9772x[i2].m6053q(i);
            if (m6053q2 > m6053q) {
                m6053q = m6053q2;
            }
        }
        return m6053q;
    }

    /* renamed from: X */
    public final int m5983X(int i) {
        int m6057u = this.f9772x[0].m6057u(i);
        for (int i2 = 1; i2 < this.f9770w; i2++) {
            int m6057u2 = this.f9772x[i2].m6057u(i);
            if (m6057u2 > m6057u) {
                m6057u = m6057u2;
            }
        }
        return m6057u;
    }

    /* renamed from: Y */
    public final int m5984Y(int i) {
        int m6053q = this.f9772x[0].m6053q(i);
        for (int i2 = 1; i2 < this.f9770w; i2++) {
            int m6053q2 = this.f9772x[i2].m6053q(i);
            if (m6053q2 < m6053q) {
                m6053q = m6053q2;
            }
        }
        return m6053q;
    }

    /* renamed from: Z */
    public final int m5985Z(int i) {
        int m6057u = this.f9772x[0].m6057u(i);
        for (int i2 = 1; i2 < this.f9770w; i2++) {
            int m6057u2 = this.f9772x[i2].m6057u(i);
            if (m6057u2 < m6057u) {
                m6057u = m6057u2;
            }
        }
        return m6057u;
    }

    /* renamed from: a0 */
    public final C1371c m5986a0(C1381f c1381f) {
        int i;
        int i2;
        int i3;
        if (m5992g0(c1381f.f9954e)) {
            i2 = this.f9770w - 1;
            i = -1;
            i3 = -1;
        } else {
            i = this.f9770w;
            i2 = 0;
            i3 = 1;
        }
        C1371c c1371c = null;
        if (c1381f.f9954e == 1) {
            int startAfterPadding = this.f9774y.getStartAfterPadding();
            int i4 = Integer.MAX_VALUE;
            while (i2 != i) {
                C1371c c1371c2 = this.f9772x[i2];
                int m6053q = c1371c2.m6053q(startAfterPadding);
                if (m6053q < i4) {
                    c1371c = c1371c2;
                    i4 = m6053q;
                }
                i2 += i3;
            }
            return c1371c;
        }
        int endAfterPadding = this.f9774y.getEndAfterPadding();
        int i5 = Integer.MIN_VALUE;
        while (i2 != i) {
            C1371c c1371c3 = this.f9772x[i2];
            int m6057u = c1371c3.m6057u(endAfterPadding);
            if (m6057u > i5) {
                c1371c = c1371c3;
                i5 = m6057u;
            }
            i2 += i3;
        }
        return c1371c;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.f9777z0 == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003c  */
    /* renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5987b0(int r7, int r8, int r9) {
        /*
            r6 = this;
            boolean r0 = r6.f9765k0
            if (r0 == 0) goto L9
            int r0 = r6.m5981V()
            goto Ld
        L9:
            int r0 = r6.m5980U()
        Ld:
            r1 = 8
            if (r9 != r1) goto L1a
            if (r7 >= r8) goto L16
            int r2 = r8 + 1
            goto L1c
        L16:
            int r2 = r7 + 1
            r3 = r8
            goto L1d
        L1a:
            int r2 = r7 + r8
        L1c:
            r3 = r7
        L1d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r4 = r6.f9769v0
            r4.m6020h(r3)
            r4 = 1
            if (r9 == r4) goto L3c
            r5 = 2
            if (r9 == r5) goto L36
            if (r9 == r1) goto L2b
            goto L41
        L2b:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f9769v0
            r9.m6023k(r7, r4)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r7 = r6.f9769v0
            r7.m6022j(r8, r4)
            goto L41
        L36:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f9769v0
            r9.m6023k(r7, r8)
            goto L41
        L3c:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup r9 = r6.f9769v0
            r9.m6022j(r7, r8)
        L41:
            if (r2 > r0) goto L44
            return
        L44:
            boolean r7 = r6.f9765k0
            if (r7 == 0) goto L4d
            int r7 = r6.m5980U()
            goto L51
        L4d:
            int r7 = r6.m5981V()
        L51:
            if (r3 > r7) goto L56
            r6.requestLayout()
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m5987b0(int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0074, code lost:
    
        if (r10 == r11) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008a, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0088, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0086, code lost:
    
        if (r10 == r11) goto L37;
     */
    /* renamed from: c0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View m5988c0() {
        /*
            r12 = this;
            int r0 = r12.getChildCount()
            r1 = 1
            int r0 = r0 - r1
            java.util.BitSet r2 = new java.util.BitSet
            int r3 = r12.f9770w
            r2.<init>(r3)
            int r3 = r12.f9770w
            r4 = 0
            r2.set(r4, r3, r1)
            int r3 = r12.f9761J
            r5 = -1
            if (r3 != r1) goto L20
            boolean r3 = r12.isLayoutRTL()
            if (r3 == 0) goto L20
            r3 = r1
            goto L21
        L20:
            r3 = r5
        L21:
            boolean r6 = r12.f9765k0
            if (r6 == 0) goto L27
            r6 = r5
            goto L2b
        L27:
            int r0 = r0 + 1
            r6 = r0
            r0 = r4
        L2b:
            if (r0 >= r6) goto L2e
            r5 = r1
        L2e:
            if (r0 == r6) goto Lab
            android.view.View r7 = r12.getChildAt(r0)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r8 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r8
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f9778e
            int r9 = r9.f9796e
            boolean r9 = r2.get(r9)
            if (r9 == 0) goto L54
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f9778e
            boolean r9 = r12.m5964E(r9)
            if (r9 == 0) goto L4d
            return r7
        L4d:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r8.f9778e
            int r9 = r9.f9796e
            r2.clear(r9)
        L54:
            boolean r9 = r8.f9779f
            if (r9 == 0) goto L59
            goto La9
        L59:
            int r9 = r0 + r5
            if (r9 == r6) goto La9
            android.view.View r9 = r12.getChildAt(r9)
            boolean r10 = r12.f9765k0
            if (r10 == 0) goto L77
            androidx.recyclerview.widget.OrientationHelper r10 = r12.f9774y
            int r10 = r10.getDecoratedEnd(r7)
            androidx.recyclerview.widget.OrientationHelper r11 = r12.f9774y
            int r11 = r11.getDecoratedEnd(r9)
            if (r10 >= r11) goto L74
            return r7
        L74:
            if (r10 != r11) goto L8a
            goto L88
        L77:
            androidx.recyclerview.widget.OrientationHelper r10 = r12.f9774y
            int r10 = r10.getDecoratedStart(r7)
            androidx.recyclerview.widget.OrientationHelper r11 = r12.f9774y
            int r11 = r11.getDecoratedStart(r9)
            if (r10 <= r11) goto L86
            return r7
        L86:
            if (r10 != r11) goto L8a
        L88:
            r10 = r1
            goto L8b
        L8a:
            r10 = r4
        L8b:
            if (r10 == 0) goto La9
            android.view.ViewGroup$LayoutParams r9 = r9.getLayoutParams()
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LayoutParams r9 = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) r9
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r8 = r8.f9778e
            int r8 = r8.f9796e
            androidx.recyclerview.widget.StaggeredGridLayoutManager$c r9 = r9.f9778e
            int r9 = r9.f9796e
            int r8 = r8 - r9
            if (r8 >= 0) goto La0
            r8 = r1
            goto La1
        La0:
            r8 = r4
        La1:
            if (r3 >= 0) goto La5
            r9 = r1
            goto La6
        La5:
            r9 = r4
        La6:
            if (r8 == r9) goto La9
            return r7
        La9:
            int r0 = r0 + r5
            goto L2e
        Lab:
            r12 = 0
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m5988c0():android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.f9761J == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.f9761J == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int m6053q;
        int i3;
        if (this.f9761J != 0) {
            i = i2;
        }
        if (getChildCount() == 0 || i == 0) {
            return;
        }
        m5993h0(i, state);
        int[] iArr = this.f9759F0;
        if (iArr == null || iArr.length < this.f9770w) {
            this.f9759F0 = new int[this.f9770w];
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.f9770w; i5++) {
            C1381f c1381f = this.f9763Q;
            if (c1381f.f9953d == -1) {
                m6053q = c1381f.f9955f;
                i3 = this.f9772x[i5].m6057u(m6053q);
            } else {
                m6053q = this.f9772x[i5].m6053q(c1381f.f9956g);
                i3 = this.f9763Q.f9956g;
            }
            int i6 = m6053q - i3;
            if (i6 >= 0) {
                this.f9759F0[i4] = i6;
                i4++;
            }
        }
        Arrays.sort(this.f9759F0, 0, i4);
        for (int i7 = 0; i7 < i4 && this.f9763Q.m6216a(state); i7++) {
            layoutPrefetchRegistry.addPosition(this.f9763Q.f9952c, this.f9759F0[i7]);
            C1381f c1381f2 = this.f9763Q;
            c1381f2.f9952c += c1381f2.f9953d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return m5965F(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return m5966G(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return m5967H(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        int m5962C = m5962C(i);
        PointF pointF = new PointF();
        if (m5962C == 0) {
            return null;
        }
        if (this.f9761J == 0) {
            pointF.x = m5962C;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = m5962C;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return m5965F(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return m5966G(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return m5967H(state);
    }

    /* renamed from: d0 */
    public final void m5989d0(View view, int i, int i2, boolean z) {
        calculateItemDecorationsForChild(view, this.f9755B0);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        Rect rect = this.f9755B0;
        int m6010x0 = m6010x0(i, i3 + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        Rect rect2 = this.f9755B0;
        int m6010x02 = m6010x0(i2, i4 + rect2.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z ? m5802v(view, m6010x0, m6010x02, layoutParams) : m5801t(view, m6010x0, m6010x02, layoutParams)) {
            view.measure(m6010x0, m6010x02);
        }
    }

    /* renamed from: e0 */
    public final void m5990e0(View view, LayoutParams layoutParams, boolean z) {
        if (layoutParams.f9779f) {
            if (this.f9761J == 1) {
                m5989d0(view, this.f9754A0, RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
                return;
            } else {
                m5989d0(view, RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), this.f9754A0, z);
                return;
            }
        }
        if (this.f9761J == 1) {
            m5989d0(view, RecyclerView.LayoutManager.getChildMeasureSpec(this.f9762O, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, false), RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height, true), z);
        } else {
            m5989d0(view, RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight(), ((ViewGroup.MarginLayoutParams) layoutParams).width, true), RecyclerView.LayoutManager.getChildMeasureSpec(this.f9762O, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) layoutParams).height, false), z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0157, code lost:
    
        if (m5963D() != false) goto L90;
     */
    /* renamed from: f0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5991f0(androidx.recyclerview.widget.RecyclerView.Recycler r9, androidx.recyclerview.widget.RecyclerView.State r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m5991f0(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.RecyclerView$State, boolean):void");
    }

    public int[] findFirstCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f9770w];
        } else if (iArr.length < this.f9770w) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f9770w + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.f9770w; i++) {
            iArr[i] = this.f9772x[i].m6042f();
        }
        return iArr;
    }

    public int[] findFirstVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f9770w];
        } else if (iArr.length < this.f9770w) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f9770w + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.f9770w; i++) {
            iArr[i] = this.f9772x[i].m6044h();
        }
        return iArr;
    }

    public int[] findLastCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f9770w];
        } else if (iArr.length < this.f9770w) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f9770w + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.f9770w; i++) {
            iArr[i] = this.f9772x[i].m6045i();
        }
        return iArr;
    }

    public int[] findLastVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.f9770w];
        } else if (iArr.length < this.f9770w) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.f9770w + ", array size:" + iArr.length);
        }
        for (int i = 0; i < this.f9770w; i++) {
            iArr[i] = this.f9772x[i].m6047k();
        }
        return iArr;
    }

    /* renamed from: g0 */
    public final boolean m5992g0(int i) {
        if (this.f9761J == 0) {
            return (i == -1) != this.f9765k0;
        }
        return ((i == -1) == this.f9765k0) == isLayoutRTL();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.f9761J == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    public int getGapStrategy() {
        return this.f9771w0;
    }

    public int getOrientation() {
        return this.f9761J;
    }

    public boolean getReverseLayout() {
        return this.f9764Z;
    }

    public int getSpanCount() {
        return this.f9770w;
    }

    /* renamed from: h0 */
    public void m5993h0(int i, RecyclerView.State state) {
        int m5980U;
        int i2;
        if (i > 0) {
            m5980U = m5981V();
            i2 = 1;
        } else {
            m5980U = m5980U();
            i2 = -1;
        }
        this.f9763Q.f9950a = true;
        m6006u0(m5980U, state);
        m6001p0(i2);
        C1381f c1381f = this.f9763Q;
        c1381f.f9952c = m5980U + c1381f.f9953d;
        c1381f.f9951b = Math.abs(i);
    }

    /* renamed from: i0 */
    public final void m5994i0(View view) {
        for (int i = this.f9770w - 1; i >= 0; i--) {
            this.f9772x[i].m6062z(view);
        }
    }

    public void invalidateSpanAssignments() {
        this.f9769v0.m6014b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return this.f9771w0 != 0;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    /* renamed from: j0 */
    public final void m5995j0(RecyclerView.Recycler recycler, C1381f c1381f) {
        if (!c1381f.f9950a || c1381f.f9958i) {
            return;
        }
        if (c1381f.f9951b == 0) {
            if (c1381f.f9954e == -1) {
                m5996k0(recycler, c1381f.f9956g);
                return;
            } else {
                m5997l0(recycler, c1381f.f9955f);
                return;
            }
        }
        if (c1381f.f9954e != -1) {
            int m5984Y = m5984Y(c1381f.f9956g) - c1381f.f9956g;
            m5997l0(recycler, m5984Y < 0 ? c1381f.f9955f : Math.min(m5984Y, c1381f.f9951b) + c1381f.f9955f);
        } else {
            int i = c1381f.f9955f;
            int m5983X = i - m5983X(i);
            m5996k0(recycler, m5983X < 0 ? c1381f.f9956g : c1381f.f9956g - Math.min(m5983X, c1381f.f9951b));
        }
    }

    /* renamed from: k0 */
    public final void m5996k0(RecyclerView.Recycler recycler, int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f9774y.getDecoratedStart(childAt) < i || this.f9774y.getTransformedStartWithDecoration(childAt) < i) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f9779f) {
                for (int i2 = 0; i2 < this.f9770w; i2++) {
                    if (this.f9772x[i2].f9792a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.f9770w; i3++) {
                    this.f9772x[i3].m6060x();
                }
            } else if (layoutParams.f9778e.f9792a.size() == 1) {
                return;
            } else {
                layoutParams.f9778e.m6060x();
            }
            removeAndRecycleView(childAt, recycler);
        }
    }

    /* renamed from: l0 */
    public final void m5997l0(RecyclerView.Recycler recycler, int i) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f9774y.getDecoratedEnd(childAt) > i || this.f9774y.getTransformedEndWithDecoration(childAt) > i) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f9779f) {
                for (int i2 = 0; i2 < this.f9770w; i2++) {
                    if (this.f9772x[i2].f9792a.size() == 1) {
                        return;
                    }
                }
                for (int i3 = 0; i3 < this.f9770w; i3++) {
                    this.f9772x[i3].m6061y();
                }
            } else if (layoutParams.f9778e.f9792a.size() == 1) {
                return;
            } else {
                layoutParams.f9778e.m6061y();
            }
            removeAndRecycleView(childAt, recycler);
        }
    }

    /* renamed from: m0 */
    public final void m5998m0() {
        if (this.f9776z.getMode() == 1073741824) {
            return;
        }
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            float decoratedMeasurement = this.f9776z.getDecoratedMeasurement(childAt);
            if (decoratedMeasurement >= f) {
                if (((LayoutParams) childAt.getLayoutParams()).isFullSpan()) {
                    decoratedMeasurement = (decoratedMeasurement * 1.0f) / this.f9770w;
                }
                f = Math.max(f, decoratedMeasurement);
            }
        }
        int i2 = this.f9762O;
        int round = Math.round(f * this.f9770w);
        if (this.f9776z.getMode() == Integer.MIN_VALUE) {
            round = Math.min(round, this.f9776z.getTotalSpace());
        }
        m6007v0(round);
        if (this.f9762O == i2) {
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt2.getLayoutParams();
            if (!layoutParams.f9779f) {
                if (isLayoutRTL() && this.f9761J == 1) {
                    int i4 = this.f9770w;
                    int i5 = layoutParams.f9778e.f9796e;
                    childAt2.offsetLeftAndRight(((-((i4 - 1) - i5)) * this.f9762O) - ((-((i4 - 1) - i5)) * i2));
                } else {
                    int i6 = layoutParams.f9778e.f9796e;
                    int i7 = this.f9762O * i6;
                    int i8 = i6 * i2;
                    if (this.f9761J == 1) {
                        childAt2.offsetLeftAndRight(i7 - i8);
                    } else {
                        childAt2.offsetTopAndBottom(i7 - i8);
                    }
                }
            }
        }
    }

    /* renamed from: n0 */
    public final void m5999n0() {
        if (this.f9761J == 1 || !isLayoutRTL()) {
            this.f9765k0 = this.f9764Z;
        } else {
            this.f9765k0 = !this.f9764Z;
        }
    }

    /* renamed from: o0 */
    public int m6000o0(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        m5993h0(i, state);
        int m5972M = m5972M(recycler, this.f9763Q, state);
        if (this.f9763Q.f9951b >= m5972M) {
            i = i < 0 ? -m5972M : m5972M;
        }
        this.f9774y.offsetChildren(-i);
        this.f9773x0 = this.f9765k0;
        C1381f c1381f = this.f9763Q;
        c1381f.f9951b = 0;
        m5995j0(recycler, c1381f);
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        for (int i2 = 0; i2 < this.f9770w; i2++) {
            this.f9772x[i2].m6059w(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        for (int i2 = 0; i2 < this.f9770w; i2++) {
            this.f9772x[i2].m6059w(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(@Nullable RecyclerView.Adapter adapter, @Nullable RecyclerView.Adapter adapter2) {
        this.f9769v0.m6014b();
        for (int i = 0; i < this.f9770w; i++) {
            this.f9772x[i].m6041e();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        removeCallbacks(this.f9760G0);
        for (int i = 0; i < this.f9770w; i++) {
            this.f9772x[i].m6041e();
        }
        recyclerView.requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @Nullable
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View findContainingItemView;
        View m6054r;
        if (getChildCount() == 0 || (findContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        m5999n0();
        int m5968I = m5968I(i);
        if (m5968I == Integer.MIN_VALUE) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
        boolean z = layoutParams.f9779f;
        C1371c c1371c = layoutParams.f9778e;
        int m5981V = m5968I == 1 ? m5981V() : m5980U();
        m6006u0(m5981V, state);
        m6001p0(m5968I);
        C1381f c1381f = this.f9763Q;
        c1381f.f9952c = c1381f.f9953d + m5981V;
        c1381f.f9951b = (int) (this.f9774y.getTotalSpace() * 0.33333334f);
        C1381f c1381f2 = this.f9763Q;
        c1381f2.f9957h = true;
        c1381f2.f9950a = false;
        m5972M(recycler, c1381f2, state);
        this.f9773x0 = this.f9765k0;
        if (!z && (m6054r = c1371c.m6054r(m5981V, m5968I)) != null && m6054r != findContainingItemView) {
            return m6054r;
        }
        if (m5992g0(m5968I)) {
            for (int i2 = this.f9770w - 1; i2 >= 0; i2--) {
                View m6054r2 = this.f9772x[i2].m6054r(m5981V, m5968I);
                if (m6054r2 != null && m6054r2 != findContainingItemView) {
                    return m6054r2;
                }
            }
        } else {
            for (int i3 = 0; i3 < this.f9770w; i3++) {
                View m6054r3 = this.f9772x[i3].m6054r(m5981V, m5968I);
                if (m6054r3 != null && m6054r3 != findContainingItemView) {
                    return m6054r3;
                }
            }
        }
        boolean z2 = (this.f9764Z ^ true) == (m5968I == -1);
        if (!z) {
            View findViewByPosition = findViewByPosition(z2 ? c1371c.m6043g() : c1371c.m6046j());
            if (findViewByPosition != null && findViewByPosition != findContainingItemView) {
                return findViewByPosition;
            }
        }
        if (m5992g0(m5968I)) {
            for (int i4 = this.f9770w - 1; i4 >= 0; i4--) {
                if (i4 != c1371c.f9796e) {
                    View findViewByPosition2 = findViewByPosition(z2 ? this.f9772x[i4].m6043g() : this.f9772x[i4].m6046j());
                    if (findViewByPosition2 != null && findViewByPosition2 != findContainingItemView) {
                        return findViewByPosition2;
                    }
                }
            }
        } else {
            for (int i5 = 0; i5 < this.f9770w; i5++) {
                View findViewByPosition3 = findViewByPosition(z2 ? this.f9772x[i5].m6043g() : this.f9772x[i5].m6046j());
                if (findViewByPosition3 != null && findViewByPosition3 != findContainingItemView) {
                    return findViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View m5975P = m5975P(false);
            View m5974O = m5974O(false);
            if (m5975P == null || m5974O == null) {
                return;
            }
            int position = getPosition(m5975P);
            int position2 = getPosition(m5974O);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        m5987b0(i, i2, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.f9769v0.m6014b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        m5987b0(i, i2, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        m5987b0(i, i2, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        m5987b0(i, i2, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        m5991f0(recycler, state, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f9767t0 = -1;
        this.f9768u0 = Integer.MIN_VALUE;
        this.f9777z0 = null;
        this.f9756C0.m6034c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f9777z0 = savedState;
            if (this.f9767t0 != -1) {
                savedState.invalidateAnchorPositionInfo();
                this.f9777z0.invalidateSpanInfo();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        int m6057u;
        int startAfterPadding;
        int[] iArr;
        if (this.f9777z0 != null) {
            return new SavedState(this.f9777z0);
        }
        SavedState savedState = new SavedState();
        savedState.mReverseLayout = this.f9764Z;
        savedState.mAnchorLayoutFromEnd = this.f9773x0;
        savedState.mLastLayoutRTL = this.f9775y0;
        LazySpanLookup lazySpanLookup = this.f9769v0;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f9781a) == null) {
            savedState.mSpanLookupSize = 0;
        } else {
            savedState.mSpanLookup = iArr;
            savedState.mSpanLookupSize = iArr.length;
            savedState.mFullSpanItems = lazySpanLookup.f9782b;
        }
        if (getChildCount() > 0) {
            savedState.mAnchorPosition = this.f9773x0 ? m5981V() : m5980U();
            savedState.mVisibleAnchorPosition = m5976Q();
            int i = this.f9770w;
            savedState.mSpanOffsetsSize = i;
            savedState.mSpanOffsets = new int[i];
            for (int i2 = 0; i2 < this.f9770w; i2++) {
                if (this.f9773x0) {
                    m6057u = this.f9772x[i2].m6053q(Integer.MIN_VALUE);
                    if (m6057u != Integer.MIN_VALUE) {
                        startAfterPadding = this.f9774y.getEndAfterPadding();
                        m6057u -= startAfterPadding;
                        savedState.mSpanOffsets[i2] = m6057u;
                    } else {
                        savedState.mSpanOffsets[i2] = m6057u;
                    }
                } else {
                    m6057u = this.f9772x[i2].m6057u(Integer.MIN_VALUE);
                    if (m6057u != Integer.MIN_VALUE) {
                        startAfterPadding = this.f9774y.getStartAfterPadding();
                        m6057u -= startAfterPadding;
                        savedState.mSpanOffsets[i2] = m6057u;
                    } else {
                        savedState.mSpanOffsets[i2] = m6057u;
                    }
                }
            }
        } else {
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
            savedState.mSpanOffsetsSize = 0;
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i) {
        if (i == 0) {
            m5963D();
        }
    }

    /* renamed from: p0 */
    public final void m6001p0(int i) {
        C1381f c1381f = this.f9763Q;
        c1381f.f9954e = i;
        c1381f.f9953d = this.f9765k0 != (i == -1) ? -1 : 1;
    }

    /* renamed from: q0 */
    public final void m6002q0(int i, int i2) {
        for (int i3 = 0; i3 < this.f9770w; i3++) {
            if (!this.f9772x[i3].f9792a.isEmpty()) {
                m6008w0(this.f9772x[i3], i, i2);
            }
        }
    }

    /* renamed from: r0 */
    public final boolean m6003r0(RecyclerView.State state, C1370b c1370b) {
        c1370b.f9784a = this.f9773x0 ? m5977R(state.getItemCount()) : m5973N(state.getItemCount());
        c1370b.f9785b = Integer.MIN_VALUE;
        return true;
    }

    /* renamed from: s0 */
    public boolean m6004s0(RecyclerView.State state, C1370b c1370b) {
        int i;
        if (!state.isPreLayout() && (i = this.f9767t0) != -1) {
            if (i >= 0 && i < state.getItemCount()) {
                SavedState savedState = this.f9777z0;
                if (savedState == null || savedState.mAnchorPosition == -1 || savedState.mSpanOffsetsSize < 1) {
                    View findViewByPosition = findViewByPosition(this.f9767t0);
                    if (findViewByPosition != null) {
                        c1370b.f9784a = this.f9765k0 ? m5981V() : m5980U();
                        if (this.f9768u0 != Integer.MIN_VALUE) {
                            if (c1370b.f9786c) {
                                c1370b.f9785b = (this.f9774y.getEndAfterPadding() - this.f9768u0) - this.f9774y.getDecoratedEnd(findViewByPosition);
                            } else {
                                c1370b.f9785b = (this.f9774y.getStartAfterPadding() + this.f9768u0) - this.f9774y.getDecoratedStart(findViewByPosition);
                            }
                            return true;
                        }
                        if (this.f9774y.getDecoratedMeasurement(findViewByPosition) > this.f9774y.getTotalSpace()) {
                            c1370b.f9785b = c1370b.f9786c ? this.f9774y.getEndAfterPadding() : this.f9774y.getStartAfterPadding();
                            return true;
                        }
                        int decoratedStart = this.f9774y.getDecoratedStart(findViewByPosition) - this.f9774y.getStartAfterPadding();
                        if (decoratedStart < 0) {
                            c1370b.f9785b = -decoratedStart;
                            return true;
                        }
                        int endAfterPadding = this.f9774y.getEndAfterPadding() - this.f9774y.getDecoratedEnd(findViewByPosition);
                        if (endAfterPadding < 0) {
                            c1370b.f9785b = endAfterPadding;
                            return true;
                        }
                        c1370b.f9785b = Integer.MIN_VALUE;
                    } else {
                        int i2 = this.f9767t0;
                        c1370b.f9784a = i2;
                        int i3 = this.f9768u0;
                        if (i3 == Integer.MIN_VALUE) {
                            c1370b.f9786c = m5962C(i2) == 1;
                            c1370b.m6032a();
                        } else {
                            c1370b.m6033b(i3);
                        }
                        c1370b.f9787d = true;
                    }
                } else {
                    c1370b.f9785b = Integer.MIN_VALUE;
                    c1370b.f9784a = this.f9767t0;
                }
                return true;
            }
            this.f9767t0 = -1;
            this.f9768u0 = Integer.MIN_VALUE;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return m6000o0(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        SavedState savedState = this.f9777z0;
        if (savedState != null && savedState.mAnchorPosition != i) {
            savedState.invalidateAnchorPositionInfo();
        }
        this.f9767t0 = i;
        this.f9768u0 = Integer.MIN_VALUE;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        SavedState savedState = this.f9777z0;
        if (savedState != null) {
            savedState.invalidateAnchorPositionInfo();
        }
        this.f9767t0 = i;
        this.f9768u0 = i2;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return m6000o0(i, recycler, state);
    }

    public void setGapStrategy(int i) {
        assertNotInLayoutOrScroll(null);
        if (i == this.f9771w0) {
            return;
        }
        if (i != 0 && i != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.f9771w0 = i;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i, int i2) {
        int chooseSize;
        int chooseSize2;
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.f9761J == 1) {
            chooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, rect.height() + paddingTop, getMinimumHeight());
            chooseSize = RecyclerView.LayoutManager.chooseSize(i, (this.f9762O * this.f9770w) + paddingLeft, getMinimumWidth());
        } else {
            chooseSize = RecyclerView.LayoutManager.chooseSize(i, rect.width() + paddingLeft, getMinimumWidth());
            chooseSize2 = RecyclerView.LayoutManager.chooseSize(i2, (this.f9762O * this.f9770w) + paddingTop, getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i == this.f9761J) {
            return;
        }
        this.f9761J = i;
        OrientationHelper orientationHelper = this.f9774y;
        this.f9774y = this.f9776z;
        this.f9776z = orientationHelper;
        requestLayout();
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.f9777z0;
        if (savedState != null && savedState.mReverseLayout != z) {
            savedState.mReverseLayout = z;
        }
        this.f9764Z = z;
        requestLayout();
    }

    public void setSpanCount(int i) {
        assertNotInLayoutOrScroll(null);
        if (i != this.f9770w) {
            invalidateSpanAssignments();
            this.f9770w = i;
            this.f9766q0 = new BitSet(this.f9770w);
            this.f9772x = new C1371c[this.f9770w];
            for (int i2 = 0; i2 < this.f9770w; i2++) {
                this.f9772x[i2] = new C1371c(i2);
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.f9777z0 == null;
    }

    /* renamed from: t0 */
    public void m6005t0(RecyclerView.State state, C1370b c1370b) {
        if (m6004s0(state, c1370b) || m6003r0(state, c1370b)) {
            return;
        }
        c1370b.m6032a();
        c1370b.f9784a = 0;
    }

    /* renamed from: u0 */
    public final void m6006u0(int i, RecyclerView.State state) {
        int i2;
        int i3;
        int targetScrollPosition;
        C1381f c1381f = this.f9763Q;
        boolean z = false;
        c1381f.f9951b = 0;
        c1381f.f9952c = i;
        if (!isSmoothScrolling() || (targetScrollPosition = state.getTargetScrollPosition()) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.f9765k0 == (targetScrollPosition < i)) {
                i2 = this.f9774y.getTotalSpace();
                i3 = 0;
            } else {
                i3 = this.f9774y.getTotalSpace();
                i2 = 0;
            }
        }
        if (getClipToPadding()) {
            this.f9763Q.f9955f = this.f9774y.getStartAfterPadding() - i3;
            this.f9763Q.f9956g = this.f9774y.getEndAfterPadding() + i2;
        } else {
            this.f9763Q.f9956g = this.f9774y.getEnd() + i2;
            this.f9763Q.f9955f = -i3;
        }
        C1381f c1381f2 = this.f9763Q;
        c1381f2.f9957h = false;
        c1381f2.f9950a = true;
        if (this.f9774y.getMode() == 0 && this.f9774y.getEnd() == 0) {
            z = true;
        }
        c1381f2.f9958i = z;
    }

    /* renamed from: v0 */
    public void m6007v0(int i) {
        this.f9762O = i / this.f9770w;
        this.f9754A0 = View.MeasureSpec.makeMeasureSpec(i, this.f9776z.getMode());
    }

    /* renamed from: w0 */
    public final void m6008w0(C1371c c1371c, int i, int i2) {
        int m6051o = c1371c.m6051o();
        if (i == -1) {
            if (c1371c.m6056t() + m6051o <= i2) {
                this.f9766q0.set(c1371c.f9796e, false);
            }
        } else if (c1371c.m6052p() - m6051o >= i2) {
            this.f9766q0.set(c1371c.f9796e, false);
        }
    }

    /* renamed from: x */
    public final void m6009x(View view) {
        for (int i = this.f9770w - 1; i >= 0; i--) {
            this.f9772x[i].m6037a(view);
        }
    }

    /* renamed from: x0 */
    public final int m6010x0(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    /* renamed from: y */
    public final void m6011y(C1370b c1370b) {
        SavedState savedState = this.f9777z0;
        int i = savedState.mSpanOffsetsSize;
        if (i > 0) {
            if (i == this.f9770w) {
                for (int i2 = 0; i2 < this.f9770w; i2++) {
                    this.f9772x[i2].m6041e();
                    SavedState savedState2 = this.f9777z0;
                    int i3 = savedState2.mSpanOffsets[i2];
                    if (i3 != Integer.MIN_VALUE) {
                        i3 += savedState2.mAnchorLayoutFromEnd ? this.f9774y.getEndAfterPadding() : this.f9774y.getStartAfterPadding();
                    }
                    this.f9772x[i2].m6036A(i3);
                }
            } else {
                savedState.invalidateSpanInfo();
                SavedState savedState3 = this.f9777z0;
                savedState3.mAnchorPosition = savedState3.mVisibleAnchorPosition;
            }
        }
        SavedState savedState4 = this.f9777z0;
        this.f9775y0 = savedState4.mLastLayoutRTL;
        setReverseLayout(savedState4.mReverseLayout);
        m5999n0();
        SavedState savedState5 = this.f9777z0;
        int i4 = savedState5.mAnchorPosition;
        if (i4 != -1) {
            this.f9767t0 = i4;
            c1370b.f9786c = savedState5.mAnchorLayoutFromEnd;
        } else {
            c1370b.f9786c = this.f9765k0;
        }
        if (savedState5.mSpanLookupSize > 1) {
            LazySpanLookup lazySpanLookup = this.f9769v0;
            lazySpanLookup.f9781a = savedState5.mSpanLookup;
            lazySpanLookup.f9782b = savedState5.mFullSpanItems;
        }
    }

    /* renamed from: z */
    public boolean m6012z() {
        int m6053q = this.f9772x[0].m6053q(Integer.MIN_VALUE);
        for (int i = 1; i < this.f9770w; i++) {
            if (this.f9772x[i].m6053q(Integer.MIN_VALUE) != m6053q) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes3.dex */
    public static class LazySpanLookup {

        /* renamed from: c */
        public static final int f9780c = 10;

        /* renamed from: a */
        public int[] f9781a;

        /* renamed from: b */
        public List<FullSpanItem> f9782b;

        /* renamed from: a */
        public void m6013a(FullSpanItem fullSpanItem) {
            if (this.f9782b == null) {
                this.f9782b = new ArrayList();
            }
            int size = this.f9782b.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.f9782b.get(i);
                if (fullSpanItem2.mPosition == fullSpanItem.mPosition) {
                    this.f9782b.remove(i);
                }
                if (fullSpanItem2.mPosition >= fullSpanItem.mPosition) {
                    this.f9782b.add(i, fullSpanItem);
                    return;
                }
            }
            this.f9782b.add(fullSpanItem);
        }

        /* renamed from: b */
        public void m6014b() {
            int[] iArr = this.f9781a;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f9782b = null;
        }

        /* renamed from: c */
        public void m6015c(int i) {
            int[] iArr = this.f9781a;
            if (iArr == null) {
                int[] iArr2 = new int[Math.max(i, 10) + 1];
                this.f9781a = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i >= iArr.length) {
                int[] iArr3 = new int[m6027o(i)];
                this.f9781a = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f9781a;
                Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        /* renamed from: d */
        public int m6016d(int i) {
            List<FullSpanItem> list = this.f9782b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f9782b.get(size).mPosition >= i) {
                        this.f9782b.remove(size);
                    }
                }
            }
            return m6020h(i);
        }

        /* renamed from: e */
        public FullSpanItem m6017e(int i, int i2, int i3, boolean z) {
            List<FullSpanItem> list = this.f9782b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                FullSpanItem fullSpanItem = this.f9782b.get(i4);
                int i5 = fullSpanItem.mPosition;
                if (i5 >= i2) {
                    return null;
                }
                if (i5 >= i && (i3 == 0 || fullSpanItem.mGapDir == i3 || (z && fullSpanItem.mHasUnwantedGapAfter))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: f */
        public FullSpanItem m6018f(int i) {
            List<FullSpanItem> list = this.f9782b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f9782b.get(size);
                if (fullSpanItem.mPosition == i) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        /* renamed from: g */
        public int m6019g(int i) {
            int[] iArr = this.f9781a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            return iArr[i];
        }

        /* renamed from: h */
        public int m6020h(int i) {
            int[] iArr = this.f9781a;
            if (iArr == null || i >= iArr.length) {
                return -1;
            }
            int m6021i = m6021i(i);
            if (m6021i == -1) {
                int[] iArr2 = this.f9781a;
                Arrays.fill(iArr2, i, iArr2.length, -1);
                return this.f9781a.length;
            }
            int min = Math.min(m6021i + 1, this.f9781a.length);
            Arrays.fill(this.f9781a, i, min, -1);
            return min;
        }

        /* renamed from: i */
        public final int m6021i(int i) {
            if (this.f9782b == null) {
                return -1;
            }
            FullSpanItem m6018f = m6018f(i);
            if (m6018f != null) {
                this.f9782b.remove(m6018f);
            }
            int size = this.f9782b.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    i2 = -1;
                    break;
                }
                if (this.f9782b.get(i2).mPosition >= i) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem = this.f9782b.get(i2);
            this.f9782b.remove(i2);
            return fullSpanItem.mPosition;
        }

        /* renamed from: j */
        public void m6022j(int i, int i2) {
            int[] iArr = this.f9781a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m6015c(i3);
            int[] iArr2 = this.f9781a;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill(this.f9781a, i, i3, -1);
            m6024l(i, i2);
        }

        /* renamed from: k */
        public void m6023k(int i, int i2) {
            int[] iArr = this.f9781a;
            if (iArr == null || i >= iArr.length) {
                return;
            }
            int i3 = i + i2;
            m6015c(i3);
            int[] iArr2 = this.f9781a;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = this.f9781a;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            m6025m(i, i2);
        }

        /* renamed from: l */
        public final void m6024l(int i, int i2) {
            List<FullSpanItem> list = this.f9782b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f9782b.get(size);
                int i3 = fullSpanItem.mPosition;
                if (i3 >= i) {
                    fullSpanItem.mPosition = i3 + i2;
                }
            }
        }

        /* renamed from: m */
        public final void m6025m(int i, int i2) {
            List<FullSpanItem> list = this.f9782b;
            if (list == null) {
                return;
            }
            int i3 = i + i2;
            for (int size = list.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.f9782b.get(size);
                int i4 = fullSpanItem.mPosition;
                if (i4 >= i) {
                    if (i4 < i3) {
                        this.f9782b.remove(size);
                    } else {
                        fullSpanItem.mPosition = i4 - i2;
                    }
                }
            }
        }

        /* renamed from: n */
        public void m6026n(int i, C1371c c1371c) {
            m6015c(i);
            this.f9781a[i] = c1371c.f9796e;
        }

        /* renamed from: o */
        public int m6027o(int i) {
            int length = this.f9781a.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes3.dex */
        public static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new C1367a();
            int mGapDir;
            int[] mGapPerSpan;
            boolean mHasUnwantedGapAfter;
            int mPosition;

            /* renamed from: androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$a */
            /* loaded from: classes3.dex */
            public class C1367a implements Parcelable.Creator<FullSpanItem> {
                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public FullSpanItem createFromParcel(Parcel parcel) {
                    return new FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public FullSpanItem[] newArray(int i) {
                    return new FullSpanItem[i];
                }
            }

            public FullSpanItem(Parcel parcel) {
                this.mPosition = parcel.readInt();
                this.mGapDir = parcel.readInt();
                this.mHasUnwantedGapAfter = parcel.readInt() == 1;
                int readInt = parcel.readInt();
                if (readInt > 0) {
                    int[] iArr = new int[readInt];
                    this.mGapPerSpan = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public int getGapForSpan(int i) {
                int[] iArr = this.mGapPerSpan;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i];
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.mPosition);
                parcel.writeInt(this.mGapDir);
                parcel.writeInt(this.mHasUnwantedGapAfter ? 1 : 0);
                int[] iArr = this.mGapPerSpan;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.mGapPerSpan);
                }
            }

            public FullSpanItem() {
            }
        }
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.f9761J = i2;
        setSpanCount(i);
        this.f9763Q = new C1381f();
        m5971L();
    }
}
