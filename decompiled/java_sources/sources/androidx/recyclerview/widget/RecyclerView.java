package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.TraceCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.C1308R;
import androidx.recyclerview.widget.C1376a;
import androidx.recyclerview.widget.C1377b;
import androidx.recyclerview.widget.C1386k;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.recyclerview.widget.RunnableC1380e;
import androidx.recyclerview.widget.ViewBoundsCheck;
import com.google.android.material.motion.MotionUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import net.p110sf.saxon.om.StandardNames;

/* loaded from: classes3.dex */
public class RecyclerView extends ViewGroup implements ScrollingView, NestedScrollingChild2, NestedScrollingChild3 {

    /* renamed from: F1 */
    public static final float f9479F1 = 4.0f;

    /* renamed from: G1 */
    public static final boolean f9480G1 = false;

    /* renamed from: H1 */
    public static final int f9481H1 = 1;
    public static final int HORIZONTAL = 0;

    /* renamed from: I1 */
    public static final int f9482I1 = 2000;
    public static final int INVALID_TYPE = -1;

    /* renamed from: J1 */
    public static final String f9483J1 = "RV Scroll";

    /* renamed from: K1 */
    public static final String f9484K1 = "RV OnLayout";

    /* renamed from: L1 */
    public static final String f9485L1 = "RV FullInvalidate";

    /* renamed from: M1 */
    public static final String f9486M1 = "RV PartialInvalidate";

    /* renamed from: N1 */
    public static final String f9487N1 = "RV OnBindView";
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;

    /* renamed from: O1 */
    public static final String f9488O1 = "RV Prefetch";

    /* renamed from: P1 */
    public static final String f9489P1 = "RV Nested Prefetch";

    /* renamed from: Q1 */
    public static final String f9490Q1 = "RV CreateView";

    /* renamed from: R1 */
    public static final Class<?>[] f9491R1;

    /* renamed from: S1 */
    public static final int f9492S1 = -1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;

    /* renamed from: T1 */
    public static final long f9493T1 = Long.MAX_VALUE;
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;

    /* renamed from: U1 */
    public static final Interpolator f9494U1;
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;

    /* renamed from: V1 */
    public static final C1360k f9495V1;
    public static final int VERTICAL = 1;

    /* renamed from: s1 */
    public static final String f9496s1 = "RecyclerView";

    /* renamed from: t1 */
    public static final boolean f9497t1 = false;

    /* renamed from: u1 */
    public static final boolean f9498u1 = false;

    /* renamed from: w1 */
    public static final float f9500w1 = 0.015f;

    /* renamed from: x1 */
    public static final float f9501x1 = 0.35f;

    /* renamed from: A0 */
    public int f9504A0;

    /* renamed from: B0 */
    @NonNull
    public EdgeEffectFactory f9505B0;

    /* renamed from: C0 */
    public EdgeEffect f9506C0;

    /* renamed from: D0 */
    public EdgeEffect f9507D0;

    /* renamed from: E0 */
    public EdgeEffect f9508E0;

    /* renamed from: F0 */
    public EdgeEffect f9509F0;

    /* renamed from: G0 */
    public ItemAnimator f9510G0;

    /* renamed from: H0 */
    public int f9511H0;

    /* renamed from: I0 */
    public int f9512I0;

    /* renamed from: J */
    @VisibleForTesting
    public boolean f9513J;

    /* renamed from: J0 */
    public VelocityTracker f9514J0;

    /* renamed from: K0 */
    public int f9515K0;

    /* renamed from: L0 */
    public int f9516L0;

    /* renamed from: M0 */
    public int f9517M0;

    /* renamed from: N0 */
    public int f9518N0;

    /* renamed from: O */
    public int f9519O;

    /* renamed from: O0 */
    public int f9520O0;

    /* renamed from: P0 */
    public OnFlingListener f9521P0;

    /* renamed from: Q */
    public boolean f9522Q;

    /* renamed from: Q0 */
    public final int f9523Q0;

    /* renamed from: R0 */
    public final int f9524R0;

    /* renamed from: S0 */
    public float f9525S0;

    /* renamed from: T0 */
    public float f9526T0;

    /* renamed from: U0 */
    public boolean f9527U0;

    /* renamed from: V0 */
    public final RunnableC1361l f9528V0;

    /* renamed from: W0 */
    public RunnableC1380e f9529W0;

    /* renamed from: X0 */
    public RunnableC1380e.b f9530X0;

    /* renamed from: Y0 */
    public final State f9531Y0;

    /* renamed from: Z0 */
    public OnScrollListener f9532Z0;

    /* renamed from: a1 */
    public List<OnScrollListener> f9533a1;

    /* renamed from: b1 */
    public boolean f9534b1;

    /* renamed from: c1 */
    public boolean f9535c1;

    /* renamed from: d1 */
    public ItemAnimator.InterfaceC1345a f9536d1;

    /* renamed from: e */
    public final float f9537e;

    /* renamed from: e1 */
    public boolean f9538e1;

    /* renamed from: f */
    public final C1359j f9539f;

    /* renamed from: f1 */
    public RecyclerViewAccessibilityDelegate f9540f1;

    /* renamed from: g */
    public final Recycler f9541g;

    /* renamed from: g1 */
    public ChildDrawingOrderCallback f9542g1;

    /* renamed from: h */
    public SavedState f9543h;

    /* renamed from: h1 */
    public final int[] f9544h1;

    /* renamed from: i */
    public C1376a f9545i;

    /* renamed from: i1 */
    public NestedScrollingChildHelper f9546i1;

    /* renamed from: j */
    public C1377b f9547j;

    /* renamed from: j1 */
    public final int[] f9548j1;

    /* renamed from: k */
    public final C1386k f9549k;

    /* renamed from: k0 */
    public boolean f9550k0;

    /* renamed from: k1 */
    public final int[] f9551k1;

    /* renamed from: l */
    public boolean f9552l;

    /* renamed from: l1 */
    public final int[] f9553l1;

    /* renamed from: m */
    public final Runnable f9554m;

    /* renamed from: m1 */
    @VisibleForTesting
    public final List<ViewHolder> f9555m1;

    /* renamed from: n */
    public final Rect f9556n;

    /* renamed from: n1 */
    public Runnable f9557n1;

    /* renamed from: o */
    public final Rect f9558o;

    /* renamed from: o1 */
    public boolean f9559o1;

    /* renamed from: p */
    public final RectF f9560p;

    /* renamed from: p1 */
    public int f9561p1;

    /* renamed from: q */
    public Adapter f9562q;

    /* renamed from: q0 */
    public boolean f9563q0;

    /* renamed from: q1 */
    public int f9564q1;

    /* renamed from: r */
    @VisibleForTesting
    public LayoutManager f9565r;

    /* renamed from: r1 */
    public final C1386k.b f9566r1;

    /* renamed from: s */
    public RecyclerListener f9567s;

    /* renamed from: t */
    public final List<RecyclerListener> f9568t;

    /* renamed from: t0 */
    public int f9569t0;

    /* renamed from: u */
    public final ArrayList<ItemDecoration> f9570u;

    /* renamed from: u0 */
    public boolean f9571u0;

    /* renamed from: v */
    public final ArrayList<OnItemTouchListener> f9572v;

    /* renamed from: v0 */
    public final AccessibilityManager f9573v0;

    /* renamed from: w */
    public OnItemTouchListener f9574w;

    /* renamed from: w0 */
    public List<OnChildAttachStateChangeListener> f9575w0;

    /* renamed from: x */
    public boolean f9576x;

    /* renamed from: x0 */
    public boolean f9577x0;

    /* renamed from: y */
    public boolean f9578y;

    /* renamed from: y0 */
    public boolean f9579y0;

    /* renamed from: z */
    public boolean f9580z;

    /* renamed from: z0 */
    public int f9581z0;

    /* renamed from: v1 */
    public static final int[] f9499v1 = {R.attr.nestedScrollingEnabled};

    /* renamed from: y1 */
    public static final float f9502y1 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: z1 */
    public static final boolean f9503z1 = false;

    /* renamed from: A1 */
    public static final boolean f9474A1 = true;

    /* renamed from: B1 */
    public static final boolean f9475B1 = true;

    /* renamed from: C1 */
    public static final boolean f9476C1 = true;

    /* renamed from: D1 */
    public static final boolean f9477D1 = false;

    /* renamed from: E1 */
    public static final boolean f9478E1 = false;

    /* loaded from: classes3.dex */
    public static abstract class Adapter<VH extends ViewHolder> {

        /* renamed from: a */
        public final C1357h f9582a = new C1357h();

        /* renamed from: b */
        public boolean f9583b = false;

        /* renamed from: c */
        public StateRestorationPolicy f9584c = StateRestorationPolicy.ALLOW;

        /* loaded from: classes3.dex */
        public enum StateRestorationPolicy {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        /* renamed from: a */
        public boolean m5778a() {
            int i = C1356g.f9702a[this.f9584c.ordinal()];
            if (i != 1) {
                return i != 2 || getItemCount() > 0;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void bindViewHolder(@NonNull VH vh, int i) {
            boolean z = vh.f9696r == null;
            if (z) {
                vh.f9680b = i;
                if (hasStableIds()) {
                    vh.f9682d = getItemId(i);
                }
                vh.m5900z(1, 519);
                TraceCompat.beginSection(RecyclerView.f9487N1);
            }
            vh.f9696r = this;
            onBindViewHolder(vh, i, vh.m5884j());
            if (z) {
                vh.m5878d();
                ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
                if (layoutParams instanceof LayoutParams) {
                    ((LayoutParams) layoutParams).mInsetsDirty = true;
                }
                TraceCompat.endSection();
            }
        }

        @NonNull
        public final VH createViewHolder(@NonNull ViewGroup viewGroup, int i) {
            try {
                TraceCompat.beginSection(RecyclerView.f9490Q1);
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                onCreateViewHolder.f9683e = i;
                return onCreateViewHolder;
            } finally {
                TraceCompat.endSection();
            }
        }

        public int findRelativeAdapterPositionIn(@NonNull Adapter<? extends ViewHolder> adapter, @NonNull ViewHolder viewHolder, int i) {
            if (adapter == this) {
                return i;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1L;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        @NonNull
        public final StateRestorationPolicy getStateRestorationPolicy() {
            return this.f9584c;
        }

        public final boolean hasObservers() {
            return this.f9582a.m5922a();
        }

        public final boolean hasStableIds() {
            return this.f9583b;
        }

        public final void notifyDataSetChanged() {
            this.f9582a.m5923b();
        }

        public final void notifyItemChanged(int i) {
            this.f9582a.m5925d(i, 1);
        }

        public final void notifyItemInserted(int i) {
            this.f9582a.m5927f(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.f9582a.m5924c(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.f9582a.m5925d(i, i2);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.f9582a.m5927f(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.f9582a.m5928g(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.f9582a.m5928g(i, 1);
        }

        public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(@NonNull VH vh, int i);

        public void onBindViewHolder(@NonNull VH vh, int i, @NonNull List<Object> list) {
            onBindViewHolder(vh, i);
        }

        @NonNull
        public abstract VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i);

        public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(@NonNull VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(@NonNull VH vh) {
        }

        public void onViewDetachedFromWindow(@NonNull VH vh) {
        }

        public void onViewRecycled(@NonNull VH vh) {
        }

        public void registerAdapterDataObserver(@NonNull AdapterDataObserver adapterDataObserver) {
            this.f9582a.registerObserver(adapterDataObserver);
        }

        public void setHasStableIds(boolean z) {
            if (hasObservers()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f9583b = z;
        }

        public void setStateRestorationPolicy(@NonNull StateRestorationPolicy stateRestorationPolicy) {
            this.f9584c = stateRestorationPolicy;
            this.f9582a.m5929h();
        }

        public void unregisterAdapterDataObserver(@NonNull AdapterDataObserver adapterDataObserver) {
            this.f9582a.unregisterObserver(adapterDataObserver);
        }

        public final void notifyItemChanged(int i, @Nullable Object obj) {
            this.f9582a.m5926e(i, 1, obj);
        }

        public final void notifyItemRangeChanged(int i, int i2, @Nullable Object obj) {
            this.f9582a.m5926e(i, i2, obj);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class AdapterDataObserver {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i, int i2) {
        }

        public void onItemRangeInserted(int i, int i2) {
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
        }

        public void onItemRangeRemoved(int i, int i2) {
        }

        public void onStateRestorationPolicyChanged() {
        }

        public void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            onItemRangeChanged(i, i2);
        }
    }

    /* loaded from: classes3.dex */
    public interface ChildDrawingOrderCallback {
        int onGetChildDrawingOrder(int i, int i2);
    }

    /* loaded from: classes3.dex */
    public static class EdgeEffectFactory {
        public static final int DIRECTION_BOTTOM = 3;
        public static final int DIRECTION_LEFT = 0;
        public static final int DIRECTION_RIGHT = 2;
        public static final int DIRECTION_TOP = 1;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes3.dex */
        public @interface EdgeDirection {
        }

        @NonNull
        public EdgeEffect createEdgeEffect(@NonNull RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ItemAnimator {
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_CHANGED = 2;
        public static final int FLAG_INVALIDATED = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_REMOVED = 8;

        /* renamed from: a */
        public InterfaceC1345a f9585a = null;

        /* renamed from: b */
        public ArrayList<ItemAnimatorFinishedListener> f9586b = new ArrayList<>();

        /* renamed from: c */
        public long f9587c = 120;

        /* renamed from: d */
        public long f9588d = 120;

        /* renamed from: e */
        public long f9589e = 250;

        /* renamed from: f */
        public long f9590f = 250;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes3.dex */
        public @interface AdapterChanges {
        }

        /* loaded from: classes3.dex */
        public interface ItemAnimatorFinishedListener {
            void onAnimationsFinished();
        }

        /* loaded from: classes3.dex */
        public static class ItemHolderInfo {
            public int bottom;
            public int changeFlags;
            public int left;
            public int right;
            public int top;

            @NonNull
            public ItemHolderInfo setFrom(@NonNull ViewHolder viewHolder) {
                return setFrom(viewHolder, 0);
            }

            @NonNull
            public ItemHolderInfo setFrom(@NonNull ViewHolder viewHolder, int i) {
                View view = viewHolder.itemView;
                this.left = view.getLeft();
                this.top = view.getTop();
                this.right = view.getRight();
                this.bottom = view.getBottom();
                return this;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$ItemAnimator$a */
        /* loaded from: classes3.dex */
        public interface InterfaceC1345a {
            /* renamed from: a */
            void mo5781a(@NonNull ViewHolder viewHolder);
        }

        /* renamed from: a */
        public static int m5779a(ViewHolder viewHolder) {
            int i = viewHolder.f9687i & 14;
            if (viewHolder.m5889o()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int oldPosition = viewHolder.getOldPosition();
            int absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition();
            return (oldPosition == -1 || absoluteAdapterPosition == -1 || oldPosition == absoluteAdapterPosition) ? i : i | 2048;
        }

        public abstract boolean animateAppearance(@NonNull ViewHolder viewHolder, @Nullable ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        public abstract boolean animateChange(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        public abstract boolean animateDisappearance(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @Nullable ItemHolderInfo itemHolderInfo2);

        public abstract boolean animatePersistence(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        /* renamed from: b */
        public void m5780b(InterfaceC1345a interfaceC1345a) {
            this.f9585a = interfaceC1345a;
        }

        public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder) {
            return true;
        }

        public final void dispatchAnimationFinished(@NonNull ViewHolder viewHolder) {
            onAnimationFinished(viewHolder);
            InterfaceC1345a interfaceC1345a = this.f9585a;
            if (interfaceC1345a != null) {
                interfaceC1345a.mo5781a(viewHolder);
            }
        }

        public final void dispatchAnimationStarted(@NonNull ViewHolder viewHolder) {
            onAnimationStarted(viewHolder);
        }

        public final void dispatchAnimationsFinished() {
            int size = this.f9586b.size();
            for (int i = 0; i < size; i++) {
                this.f9586b.get(i).onAnimationsFinished();
            }
            this.f9586b.clear();
        }

        public abstract void endAnimation(@NonNull ViewHolder viewHolder);

        public abstract void endAnimations();

        public long getAddDuration() {
            return this.f9587c;
        }

        public long getChangeDuration() {
            return this.f9590f;
        }

        public long getMoveDuration() {
            return this.f9589e;
        }

        public long getRemoveDuration() {
            return this.f9588d;
        }

        public abstract boolean isRunning();

        public final boolean isRunning(@Nullable ItemAnimatorFinishedListener itemAnimatorFinishedListener) {
            boolean isRunning = isRunning();
            if (itemAnimatorFinishedListener != null) {
                if (!isRunning) {
                    itemAnimatorFinishedListener.onAnimationsFinished();
                } else {
                    this.f9586b.add(itemAnimatorFinishedListener);
                }
            }
            return isRunning;
        }

        @NonNull
        public ItemHolderInfo obtainHolderInfo() {
            return new ItemHolderInfo();
        }

        public void onAnimationFinished(@NonNull ViewHolder viewHolder) {
        }

        public void onAnimationStarted(@NonNull ViewHolder viewHolder) {
        }

        @NonNull
        public ItemHolderInfo recordPostLayoutInformation(@NonNull State state, @NonNull ViewHolder viewHolder) {
            return obtainHolderInfo().setFrom(viewHolder);
        }

        @NonNull
        public ItemHolderInfo recordPreLayoutInformation(@NonNull State state, @NonNull ViewHolder viewHolder, int i, @NonNull List<Object> list) {
            return obtainHolderInfo().setFrom(viewHolder);
        }

        public abstract void runPendingAnimations();

        public void setAddDuration(long j) {
            this.f9587c = j;
        }

        public void setChangeDuration(long j) {
            this.f9590f = j;
        }

        public void setMoveDuration(long j) {
            this.f9589e = j;
        }

        public void setRemoveDuration(long j) {
            this.f9588d = j;
        }

        public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder, @NonNull List<Object> list) {
            return canReuseUpdatedViewHolder(viewHolder);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ItemDecoration {
        @Deprecated
        public void getItemOffsets(@NonNull Rect rect, int i, @NonNull RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        @Deprecated
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull State state) {
            getItemOffsets(rect, ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition(), recyclerView);
        }

        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull State state) {
            onDraw(canvas, recyclerView);
        }

        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull State state) {
            onDrawOver(canvas, recyclerView);
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class LayoutManager {

        /* renamed from: e */
        public C1377b f9591e;

        /* renamed from: f */
        public RecyclerView f9592f;

        /* renamed from: g */
        public final ViewBoundsCheck.InterfaceC1373b f9593g;

        /* renamed from: h */
        public final ViewBoundsCheck.InterfaceC1373b f9594h;

        /* renamed from: i */
        public ViewBoundsCheck f9595i;

        /* renamed from: j */
        public ViewBoundsCheck f9596j;

        /* renamed from: k */
        @Nullable
        public SmoothScroller f9597k;

        /* renamed from: l */
        public boolean f9598l;

        /* renamed from: m */
        public boolean f9599m;

        /* renamed from: n */
        public boolean f9600n;

        /* renamed from: o */
        public boolean f9601o;

        /* renamed from: p */
        public boolean f9602p;

        /* renamed from: q */
        public int f9603q;

        /* renamed from: r */
        public boolean f9604r;

        /* renamed from: s */
        public int f9605s;

        /* renamed from: t */
        public int f9606t;

        /* renamed from: u */
        public int f9607u;

        /* renamed from: v */
        public int f9608v;

        /* loaded from: classes3.dex */
        public interface LayoutPrefetchRegistry {
            void addPosition(int i, int i2);
        }

        /* loaded from: classes3.dex */
        public static class Properties {
            public int orientation;
            public boolean reverseLayout;
            public int spanCount;
            public boolean stackFromEnd;
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$LayoutManager$a */
        /* loaded from: classes3.dex */
        public class C1346a implements ViewBoundsCheck.InterfaceC1373b {
            public C1346a() {
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: a */
            public View mo5804a(int i) {
                return LayoutManager.this.getChildAt(i);
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: b */
            public int mo5805b() {
                return LayoutManager.this.getWidth() - LayoutManager.this.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: c */
            public int mo5806c(View view) {
                return LayoutManager.this.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: d */
            public int mo5807d() {
                return LayoutManager.this.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: e */
            public int mo5808e(View view) {
                return LayoutManager.this.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$LayoutManager$b */
        /* loaded from: classes3.dex */
        public class C1347b implements ViewBoundsCheck.InterfaceC1373b {
            public C1347b() {
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: a */
            public View mo5804a(int i) {
                return LayoutManager.this.getChildAt(i);
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: b */
            public int mo5805b() {
                return LayoutManager.this.getHeight() - LayoutManager.this.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: c */
            public int mo5806c(View view) {
                return LayoutManager.this.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: d */
            public int mo5807d() {
                return LayoutManager.this.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.ViewBoundsCheck.InterfaceC1373b
            /* renamed from: e */
            public int mo5808e(View view) {
                return LayoutManager.this.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
            }
        }

        public LayoutManager() {
            C1346a c1346a = new C1346a();
            this.f9593g = c1346a;
            C1347b c1347b = new C1347b();
            this.f9594h = c1347b;
            this.f9595i = new ViewBoundsCheck(c1346a);
            this.f9596j = new ViewBoundsCheck(c1347b);
            this.f9598l = false;
            this.f9599m = false;
            this.f9600n = false;
            this.f9601o = true;
            this.f9602p = true;
        }

        public static int chooseSize(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
        
            if (r3 >= 0) goto L8;
         */
        @java.lang.Deprecated
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(int r1, int r2, int r3, boolean r4) {
            /*
                int r1 = r1 - r2
                r2 = 0
                int r1 = java.lang.Math.max(r2, r1)
                r0 = 1073741824(0x40000000, float:2.0)
                if (r4 == 0) goto Lf
                if (r3 < 0) goto Ld
                goto L11
            Ld:
                r3 = r2
                goto L1e
            Lf:
                if (r3 < 0) goto L13
            L11:
                r2 = r0
                goto L1e
            L13:
                r4 = -1
                if (r3 != r4) goto L18
                r3 = r1
                goto L11
            L18:
                r4 = -2
                if (r3 != r4) goto Ld
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1
            L1e:
                int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.getChildMeasureSpec(int, int, int, boolean):int");
        }

        public static Properties getProperties(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
            Properties properties = new Properties();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1308R.styleable.RecyclerView, i, i2);
            properties.orientation = obtainStyledAttributes.getInt(C1308R.styleable.RecyclerView_android_orientation, 1);
            properties.spanCount = obtainStyledAttributes.getInt(C1308R.styleable.RecyclerView_spanCount, 1);
            properties.reverseLayout = obtainStyledAttributes.getBoolean(C1308R.styleable.RecyclerView_reverseLayout, false);
            properties.stackFromEnd = obtainStyledAttributes.getBoolean(C1308R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return properties;
        }

        /* renamed from: h */
        public static boolean m5782h(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        /* renamed from: a */
        public final void m5783a(View view, int i, boolean z) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (z || m5677V.m5890p()) {
                this.f9592f.f9549k.m6246b(m5677V);
            } else {
                this.f9592f.f9549k.m6260p(m5677V);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (m5677V.m5874F() || m5677V.m5891q()) {
                if (m5677V.m5891q()) {
                    m5677V.m5873E();
                } else {
                    m5677V.m5879e();
                }
                this.f9591e.m6113c(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f9592f) {
                int m6123m = this.f9591e.m6123m(view);
                if (i == -1) {
                    i = this.f9591e.m6117g();
                }
                if (m6123m == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f9592f.indexOfChild(view) + this.f9592f.m5709M());
                }
                if (m6123m != i) {
                    this.f9592f.f9565r.moveView(m6123m, i);
                }
            } else {
                this.f9591e.m6111a(view, i, false);
                layoutParams.mInsetsDirty = true;
                SmoothScroller smoothScroller = this.f9597k;
                if (smoothScroller != null && smoothScroller.isRunning()) {
                    this.f9597k.onChildAttachedToWindow(view);
                }
            }
            if (layoutParams.mPendingInvalidate) {
                m5677V.itemView.invalidate();
                layoutParams.mPendingInvalidate = false;
            }
        }

        @SuppressLint({"UnknownNullness"})
        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        @SuppressLint({"UnknownNullness"})
        public void addView(View view) {
            addView(view, -1);
        }

        public void assertInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                recyclerView.m5745j(str);
            }
        }

        @SuppressLint({"UnknownNullness"})
        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                recyclerView.m5747k(str);
            }
        }

        public void attachView(@NonNull View view, int i, LayoutParams layoutParams) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (m5677V.m5890p()) {
                this.f9592f.f9549k.m6246b(m5677V);
            } else {
                this.f9592f.f9549k.m6260p(m5677V);
            }
            this.f9591e.m6113c(view, i, layoutParams, m5677V.m5890p());
        }

        /* renamed from: b */
        public final void m5784b(int i, @NonNull View view) {
            this.f9591e.m6114d(i);
        }

        /* renamed from: c */
        public void m5785c(RecyclerView recyclerView) {
            this.f9599m = true;
            onAttachedToWindow(recyclerView);
        }

        public void calculateItemDecorationsForChild(@NonNull View view, @NonNull Rect rect) {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.m5731Z(view));
            }
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public boolean checkLayoutParams(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        @SuppressLint({"UnknownNullness"})
        public void collectAdjacentPrefetchPositions(int i, int i2, State state, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        @SuppressLint({"UnknownNullness"})
        public void collectInitialPrefetchPositions(int i, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public int computeHorizontalScrollExtent(@NonNull State state) {
            return 0;
        }

        public int computeHorizontalScrollOffset(@NonNull State state) {
            return 0;
        }

        public int computeHorizontalScrollRange(@NonNull State state) {
            return 0;
        }

        public int computeVerticalScrollExtent(@NonNull State state) {
            return 0;
        }

        public int computeVerticalScrollOffset(@NonNull State state) {
            return 0;
        }

        public int computeVerticalScrollRange(@NonNull State state) {
            return 0;
        }

        /* renamed from: d */
        public void m5786d(RecyclerView recyclerView, Recycler recycler) {
            this.f9599m = false;
            onDetachedFromWindow(recyclerView, recycler);
        }

        public void detachAndScrapAttachedViews(@NonNull Recycler recycler) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                m5796o(recycler, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(@NonNull View view, @NonNull Recycler recycler) {
            m5796o(recycler, this.f9591e.m6123m(view), view);
        }

        public void detachAndScrapViewAt(int i, @NonNull Recycler recycler) {
            m5796o(recycler, i, getChildAt(i));
        }

        public void detachView(@NonNull View view) {
            int m6123m = this.f9591e.m6123m(view);
            if (m6123m >= 0) {
                m5784b(m6123m, view);
            }
        }

        public void detachViewAt(int i) {
            m5784b(i, getChildAt(i));
        }

        /* renamed from: e */
        public final int[] m5787e(View view, Rect rect) {
            int[] iArr = new int[2];
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width2 = rect.width() + left;
            int height2 = rect.height() + top;
            int i = left - paddingLeft;
            int min = Math.min(0, i);
            int i2 = top - paddingTop;
            int min2 = Math.min(0, i2);
            int i3 = width2 - width;
            int max = Math.max(0, i3);
            int max2 = Math.max(0, height2 - height);
            if (getLayoutDirection() != 1) {
                if (min == 0) {
                    min = Math.min(i, max);
                }
                max = min;
            } else if (max == 0) {
                max = Math.max(min, i3);
            }
            if (min2 == 0) {
                min2 = Math.min(i2, max2);
            }
            iArr[0] = max;
            iArr[1] = min2;
            return iArr;
        }

        @SuppressLint({"UnknownNullness"})
        public void endAnimation(View view) {
            ItemAnimator itemAnimator = this.f9592f.f9510G0;
            if (itemAnimator != null) {
                itemAnimator.endAnimation(RecyclerView.m5677V(view));
            }
        }

        /* renamed from: f */
        public boolean m5788f() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        public View findContainingItemView(@NonNull View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.f9591e.m6124n(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        @Nullable
        public View findViewByPosition(int i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                ViewHolder m5677V = RecyclerView.m5677V(childAt);
                if (m5677V != null && m5677V.getLayoutPosition() == i && !m5677V.m5871C() && (this.f9592f.f9531Y0.isPreLayout() || !m5677V.m5890p())) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: g */
        public final boolean m5789g(RecyclerView recyclerView, int i, int i2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            Rect rect = this.f9592f.f9556n;
            getDecoratedBoundsWithMargins(focusedChild, rect);
            return rect.left - i < width && rect.right - i > paddingLeft && rect.top - i2 < height && rect.bottom - i2 > paddingTop;
        }

        @SuppressLint({"UnknownNullness"})
        public abstract LayoutParams generateDefaultLayoutParams();

        @SuppressLint({"UnknownNullness"})
        public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new LayoutParams(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
        }

        @Nullable
        public View getChildAt(int i) {
            C1377b c1377b = this.f9591e;
            if (c1377b != null) {
                return c1377b.m6116f(i);
            }
            return null;
        }

        public int getChildCount() {
            C1377b c1377b = this.f9591e;
            if (c1377b != null) {
                return c1377b.m6117g();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.f9592f;
            return recyclerView != null && recyclerView.f9552l;
        }

        public int getColumnCountForAccessibility(@NonNull Recycler recycler, @NonNull State state) {
            return -1;
        }

        public int getDecoratedBottom(@NonNull View view) {
            return view.getBottom() + getBottomDecorationHeight(view);
        }

        public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
            RecyclerView.m5679W(view, rect);
        }

        public int getDecoratedLeft(@NonNull View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(@NonNull View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(@NonNull View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(@NonNull View view) {
            return view.getRight() + getRightDecorationWidth(view);
        }

        public int getDecoratedTop(@NonNull View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        @Nullable
        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f9591e.m6124n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        @Px
        public int getHeight() {
            return this.f9608v;
        }

        public int getHeightMode() {
            return this.f9606t;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.f9592f;
            Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public int getItemViewType(@NonNull View view) {
            return RecyclerView.m5677V(view).getItemViewType();
        }

        public int getLayoutDirection() {
            return ViewCompat.getLayoutDirection(this.f9592f);
        }

        public int getLeftDecorationWidth(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.left;
        }

        @Px
        public int getMinimumHeight() {
            return ViewCompat.getMinimumHeight(this.f9592f);
        }

        @Px
        public int getMinimumWidth() {
            return ViewCompat.getMinimumWidth(this.f9592f);
        }

        @Px
        public int getPaddingBottom() {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        @Px
        public int getPaddingEnd() {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                return ViewCompat.getPaddingEnd(recyclerView);
            }
            return 0;
        }

        @Px
        public int getPaddingLeft() {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        @Px
        public int getPaddingRight() {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        @Px
        public int getPaddingStart() {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                return ViewCompat.getPaddingStart(recyclerView);
            }
            return 0;
        }

        @Px
        public int getPaddingTop() {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getPosition(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
        }

        public int getRightDecorationWidth(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.right;
        }

        public int getRowCountForAccessibility(@NonNull Recycler recycler, @NonNull State state) {
            return -1;
        }

        public int getSelectionModeForAccessibility(@NonNull Recycler recycler, @NonNull State state) {
            return 0;
        }

        public int getTopDecorationHeight(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.top;
        }

        public void getTransformedBoundingBox(@NonNull View view, boolean z, @NonNull Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f9592f != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f9592f.f9560p;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        @Px
        public int getWidth() {
            return this.f9607u;
        }

        public int getWidthMode() {
            return this.f9605s;
        }

        public boolean hasFocus() {
            RecyclerView recyclerView = this.f9592f;
            return recyclerView != null && recyclerView.hasFocus();
        }

        /* renamed from: i */
        public void m5790i(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            RecyclerView recyclerView = this.f9592f;
            onInitializeAccessibilityNodeInfo(recyclerView.f9541g, recyclerView.f9531Y0, accessibilityNodeInfoCompat);
        }

        public void ignoreView(@NonNull View view) {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.f9592f;
            if (parent != recyclerView || recyclerView.indexOfChild(view) == -1) {
                throw new IllegalArgumentException("View should be fully attached to be ignored" + this.f9592f.m5709M());
            }
            ViewHolder m5677V = RecyclerView.m5677V(view);
            m5677V.m5876b(128);
            this.f9592f.f9549k.m6261q(m5677V);
        }

        public boolean isAttachedToWindow() {
            return this.f9599m;
        }

        public boolean isAutoMeasureEnabled() {
            return this.f9600n;
        }

        public boolean isFocused() {
            RecyclerView recyclerView = this.f9592f;
            return recyclerView != null && recyclerView.isFocused();
        }

        public final boolean isItemPrefetchEnabled() {
            return this.f9602p;
        }

        public boolean isLayoutHierarchical(@NonNull Recycler recycler, @NonNull State state) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.f9601o;
        }

        public boolean isSmoothScrolling() {
            SmoothScroller smoothScroller = this.f9597k;
            return smoothScroller != null && smoothScroller.isRunning();
        }

        public boolean isViewPartiallyVisible(@NonNull View view, boolean z, boolean z2) {
            boolean z3 = this.f9595i.m6074b(view, 24579) && this.f9596j.m6074b(view, 24579);
            return z ? z3 : !z3;
        }

        /* renamed from: j */
        public void m5791j(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (m5677V == null || m5677V.m5890p() || this.f9591e.m6124n(m5677V.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.f9592f;
            onInitializeAccessibilityNodeInfoForItem(recyclerView.f9541g, recyclerView.f9531Y0, view, accessibilityNodeInfoCompat);
        }

        /* renamed from: k */
        public void m5792k(SmoothScroller smoothScroller) {
            if (this.f9597k == smoothScroller) {
                this.f9597k = null;
            }
        }

        /* renamed from: l */
        public boolean m5793l(int i, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.f9592f;
            return performAccessibilityAction(recyclerView.f9541g, recyclerView.f9531Y0, i, bundle);
        }

        public void layoutDecorated(@NonNull View view, int i, int i2, int i3, int i4) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            view.layout(i + rect.left, i2 + rect.top, i3 - rect.right, i4 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(@NonNull View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.mDecorInsets;
            view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        /* renamed from: m */
        public boolean m5794m(@NonNull View view, int i, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.f9592f;
            return performAccessibilityActionForItem(recyclerView.f9541g, recyclerView.f9531Y0, view, i, bundle);
        }

        public void measureChild(@NonNull View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect m5731Z = this.f9592f.m5731Z(view);
            int i3 = i + m5731Z.left + m5731Z.right;
            int i4 = i2 + m5731Z.top + m5731Z.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + i3, ((ViewGroup.MarginLayoutParams) layoutParams).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, canScrollVertically());
            if (m5801t(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void measureChildWithMargins(@NonNull View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect m5731Z = this.f9592f.m5731Z(view);
            int i3 = i + m5731Z.left + m5731Z.right;
            int i4 = i2 + m5731Z.top + m5731Z.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i3, ((ViewGroup.MarginLayoutParams) layoutParams).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i4, ((ViewGroup.MarginLayoutParams) layoutParams).height, canScrollVertically());
            if (m5801t(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void moveView(int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                detachViewAt(i);
                attachView(childAt, i2);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f9592f.toString());
            }
        }

        /* renamed from: n */
        public void m5795n(Recycler recycler) {
            int m5840h = recycler.m5840h();
            for (int i = m5840h - 1; i >= 0; i--) {
                View m5843k = recycler.m5843k(i);
                ViewHolder m5677V = RecyclerView.m5677V(m5843k);
                if (!m5677V.m5871C()) {
                    m5677V.setIsRecyclable(false);
                    if (m5677V.m5892r()) {
                        this.f9592f.removeDetachedView(m5843k, false);
                    }
                    ItemAnimator itemAnimator = this.f9592f.f9510G0;
                    if (itemAnimator != null) {
                        itemAnimator.endAnimation(m5677V);
                    }
                    m5677V.setIsRecyclable(true);
                    recycler.m5858z(m5843k);
                }
            }
            recycler.m5836d();
            if (m5840h > 0) {
                this.f9592f.invalidate();
            }
        }

        /* renamed from: o */
        public final void m5796o(Recycler recycler, int i, View view) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (m5677V.m5871C()) {
                return;
            }
            if (m5677V.m5889o() && !m5677V.m5890p() && !this.f9592f.f9562q.hasStableIds()) {
                removeViewAt(i);
                recycler.m5823C(m5677V);
            } else {
                detachViewAt(i);
                recycler.m5824D(view);
                this.f9592f.f9549k.m6255k(m5677V);
            }
        }

        public void offsetChildrenHorizontal(@Px int i) {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i);
            }
        }

        public void offsetChildrenVertical(@Px int i) {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i);
            }
        }

        public void onAdapterChanged(@Nullable Adapter adapter, @Nullable Adapter adapter2) {
        }

        public boolean onAddFocusables(@NonNull RecyclerView recyclerView, @NonNull ArrayList<View> arrayList, int i, int i2) {
            return false;
        }

        @CallSuper
        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        @Nullable
        public View onFocusSearchFailed(@NonNull View view, int i, @NonNull Recycler recycler, @NonNull State state) {
            return null;
        }

        public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f9592f;
            onInitializeAccessibilityEvent(recyclerView.f9541g, recyclerView.f9531Y0, accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(@NonNull Recycler recycler, @NonNull State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.f9592f.canScrollVertically(-1) || this.f9592f.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (this.f9592f.canScrollVertically(1) || this.f9592f.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCountForAccessibility(recycler, state), getColumnCountForAccessibility(recycler, state), isLayoutHierarchical(recycler, state), getSelectionModeForAccessibility(recycler, state)));
        }

        public void onInitializeAccessibilityNodeInfoForItem(@NonNull Recycler recycler, @NonNull State state, @NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        @Nullable
        public View onInterceptFocusSearch(@NonNull View view, int i) {
            return null;
        }

        public void onItemsAdded(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsChanged(@NonNull RecyclerView recyclerView) {
        }

        public void onItemsMoved(@NonNull RecyclerView recyclerView, int i, int i2, int i3) {
        }

        public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i, int i2) {
        }

        @SuppressLint({"UnknownNullness"})
        public void onLayoutChildren(Recycler recycler, State state) {
            Log.e(RecyclerView.f9496s1, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        @SuppressLint({"UnknownNullness"})
        public void onLayoutCompleted(State state) {
        }

        public void onMeasure(@NonNull Recycler recycler, @NonNull State state, int i, int i2) {
            this.f9592f.m5768v(i, i2);
        }

        @Deprecated
        public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull View view, @Nullable View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        @SuppressLint({"UnknownNullness"})
        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        @Nullable
        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int i) {
        }

        /* renamed from: p */
        public void m5797p(RecyclerView recyclerView) {
            m5798q(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public boolean performAccessibilityAction(@NonNull Recycler recycler, @NonNull State state, int i, @Nullable Bundle bundle) {
            int paddingTop;
            int paddingLeft;
            int i2;
            int i3;
            if (this.f9592f == null) {
                return false;
            }
            int height = getHeight();
            int width = getWidth();
            Rect rect = new Rect();
            if (this.f9592f.getMatrix().isIdentity() && this.f9592f.getGlobalVisibleRect(rect)) {
                height = rect.height();
                width = rect.width();
            }
            if (i == 4096) {
                paddingTop = this.f9592f.canScrollVertically(1) ? (height - getPaddingTop()) - getPaddingBottom() : 0;
                if (this.f9592f.canScrollHorizontally(1)) {
                    paddingLeft = (width - getPaddingLeft()) - getPaddingRight();
                    i2 = paddingTop;
                    i3 = paddingLeft;
                }
                i2 = paddingTop;
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                paddingTop = this.f9592f.canScrollVertically(-1) ? -((height - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.f9592f.canScrollHorizontally(-1)) {
                    paddingLeft = -((width - getPaddingLeft()) - getPaddingRight());
                    i2 = paddingTop;
                    i3 = paddingLeft;
                }
                i2 = paddingTop;
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.f9592f.m5723T0(i3, i2, null, Integer.MIN_VALUE, true);
            return true;
        }

        public boolean performAccessibilityActionForItem(@NonNull Recycler recycler, @NonNull State state, @NonNull View view, int i, @Nullable Bundle bundle) {
            return false;
        }

        public void postOnAnimation(Runnable runnable) {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                ViewCompat.postOnAnimation(recyclerView, runnable);
            }
        }

        /* renamed from: q */
        public void m5798q(int i, int i2) {
            this.f9607u = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f9605s = mode;
            if (mode == 0 && !RecyclerView.f9474A1) {
                this.f9607u = 0;
            }
            this.f9608v = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f9606t = mode2;
            if (mode2 != 0 || RecyclerView.f9474A1) {
                return;
            }
            this.f9608v = 0;
        }

        /* renamed from: r */
        public void m5799r(int i, int i2) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.f9592f.m5768v(i, i2);
                return;
            }
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                Rect rect = this.f9592f.f9556n;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i8 = rect.left;
                if (i8 < i6) {
                    i6 = i8;
                }
                int i9 = rect.right;
                if (i9 > i3) {
                    i3 = i9;
                }
                int i10 = rect.top;
                if (i10 < i4) {
                    i4 = i10;
                }
                int i11 = rect.bottom;
                if (i11 > i5) {
                    i5 = i11;
                }
            }
            this.f9592f.f9556n.set(i6, i4, i3, i5);
            setMeasuredDimension(this.f9592f.f9556n, i, i2);
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.f9591e.m6127q(childCount);
            }
        }

        public void removeAndRecycleAllViews(@NonNull Recycler recycler) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.m5677V(getChildAt(childCount)).m5871C()) {
                    removeAndRecycleViewAt(childCount, recycler);
                }
            }
        }

        public void removeAndRecycleView(@NonNull View view, @NonNull Recycler recycler) {
            removeView(view);
            recycler.recycleView(view);
        }

        public void removeAndRecycleViewAt(int i, @NonNull Recycler recycler) {
            View childAt = getChildAt(i);
            removeViewAt(i);
            recycler.recycleView(childAt);
        }

        public boolean removeCallbacks(Runnable runnable) {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void removeDetachedView(@NonNull View view) {
            this.f9592f.removeDetachedView(view, false);
        }

        @SuppressLint({"UnknownNullness"})
        public void removeView(View view) {
            this.f9591e.m6126p(view);
        }

        public void removeViewAt(int i) {
            if (getChildAt(i) != null) {
                this.f9591e.m6127q(i);
            }
        }

        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z, false);
        }

        public void requestLayout() {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.f9598l = true;
        }

        /* renamed from: s */
        public void m5800s(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f9592f = null;
                this.f9591e = null;
                this.f9607u = 0;
                this.f9608v = 0;
            } else {
                this.f9592f = recyclerView;
                this.f9591e = recyclerView.f9547j;
                this.f9607u = recyclerView.getWidth();
                this.f9608v = recyclerView.getHeight();
            }
            this.f9605s = 1073741824;
            this.f9606t = 1073741824;
        }

        @SuppressLint({"UnknownNullness"})
        public int scrollHorizontallyBy(int i, Recycler recycler, State state) {
            return 0;
        }

        public void scrollToPosition(int i) {
        }

        @SuppressLint({"UnknownNullness"})
        public int scrollVerticallyBy(int i, Recycler recycler, State state) {
            return 0;
        }

        @Deprecated
        public void setAutoMeasureEnabled(boolean z) {
            this.f9600n = z;
        }

        public final void setItemPrefetchEnabled(boolean z) {
            if (z != this.f9602p) {
                this.f9602p = z;
                this.f9603q = 0;
                RecyclerView recyclerView = this.f9592f;
                if (recyclerView != null) {
                    recyclerView.f9541g.m5830J();
                }
            }
        }

        public void setMeasuredDimension(Rect rect, int i, int i2) {
            setMeasuredDimension(chooseSize(i, rect.width() + getPaddingLeft() + getPaddingRight(), getMinimumWidth()), chooseSize(i2, rect.height() + getPaddingTop() + getPaddingBottom(), getMinimumHeight()));
        }

        public void setMeasurementCacheEnabled(boolean z) {
            this.f9601o = z;
        }

        @SuppressLint({"UnknownNullness"})
        public void smoothScrollToPosition(RecyclerView recyclerView, State state, int i) {
            Log.e(RecyclerView.f9496s1, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        @SuppressLint({"UnknownNullness"})
        public void startSmoothScroll(SmoothScroller smoothScroller) {
            SmoothScroller smoothScroller2 = this.f9597k;
            if (smoothScroller2 != null && smoothScroller != smoothScroller2 && smoothScroller2.isRunning()) {
                this.f9597k.stop();
            }
            this.f9597k = smoothScroller;
            smoothScroller.m5863b(this.f9592f, this);
        }

        public void stopIgnoringView(@NonNull View view) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            m5677V.m5872D();
            m5677V.m5898x();
            m5677V.m5876b(4);
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        /* renamed from: t */
        public boolean m5801t(View view, int i, int i2, LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.f9601o && m5782h(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && m5782h(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        /* renamed from: u */
        public boolean mo5642u() {
            return false;
        }

        /* renamed from: v */
        public boolean m5802v(View view, int i, int i2, LayoutParams layoutParams) {
            return (this.f9601o && m5782h(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && m5782h(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        /* renamed from: w */
        public void m5803w() {
            SmoothScroller smoothScroller = this.f9597k;
            if (smoothScroller != null) {
                smoothScroller.stop();
            }
        }

        @SuppressLint({"UnknownNullness"})
        public void addDisappearingView(View view, int i) {
            m5783a(view, i, true);
        }

        @SuppressLint({"UnknownNullness"})
        public void addView(View view, int i) {
            m5783a(view, i, false);
        }

        @SuppressLint({"UnknownNullness"})
        @CallSuper
        public void onDetachedFromWindow(RecyclerView recyclerView, Recycler recycler) {
            onDetachedFromWindow(recyclerView);
        }

        public void onInitializeAccessibilityEvent(@NonNull Recycler recycler, @NonNull State state, @NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f9592f;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.f9592f.canScrollVertically(-1) && !this.f9592f.canScrollHorizontally(-1) && !this.f9592f.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            Adapter adapter = this.f9592f.f9562q;
            if (adapter != null) {
                accessibilityEvent.setItemCount(adapter.getItemCount());
            }
        }

        public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i, int i2, @Nullable Object obj) {
            onItemsUpdated(recyclerView, i, i2);
        }

        public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull State state, @NonNull View view, @Nullable View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
            int[] m5787e = m5787e(view, rect);
            int i = m5787e[0];
            int i2 = m5787e[1];
            if ((z2 && !m5789g(recyclerView, i, i2)) || (i == 0 && i2 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
            } else {
                recyclerView.smoothScrollBy(i, i2);
            }
            return true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        
            if (r5 == 1073741824) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                int r4 = r4 - r6
                r6 = 0
                int r4 = java.lang.Math.max(r6, r4)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r8 == 0) goto L1a
                if (r7 < 0) goto L11
                goto L1c
            L11:
                if (r7 != r1) goto L2f
                if (r5 == r2) goto L20
                if (r5 == 0) goto L2f
                if (r5 == r3) goto L20
                goto L2f
            L1a:
                if (r7 < 0) goto L1e
            L1c:
                r5 = r3
                goto L31
            L1e:
                if (r7 != r1) goto L22
            L20:
                r7 = r4
                goto L31
            L22:
                if (r7 != r0) goto L2f
                if (r5 == r2) goto L2c
                if (r5 != r3) goto L29
                goto L2c
            L29:
                r7 = r4
                r5 = r6
                goto L31
            L2c:
                r7 = r4
                r5 = r2
                goto L31
            L2f:
                r5 = r6
                r7 = r5
            L31:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.getChildMeasureSpec(int, int, int, int, boolean):int");
        }

        public void attachView(@NonNull View view, int i) {
            attachView(view, i, (LayoutParams) view.getLayoutParams());
        }

        @SuppressLint({"UnknownNullness"})
        public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public void setMeasuredDimension(int i, int i2) {
            this.f9592f.setMeasuredDimension(i, i2);
        }

        public void attachView(@NonNull View view) {
            attachView(view, -1);
        }
    }

    /* loaded from: classes3.dex */
    public interface OnChildAttachStateChangeListener {
        void onChildViewAttachedToWindow(@NonNull View view);

        void onChildViewDetachedFromWindow(@NonNull View view);
    }

    /* loaded from: classes3.dex */
    public static abstract class OnFlingListener {
        public abstract boolean onFling(int i, int i2);
    }

    /* loaded from: classes3.dex */
    public interface OnItemTouchListener {
        boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

        void onRequestDisallowInterceptTouchEvent(boolean z);

        void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);
    }

    /* loaded from: classes3.dex */
    public static abstract class OnScrollListener {
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
        }

        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Orientation {
    }

    /* loaded from: classes3.dex */
    public static class RecycledViewPool {

        /* renamed from: d */
        public static final int f9611d = 5;

        /* renamed from: a */
        public SparseArray<C1348a> f9612a = new SparseArray<>();

        /* renamed from: b */
        public int f9613b = 0;

        /* renamed from: c */
        public Set<Adapter<?>> f9614c = Collections.newSetFromMap(new IdentityHashMap());

        /* renamed from: androidx.recyclerview.widget.RecyclerView$RecycledViewPool$a */
        /* loaded from: classes3.dex */
        public static class C1348a {

            /* renamed from: a */
            public final ArrayList<ViewHolder> f9615a = new ArrayList<>();

            /* renamed from: b */
            public int f9616b = 5;

            /* renamed from: c */
            public long f9617c = 0;

            /* renamed from: d */
            public long f9618d = 0;
        }

        /* renamed from: a */
        public void m5809a() {
            this.f9613b++;
        }

        /* renamed from: b */
        public void m5810b(@NonNull Adapter<?> adapter) {
            this.f9614c.add(adapter);
        }

        /* renamed from: c */
        public void m5811c() {
            this.f9613b--;
        }

        public void clear() {
            for (int i = 0; i < this.f9612a.size(); i++) {
                C1348a valueAt = this.f9612a.valueAt(i);
                Iterator<ViewHolder> it2 = valueAt.f9615a.iterator();
                while (it2.hasNext()) {
                    PoolingContainer.callPoolingContainerOnRelease(it2.next().itemView);
                }
                valueAt.f9615a.clear();
            }
        }

        /* renamed from: d */
        public void m5812d(@NonNull Adapter<?> adapter, boolean z) {
            this.f9614c.remove(adapter);
            if (this.f9614c.size() != 0 || z) {
                return;
            }
            for (int i = 0; i < this.f9612a.size(); i++) {
                SparseArray<C1348a> sparseArray = this.f9612a;
                ArrayList<ViewHolder> arrayList = sparseArray.get(sparseArray.keyAt(i)).f9615a;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    PoolingContainer.callPoolingContainerOnRelease(arrayList.get(i2).itemView);
                }
            }
        }

        /* renamed from: e */
        public void m5813e(int i, long j) {
            C1348a m5815g = m5815g(i);
            m5815g.f9618d = m5817i(m5815g.f9618d, j);
        }

        /* renamed from: f */
        public void m5814f(int i, long j) {
            C1348a m5815g = m5815g(i);
            m5815g.f9617c = m5817i(m5815g.f9617c, j);
        }

        /* renamed from: g */
        public final C1348a m5815g(int i) {
            C1348a c1348a = this.f9612a.get(i);
            if (c1348a != null) {
                return c1348a;
            }
            C1348a c1348a2 = new C1348a();
            this.f9612a.put(i, c1348a2);
            return c1348a2;
        }

        @Nullable
        public ViewHolder getRecycledView(int i) {
            C1348a c1348a = this.f9612a.get(i);
            if (c1348a == null || c1348a.f9615a.isEmpty()) {
                return null;
            }
            ArrayList<ViewHolder> arrayList = c1348a.f9615a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).m5887m()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        public int getRecycledViewCount(int i) {
            return m5815g(i).f9615a.size();
        }

        /* renamed from: h */
        public void m5816h(Adapter<?> adapter, Adapter<?> adapter2, boolean z) {
            if (adapter != null) {
                m5811c();
            }
            if (!z && this.f9613b == 0) {
                clear();
            }
            if (adapter2 != null) {
                m5809a();
            }
        }

        /* renamed from: i */
        public long m5817i(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* renamed from: j */
        public int m5818j() {
            int i = 0;
            for (int i2 = 0; i2 < this.f9612a.size(); i2++) {
                ArrayList<ViewHolder> arrayList = this.f9612a.valueAt(i2).f9615a;
                if (arrayList != null) {
                    i += arrayList.size();
                }
            }
            return i;
        }

        /* renamed from: k */
        public boolean m5819k(int i, long j, long j2) {
            long j3 = m5815g(i).f9618d;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: l */
        public boolean m5820l(int i, long j, long j2) {
            long j3 = m5815g(i).f9617c;
            return j3 == 0 || j + j3 < j2;
        }

        public void putRecycledView(ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            ArrayList<ViewHolder> arrayList = m5815g(itemViewType).f9615a;
            if (this.f9612a.get(itemViewType).f9616b <= arrayList.size()) {
                PoolingContainer.callPoolingContainerOnRelease(viewHolder.itemView);
            } else {
                viewHolder.m5898x();
                arrayList.add(viewHolder);
            }
        }

        public void setMaxRecycledViews(int i, int i2) {
            C1348a m5815g = m5815g(i);
            m5815g.f9616b = i2;
            ArrayList<ViewHolder> arrayList = m5815g.f9615a;
            while (arrayList.size() > i2) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class Recycler {

        /* renamed from: j */
        public static final int f9619j = 2;

        /* renamed from: a */
        public final ArrayList<ViewHolder> f9620a;

        /* renamed from: b */
        public ArrayList<ViewHolder> f9621b;

        /* renamed from: c */
        public final ArrayList<ViewHolder> f9622c;

        /* renamed from: d */
        public final List<ViewHolder> f9623d;

        /* renamed from: e */
        public int f9624e;

        /* renamed from: f */
        public int f9625f;

        /* renamed from: g */
        public RecycledViewPool f9626g;

        /* renamed from: h */
        public ViewCacheExtension f9627h;

        public Recycler() {
            ArrayList<ViewHolder> arrayList = new ArrayList<>();
            this.f9620a = arrayList;
            this.f9621b = null;
            this.f9622c = new ArrayList<>();
            this.f9623d = Collections.unmodifiableList(arrayList);
            this.f9624e = 2;
            this.f9625f = 2;
        }

        /* renamed from: A */
        public void m5821A() {
            for (int size = this.f9622c.size() - 1; size >= 0; size--) {
                m5822B(size);
            }
            this.f9622c.clear();
            if (RecyclerView.f9476C1) {
                RecyclerView.this.f9530X0.m6211a();
            }
        }

        /* renamed from: B */
        public void m5822B(int i) {
            m5833a(this.f9622c.get(i), true);
            this.f9622c.remove(i);
        }

        /* renamed from: C */
        public void m5823C(ViewHolder viewHolder) {
            boolean z;
            boolean z2 = true;
            if (viewHolder.m5891q() || viewHolder.itemView.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(viewHolder.m5891q());
                sb.append(" isAttached:");
                sb.append(viewHolder.itemView.getParent() != null);
                sb.append(RecyclerView.this.m5709M());
                throw new IllegalArgumentException(sb.toString());
            }
            if (viewHolder.m5892r()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + viewHolder + RecyclerView.this.m5709M());
            }
            if (viewHolder.m5871C()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.m5709M());
            }
            boolean m5882h = viewHolder.m5882h();
            Adapter adapter = RecyclerView.this.f9562q;
            if ((adapter != null && m5882h && adapter.onFailedToRecycleView(viewHolder)) || viewHolder.isRecyclable()) {
                if (this.f9625f <= 0 || viewHolder.m5885k(StandardNames.XS_G_MONTH)) {
                    z = false;
                } else {
                    int size = this.f9622c.size();
                    if (size >= this.f9625f && size > 0) {
                        m5822B(0);
                        size--;
                    }
                    if (RecyclerView.f9476C1 && size > 0 && !RecyclerView.this.f9530X0.m6213c(viewHolder.f9680b)) {
                        int i = size - 1;
                        while (i >= 0) {
                            if (!RecyclerView.this.f9530X0.m6213c(this.f9622c.get(i).f9680b)) {
                                break;
                            } else {
                                i--;
                            }
                        }
                        size = i + 1;
                    }
                    this.f9622c.add(size, viewHolder);
                    z = true;
                }
                if (z) {
                    z2 = false;
                } else {
                    m5833a(viewHolder, true);
                }
                r1 = z;
            } else {
                z2 = false;
            }
            RecyclerView.this.f9549k.m6261q(viewHolder);
            if (r1 || z2 || !m5882h) {
                return;
            }
            PoolingContainer.callPoolingContainerOnRelease(viewHolder.itemView);
            viewHolder.f9696r = null;
            viewHolder.f9695q = null;
        }

        /* renamed from: D */
        public void m5824D(View view) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (!m5677V.m5885k(12) && m5677V.m5893s() && !RecyclerView.this.m5749l(m5677V)) {
                if (this.f9621b == null) {
                    this.f9621b = new ArrayList<>();
                }
                m5677V.m5869A(this, true);
                this.f9621b.add(m5677V);
                return;
            }
            if (!m5677V.m5889o() || m5677V.m5890p() || RecyclerView.this.f9562q.hasStableIds()) {
                m5677V.m5869A(this, false);
                this.f9620a.add(m5677V);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.m5709M());
            }
        }

        /* renamed from: E */
        public void m5825E(RecycledViewPool recycledViewPool) {
            m5856x(RecyclerView.this.f9562q);
            RecycledViewPool recycledViewPool2 = this.f9626g;
            if (recycledViewPool2 != null) {
                recycledViewPool2.m5811c();
            }
            this.f9626g = recycledViewPool;
            if (recycledViewPool != null && RecyclerView.this.getAdapter() != null) {
                this.f9626g.m5809a();
            }
            m5849q();
        }

        /* renamed from: F */
        public void m5826F(ViewCacheExtension viewCacheExtension) {
            this.f9627h = viewCacheExtension;
        }

        /* renamed from: G */
        public final boolean m5827G(@NonNull ViewHolder viewHolder, int i, int i2, long j) {
            viewHolder.f9696r = null;
            viewHolder.f9695q = RecyclerView.this;
            int itemViewType = viewHolder.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE && !this.f9626g.m5819k(itemViewType, nanoTime, j)) {
                return false;
            }
            RecyclerView.this.f9562q.bindViewHolder(viewHolder, i);
            this.f9626g.m5813e(viewHolder.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
            m5834b(viewHolder);
            if (!RecyclerView.this.f9531Y0.isPreLayout()) {
                return true;
            }
            viewHolder.f9684f = i2;
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0185  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x01a2  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01c5  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01fe  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0228 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:92:0x020c  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x01d4  */
        @androidx.annotation.Nullable
        /* renamed from: H */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.ViewHolder m5828H(int r17, boolean r18, long r19) {
            /*
                Method dump skipped, instructions count: 615
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.m5828H(int, boolean, long):androidx.recyclerview.widget.RecyclerView$ViewHolder");
        }

        /* renamed from: I */
        public void m5829I(ViewHolder viewHolder) {
            if (viewHolder.f9692n) {
                this.f9621b.remove(viewHolder);
            } else {
                this.f9620a.remove(viewHolder);
            }
            viewHolder.f9691m = null;
            viewHolder.f9692n = false;
            viewHolder.m5879e();
        }

        /* renamed from: J */
        public void m5830J() {
            LayoutManager layoutManager = RecyclerView.this.f9565r;
            this.f9625f = this.f9624e + (layoutManager != null ? layoutManager.f9603q : 0);
            for (int size = this.f9622c.size() - 1; size >= 0 && this.f9622c.size() > this.f9625f; size--) {
                m5822B(size);
            }
        }

        /* renamed from: K */
        public boolean m5831K(ViewHolder viewHolder) {
            if (viewHolder.m5890p()) {
                return RecyclerView.this.f9531Y0.isPreLayout();
            }
            int i = viewHolder.f9680b;
            if (i >= 0 && i < RecyclerView.this.f9562q.getItemCount()) {
                if (RecyclerView.this.f9531Y0.isPreLayout() || RecyclerView.this.f9562q.getItemViewType(viewHolder.f9680b) == viewHolder.getItemViewType()) {
                    return !RecyclerView.this.f9562q.hasStableIds() || viewHolder.getItemId() == RecyclerView.this.f9562q.getItemId(viewHolder.f9680b);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + viewHolder + RecyclerView.this.m5709M());
        }

        /* renamed from: L */
        public void m5832L(int i, int i2) {
            int i3;
            int i4 = i2 + i;
            for (int size = this.f9622c.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f9622c.get(size);
                if (viewHolder != null && (i3 = viewHolder.f9680b) >= i && i3 < i4) {
                    viewHolder.m5876b(2);
                    m5822B(size);
                }
            }
        }

        /* renamed from: a */
        public void m5833a(@NonNull ViewHolder viewHolder, boolean z) {
            RecyclerView.m5685n(viewHolder);
            View view = viewHolder.itemView;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = RecyclerView.this.f9540f1;
            if (recyclerViewAccessibilityDelegate != null) {
                AccessibilityDelegateCompat itemDelegate = recyclerViewAccessibilityDelegate.getItemDelegate();
                ViewCompat.setAccessibilityDelegate(view, itemDelegate instanceof RecyclerViewAccessibilityDelegate.ItemDelegate ? ((RecyclerViewAccessibilityDelegate.ItemDelegate) itemDelegate).m5938e(view) : null);
            }
            if (z) {
                m5837e(viewHolder);
            }
            viewHolder.f9696r = null;
            viewHolder.f9695q = null;
            m5839g().putRecycledView(viewHolder);
        }

        /* renamed from: b */
        public final void m5834b(ViewHolder viewHolder) {
            if (RecyclerView.this.m5744i0()) {
                View view = viewHolder.itemView;
                if (ViewCompat.getImportantForAccessibility(view) == 0) {
                    ViewCompat.setImportantForAccessibility(view, 1);
                }
                RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = RecyclerView.this.f9540f1;
                if (recyclerViewAccessibilityDelegate == null) {
                    return;
                }
                AccessibilityDelegateCompat itemDelegate = recyclerViewAccessibilityDelegate.getItemDelegate();
                if (itemDelegate instanceof RecyclerViewAccessibilityDelegate.ItemDelegate) {
                    ((RecyclerViewAccessibilityDelegate.ItemDelegate) itemDelegate).m5939f(view);
                }
                ViewCompat.setAccessibilityDelegate(view, itemDelegate);
            }
        }

        public void bindViewToPosition(@NonNull View view, int i) {
            LayoutParams layoutParams;
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (m5677V == null) {
                throw new IllegalArgumentException("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter" + RecyclerView.this.m5709M());
            }
            int m6097n = RecyclerView.this.f9545i.m6097n(i);
            if (m6097n < 0 || m6097n >= RecyclerView.this.f9562q.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i + "(offset:" + m6097n + ").state:" + RecyclerView.this.f9531Y0.getItemCount() + RecyclerView.this.m5709M());
            }
            m5827G(m5677V, m6097n, i, Long.MAX_VALUE);
            ViewGroup.LayoutParams layoutParams2 = m5677V.itemView.getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams = (LayoutParams) RecyclerView.this.generateDefaultLayoutParams();
                m5677V.itemView.setLayoutParams(layoutParams);
            } else if (RecyclerView.this.checkLayoutParams(layoutParams2)) {
                layoutParams = (LayoutParams) layoutParams2;
            } else {
                layoutParams = (LayoutParams) RecyclerView.this.generateLayoutParams(layoutParams2);
                m5677V.itemView.setLayoutParams(layoutParams);
            }
            layoutParams.mInsetsDirty = true;
            layoutParams.mViewHolder = m5677V;
            layoutParams.mPendingInvalidate = m5677V.itemView.getParent() == null;
        }

        /* renamed from: c */
        public void m5835c() {
            int size = this.f9622c.size();
            for (int i = 0; i < size; i++) {
                this.f9622c.get(i).m5877c();
            }
            int size2 = this.f9620a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f9620a.get(i2).m5877c();
            }
            ArrayList<ViewHolder> arrayList = this.f9621b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f9621b.get(i3).m5877c();
                }
            }
        }

        public void clear() {
            this.f9620a.clear();
            m5821A();
        }

        public int convertPreLayoutPositionToPostLayout(int i) {
            if (i >= 0 && i < RecyclerView.this.f9531Y0.getItemCount()) {
                return !RecyclerView.this.f9531Y0.isPreLayout() ? i : RecyclerView.this.f9545i.m6097n(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.f9531Y0.getItemCount() + RecyclerView.this.m5709M());
        }

        /* renamed from: d */
        public void m5836d() {
            this.f9620a.clear();
            ArrayList<ViewHolder> arrayList = this.f9621b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        /* renamed from: e */
        public void m5837e(@NonNull ViewHolder viewHolder) {
            RecyclerListener recyclerListener = RecyclerView.this.f9567s;
            if (recyclerListener != null) {
                recyclerListener.onViewRecycled(viewHolder);
            }
            int size = RecyclerView.this.f9568t.size();
            for (int i = 0; i < size; i++) {
                RecyclerView.this.f9568t.get(i).onViewRecycled(viewHolder);
            }
            Adapter adapter = RecyclerView.this.f9562q;
            if (adapter != null) {
                adapter.onViewRecycled(viewHolder);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f9531Y0 != null) {
                recyclerView.f9549k.m6261q(viewHolder);
            }
        }

        /* renamed from: f */
        public ViewHolder m5838f(int i) {
            int size;
            int m6097n;
            ArrayList<ViewHolder> arrayList = this.f9621b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    ViewHolder viewHolder = this.f9621b.get(i2);
                    if (!viewHolder.m5874F() && viewHolder.getLayoutPosition() == i) {
                        viewHolder.m5876b(32);
                        return viewHolder;
                    }
                }
                if (RecyclerView.this.f9562q.hasStableIds() && (m6097n = RecyclerView.this.f9545i.m6097n(i)) > 0 && m6097n < RecyclerView.this.f9562q.getItemCount()) {
                    long itemId = RecyclerView.this.f9562q.getItemId(m6097n);
                    for (int i3 = 0; i3 < size; i3++) {
                        ViewHolder viewHolder2 = this.f9621b.get(i3);
                        if (!viewHolder2.m5874F() && viewHolder2.getItemId() == itemId) {
                            viewHolder2.m5876b(32);
                            return viewHolder2;
                        }
                    }
                }
            }
            return null;
        }

        /* renamed from: g */
        public RecycledViewPool m5839g() {
            if (this.f9626g == null) {
                this.f9626g = new RecycledViewPool();
                m5849q();
            }
            return this.f9626g;
        }

        @NonNull
        public List<ViewHolder> getScrapList() {
            return this.f9623d;
        }

        @NonNull
        public View getViewForPosition(int i) {
            return m5844l(i, false);
        }

        /* renamed from: h */
        public int m5840h() {
            return this.f9620a.size();
        }

        /* renamed from: i */
        public ViewHolder m5841i(long j, int i, boolean z) {
            for (int size = this.f9620a.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f9620a.get(size);
                if (viewHolder.getItemId() == j && !viewHolder.m5874F()) {
                    if (i == viewHolder.getItemViewType()) {
                        viewHolder.m5876b(32);
                        if (viewHolder.m5890p() && !RecyclerView.this.f9531Y0.isPreLayout()) {
                            viewHolder.m5900z(2, 14);
                        }
                        return viewHolder;
                    }
                    if (!z) {
                        this.f9620a.remove(size);
                        RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
                        m5858z(viewHolder.itemView);
                    }
                }
            }
            int size2 = this.f9622c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                ViewHolder viewHolder2 = this.f9622c.get(size2);
                if (viewHolder2.getItemId() == j && !viewHolder2.m5887m()) {
                    if (i == viewHolder2.getItemViewType()) {
                        if (!z) {
                            this.f9622c.remove(size2);
                        }
                        return viewHolder2;
                    }
                    if (!z) {
                        m5822B(size2);
                        return null;
                    }
                }
            }
        }

        /* renamed from: j */
        public ViewHolder m5842j(int i, boolean z) {
            View m6115e;
            int size = this.f9620a.size();
            for (int i2 = 0; i2 < size; i2++) {
                ViewHolder viewHolder = this.f9620a.get(i2);
                if (!viewHolder.m5874F() && viewHolder.getLayoutPosition() == i && !viewHolder.m5889o() && (RecyclerView.this.f9531Y0.f9654h || !viewHolder.m5890p())) {
                    viewHolder.m5876b(32);
                    return viewHolder;
                }
            }
            if (z || (m6115e = RecyclerView.this.f9547j.m6115e(i)) == null) {
                int size2 = this.f9622c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ViewHolder viewHolder2 = this.f9622c.get(i3);
                    if (!viewHolder2.m5889o() && viewHolder2.getLayoutPosition() == i && !viewHolder2.m5887m()) {
                        if (!z) {
                            this.f9622c.remove(i3);
                        }
                        return viewHolder2;
                    }
                }
                return null;
            }
            ViewHolder m5677V = RecyclerView.m5677V(m6115e);
            RecyclerView.this.f9547j.m6129s(m6115e);
            int m6123m = RecyclerView.this.f9547j.m6123m(m6115e);
            if (m6123m != -1) {
                RecyclerView.this.f9547j.m6114d(m6123m);
                m5824D(m6115e);
                m5677V.m5876b(8224);
                return m5677V;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + m5677V + RecyclerView.this.m5709M());
        }

        /* renamed from: k */
        public View m5843k(int i) {
            return this.f9620a.get(i).itemView;
        }

        /* renamed from: l */
        public View m5844l(int i, boolean z) {
            return m5828H(i, z, Long.MAX_VALUE).itemView;
        }

        /* renamed from: m */
        public final void m5845m(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m5845m((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        /* renamed from: n */
        public final void m5846n(ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ViewGroup) {
                m5845m((ViewGroup) view, false);
            }
        }

        /* renamed from: o */
        public void m5847o() {
            int size = this.f9622c.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) this.f9622c.get(i).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.mInsetsDirty = true;
                }
            }
        }

        /* renamed from: p */
        public void m5848p() {
            int size = this.f9622c.size();
            for (int i = 0; i < size; i++) {
                ViewHolder viewHolder = this.f9622c.get(i);
                if (viewHolder != null) {
                    viewHolder.m5876b(6);
                    viewHolder.m5875a(null);
                }
            }
            Adapter adapter = RecyclerView.this.f9562q;
            if (adapter == null || !adapter.hasStableIds()) {
                m5821A();
            }
        }

        /* renamed from: q */
        public final void m5849q() {
            if (this.f9626g != null) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f9562q == null || !recyclerView.isAttachedToWindow()) {
                    return;
                }
                this.f9626g.m5810b(RecyclerView.this.f9562q);
            }
        }

        /* renamed from: r */
        public void m5850r(int i, int i2) {
            int size = this.f9622c.size();
            for (int i3 = 0; i3 < size; i3++) {
                ViewHolder viewHolder = this.f9622c.get(i3);
                if (viewHolder != null && viewHolder.f9680b >= i) {
                    viewHolder.m5895u(i2, false);
                }
            }
        }

        public void recycleView(@NonNull View view) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (m5677V.m5892r()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (m5677V.m5891q()) {
                m5677V.m5873E();
            } else if (m5677V.m5874F()) {
                m5677V.m5879e();
            }
            m5823C(m5677V);
            if (RecyclerView.this.f9510G0 == null || m5677V.isRecyclable()) {
                return;
            }
            RecyclerView.this.f9510G0.endAnimation(m5677V);
        }

        /* renamed from: s */
        public void m5851s(int i, int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            if (i < i2) {
                i3 = -1;
                i5 = i;
                i4 = i2;
            } else {
                i3 = 1;
                i4 = i;
                i5 = i2;
            }
            int size = this.f9622c.size();
            for (int i7 = 0; i7 < size; i7++) {
                ViewHolder viewHolder = this.f9622c.get(i7);
                if (viewHolder != null && (i6 = viewHolder.f9680b) >= i5 && i6 <= i4) {
                    if (i6 == i) {
                        viewHolder.m5895u(i2 - i, false);
                    } else {
                        viewHolder.m5895u(i3, false);
                    }
                }
            }
        }

        public void setViewCacheSize(int i) {
            this.f9624e = i;
            m5830J();
        }

        /* renamed from: t */
        public void m5852t(int i, int i2, boolean z) {
            int i3 = i + i2;
            for (int size = this.f9622c.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f9622c.get(size);
                if (viewHolder != null) {
                    int i4 = viewHolder.f9680b;
                    if (i4 >= i3) {
                        viewHolder.m5895u(-i2, z);
                    } else if (i4 >= i) {
                        viewHolder.m5876b(8);
                        m5822B(size);
                    }
                }
            }
        }

        /* renamed from: u */
        public void m5853u(Adapter<?> adapter, Adapter<?> adapter2, boolean z) {
            clear();
            m5857y(adapter, true);
            m5839g().m5816h(adapter, adapter2, z);
            m5849q();
        }

        /* renamed from: v */
        public void m5854v() {
            m5849q();
        }

        /* renamed from: w */
        public void m5855w() {
            for (int i = 0; i < this.f9622c.size(); i++) {
                PoolingContainer.callPoolingContainerOnRelease(this.f9622c.get(i).itemView);
            }
            m5856x(RecyclerView.this.f9562q);
        }

        /* renamed from: x */
        public final void m5856x(Adapter<?> adapter) {
            m5857y(adapter, false);
        }

        /* renamed from: y */
        public final void m5857y(Adapter<?> adapter, boolean z) {
            RecycledViewPool recycledViewPool = this.f9626g;
            if (recycledViewPool != null) {
                recycledViewPool.m5812d(adapter, z);
            }
        }

        /* renamed from: z */
        public void m5858z(View view) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            m5677V.f9691m = null;
            m5677V.f9692n = false;
            m5677V.m5879e();
            m5823C(m5677V);
        }
    }

    /* loaded from: classes3.dex */
    public interface RecyclerListener {
        void onViewRecycled(@NonNull ViewHolder viewHolder);
    }

    /* loaded from: classes3.dex */
    public static class SimpleOnItemTouchListener implements OnItemTouchListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class SmoothScroller {

        /* renamed from: b */
        public RecyclerView f9630b;

        /* renamed from: c */
        public LayoutManager f9631c;

        /* renamed from: d */
        public boolean f9632d;

        /* renamed from: e */
        public boolean f9633e;

        /* renamed from: f */
        public View f9634f;

        /* renamed from: h */
        public boolean f9636h;

        /* renamed from: a */
        public int f9629a = -1;

        /* renamed from: g */
        public final Action f9635g = new Action(0, 0);

        /* loaded from: classes3.dex */
        public static class Action {
            public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;

            /* renamed from: a */
            public int f9637a;

            /* renamed from: b */
            public int f9638b;

            /* renamed from: c */
            public int f9639c;

            /* renamed from: d */
            public int f9640d;

            /* renamed from: e */
            public Interpolator f9641e;

            /* renamed from: f */
            public boolean f9642f;

            /* renamed from: g */
            public int f9643g;

            public Action(@Px int i, @Px int i2) {
                this(i, i2, Integer.MIN_VALUE, null);
            }

            /* renamed from: a */
            public boolean m5864a() {
                return this.f9640d >= 0;
            }

            /* renamed from: b */
            public void m5865b(RecyclerView recyclerView) {
                int i = this.f9640d;
                if (i >= 0) {
                    this.f9640d = -1;
                    recyclerView.m5748k0(i);
                    this.f9642f = false;
                } else {
                    if (!this.f9642f) {
                        this.f9643g = 0;
                        return;
                    }
                    m5866c();
                    recyclerView.f9528V0.m5935e(this.f9637a, this.f9638b, this.f9639c, this.f9641e);
                    int i2 = this.f9643g + 1;
                    this.f9643g = i2;
                    if (i2 > 10) {
                        Log.e(RecyclerView.f9496s1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f9642f = false;
                }
            }

            /* renamed from: c */
            public final void m5866c() {
                if (this.f9641e != null && this.f9639c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f9639c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public int getDuration() {
                return this.f9639c;
            }

            @Px
            public int getDx() {
                return this.f9637a;
            }

            @Px
            public int getDy() {
                return this.f9638b;
            }

            @Nullable
            public Interpolator getInterpolator() {
                return this.f9641e;
            }

            public void jumpTo(int i) {
                this.f9640d = i;
            }

            public void setDuration(int i) {
                this.f9642f = true;
                this.f9639c = i;
            }

            public void setDx(@Px int i) {
                this.f9642f = true;
                this.f9637a = i;
            }

            public void setDy(@Px int i) {
                this.f9642f = true;
                this.f9638b = i;
            }

            public void setInterpolator(@Nullable Interpolator interpolator) {
                this.f9642f = true;
                this.f9641e = interpolator;
            }

            public void update(@Px int i, @Px int i2, int i3, @Nullable Interpolator interpolator) {
                this.f9637a = i;
                this.f9638b = i2;
                this.f9639c = i3;
                this.f9641e = interpolator;
                this.f9642f = true;
            }

            public Action(@Px int i, @Px int i2, int i3) {
                this(i, i2, i3, null);
            }

            public Action(@Px int i, @Px int i2, int i3, @Nullable Interpolator interpolator) {
                this.f9640d = -1;
                this.f9642f = false;
                this.f9643g = 0;
                this.f9637a = i;
                this.f9638b = i2;
                this.f9639c = i3;
                this.f9641e = interpolator;
            }
        }

        /* loaded from: classes3.dex */
        public interface ScrollVectorProvider {
            @Nullable
            PointF computeScrollVectorForPosition(int i);
        }

        /* renamed from: a */
        public void m5862a(int i, int i2) {
            PointF computeScrollVectorForPosition;
            RecyclerView recyclerView = this.f9630b;
            if (this.f9629a == -1 || recyclerView == null) {
                stop();
            }
            if (this.f9632d && this.f9634f == null && this.f9631c != null && (computeScrollVectorForPosition = computeScrollVectorForPosition(this.f9629a)) != null) {
                float f = computeScrollVectorForPosition.x;
                if (f != 0.0f || computeScrollVectorForPosition.y != 0.0f) {
                    recyclerView.m5714O0((int) Math.signum(f), (int) Math.signum(computeScrollVectorForPosition.y), null);
                }
            }
            this.f9632d = false;
            View view = this.f9634f;
            if (view != null) {
                if (getChildPosition(view) == this.f9629a) {
                    onTargetFound(this.f9634f, recyclerView.f9531Y0, this.f9635g);
                    this.f9635g.m5865b(recyclerView);
                    stop();
                } else {
                    Log.e(RecyclerView.f9496s1, "Passed over target position while smooth scrolling.");
                    this.f9634f = null;
                }
            }
            if (this.f9633e) {
                onSeekTargetStep(i, i2, recyclerView.f9531Y0, this.f9635g);
                boolean m5864a = this.f9635g.m5864a();
                this.f9635g.m5865b(recyclerView);
                if (m5864a && this.f9633e) {
                    this.f9632d = true;
                    recyclerView.f9528V0.m5934d();
                }
            }
        }

        /* renamed from: b */
        public void m5863b(RecyclerView recyclerView, LayoutManager layoutManager) {
            recyclerView.f9528V0.m5936f();
            if (this.f9636h) {
                Log.w(RecyclerView.f9496s1, "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f9630b = recyclerView;
            this.f9631c = layoutManager;
            int i = this.f9629a;
            if (i == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.f9531Y0.f9647a = i;
            this.f9633e = true;
            this.f9632d = true;
            this.f9634f = findViewByPosition(getTargetPosition());
            onStart();
            this.f9630b.f9528V0.m5934d();
            this.f9636h = true;
        }

        @Nullable
        public PointF computeScrollVectorForPosition(int i) {
            Object layoutManager = getLayoutManager();
            if (layoutManager instanceof ScrollVectorProvider) {
                return ((ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(i);
            }
            Log.w(RecyclerView.f9496s1, "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + ScrollVectorProvider.class.getCanonicalName());
            return null;
        }

        public View findViewByPosition(int i) {
            return this.f9630b.f9565r.findViewByPosition(i);
        }

        public int getChildCount() {
            return this.f9630b.f9565r.getChildCount();
        }

        public int getChildPosition(View view) {
            return this.f9630b.getChildLayoutPosition(view);
        }

        @Nullable
        public LayoutManager getLayoutManager() {
            return this.f9631c;
        }

        public int getTargetPosition() {
            return this.f9629a;
        }

        @Deprecated
        public void instantScrollToPosition(int i) {
            this.f9630b.scrollToPosition(i);
        }

        public boolean isPendingInitialRun() {
            return this.f9632d;
        }

        public boolean isRunning() {
            return this.f9633e;
        }

        public void normalize(@NonNull PointF pointF) {
            float f = pointF.x;
            float f2 = pointF.y;
            float sqrt = (float) Math.sqrt((f * f) + (f2 * f2));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        public void onChildAttachedToWindow(View view) {
            if (getChildPosition(view) == getTargetPosition()) {
                this.f9634f = view;
            }
        }

        public abstract void onSeekTargetStep(@Px int i, @Px int i2, @NonNull State state, @NonNull Action action);

        public abstract void onStart();

        public abstract void onStop();

        public abstract void onTargetFound(@NonNull View view, @NonNull State state, @NonNull Action action);

        public void setTargetPosition(int i) {
            this.f9629a = i;
        }

        public final void stop() {
            if (this.f9633e) {
                this.f9633e = false;
                onStop();
                this.f9630b.f9531Y0.f9647a = -1;
                this.f9634f = null;
                this.f9629a = -1;
                this.f9632d = false;
                this.f9631c.m5792k(this);
                this.f9631c = null;
                this.f9630b = null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class State {

        /* renamed from: r */
        public static final int f9644r = 1;

        /* renamed from: s */
        public static final int f9645s = 2;

        /* renamed from: t */
        public static final int f9646t = 4;

        /* renamed from: b */
        public SparseArray<Object> f9648b;

        /* renamed from: m */
        public int f9659m;

        /* renamed from: n */
        public long f9660n;

        /* renamed from: o */
        public int f9661o;

        /* renamed from: p */
        public int f9662p;

        /* renamed from: q */
        public int f9663q;

        /* renamed from: a */
        public int f9647a = -1;

        /* renamed from: c */
        public int f9649c = 0;

        /* renamed from: d */
        public int f9650d = 0;

        /* renamed from: e */
        public int f9651e = 1;

        /* renamed from: f */
        public int f9652f = 0;

        /* renamed from: g */
        public boolean f9653g = false;

        /* renamed from: h */
        public boolean f9654h = false;

        /* renamed from: i */
        public boolean f9655i = false;

        /* renamed from: j */
        public boolean f9656j = false;

        /* renamed from: k */
        public boolean f9657k = false;

        /* renamed from: l */
        public boolean f9658l = false;

        /* renamed from: a */
        public void m5867a(int i) {
            if ((this.f9651e & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f9651e));
        }

        /* renamed from: b */
        public void m5868b(Adapter adapter) {
            this.f9651e = 1;
            this.f9652f = adapter.getItemCount();
            this.f9654h = false;
            this.f9655i = false;
            this.f9656j = false;
        }

        public boolean didStructureChange() {
            return this.f9653g;
        }

        public <T> T get(int i) {
            SparseArray<Object> sparseArray = this.f9648b;
            if (sparseArray == null) {
                return null;
            }
            return (T) sparseArray.get(i);
        }

        public int getItemCount() {
            return this.f9654h ? this.f9649c - this.f9650d : this.f9652f;
        }

        public int getRemainingScrollHorizontal() {
            return this.f9662p;
        }

        public int getRemainingScrollVertical() {
            return this.f9663q;
        }

        public int getTargetScrollPosition() {
            return this.f9647a;
        }

        public boolean hasTargetScrollPosition() {
            return this.f9647a != -1;
        }

        public boolean isMeasuring() {
            return this.f9656j;
        }

        public boolean isPreLayout() {
            return this.f9654h;
        }

        public void put(int i, Object obj) {
            if (this.f9648b == null) {
                this.f9648b = new SparseArray<>();
            }
            this.f9648b.put(i, obj);
        }

        public void remove(int i) {
            SparseArray<Object> sparseArray = this.f9648b;
            if (sparseArray == null) {
                return;
            }
            sparseArray.remove(i);
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f9647a + ", mData=" + this.f9648b + ", mItemCount=" + this.f9652f + ", mIsMeasuring=" + this.f9656j + ", mPreviousLayoutItemCount=" + this.f9649c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f9650d + ", mStructureChanged=" + this.f9653g + ", mInPreLayout=" + this.f9654h + ", mRunSimpleAnimations=" + this.f9657k + ", mRunPredictiveAnimations=" + this.f9658l + '}';
        }

        public boolean willRunPredictiveAnimations() {
            return this.f9658l;
        }

        public boolean willRunSimpleAnimations() {
            return this.f9657k;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ViewCacheExtension {
        @Nullable
        public abstract View getViewForPositionAndType(@NonNull Recycler recycler, int i, int i2);
    }

    /* loaded from: classes3.dex */
    public static abstract class ViewHolder {

        /* renamed from: A */
        public static final int f9664A = 512;

        /* renamed from: B */
        public static final int f9665B = 1024;

        /* renamed from: C */
        public static final int f9666C = 2048;

        /* renamed from: D */
        public static final int f9667D = 4096;

        /* renamed from: E */
        public static final int f9668E = -1;

        /* renamed from: F */
        public static final int f9669F = 8192;

        /* renamed from: G */
        public static final List<Object> f9670G = Collections.emptyList();

        /* renamed from: s */
        public static final int f9671s = 1;

        /* renamed from: t */
        public static final int f9672t = 2;

        /* renamed from: u */
        public static final int f9673u = 4;

        /* renamed from: v */
        public static final int f9674v = 8;

        /* renamed from: w */
        public static final int f9675w = 16;

        /* renamed from: x */
        public static final int f9676x = 32;

        /* renamed from: y */
        public static final int f9677y = 128;

        /* renamed from: z */
        public static final int f9678z = 256;

        /* renamed from: a */
        public WeakReference<RecyclerView> f9679a;

        /* renamed from: i */
        public int f9687i;

        @NonNull
        public final View itemView;

        /* renamed from: q */
        public RecyclerView f9695q;

        /* renamed from: r */
        public Adapter<? extends ViewHolder> f9696r;

        /* renamed from: b */
        public int f9680b = -1;

        /* renamed from: c */
        public int f9681c = -1;

        /* renamed from: d */
        public long f9682d = -1;

        /* renamed from: e */
        public int f9683e = -1;

        /* renamed from: f */
        public int f9684f = -1;

        /* renamed from: g */
        public ViewHolder f9685g = null;

        /* renamed from: h */
        public ViewHolder f9686h = null;

        /* renamed from: j */
        public List<Object> f9688j = null;

        /* renamed from: k */
        public List<Object> f9689k = null;

        /* renamed from: l */
        public int f9690l = 0;

        /* renamed from: m */
        public Recycler f9691m = null;

        /* renamed from: n */
        public boolean f9692n = false;

        /* renamed from: o */
        public int f9693o = 0;

        /* renamed from: p */
        @VisibleForTesting
        public int f9694p = -1;

        public ViewHolder(@NonNull View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        /* renamed from: A */
        public void m5869A(Recycler recycler, boolean z) {
            this.f9691m = recycler;
            this.f9692n = z;
        }

        /* renamed from: B */
        public boolean m5870B() {
            return (this.f9687i & 16) != 0;
        }

        /* renamed from: C */
        public boolean m5871C() {
            return (this.f9687i & 128) != 0;
        }

        /* renamed from: D */
        public void m5872D() {
            this.f9687i &= -129;
        }

        /* renamed from: E */
        public void m5873E() {
            this.f9691m.m5829I(this);
        }

        /* renamed from: F */
        public boolean m5874F() {
            return (this.f9687i & 32) != 0;
        }

        /* renamed from: a */
        public void m5875a(Object obj) {
            if (obj == null) {
                m5876b(1024);
            } else if ((1024 & this.f9687i) == 0) {
                m5881g();
                this.f9688j.add(obj);
            }
        }

        /* renamed from: b */
        public void m5876b(int i) {
            this.f9687i = i | this.f9687i;
        }

        /* renamed from: c */
        public void m5877c() {
            this.f9681c = -1;
            this.f9684f = -1;
        }

        /* renamed from: d */
        public void m5878d() {
            List<Object> list = this.f9688j;
            if (list != null) {
                list.clear();
            }
            this.f9687i &= -1025;
        }

        /* renamed from: e */
        public void m5879e() {
            this.f9687i &= -33;
        }

        /* renamed from: f */
        public void m5880f() {
            this.f9687i &= -257;
        }

        /* renamed from: g */
        public final void m5881g() {
            if (this.f9688j == null) {
                ArrayList arrayList = new ArrayList();
                this.f9688j = arrayList;
                this.f9689k = Collections.unmodifiableList(arrayList);
            }
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.f9695q;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.m5722T(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        @Nullable
        public final Adapter<? extends ViewHolder> getBindingAdapter() {
            return this.f9696r;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            Adapter adapter;
            int m5722T;
            if (this.f9696r == null || (recyclerView = this.f9695q) == null || (adapter = recyclerView.getAdapter()) == null || (m5722T = this.f9695q.m5722T(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.f9696r, this, m5722T);
        }

        public final long getItemId() {
            return this.f9682d;
        }

        public final int getItemViewType() {
            return this.f9683e;
        }

        public final int getLayoutPosition() {
            int i = this.f9684f;
            return i == -1 ? this.f9680b : i;
        }

        public final int getOldPosition() {
            return this.f9681c;
        }

        @Deprecated
        public final int getPosition() {
            int i = this.f9684f;
            return i == -1 ? this.f9680b : i;
        }

        /* renamed from: h */
        public boolean m5882h() {
            return (this.f9687i & 16) == 0 && ViewCompat.hasTransientState(this.itemView);
        }

        /* renamed from: i */
        public void m5883i(int i, int i2, boolean z) {
            m5876b(8);
            m5895u(i2, z);
            this.f9680b = i;
        }

        public final boolean isRecyclable() {
            return (this.f9687i & 16) == 0 && !ViewCompat.hasTransientState(this.itemView);
        }

        /* renamed from: j */
        public List<Object> m5884j() {
            if ((this.f9687i & 1024) != 0) {
                return f9670G;
            }
            List<Object> list = this.f9688j;
            return (list == null || list.size() == 0) ? f9670G : this.f9689k;
        }

        /* renamed from: k */
        public boolean m5885k(int i) {
            return (this.f9687i & i) != 0;
        }

        /* renamed from: l */
        public boolean m5886l() {
            return (this.f9687i & 512) != 0 || m5889o();
        }

        /* renamed from: m */
        public boolean m5887m() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.f9695q) ? false : true;
        }

        /* renamed from: n */
        public boolean m5888n() {
            return (this.f9687i & 1) != 0;
        }

        /* renamed from: o */
        public boolean m5889o() {
            return (this.f9687i & 4) != 0;
        }

        /* renamed from: p */
        public boolean m5890p() {
            return (this.f9687i & 8) != 0;
        }

        /* renamed from: q */
        public boolean m5891q() {
            return this.f9691m != null;
        }

        /* renamed from: r */
        public boolean m5892r() {
            return (this.f9687i & 256) != 0;
        }

        /* renamed from: s */
        public boolean m5893s() {
            return (this.f9687i & 2) != 0;
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.f9690l;
            int i2 = z ? i - 1 : i + 1;
            this.f9690l = i2;
            if (i2 < 0) {
                this.f9690l = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z && i2 == 1) {
                this.f9687i |= 16;
            } else if (z && i2 == 0) {
                this.f9687i &= -17;
            }
        }

        /* renamed from: t */
        public boolean m5894t() {
            return (this.f9687i & 2) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.f9680b + " id=" + this.f9682d + ", oldPos=" + this.f9681c + ", pLpos:" + this.f9684f);
            if (m5891q()) {
                sb.append(" scrap ");
                sb.append(this.f9692n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (m5889o()) {
                sb.append(" invalid");
            }
            if (!m5888n()) {
                sb.append(" unbound");
            }
            if (m5894t()) {
                sb.append(" update");
            }
            if (m5890p()) {
                sb.append(" removed");
            }
            if (m5871C()) {
                sb.append(" ignored");
            }
            if (m5892r()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.f9690l + MotionUtils.f31762d);
            }
            if (m5886l()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* renamed from: u */
        public void m5895u(int i, boolean z) {
            if (this.f9681c == -1) {
                this.f9681c = this.f9680b;
            }
            if (this.f9684f == -1) {
                this.f9684f = this.f9680b;
            }
            if (z) {
                this.f9684f += i;
            }
            this.f9680b += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).mInsetsDirty = true;
            }
        }

        /* renamed from: v */
        public void m5896v(RecyclerView recyclerView) {
            int i = this.f9694p;
            if (i != -1) {
                this.f9693o = i;
            } else {
                this.f9693o = ViewCompat.getImportantForAccessibility(this.itemView);
            }
            recyclerView.m5717Q0(this, 4);
        }

        /* renamed from: w */
        public void m5897w(RecyclerView recyclerView) {
            recyclerView.m5717Q0(this, this.f9693o);
            this.f9693o = 0;
        }

        /* renamed from: x */
        public void m5898x() {
            this.f9687i = 0;
            this.f9680b = -1;
            this.f9681c = -1;
            this.f9682d = -1L;
            this.f9684f = -1;
            this.f9690l = 0;
            this.f9685g = null;
            this.f9686h = null;
            m5878d();
            this.f9693o = 0;
            this.f9694p = -1;
            RecyclerView.m5685n(this);
        }

        /* renamed from: y */
        public void m5899y() {
            if (this.f9681c == -1) {
                this.f9681c = this.f9680b;
            }
        }

        /* renamed from: z */
        public void m5900z(int i, int i2) {
            this.f9687i = (i & i2) | (this.f9687i & (~i2));
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes3.dex */
    public class RunnableC1350a implements Runnable {
        public RunnableC1350a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.f9513J || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.f9576x) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.f9550k0) {
                recyclerView2.f9522Q = true;
            } else {
                recyclerView2.m5764t();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes3.dex */
    public class RunnableC1351b implements Runnable {
        public RunnableC1351b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ItemAnimator itemAnimator = RecyclerView.this.f9510G0;
            if (itemAnimator != null) {
                itemAnimator.runPendingAnimations();
            }
            RecyclerView.this.f9538e1 = false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c */
    /* loaded from: classes3.dex */
    public class InterpolatorC1352c implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes3.dex */
    public class C1353d implements C1386k.b {
        public C1353d() {
        }

        @Override // androidx.recyclerview.widget.C1386k.b
        /* renamed from: a */
        public void mo5901a(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
            RecyclerView.this.m5739g(viewHolder, itemHolderInfo, itemHolderInfo2);
        }

        @Override // androidx.recyclerview.widget.C1386k.b
        /* renamed from: b */
        public void mo5902b(ViewHolder viewHolder) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f9565r.removeAndRecycleView(viewHolder.itemView, recyclerView.f9541g);
        }

        @Override // androidx.recyclerview.widget.C1386k.b
        /* renamed from: c */
        public void mo5903c(ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo2) {
            RecyclerView.this.f9541g.m5829I(viewHolder);
            RecyclerView.this.m5743i(viewHolder, itemHolderInfo, itemHolderInfo2);
        }

        @Override // androidx.recyclerview.widget.C1386k.b
        /* renamed from: d */
        public void mo5904d(ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2) {
            viewHolder.setIsRecyclable(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f9577x0) {
                if (recyclerView.f9510G0.animateChange(viewHolder, viewHolder, itemHolderInfo, itemHolderInfo2)) {
                    RecyclerView.this.m5769v0();
                }
            } else if (recyclerView.f9510G0.animatePersistence(viewHolder, itemHolderInfo, itemHolderInfo2)) {
                RecyclerView.this.m5769v0();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes3.dex */
    public class C1354e implements C1377b.b {
        public C1354e() {
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        /* renamed from: a */
        public View mo5905a(int i) {
            return RecyclerView.this.getChildAt(i);
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        public void addView(View view, int i) {
            RecyclerView.this.addView(view, i);
            RecyclerView.this.m5772x(view);
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        /* renamed from: b */
        public void mo5906b(View view) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (m5677V != null) {
                m5677V.m5896v(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        /* renamed from: c */
        public int mo5907c() {
            return RecyclerView.this.getChildCount();
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        /* renamed from: d */
        public ViewHolder mo5908d(View view) {
            return RecyclerView.m5677V(view);
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        /* renamed from: e */
        public void mo5909e(View view, int i, ViewGroup.LayoutParams layoutParams) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (m5677V != null) {
                if (!m5677V.m5892r() && !m5677V.m5871C()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + m5677V + RecyclerView.this.m5709M());
                }
                m5677V.m5880f();
            }
            RecyclerView.this.attachViewToParent(view, i, layoutParams);
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        /* renamed from: f */
        public void mo5910f(int i) {
            ViewHolder m5677V;
            View mo5905a = mo5905a(i);
            if (mo5905a != null && (m5677V = RecyclerView.m5677V(mo5905a)) != null) {
                if (m5677V.m5892r() && !m5677V.m5871C()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + m5677V + RecyclerView.this.m5709M());
                }
                m5677V.m5876b(256);
            }
            RecyclerView.this.detachViewFromParent(i);
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        /* renamed from: g */
        public int mo5911g(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        /* renamed from: h */
        public void mo5912h(View view) {
            ViewHolder m5677V = RecyclerView.m5677V(view);
            if (m5677V != null) {
                m5677V.m5897w(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        public void removeAllViews() {
            int mo5907c = mo5907c();
            for (int i = 0; i < mo5907c; i++) {
                View mo5905a = mo5905a(i);
                RecyclerView.this.m5774y(mo5905a);
                mo5905a.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.C1377b.b
        public void removeViewAt(int i) {
            View childAt = RecyclerView.this.getChildAt(i);
            if (childAt != null) {
                RecyclerView.this.m5774y(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes3.dex */
    public class C1355f implements C1376a.a {
        public C1355f() {
        }

        @Override // androidx.recyclerview.widget.C1376a.a
        /* renamed from: a */
        public void mo5913a(int i, int i2) {
            RecyclerView.this.m5757p0(i, i2);
            RecyclerView.this.f9534b1 = true;
        }

        @Override // androidx.recyclerview.widget.C1376a.a
        /* renamed from: b */
        public void mo5914b(C1376a.b bVar) {
            m5921i(bVar);
        }

        @Override // androidx.recyclerview.widget.C1376a.a
        /* renamed from: c */
        public void mo5915c(C1376a.b bVar) {
            m5921i(bVar);
        }

        @Override // androidx.recyclerview.widget.C1376a.a
        /* renamed from: d */
        public void mo5916d(int i, int i2) {
            RecyclerView.this.m5759q0(i, i2, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f9534b1 = true;
            recyclerView.f9531Y0.f9650d += i2;
        }

        @Override // androidx.recyclerview.widget.C1376a.a
        /* renamed from: e */
        public void mo5917e(int i, int i2, Object obj) {
            RecyclerView.this.m5730Y0(i, i2, obj);
            RecyclerView.this.f9535c1 = true;
        }

        @Override // androidx.recyclerview.widget.C1376a.a
        /* renamed from: f */
        public ViewHolder mo5918f(int i) {
            ViewHolder m5720S = RecyclerView.this.m5720S(i, true);
            if (m5720S == null || RecyclerView.this.f9547j.m6124n(m5720S.itemView)) {
                return null;
            }
            return m5720S;
        }

        @Override // androidx.recyclerview.widget.C1376a.a
        /* renamed from: g */
        public void mo5919g(int i, int i2) {
            RecyclerView.this.m5755o0(i, i2);
            RecyclerView.this.f9534b1 = true;
        }

        @Override // androidx.recyclerview.widget.C1376a.a
        /* renamed from: h */
        public void mo5920h(int i, int i2) {
            RecyclerView.this.m5759q0(i, i2, false);
            RecyclerView.this.f9534b1 = true;
        }

        /* renamed from: i */
        public void m5921i(C1376a.b bVar) {
            int i = bVar.f9855a;
            if (i == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.f9565r.onItemsAdded(recyclerView, bVar.f9856b, bVar.f9858d);
                return;
            }
            if (i == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.f9565r.onItemsRemoved(recyclerView2, bVar.f9856b, bVar.f9858d);
            } else if (i == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.f9565r.onItemsUpdated(recyclerView3, bVar.f9856b, bVar.f9858d, bVar.f9857c);
            } else {
                if (i != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.f9565r.onItemsMoved(recyclerView4, bVar.f9856b, bVar.f9858d, 1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C1356g {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9702a;

        static {
            int[] iArr = new int[Adapter.StateRestorationPolicy.values().length];
            f9702a = iArr;
            try {
                iArr[Adapter.StateRestorationPolicy.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9702a[Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes3.dex */
    public static class C1357h extends Observable<AdapterDataObserver> {
        /* renamed from: a */
        public boolean m5922a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        /* renamed from: b */
        public void m5923b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        /* renamed from: c */
        public void m5924c(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i, i2, 1);
            }
        }

        /* renamed from: d */
        public void m5925d(int i, int i2) {
            m5926e(i, i2, null);
        }

        /* renamed from: e */
        public void m5926e(int i, int i2, @Nullable Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        /* renamed from: f */
        public void m5927f(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        /* renamed from: g */
        public void m5928g(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }

        /* renamed from: h */
        public void m5929h() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes3.dex */
    public class C1358i implements ItemAnimator.InterfaceC1345a {
        public C1358i() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.InterfaceC1345a
        /* renamed from: a */
        public void mo5781a(ViewHolder viewHolder) {
            viewHolder.setIsRecyclable(true);
            if (viewHolder.f9685g != null && viewHolder.f9686h == null) {
                viewHolder.f9685g = null;
            }
            viewHolder.f9686h = null;
            if (viewHolder.m5870B() || RecyclerView.this.m5698G0(viewHolder.itemView) || !viewHolder.m5892r()) {
                return;
            }
            RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes3.dex */
    public class C1359j extends AdapterDataObserver {
        public C1359j() {
        }

        /* renamed from: a */
        public void m5930a() {
            if (RecyclerView.f9475B1) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f9578y && recyclerView.f9576x) {
                    ViewCompat.postOnAnimation(recyclerView, recyclerView.f9554m);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.f9571u0 = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            RecyclerView.this.m5747k(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f9531Y0.f9653g = true;
            recyclerView.m5775y0(true);
            if (RecyclerView.this.f9545i.m6100q()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, Object obj) {
            RecyclerView.this.m5747k(null);
            if (RecyclerView.this.f9545i.m6102s(i, i2, obj)) {
                m5930a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            RecyclerView.this.m5747k(null);
            if (RecyclerView.this.f9545i.m6103t(i, i2)) {
                m5930a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            RecyclerView.this.m5747k(null);
            if (RecyclerView.this.f9545i.m6104u(i, i2, i3)) {
                m5930a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            RecyclerView.this.m5747k(null);
            if (RecyclerView.this.f9545i.m6105v(i, i2)) {
                m5930a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onStateRestorationPolicyChanged() {
            Adapter adapter;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f9543h == null || (adapter = recyclerView.f9562q) == null || !adapter.m5778a()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes3.dex */
    public static class C1360k extends EdgeEffectFactory {
        @Override // androidx.recyclerview.widget.RecyclerView.EdgeEffectFactory
        @NonNull
        public EdgeEffect createEdgeEffect(@NonNull RecyclerView recyclerView, int i) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes3.dex */
    public class RunnableC1361l implements Runnable {

        /* renamed from: e */
        public int f9705e;

        /* renamed from: f */
        public int f9706f;

        /* renamed from: g */
        public OverScroller f9707g;

        /* renamed from: h */
        public Interpolator f9708h;

        /* renamed from: i */
        public boolean f9709i;

        /* renamed from: j */
        public boolean f9710j;

        public RunnableC1361l() {
            Interpolator interpolator = RecyclerView.f9494U1;
            this.f9708h = interpolator;
            this.f9709i = false;
            this.f9710j = false;
            this.f9707g = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        /* renamed from: a */
        public final int m5931a(int i, int i2) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z) {
                abs = abs2;
            }
            return Math.min((int) (((abs / width) + 1.0f) * 300.0f), 2000);
        }

        /* renamed from: b */
        public void m5932b(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.f9706f = 0;
            this.f9705e = 0;
            Interpolator interpolator = this.f9708h;
            Interpolator interpolator2 = RecyclerView.f9494U1;
            if (interpolator != interpolator2) {
                this.f9708h = interpolator2;
                this.f9707g = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f9707g.fling(0, 0, i, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            m5934d();
        }

        /* renamed from: c */
        public final void m5933c() {
            RecyclerView.this.removeCallbacks(this);
            ViewCompat.postOnAnimation(RecyclerView.this, this);
        }

        /* renamed from: d */
        public void m5934d() {
            if (this.f9709i) {
                this.f9710j = true;
            } else {
                m5933c();
            }
        }

        /* renamed from: e */
        public void m5935e(int i, int i2, int i3, @Nullable Interpolator interpolator) {
            if (i3 == Integer.MIN_VALUE) {
                i3 = m5931a(i, i2);
            }
            int i4 = i3;
            if (interpolator == null) {
                interpolator = RecyclerView.f9494U1;
            }
            if (this.f9708h != interpolator) {
                this.f9708h = interpolator;
                this.f9707g = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f9706f = 0;
            this.f9705e = 0;
            RecyclerView.this.setScrollState(2);
            this.f9707g.startScroll(0, 0, i, i2, i4);
            m5934d();
        }

        /* renamed from: f */
        public void m5936f() {
            RecyclerView.this.removeCallbacks(this);
            this.f9707g.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f9565r == null) {
                m5936f();
                return;
            }
            this.f9710j = false;
            this.f9709i = true;
            recyclerView.m5764t();
            OverScroller overScroller = this.f9707g;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.f9705e;
                int i4 = currY - this.f9706f;
                this.f9705e = currX;
                this.f9706f = currY;
                int m5758q = RecyclerView.this.m5758q(i3);
                int m5762s = RecyclerView.this.m5762s(i4);
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.f9553l1;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.dispatchNestedPreScroll(m5758q, m5762s, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.f9553l1;
                    m5758q -= iArr2[0];
                    m5762s -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m5756p(m5758q, m5762s);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.f9562q != null) {
                    int[] iArr3 = recyclerView3.f9553l1;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.m5714O0(m5758q, m5762s, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.f9553l1;
                    i2 = iArr4[0];
                    i = iArr4[1];
                    m5758q -= i2;
                    m5762s -= i;
                    SmoothScroller smoothScroller = recyclerView4.f9565r.f9597k;
                    if (smoothScroller != null && !smoothScroller.isPendingInitialRun() && smoothScroller.isRunning()) {
                        int itemCount = RecyclerView.this.f9531Y0.getItemCount();
                        if (itemCount == 0) {
                            smoothScroller.stop();
                        } else if (smoothScroller.getTargetPosition() >= itemCount) {
                            smoothScroller.setTargetPosition(itemCount - 1);
                            smoothScroller.m5862a(i2, i);
                        } else {
                            smoothScroller.m5862a(i2, i);
                        }
                    }
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (!RecyclerView.this.f9570u.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.f9553l1;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i2, i, m5758q, m5762s, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.f9553l1;
                int i5 = m5758q - iArr6[0];
                int i6 = m5762s - iArr6[1];
                if (i2 != 0 || i != 0) {
                    recyclerView6.m5695F(i2, i);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                SmoothScroller smoothScroller2 = RecyclerView.this.f9565r.f9597k;
                if ((smoothScroller2 != null && smoothScroller2.isPendingInitialRun()) || !z) {
                    m5934d();
                    RecyclerView recyclerView7 = RecyclerView.this;
                    RunnableC1380e runnableC1380e = recyclerView7.f9529W0;
                    if (runnableC1380e != null) {
                        runnableC1380e.m6205f(recyclerView7, i2, i);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                        if (i6 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i6 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.m5732a(i7, currVelocity);
                    }
                    if (RecyclerView.f9476C1) {
                        RecyclerView.this.f9530X0.m6211a();
                    }
                }
            }
            SmoothScroller smoothScroller3 = RecyclerView.this.f9565r.f9597k;
            if (smoothScroller3 != null && smoothScroller3.isPendingInitialRun()) {
                smoothScroller3.m5862a(0, 0);
            }
            this.f9709i = false;
            if (this.f9710j) {
                m5933c();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.stopNestedScroll(1);
            }
        }
    }

    static {
        Class<?> cls = Integer.TYPE;
        f9491R1 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f9494U1 = new InterpolatorC1352c();
        f9495V1 = new C1360k();
    }

    public RecyclerView(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: E0 */
    private int m5675E0(int i, float f) {
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.f9507D0;
        float f2 = 0.0f;
        if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f9509F0;
            if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.f9509F0.onRelease();
                } else {
                    float onPullDistance = EdgeEffectCompat.onPullDistance(this.f9509F0, height, 1.0f - width);
                    if (EdgeEffectCompat.getDistance(this.f9509F0) == 0.0f) {
                        this.f9509F0.onRelease();
                    }
                    f2 = onPullDistance;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.f9507D0.onRelease();
            } else {
                float f3 = -EdgeEffectCompat.onPullDistance(this.f9507D0, -height, width);
                if (EdgeEffectCompat.getDistance(this.f9507D0) == 0.0f) {
                    this.f9507D0.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getHeight());
    }

    @Nullable
    /* renamed from: Q */
    public static RecyclerView m5676Q(@NonNull View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView m5676Q = m5676Q(viewGroup.getChildAt(i));
            if (m5676Q != null) {
                return m5676Q;
            }
        }
        return null;
    }

    /* renamed from: V */
    public static ViewHolder m5677V(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).mViewHolder;
    }

    /* renamed from: V0 */
    private boolean m5678V0(MotionEvent motionEvent) {
        boolean z;
        EdgeEffect edgeEffect = this.f9506C0;
        if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
            z = false;
        } else {
            EdgeEffectCompat.onPullDistance(this.f9506C0, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
            z = true;
        }
        EdgeEffect edgeEffect2 = this.f9508E0;
        if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
            EdgeEffectCompat.onPullDistance(this.f9508E0, 0.0f, motionEvent.getY() / getHeight());
            z = true;
        }
        EdgeEffect edgeEffect3 = this.f9507D0;
        if (edgeEffect3 != null && EdgeEffectCompat.getDistance(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
            EdgeEffectCompat.onPullDistance(this.f9507D0, 0.0f, motionEvent.getX() / getWidth());
            z = true;
        }
        EdgeEffect edgeEffect4 = this.f9509F0;
        if (edgeEffect4 == null || EdgeEffectCompat.getDistance(edgeEffect4) == 0.0f || canScrollVertically(1)) {
            return z;
        }
        EdgeEffectCompat.onPullDistance(this.f9509F0, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    /* renamed from: W */
    public static void m5679W(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.mDecorInsets;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    /* renamed from: a0 */
    private float m5680a0(int i) {
        double log = Math.log((Math.abs(i) * 0.35f) / (this.f9537e * 0.015f));
        float f = f9502y1;
        return (float) (this.f9537e * 0.015f * Math.exp((f / (f - 1.0d)) * log));
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.f9546i1 == null) {
            this.f9546i1 = new NestedScrollingChildHelper(this);
        }
        return this.f9546i1;
    }

    /* renamed from: n */
    public static void m5685n(@NonNull ViewHolder viewHolder) {
        WeakReference<RecyclerView> weakReference = viewHolder.f9679a;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == viewHolder.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            viewHolder.f9679a = null;
        }
    }

    /* renamed from: A */
    public void m5686A() {
        if (this.f9562q == null) {
            Log.w(f9496s1, "No adapter attached; skipping layout");
            return;
        }
        if (this.f9565r == null) {
            Log.e(f9496s1, "No layout manager attached; skipping layout");
            return;
        }
        this.f9531Y0.f9656j = false;
        boolean z = this.f9559o1 && !(this.f9561p1 == getWidth() && this.f9564q1 == getHeight());
        this.f9561p1 = 0;
        this.f9564q1 = 0;
        this.f9559o1 = false;
        if (this.f9531Y0.f9651e == 1) {
            m5688B();
            this.f9565r.m5797p(this);
            m5690C();
        } else if (this.f9545i.m6101r() || z || this.f9565r.getWidth() != getWidth() || this.f9565r.getHeight() != getHeight()) {
            this.f9565r.m5797p(this);
            m5690C();
        } else {
            this.f9565r.m5797p(this);
        }
        m5692D();
    }

    /* renamed from: A0 */
    public void m5687A0(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo) {
        viewHolder.m5900z(0, 8192);
        if (this.f9531Y0.f9655i && viewHolder.m5893s() && !viewHolder.m5890p() && !viewHolder.m5871C()) {
            this.f9549k.m6247c(m5724U(viewHolder), viewHolder);
        }
        this.f9549k.m6249e(viewHolder, itemHolderInfo);
    }

    /* renamed from: B */
    public final void m5688B() {
        this.f9531Y0.m5867a(1);
        m5711N(this.f9531Y0);
        this.f9531Y0.f9656j = false;
        m5725U0();
        this.f9549k.m6250f();
        m5761r0();
        m5773x0();
        m5708L0();
        State state = this.f9531Y0;
        state.f9655i = state.f9657k && this.f9535c1;
        this.f9535c1 = false;
        this.f9534b1 = false;
        state.f9654h = state.f9658l;
        state.f9652f = this.f9562q.getItemCount();
        m5715P(this.f9544h1);
        if (this.f9531Y0.f9657k) {
            int m6117g = this.f9547j.m6117g();
            for (int i = 0; i < m6117g; i++) {
                ViewHolder m5677V = m5677V(this.f9547j.m6116f(i));
                if (!m5677V.m5871C() && (!m5677V.m5889o() || this.f9562q.hasStableIds())) {
                    this.f9549k.m6249e(m5677V, this.f9510G0.recordPreLayoutInformation(this.f9531Y0, m5677V, ItemAnimator.m5779a(m5677V), m5677V.m5884j()));
                    if (this.f9531Y0.f9655i && m5677V.m5893s() && !m5677V.m5890p() && !m5677V.m5871C() && !m5677V.m5889o()) {
                        this.f9549k.m6247c(m5724U(m5677V), m5677V);
                    }
                }
            }
        }
        if (this.f9531Y0.f9658l) {
            m5710M0();
            State state2 = this.f9531Y0;
            boolean z = state2.f9653g;
            state2.f9653g = false;
            this.f9565r.onLayoutChildren(this.f9541g, state2);
            this.f9531Y0.f9653g = z;
            for (int i2 = 0; i2 < this.f9547j.m6117g(); i2++) {
                ViewHolder m5677V2 = m5677V(this.f9547j.m6116f(i2));
                if (!m5677V2.m5871C() && !this.f9549k.m6253i(m5677V2)) {
                    int m5779a = ItemAnimator.m5779a(m5677V2);
                    boolean m5885k = m5677V2.m5885k(8192);
                    if (!m5885k) {
                        m5779a |= 4096;
                    }
                    ItemAnimator.ItemHolderInfo recordPreLayoutInformation = this.f9510G0.recordPreLayoutInformation(this.f9531Y0, m5677V2, m5779a, m5677V2.m5884j());
                    if (m5885k) {
                        m5687A0(m5677V2, recordPreLayoutInformation);
                    } else {
                        this.f9549k.m6245a(m5677V2, recordPreLayoutInformation);
                    }
                }
            }
            m5754o();
        } else {
            m5754o();
        }
        m5763s0();
        m5726W0(false);
        this.f9531Y0.f9651e = 2;
    }

    /* renamed from: B0 */
    public final void m5689B0() {
        View findViewById;
        if (!this.f9527U0 || this.f9562q == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!f9478E1 || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.f9547j.m6124n(focusedChild)) {
                    return;
                }
            } else if (this.f9547j.m6117g() == 0) {
                requestFocus();
                return;
            }
        }
        View view = null;
        ViewHolder findViewHolderForItemId = (this.f9531Y0.f9660n == -1 || !this.f9562q.hasStableIds()) ? null : findViewHolderForItemId(this.f9531Y0.f9660n);
        if (findViewHolderForItemId != null && !this.f9547j.m6124n(findViewHolderForItemId.itemView) && findViewHolderForItemId.itemView.hasFocusable()) {
            view = findViewHolderForItemId.itemView;
        } else if (this.f9547j.m6117g() > 0) {
            view = m5718R();
        }
        if (view != null) {
            int i = this.f9531Y0.f9661o;
            if (i != -1 && (findViewById = view.findViewById(i)) != null && findViewById.isFocusable()) {
                view = findViewById;
            }
            view.requestFocus();
        }
    }

    /* renamed from: C */
    public final void m5690C() {
        m5725U0();
        m5761r0();
        this.f9531Y0.m5867a(6);
        this.f9545i.m6094k();
        this.f9531Y0.f9652f = this.f9562q.getItemCount();
        this.f9531Y0.f9650d = 0;
        if (this.f9543h != null && this.f9562q.m5778a()) {
            Parcelable parcelable = this.f9543h.mLayoutState;
            if (parcelable != null) {
                this.f9565r.onRestoreInstanceState(parcelable);
            }
            this.f9543h = null;
        }
        State state = this.f9531Y0;
        state.f9654h = false;
        this.f9565r.onLayoutChildren(this.f9541g, state);
        State state2 = this.f9531Y0;
        state2.f9653g = false;
        state2.f9657k = state2.f9657k && this.f9510G0 != null;
        state2.f9651e = 4;
        m5763s0();
        m5726W0(false);
    }

    /* renamed from: C0 */
    public final void m5691C0() {
        boolean z;
        EdgeEffect edgeEffect = this.f9506C0;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f9506C0.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f9507D0;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.f9507D0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f9508E0;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.f9508E0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f9509F0;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.f9509F0.isFinished();
        }
        if (z) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: D */
    public final void m5692D() {
        this.f9531Y0.m5867a(4);
        m5725U0();
        m5761r0();
        State state = this.f9531Y0;
        state.f9651e = 1;
        if (state.f9657k) {
            for (int m6117g = this.f9547j.m6117g() - 1; m6117g >= 0; m6117g--) {
                ViewHolder m5677V = m5677V(this.f9547j.m6116f(m6117g));
                if (!m5677V.m5871C()) {
                    long m5724U = m5724U(m5677V);
                    ItemAnimator.ItemHolderInfo recordPostLayoutInformation = this.f9510G0.recordPostLayoutInformation(this.f9531Y0, m5677V);
                    ViewHolder m6251g = this.f9549k.m6251g(m5724U);
                    if (m6251g == null || m6251g.m5871C()) {
                        this.f9549k.m6248d(m5677V, recordPostLayoutInformation);
                    } else {
                        boolean m6252h = this.f9549k.m6252h(m6251g);
                        boolean m6252h2 = this.f9549k.m6252h(m5677V);
                        if (m6252h && m6251g == m5677V) {
                            this.f9549k.m6248d(m5677V, recordPostLayoutInformation);
                        } else {
                            ItemAnimator.ItemHolderInfo m6258n = this.f9549k.m6258n(m6251g);
                            this.f9549k.m6248d(m5677V, recordPostLayoutInformation);
                            ItemAnimator.ItemHolderInfo m6257m = this.f9549k.m6257m(m5677V);
                            if (m6258n == null) {
                                m5733b0(m5724U, m5677V, m6251g);
                            } else {
                                m5741h(m6251g, m5677V, m6258n, m6257m, m6252h, m6252h2);
                            }
                        }
                    }
                }
            }
            this.f9549k.m6259o(this.f9566r1);
        }
        this.f9565r.m5795n(this.f9541g);
        State state2 = this.f9531Y0;
        state2.f9649c = state2.f9652f;
        this.f9577x0 = false;
        this.f9579y0 = false;
        state2.f9657k = false;
        state2.f9658l = false;
        this.f9565r.f9598l = false;
        ArrayList<ViewHolder> arrayList = this.f9541g.f9621b;
        if (arrayList != null) {
            arrayList.clear();
        }
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager.f9604r) {
            layoutManager.f9603q = 0;
            layoutManager.f9604r = false;
            this.f9541g.m5830J();
        }
        this.f9565r.onLayoutCompleted(this.f9531Y0);
        m5763s0();
        m5726W0(false);
        this.f9549k.m6250f();
        int[] iArr = this.f9544h1;
        if (m5770w(iArr[0], iArr[1])) {
            m5695F(0, 0);
        }
        m5689B0();
        m5704J0();
    }

    /* renamed from: D0 */
    public final int m5693D0(int i, float f) {
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.f9506C0;
        float f2 = 0.0f;
        if (edgeEffect == null || EdgeEffectCompat.getDistance(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f9508E0;
            if (edgeEffect2 != null && EdgeEffectCompat.getDistance(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.f9508E0.onRelease();
                } else {
                    float onPullDistance = EdgeEffectCompat.onPullDistance(this.f9508E0, width, height);
                    if (EdgeEffectCompat.getDistance(this.f9508E0) == 0.0f) {
                        this.f9508E0.onRelease();
                    }
                    f2 = onPullDistance;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.f9506C0.onRelease();
            } else {
                float f3 = -EdgeEffectCompat.onPullDistance(this.f9506C0, -width, 1.0f - height);
                if (EdgeEffectCompat.getDistance(this.f9506C0) == 0.0f) {
                    this.f9506C0.onRelease();
                }
                f2 = f3;
            }
            invalidate();
        }
        return Math.round(f2 * getWidth());
    }

    /* renamed from: E */
    public void m5694E(int i) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            layoutManager.onScrollStateChanged(i);
        }
        onScrollStateChanged(i);
        OnScrollListener onScrollListener = this.f9532Z0;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(this, i);
        }
        List<OnScrollListener> list = this.f9533a1;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f9533a1.get(size).onScrollStateChanged(this, i);
            }
        }
    }

    /* renamed from: F */
    public void m5695F(int i, int i2) {
        this.f9504A0++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        onScrolled(i, i2);
        OnScrollListener onScrollListener = this.f9532Z0;
        if (onScrollListener != null) {
            onScrollListener.onScrolled(this, i, i2);
        }
        List<OnScrollListener> list = this.f9533a1;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f9533a1.get(size).onScrolled(this, i, i2);
            }
        }
        this.f9504A0--;
    }

    /* renamed from: F0 */
    public void m5696F0() {
        ItemAnimator itemAnimator = this.f9510G0;
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            layoutManager.removeAndRecycleAllViews(this.f9541g);
            this.f9565r.m5795n(this.f9541g);
        }
        this.f9541g.clear();
    }

    /* renamed from: G */
    public void m5697G() {
        int i;
        for (int size = this.f9555m1.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = this.f9555m1.get(size);
            if (viewHolder.itemView.getParent() == this && !viewHolder.m5871C() && (i = viewHolder.f9694p) != -1) {
                ViewCompat.setImportantForAccessibility(viewHolder.itemView, i);
                viewHolder.f9694p = -1;
            }
        }
        this.f9555m1.clear();
    }

    /* renamed from: G0 */
    public boolean m5698G0(View view) {
        m5725U0();
        boolean m6128r = this.f9547j.m6128r(view);
        if (m6128r) {
            ViewHolder m5677V = m5677V(view);
            this.f9541g.m5829I(m5677V);
            this.f9541g.m5823C(m5677V);
        }
        m5726W0(!m6128r);
        return m6128r;
    }

    /* renamed from: H */
    public final boolean m5699H(MotionEvent motionEvent) {
        OnItemTouchListener onItemTouchListener = this.f9574w;
        if (onItemTouchListener == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return m5713O(motionEvent);
        }
        onItemTouchListener.onTouchEvent(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.f9574w = null;
        }
        return true;
    }

    /* renamed from: H0 */
    public void m5700H0() {
        ViewHolder viewHolder;
        int m6117g = this.f9547j.m6117g();
        for (int i = 0; i < m6117g; i++) {
            View m6116f = this.f9547j.m6116f(i);
            ViewHolder childViewHolder = getChildViewHolder(m6116f);
            if (childViewHolder != null && (viewHolder = childViewHolder.f9686h) != null) {
                View view = viewHolder.itemView;
                int left = m6116f.getLeft();
                int top = m6116f.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    /* renamed from: I */
    public void m5701I() {
        if (this.f9509F0 != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.f9505B0.createEdgeEffect(this, 3);
        this.f9509F0 = createEdgeEffect;
        if (this.f9552l) {
            createEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            createEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: I0 */
    public final void m5702I0(@NonNull View view, @Nullable View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f9556n.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.mInsetsDirty) {
                Rect rect = layoutParams2.mDecorInsets;
                Rect rect2 = this.f9556n;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f9556n);
            offsetRectIntoDescendantCoords(view, this.f9556n);
        }
        this.f9565r.requestChildRectangleOnScreen(this, view, this.f9556n, !this.f9513J, view2 == null);
    }

    /* renamed from: J */
    public void m5703J() {
        if (this.f9506C0 != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.f9505B0.createEdgeEffect(this, 0);
        this.f9506C0 = createEdgeEffect;
        if (this.f9552l) {
            createEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            createEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: J0 */
    public final void m5704J0() {
        State state = this.f9531Y0;
        state.f9660n = -1L;
        state.f9659m = -1;
        state.f9661o = -1;
    }

    /* renamed from: K */
    public void m5705K() {
        if (this.f9508E0 != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.f9505B0.createEdgeEffect(this, 2);
        this.f9508E0 = createEdgeEffect;
        if (this.f9552l) {
            createEdgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            createEdgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: K0 */
    public final void m5706K0() {
        VelocityTracker velocityTracker = this.f9514J0;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        m5691C0();
    }

    /* renamed from: L */
    public void m5707L() {
        if (this.f9507D0 != null) {
            return;
        }
        EdgeEffect createEdgeEffect = this.f9505B0.createEdgeEffect(this, 1);
        this.f9507D0 = createEdgeEffect;
        if (this.f9552l) {
            createEdgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            createEdgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: L0 */
    public final void m5708L0() {
        View focusedChild = (this.f9527U0 && hasFocus() && this.f9562q != null) ? getFocusedChild() : null;
        ViewHolder findContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (findContainingViewHolder == null) {
            m5704J0();
            return;
        }
        this.f9531Y0.f9660n = this.f9562q.hasStableIds() ? findContainingViewHolder.getItemId() : -1L;
        this.f9531Y0.f9659m = this.f9577x0 ? -1 : findContainingViewHolder.m5890p() ? findContainingViewHolder.f9681c : findContainingViewHolder.getAbsoluteAdapterPosition();
        this.f9531Y0.f9661o = m5727X(findContainingViewHolder.itemView);
    }

    /* renamed from: M */
    public String m5709M() {
        return " " + super.toString() + ", adapter:" + this.f9562q + ", layout:" + this.f9565r + ", context:" + getContext();
    }

    /* renamed from: M0 */
    public void m5710M0() {
        int m6120j = this.f9547j.m6120j();
        for (int i = 0; i < m6120j; i++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6119i(i));
            if (!m5677V.m5871C()) {
                m5677V.m5899y();
            }
        }
    }

    /* renamed from: N */
    public final void m5711N(State state) {
        if (getScrollState() != 2) {
            state.f9662p = 0;
            state.f9663q = 0;
        } else {
            OverScroller overScroller = this.f9528V0.f9707g;
            state.f9662p = overScroller.getFinalX() - overScroller.getCurrX();
            state.f9663q = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    /* renamed from: N0 */
    public boolean m5712N0(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        m5764t();
        if (this.f9562q != null) {
            int[] iArr = this.f9553l1;
            iArr[0] = 0;
            iArr[1] = 0;
            m5714O0(i, i2, iArr);
            int[] iArr2 = this.f9553l1;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i4 = i9;
            i5 = i8;
            i6 = i - i8;
            i7 = i2 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.f9570u.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.f9553l1;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i5, i4, i6, i7, this.f9548j1, i3, iArr3);
        int[] iArr4 = this.f9553l1;
        int i10 = iArr4[0];
        int i11 = i6 - i10;
        int i12 = iArr4[1];
        int i13 = i7 - i12;
        boolean z = (i10 == 0 && i12 == 0) ? false : true;
        int i14 = this.f9517M0;
        int[] iArr5 = this.f9548j1;
        int i15 = iArr5[0];
        this.f9517M0 = i14 - i15;
        int i16 = this.f9518N0;
        int i17 = iArr5[1];
        this.f9518N0 = i16 - i17;
        int[] iArr6 = this.f9551k1;
        iArr6[0] = iArr6[0] + i15;
        iArr6[1] = iArr6[1] + i17;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !MotionEventCompat.isFromSource(motionEvent, 8194)) {
                m5777z0(motionEvent.getX(), i11, motionEvent.getY(), i13);
            }
            m5756p(i, i2);
        }
        if (i5 != 0 || i4 != 0) {
            m5695F(i5, i4);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z && i5 == 0 && i4 == 0) ? false : true;
    }

    /* renamed from: O */
    public final boolean m5713O(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f9572v.size();
        for (int i = 0; i < size; i++) {
            OnItemTouchListener onItemTouchListener = this.f9572v.get(i);
            if (onItemTouchListener.onInterceptTouchEvent(this, motionEvent) && action != 3) {
                this.f9574w = onItemTouchListener;
                return true;
            }
        }
        return false;
    }

    /* renamed from: O0 */
    public void m5714O0(int i, int i2, @Nullable int[] iArr) {
        m5725U0();
        m5761r0();
        TraceCompat.beginSection(f9483J1);
        m5711N(this.f9531Y0);
        int scrollHorizontallyBy = i != 0 ? this.f9565r.scrollHorizontallyBy(i, this.f9541g, this.f9531Y0) : 0;
        int scrollVerticallyBy = i2 != 0 ? this.f9565r.scrollVerticallyBy(i2, this.f9541g, this.f9531Y0) : 0;
        TraceCompat.endSection();
        m5700H0();
        m5763s0();
        m5726W0(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    /* renamed from: P */
    public final void m5715P(int[] iArr) {
        int m6117g = this.f9547j.m6117g();
        if (m6117g == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < m6117g; i3++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6116f(i3));
            if (!m5677V.m5871C()) {
                int layoutPosition = m5677V.getLayoutPosition();
                if (layoutPosition < i) {
                    i = layoutPosition;
                }
                if (layoutPosition > i2) {
                    i2 = layoutPosition;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    /* renamed from: P0 */
    public final void m5716P0(@Nullable Adapter<?> adapter, boolean z, boolean z2) {
        Adapter adapter2 = this.f9562q;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.f9539f);
            this.f9562q.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            m5696F0();
        }
        this.f9545i.m6109z();
        Adapter<?> adapter3 = this.f9562q;
        this.f9562q = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f9539f);
            adapter.onAttachedToRecyclerView(this);
        }
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            layoutManager.onAdapterChanged(adapter3, this.f9562q);
        }
        this.f9541g.m5853u(adapter3, this.f9562q, z);
        this.f9531Y0.f9653g = true;
    }

    @VisibleForTesting
    /* renamed from: Q0 */
    public boolean m5717Q0(ViewHolder viewHolder, int i) {
        if (!isComputingLayout()) {
            ViewCompat.setImportantForAccessibility(viewHolder.itemView, i);
            return true;
        }
        viewHolder.f9694p = i;
        this.f9555m1.add(viewHolder);
        return false;
    }

    @Nullable
    /* renamed from: R */
    public final View m5718R() {
        ViewHolder findViewHolderForAdapterPosition;
        State state = this.f9531Y0;
        int i = state.f9659m;
        if (i == -1) {
            i = 0;
        }
        int itemCount = state.getItemCount();
        for (int i2 = i; i2 < itemCount; i2++) {
            ViewHolder findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i2);
            if (findViewHolderForAdapterPosition2 == null) {
                break;
            }
            if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        int min = Math.min(itemCount, i);
        do {
            min--;
            if (min < 0 || (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) == null) {
                return null;
            }
        } while (!findViewHolderForAdapterPosition.itemView.hasFocusable());
        return findViewHolderForAdapterPosition.itemView;
    }

    /* renamed from: R0 */
    public final boolean m5719R0(@NonNull EdgeEffect edgeEffect, int i, int i2) {
        if (i > 0) {
            return true;
        }
        return m5680a0(-i) < EdgeEffectCompat.getDistance(edgeEffect) * ((float) i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036 A[SYNTHETIC] */
    @androidx.annotation.Nullable
    /* renamed from: S */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.recyclerview.widget.RecyclerView.ViewHolder m5720S(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.b r0 = r5.f9547j
            int r0 = r0.m6120j()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3a
            androidx.recyclerview.widget.b r3 = r5.f9547j
            android.view.View r3 = r3.m6119i(r2)
            androidx.recyclerview.widget.RecyclerView$ViewHolder r3 = m5677V(r3)
            if (r3 == 0) goto L37
            boolean r4 = r3.m5890p()
            if (r4 != 0) goto L37
            if (r7 == 0) goto L23
            int r4 = r3.f9680b
            if (r4 == r6) goto L2a
            goto L37
        L23:
            int r4 = r3.getLayoutPosition()
            if (r4 == r6) goto L2a
            goto L37
        L2a:
            androidx.recyclerview.widget.b r1 = r5.f9547j
            android.view.View r4 = r3.itemView
            boolean r1 = r1.m6124n(r4)
            if (r1 == 0) goto L36
            r1 = r3
            goto L37
        L36:
            return r3
        L37:
            int r2 = r2 + 1
            goto L8
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m5720S(int, boolean):androidx.recyclerview.widget.RecyclerView$ViewHolder");
    }

    /* renamed from: S0 */
    public boolean m5721S0(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? AccessibilityEventCompat.getContentChangeTypes(accessibilityEvent) : 0;
        this.f9569t0 |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        return true;
    }

    /* renamed from: T */
    public int m5722T(ViewHolder viewHolder) {
        if (viewHolder.m5885k(524) || !viewHolder.m5888n()) {
            return -1;
        }
        return this.f9545i.m6089f(viewHolder.f9680b);
    }

    /* renamed from: T0 */
    public void m5723T0(@Px int i, @Px int i2, @Nullable Interpolator interpolator, int i3, boolean z) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager == null) {
            Log.e(f9496s1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f9550k0) {
            return;
        }
        if (!layoutManager.canScrollHorizontally()) {
            i = 0;
        }
        if (!this.f9565r.canScrollVertically()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (!(i3 == Integer.MIN_VALUE || i3 > 0)) {
            scrollBy(i, i2);
            return;
        }
        if (z) {
            int i4 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i4 |= 2;
            }
            startNestedScroll(i4, 1);
        }
        this.f9528V0.m5935e(i, i2, i3, interpolator);
    }

    /* renamed from: U */
    public long m5724U(ViewHolder viewHolder) {
        return this.f9562q.hasStableIds() ? viewHolder.getItemId() : viewHolder.f9680b;
    }

    /* renamed from: U0 */
    public void m5725U0() {
        int i = this.f9519O + 1;
        this.f9519O = i;
        if (i != 1 || this.f9550k0) {
            return;
        }
        this.f9522Q = false;
    }

    /* renamed from: W0 */
    public void m5726W0(boolean z) {
        if (this.f9519O < 1) {
            this.f9519O = 1;
        }
        if (!z && !this.f9550k0) {
            this.f9522Q = false;
        }
        if (this.f9519O == 1) {
            if (z && this.f9522Q && !this.f9550k0 && this.f9565r != null && this.f9562q != null) {
                m5686A();
            }
            if (!this.f9550k0) {
                this.f9522Q = false;
            }
        }
        this.f9519O--;
    }

    /* renamed from: X */
    public final int m5727X(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    /* renamed from: X0 */
    public final void m5728X0() {
        this.f9528V0.m5936f();
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            layoutManager.m5803w();
        }
    }

    /* renamed from: Y */
    public final String m5729Y(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    /* renamed from: Y0 */
    public void m5730Y0(int i, int i2, Object obj) {
        int i3;
        int m6120j = this.f9547j.m6120j();
        int i4 = i + i2;
        for (int i5 = 0; i5 < m6120j; i5++) {
            View m6119i = this.f9547j.m6119i(i5);
            ViewHolder m5677V = m5677V(m6119i);
            if (m5677V != null && !m5677V.m5871C() && (i3 = m5677V.f9680b) >= i && i3 < i4) {
                m5677V.m5876b(2);
                m5677V.m5875a(obj);
                ((LayoutParams) m6119i.getLayoutParams()).mInsetsDirty = true;
            }
        }
        this.f9541g.m5832L(i, i2);
    }

    /* renamed from: Z */
    public Rect m5731Z(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.mInsetsDirty) {
            return layoutParams.mDecorInsets;
        }
        if (this.f9531Y0.isPreLayout() && (layoutParams.isItemChanged() || layoutParams.isViewInvalid())) {
            return layoutParams.mDecorInsets;
        }
        Rect rect = layoutParams.mDecorInsets;
        rect.set(0, 0, 0, 0);
        int size = this.f9570u.size();
        for (int i = 0; i < size; i++) {
            this.f9556n.set(0, 0, 0, 0);
            this.f9570u.get(i).getItemOffsets(this.f9556n, view, this, this.f9531Y0);
            int i2 = rect.left;
            Rect rect2 = this.f9556n;
            rect.left = i2 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.mInsetsDirty = false;
        return rect;
    }

    /* renamed from: a */
    public void m5732a(int i, int i2) {
        if (i < 0) {
            m5703J();
            if (this.f9506C0.isFinished()) {
                this.f9506C0.onAbsorb(-i);
            }
        } else if (i > 0) {
            m5705K();
            if (this.f9508E0.isFinished()) {
                this.f9508E0.onAbsorb(i);
            }
        }
        if (i2 < 0) {
            m5707L();
            if (this.f9507D0.isFinished()) {
                this.f9507D0.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            m5701I();
            if (this.f9509F0.isFinished()) {
                this.f9509F0.onAbsorb(i2);
            }
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager == null || !layoutManager.onAddFocusables(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public void addItemDecoration(@NonNull ItemDecoration itemDecoration, int i) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f9570u.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.f9570u.add(itemDecoration);
        } else {
            this.f9570u.add(i, itemDecoration);
        }
        m5750l0();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(@NonNull OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        if (this.f9575w0 == null) {
            this.f9575w0 = new ArrayList();
        }
        this.f9575w0.add(onChildAttachStateChangeListener);
    }

    public void addOnItemTouchListener(@NonNull OnItemTouchListener onItemTouchListener) {
        this.f9572v.add(onItemTouchListener);
    }

    public void addOnScrollListener(@NonNull OnScrollListener onScrollListener) {
        if (this.f9533a1 == null) {
            this.f9533a1 = new ArrayList();
        }
        this.f9533a1.add(onScrollListener);
    }

    public void addRecyclerListener(@NonNull RecyclerListener recyclerListener) {
        Preconditions.checkArgument(recyclerListener != null, "'listener' arg cannot be null.");
        this.f9568t.add(recyclerListener);
    }

    /* renamed from: b0 */
    public final void m5733b0(long j, ViewHolder viewHolder, ViewHolder viewHolder2) {
        int m6117g = this.f9547j.m6117g();
        for (int i = 0; i < m6117g; i++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6116f(i));
            if (m5677V != viewHolder && m5724U(m5677V) == j) {
                Adapter adapter = this.f9562q;
                if (adapter == null || !adapter.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + m5677V + " \n View Holder 2:" + viewHolder + m5709M());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + m5677V + " \n View Holder 2:" + viewHolder + m5709M());
            }
        }
        Log.e(f9496s1, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + viewHolder2 + " cannot be found but it is necessary for " + viewHolder + m5709M());
    }

    /* renamed from: c0 */
    public final boolean m5734c0() {
        int m6117g = this.f9547j.m6117g();
        for (int i = 0; i < m6117g; i++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6116f(i));
            if (m5677V != null && !m5677V.m5871C() && m5677V.m5893s()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.f9565r.checkLayoutParams((LayoutParams) layoutParams);
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<OnChildAttachStateChangeListener> list = this.f9575w0;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<OnScrollListener> list = this.f9533a1;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.f9565r.computeHorizontalScrollExtent(this.f9531Y0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.f9565r.computeHorizontalScrollOffset(this.f9531Y0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.f9565r.computeHorizontalScrollRange(this.f9531Y0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.f9565r.computeVerticalScrollExtent(this.f9531Y0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.f9565r.computeVerticalScrollOffset(this.f9531Y0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.f9565r.computeVerticalScrollRange(this.f9531Y0);
        }
        return 0;
    }

    /* renamed from: d0 */
    public void m5735d0() {
        this.f9545i = new C1376a(new C1355f());
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.f9570u.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            this.f9570u.get(i).onDrawOver(canvas, this, this.f9531Y0);
        }
        EdgeEffect edgeEffect = this.f9506C0;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f9552l ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f9506C0;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f9507D0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.f9552l) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f9507D0;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.f9508E0;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f9552l ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f9508E0;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.f9509F0;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f9552l) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f9509F0;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || this.f9510G0 == null || this.f9570u.size() <= 0 || !this.f9510G0.isRunning()) ? z : true) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: e0 */
    public final void m5736e0() {
        if (ViewCompat.getImportantForAutofill(this) == 0) {
            ViewCompat.setImportantForAutofill(this, 8);
        }
    }

    /* renamed from: f */
    public final void m5737f(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean z = view.getParent() == this;
        this.f9541g.m5829I(getChildViewHolder(view));
        if (viewHolder.m5892r()) {
            this.f9547j.m6113c(view, -1, view.getLayoutParams(), true);
        } else if (z) {
            this.f9547j.m6121k(view);
        } else {
            this.f9547j.m6112b(view, true);
        }
    }

    /* renamed from: f0 */
    public final void m5738f0() {
        this.f9547j = new C1377b(new C1354e());
    }

    @Nullable
    public View findChildViewUnder(float f, float f2) {
        for (int m6117g = this.f9547j.m6117g() - 1; m6117g >= 0; m6117g--) {
            View m6116f = this.f9547j.m6116f(m6117g);
            float translationX = m6116f.getTranslationX();
            float translationY = m6116f.getTranslationY();
            if (f >= m6116f.getLeft() + translationX && f <= m6116f.getRight() + translationX && f2 >= m6116f.getTop() + translationY && f2 <= m6116f.getBottom() + translationY) {
                return m6116f;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:?, code lost:
    
        return r3;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View findContainingItemView(@androidx.annotation.NonNull android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findContainingItemView(android.view.View):android.view.View");
    }

    @Nullable
    public ViewHolder findContainingViewHolder(@NonNull View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    @Nullable
    public ViewHolder findViewHolderForAdapterPosition(int i) {
        ViewHolder viewHolder = null;
        if (this.f9577x0) {
            return null;
        }
        int m6120j = this.f9547j.m6120j();
        for (int i2 = 0; i2 < m6120j; i2++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6119i(i2));
            if (m5677V != null && !m5677V.m5890p() && m5722T(m5677V) == i) {
                if (!this.f9547j.m6124n(m5677V.itemView)) {
                    return m5677V;
                }
                viewHolder = m5677V;
            }
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForItemId(long j) {
        Adapter adapter = this.f9562q;
        ViewHolder viewHolder = null;
        if (adapter != null && adapter.hasStableIds()) {
            int m6120j = this.f9547j.m6120j();
            for (int i = 0; i < m6120j; i++) {
                ViewHolder m5677V = m5677V(this.f9547j.m6119i(i));
                if (m5677V != null && !m5677V.m5890p() && m5677V.getItemId() == j) {
                    if (!this.f9547j.m6124n(m5677V.itemView)) {
                        return m5677V;
                    }
                    viewHolder = m5677V;
                }
            }
        }
        return viewHolder;
    }

    @Nullable
    public ViewHolder findViewHolderForLayoutPosition(int i) {
        return m5720S(i, false);
    }

    @Nullable
    @Deprecated
    public ViewHolder findViewHolderForPosition(int i) {
        return m5720S(i, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f0  */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean fling(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.fling(int, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i) {
        View view2;
        boolean z;
        View onInterceptFocusSearch = this.f9565r.onInterceptFocusSearch(view, i);
        if (onInterceptFocusSearch != null) {
            return onInterceptFocusSearch;
        }
        boolean z2 = (this.f9562q == null || this.f9565r == null || isComputingLayout() || this.f9550k0) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z2 && (i == 2 || i == 1)) {
            if (this.f9565r.canScrollVertically()) {
                int i2 = i == 2 ? 130 : 33;
                z = focusFinder.findNextFocus(this, view, i2) == null;
                if (f9477D1) {
                    i = i2;
                }
            } else {
                z = false;
            }
            if (!z && this.f9565r.canScrollHorizontally()) {
                int i3 = (this.f9565r.getLayoutDirection() == 1) ^ (i == 2) ? 66 : 17;
                boolean z3 = focusFinder.findNextFocus(this, view, i3) == null;
                if (f9477D1) {
                    i = i3;
                }
                z = z3;
            }
            if (z) {
                m5764t();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                m5725U0();
                this.f9565r.onFocusSearchFailed(view, i, this.f9541g, this.f9531Y0);
                m5726W0(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i);
            if (findNextFocus == null && z2) {
                m5764t();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                m5725U0();
                view2 = this.f9565r.onFocusSearchFailed(view, i, this.f9541g, this.f9531Y0);
                m5726W0(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            return m5746j0(view, view2, i) ? view2 : super.focusSearch(view, i);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i);
        }
        m5702I0(view2, null);
        return view;
    }

    /* renamed from: g */
    public void m5739g(@NonNull ViewHolder viewHolder, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        viewHolder.setIsRecyclable(false);
        if (this.f9510G0.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            m5769v0();
        }
    }

    @VisibleForTesting
    /* renamed from: g0 */
    public void m5740g0(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new C1379d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(C1308R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(C1308R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(C1308R.dimen.fastscroll_margin));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + m5709M());
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            return layoutManager.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m5709M());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            return layoutManager.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m5709M());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    @Nullable
    public Adapter getAdapter() {
        return this.f9562q;
    }

    @Override // android.view.View
    public int getBaseline() {
        LayoutManager layoutManager = this.f9565r;
        return layoutManager != null ? layoutManager.getBaseline() : super.getBaseline();
    }

    public int getChildAdapterPosition(@NonNull View view) {
        ViewHolder m5677V = m5677V(view);
        if (m5677V != null) {
            return m5677V.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        ChildDrawingOrderCallback childDrawingOrderCallback = this.f9542g1;
        return childDrawingOrderCallback == null ? super.getChildDrawingOrder(i, i2) : childDrawingOrderCallback.onGetChildDrawingOrder(i, i2);
    }

    public long getChildItemId(@NonNull View view) {
        ViewHolder m5677V;
        Adapter adapter = this.f9562q;
        if (adapter == null || !adapter.hasStableIds() || (m5677V = m5677V(view)) == null) {
            return -1L;
        }
        return m5677V.getItemId();
    }

    public int getChildLayoutPosition(@NonNull View view) {
        ViewHolder m5677V = m5677V(view);
        if (m5677V != null) {
            return m5677V.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(@NonNull View view) {
        return getChildAdapterPosition(view);
    }

    public ViewHolder getChildViewHolder(@NonNull View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m5677V(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f9552l;
    }

    @Nullable
    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.f9540f1;
    }

    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        m5679W(view, rect);
    }

    @NonNull
    public EdgeEffectFactory getEdgeEffectFactory() {
        return this.f9505B0;
    }

    @Nullable
    public ItemAnimator getItemAnimator() {
        return this.f9510G0;
    }

    @NonNull
    public ItemDecoration getItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i >= 0 && i < itemDecorationCount) {
            return this.f9570u.get(i);
        }
        throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.f9570u.size();
    }

    @Nullable
    public LayoutManager getLayoutManager() {
        return this.f9565r;
    }

    public int getMaxFlingVelocity() {
        return this.f9524R0;
    }

    public int getMinFlingVelocity() {
        return this.f9523Q0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (f9476C1) {
            return System.nanoTime();
        }
        return 0L;
    }

    @Nullable
    public OnFlingListener getOnFlingListener() {
        return this.f9521P0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f9527U0;
    }

    @NonNull
    public RecycledViewPool getRecycledViewPool() {
        return this.f9541g.m5839g();
    }

    public int getScrollState() {
        return this.f9511H0;
    }

    /* renamed from: h */
    public final void m5741h(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2, boolean z, boolean z2) {
        viewHolder.setIsRecyclable(false);
        if (z) {
            m5737f(viewHolder);
        }
        if (viewHolder != viewHolder2) {
            if (z2) {
                m5737f(viewHolder2);
            }
            viewHolder.f9685g = viewHolder2;
            m5737f(viewHolder);
            this.f9541g.m5829I(viewHolder);
            viewHolder2.setIsRecyclable(false);
            viewHolder2.f9686h = viewHolder;
        }
        if (this.f9510G0.animateChange(viewHolder, viewHolder2, itemHolderInfo, itemHolderInfo2)) {
            m5769v0();
        }
    }

    /* renamed from: h0 */
    public void m5742h0() {
        this.f9509F0 = null;
        this.f9507D0 = null;
        this.f9508E0 = null;
        this.f9506C0 = null;
    }

    public boolean hasFixedSize() {
        return this.f9578y;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.f9513J || this.f9577x0 || this.f9545i.m6100q();
    }

    /* renamed from: i */
    public void m5743i(@NonNull ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        m5737f(viewHolder);
        viewHolder.setIsRecyclable(false);
        if (this.f9510G0.animateDisappearance(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            m5769v0();
        }
    }

    /* renamed from: i0 */
    public boolean m5744i0() {
        AccessibilityManager accessibilityManager = this.f9573v0;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public void invalidateItemDecorations() {
        if (this.f9570u.size() == 0) {
            return;
        }
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        m5750l0();
        requestLayout();
    }

    public boolean isAnimating() {
        ItemAnimator itemAnimator = this.f9510G0;
        return itemAnimator != null && itemAnimator.isRunning();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f9576x;
    }

    public boolean isComputingLayout() {
        return this.f9581z0 > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f9550k0;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    /* renamed from: j */
    public void m5745j(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + m5709M());
        }
        throw new IllegalStateException(str + m5709M());
    }

    /* renamed from: j0 */
    public final boolean m5746j0(View view, View view2, int i) {
        int i2;
        if (view2 == null || view2 == this || view2 == view || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.f9556n.set(0, 0, view.getWidth(), view.getHeight());
        this.f9558o.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.f9556n);
        offsetDescendantRectToMyCoords(view2, this.f9558o);
        char c = 65535;
        int i3 = this.f9565r.getLayoutDirection() == 1 ? -1 : 1;
        Rect rect = this.f9556n;
        int i4 = rect.left;
        Rect rect2 = this.f9558o;
        int i5 = rect2.left;
        if ((i4 < i5 || rect.right <= i5) && rect.right < rect2.right) {
            i2 = 1;
        } else {
            int i6 = rect.right;
            int i7 = rect2.right;
            i2 = ((i6 > i7 || i4 >= i7) && i4 > i5) ? -1 : 0;
        }
        int i8 = rect.top;
        int i9 = rect2.top;
        if ((i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom) {
            c = 1;
        } else {
            int i10 = rect.bottom;
            int i11 = rect2.bottom;
            if ((i10 <= i11 && i8 < i11) || i8 <= i9) {
                c = 0;
            }
        }
        if (i == 1) {
            return c < 0 || (c == 0 && i2 * i3 < 0);
        }
        if (i == 2) {
            return c > 0 || (c == 0 && i2 * i3 > 0);
        }
        if (i == 17) {
            return i2 < 0;
        }
        if (i == 33) {
            return c < 0;
        }
        if (i == 66) {
            return i2 > 0;
        }
        if (i == 130) {
            return c > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i + m5709M());
    }

    /* renamed from: k */
    public void m5747k(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m5709M());
        }
        if (this.f9504A0 > 0) {
            Log.w(f9496s1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("" + m5709M()));
        }
    }

    /* renamed from: k0 */
    public void m5748k0(int i) {
        if (this.f9565r == null) {
            return;
        }
        setScrollState(2);
        this.f9565r.scrollToPosition(i);
        awakenScrollBars();
    }

    /* renamed from: l */
    public boolean m5749l(ViewHolder viewHolder) {
        ItemAnimator itemAnimator = this.f9510G0;
        return itemAnimator == null || itemAnimator.canReuseUpdatedViewHolder(viewHolder, viewHolder.m5884j());
    }

    /* renamed from: l0 */
    public void m5750l0() {
        int m6120j = this.f9547j.m6120j();
        for (int i = 0; i < m6120j; i++) {
            ((LayoutParams) this.f9547j.m6119i(i).getLayoutParams()).mInsetsDirty = true;
        }
        this.f9541g.m5847o();
    }

    /* renamed from: m */
    public final void m5751m() {
        m5706K0();
        setScrollState(0);
    }

    /* renamed from: m0 */
    public void m5752m0() {
        int m6120j = this.f9547j.m6120j();
        for (int i = 0; i < m6120j; i++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6119i(i));
            if (m5677V != null && !m5677V.m5871C()) {
                m5677V.m5876b(6);
            }
        }
        m5750l0();
        this.f9541g.m5848p();
    }

    /* renamed from: n0 */
    public final void m5753n0(int i, int i2, @Nullable MotionEvent motionEvent, int i3) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager == null) {
            Log.e(f9496s1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f9550k0) {
            return;
        }
        int[] iArr = this.f9553l1;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.f9565r.canScrollVertically();
        int i4 = canScrollVertically ? (canScrollHorizontally ? 1 : 0) | 2 : canScrollHorizontally ? 1 : 0;
        float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
        float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
        int m5693D0 = i - m5693D0(i, height);
        int m5675E0 = i2 - m5675E0(i2, width);
        startNestedScroll(i4, i3);
        if (dispatchNestedPreScroll(canScrollHorizontally ? m5693D0 : 0, canScrollVertically ? m5675E0 : 0, this.f9553l1, this.f9548j1, i3)) {
            int[] iArr2 = this.f9553l1;
            m5693D0 -= iArr2[0];
            m5675E0 -= iArr2[1];
        }
        m5712N0(canScrollHorizontally ? m5693D0 : 0, canScrollVertically ? m5675E0 : 0, motionEvent, i3);
        RunnableC1380e runnableC1380e = this.f9529W0;
        if (runnableC1380e != null && (m5693D0 != 0 || m5675E0 != 0)) {
            runnableC1380e.m6205f(this, m5693D0, m5675E0);
        }
        stopNestedScroll(i3);
    }

    public void nestedScrollBy(int i, int i2) {
        m5753n0(i, i2, null, 1);
    }

    /* renamed from: o */
    public void m5754o() {
        int m6120j = this.f9547j.m6120j();
        for (int i = 0; i < m6120j; i++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6119i(i));
            if (!m5677V.m5871C()) {
                m5677V.m5877c();
            }
        }
        this.f9541g.m5835c();
    }

    /* renamed from: o0 */
    public void m5755o0(int i, int i2) {
        int m6120j = this.f9547j.m6120j();
        for (int i3 = 0; i3 < m6120j; i3++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6119i(i3));
            if (m5677V != null && !m5677V.m5871C() && m5677V.f9680b >= i) {
                m5677V.m5895u(i2, false);
                this.f9531Y0.f9653g = true;
            }
        }
        this.f9541g.m5850r(i, i2);
        requestLayout();
    }

    public void offsetChildrenHorizontal(@Px int i) {
        int m6117g = this.f9547j.m6117g();
        for (int i2 = 0; i2 < m6117g; i2++) {
            this.f9547j.m6116f(i2).offsetLeftAndRight(i);
        }
    }

    public void offsetChildrenVertical(@Px int i) {
        int m6117g = this.f9547j.m6117g();
        for (int i2 = 0; i2 < m6117g; i2++) {
            this.f9547j.m6116f(i2).offsetTopAndBottom(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
    
        if (r1 >= 30.0f) goto L22;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.f9581z0 = r0
            r1 = 1
            r5.f9576x = r1
            boolean r2 = r5.f9513J
            if (r2 == 0) goto L14
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L14
            goto L15
        L14:
            r1 = r0
        L15:
            r5.f9513J = r1
            androidx.recyclerview.widget.RecyclerView$Recycler r1 = r5.f9541g
            r1.m5854v()
            androidx.recyclerview.widget.RecyclerView$LayoutManager r1 = r5.f9565r
            if (r1 == 0) goto L23
            r1.m5785c(r5)
        L23:
            r5.f9538e1 = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.f9476C1
            if (r0 == 0) goto L66
            java.lang.ThreadLocal<androidx.recyclerview.widget.e> r0 = androidx.recyclerview.widget.RunnableC1380e.f9930i
            java.lang.Object r1 = r0.get()
            androidx.recyclerview.widget.e r1 = (androidx.recyclerview.widget.RunnableC1380e) r1
            r5.f9529W0 = r1
            if (r1 != 0) goto L61
            androidx.recyclerview.widget.e r1 = new androidx.recyclerview.widget.e
            r1.<init>()
            r5.f9529W0 = r1
            android.view.Display r1 = androidx.core.view.ViewCompat.getDisplay(r5)
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L53
            if (r1 == 0) goto L53
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L53
            goto L55
        L53:
            r1 = 1114636288(0x42700000, float:60.0)
        L55:
            androidx.recyclerview.widget.e r2 = r5.f9529W0
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f9934g = r3
            r0.set(r2)
        L61:
            androidx.recyclerview.widget.e r0 = r5.f9529W0
            r0.m6201a(r5)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    public void onChildAttachedToWindow(@NonNull View view) {
    }

    public void onChildDetachedFromWindow(@NonNull View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        RunnableC1380e runnableC1380e;
        super.onDetachedFromWindow();
        ItemAnimator itemAnimator = this.f9510G0;
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        stopScroll();
        this.f9576x = false;
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            layoutManager.m5786d(this, this.f9541g);
        }
        this.f9555m1.clear();
        removeCallbacks(this.f9557n1);
        this.f9549k.m6254j();
        this.f9541g.m5855w();
        PoolingContainer.callPoolingContainerOnReleaseForChildren(this);
        if (!f9476C1 || (runnableC1380e = this.f9529W0) == null) {
            return;
        }
        runnableC1380e.m6209j(this);
        this.f9529W0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f9570u.size();
        for (int i = 0; i < size; i++) {
            this.f9570u.get(i).onDraw(canvas, this, this.f9531Y0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0068  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r5.f9565r
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.f9550k0
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L78
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3e
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r5.f9565r
            boolean r0 = r0.canScrollVertically()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = r2
        L2d:
            androidx.recyclerview.widget.RecyclerView$LayoutManager r3 = r5.f9565r
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L3c
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L64
        L3c:
            r3 = r2
            goto L64
        L3e:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L62
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$LayoutManager r3 = r5.f9565r
            boolean r3 = r3.canScrollVertically()
            if (r3 == 0) goto L57
            float r0 = -r0
            goto L3c
        L57:
            androidx.recyclerview.widget.RecyclerView$LayoutManager r3 = r5.f9565r
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L62
            r3 = r0
            r0 = r2
            goto L64
        L62:
            r0 = r2
            r3 = r0
        L64:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6c
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L78
        L6c:
            float r2 = r5.f9525S0
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.f9526T0
            float r0 = r0 * r3
            int r0 = (int) r0
            r3 = 1
            r5.m5753n0(r2, r0, r6, r3)
        L78:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.f9550k0) {
            return false;
        }
        this.f9574w = null;
        if (m5713O(motionEvent)) {
            m5751m();
            return true;
        }
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager == null) {
            return false;
        }
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.f9565r.canScrollVertically();
        if (this.f9514J0 == null) {
            this.f9514J0 = VelocityTracker.obtain();
        }
        this.f9514J0.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f9563q0) {
                this.f9563q0 = false;
            }
            this.f9512I0 = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f9517M0 = x;
            this.f9515K0 = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f9518N0 = y;
            this.f9516L0 = y;
            if (m5678V0(motionEvent) || this.f9511H0 == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.f9551k1;
            iArr[1] = 0;
            iArr[0] = 0;
            int i = canScrollHorizontally;
            if (canScrollVertically) {
                i = (canScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i, 0);
        } else if (actionMasked == 1) {
            this.f9514J0.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f9512I0);
            if (findPointerIndex < 0) {
                Log.e(f9496s1, "Error processing scroll; pointer index for id " + this.f9512I0 + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.f9511H0 != 1) {
                int i2 = x2 - this.f9515K0;
                int i3 = y2 - this.f9516L0;
                if (canScrollHorizontally == 0 || Math.abs(i2) <= this.f9520O0) {
                    z = false;
                } else {
                    this.f9517M0 = x2;
                    z = true;
                }
                if (canScrollVertically && Math.abs(i3) > this.f9520O0) {
                    this.f9518N0 = y2;
                    z = true;
                }
                if (z) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            m5751m();
        } else if (actionMasked == 5) {
            this.f9512I0 = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f9517M0 = x3;
            this.f9515K0 = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f9518N0 = y3;
            this.f9516L0 = y3;
        } else if (actionMasked == 6) {
            m5767u0(motionEvent);
        }
        return this.f9511H0 == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TraceCompat.beginSection(f9484K1);
        m5686A();
        TraceCompat.endSection();
        this.f9513J = true;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager == null) {
            m5768v(i, i2);
            return;
        }
        boolean z = false;
        if (layoutManager.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f9565r.onMeasure(this.f9541g, this.f9531Y0, i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.f9559o1 = z;
            if (z || this.f9562q == null) {
                return;
            }
            if (this.f9531Y0.f9651e == 1) {
                m5688B();
            }
            this.f9565r.m5798q(i, i2);
            this.f9531Y0.f9656j = true;
            m5690C();
            this.f9565r.m5799r(i, i2);
            if (this.f9565r.mo5642u()) {
                this.f9565r.m5798q(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.f9531Y0.f9656j = true;
                m5690C();
                this.f9565r.m5799r(i, i2);
            }
            this.f9561p1 = getMeasuredWidth();
            this.f9564q1 = getMeasuredHeight();
            return;
        }
        if (this.f9578y) {
            this.f9565r.onMeasure(this.f9541g, this.f9531Y0, i, i2);
            return;
        }
        if (this.f9571u0) {
            m5725U0();
            m5761r0();
            m5773x0();
            m5763s0();
            State state = this.f9531Y0;
            if (state.f9658l) {
                state.f9654h = true;
            } else {
                this.f9545i.m6094k();
                this.f9531Y0.f9654h = false;
            }
            this.f9571u0 = false;
            m5726W0(false);
        } else if (this.f9531Y0.f9658l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        Adapter adapter = this.f9562q;
        if (adapter != null) {
            this.f9531Y0.f9652f = adapter.getItemCount();
        } else {
            this.f9531Y0.f9652f = 0;
        }
        m5725U0();
        this.f9565r.onMeasure(this.f9541g, this.f9531Y0, i, i2);
        m5726W0(false);
        this.f9531Y0.f9654h = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f9543h = savedState;
        super.onRestoreInstanceState(savedState.getSuperState());
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f9543h;
        if (savedState2 != null) {
            savedState.copyFrom(savedState2);
        } else {
            LayoutManager layoutManager = this.f9565r;
            if (layoutManager != null) {
                savedState.mLayoutState = layoutManager.onSaveInstanceState();
            } else {
                savedState.mLayoutState = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i) {
    }

    public void onScrolled(@Px int i, @Px int i2) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        m5742h0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public void m5756p(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f9506C0;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.f9506C0.onRelease();
            z = this.f9506C0.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f9508E0;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.f9508E0.onRelease();
            z |= this.f9508E0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f9507D0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.f9507D0.onRelease();
            z |= this.f9507D0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f9509F0;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.f9509F0.onRelease();
            z |= this.f9509F0.isFinished();
        }
        if (z) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: p0 */
    public void m5757p0(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int m6120j = this.f9547j.m6120j();
        if (i < i2) {
            i5 = -1;
            i4 = i;
            i3 = i2;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i7 = 0; i7 < m6120j; i7++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6119i(i7));
            if (m5677V != null && (i6 = m5677V.f9680b) >= i4 && i6 <= i3) {
                if (i6 == i) {
                    m5677V.m5895u(i2 - i, false);
                } else {
                    m5677V.m5895u(i5, false);
                }
                this.f9531Y0.f9653g = true;
            }
        }
        this.f9541g.m5851s(i, i2);
        requestLayout();
    }

    /* renamed from: q */
    public int m5758q(int i) {
        return m5760r(i, this.f9506C0, this.f9508E0, getWidth());
    }

    /* renamed from: q0 */
    public void m5759q0(int i, int i2, boolean z) {
        int i3 = i + i2;
        int m6120j = this.f9547j.m6120j();
        for (int i4 = 0; i4 < m6120j; i4++) {
            ViewHolder m5677V = m5677V(this.f9547j.m6119i(i4));
            if (m5677V != null && !m5677V.m5871C()) {
                int i5 = m5677V.f9680b;
                if (i5 >= i3) {
                    m5677V.m5895u(-i2, z);
                    this.f9531Y0.f9653g = true;
                } else if (i5 >= i) {
                    m5677V.m5883i(i - 1, -i2, z);
                    this.f9531Y0.f9653g = true;
                }
            }
        }
        this.f9541g.m5852t(i, i2, z);
        requestLayout();
    }

    /* renamed from: r */
    public final int m5760r(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && EdgeEffectCompat.getDistance(edgeEffect) != 0.0f) {
            int round = Math.round(((-i2) / 4.0f) * EdgeEffectCompat.onPullDistance(edgeEffect, ((-i) * 4.0f) / i2, 0.5f));
            if (round != i) {
                edgeEffect.finish();
            }
            return i - round;
        }
        if (i >= 0 || edgeEffect2 == null || EdgeEffectCompat.getDistance(edgeEffect2) == 0.0f) {
            return i;
        }
        float f = i2;
        int round2 = Math.round((f / 4.0f) * EdgeEffectCompat.onPullDistance(edgeEffect2, (i * 4.0f) / f, 0.5f));
        if (round2 != i) {
            edgeEffect2.finish();
        }
        return i - round2;
    }

    /* renamed from: r0 */
    public void m5761r0() {
        this.f9581z0++;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        ViewHolder m5677V = m5677V(view);
        if (m5677V != null) {
            if (m5677V.m5892r()) {
                m5677V.m5880f();
            } else if (!m5677V.m5871C()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + m5677V + m5709M());
            }
        }
        view.clearAnimation();
        m5774y(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(@NonNull ItemDecoration itemDecoration) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.f9570u.remove(itemDecoration);
        if (this.f9570u.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        m5750l0();
        requestLayout();
    }

    public void removeItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i >= 0 && i < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i));
            return;
        }
        throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(@NonNull OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        List<OnChildAttachStateChangeListener> list = this.f9575w0;
        if (list == null) {
            return;
        }
        list.remove(onChildAttachStateChangeListener);
    }

    public void removeOnItemTouchListener(@NonNull OnItemTouchListener onItemTouchListener) {
        this.f9572v.remove(onItemTouchListener);
        if (this.f9574w == onItemTouchListener) {
            this.f9574w = null;
        }
    }

    public void removeOnScrollListener(@NonNull OnScrollListener onScrollListener) {
        List<OnScrollListener> list = this.f9533a1;
        if (list != null) {
            list.remove(onScrollListener);
        }
    }

    public void removeRecyclerListener(@NonNull RecyclerListener recyclerListener) {
        this.f9568t.remove(recyclerListener);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f9565r.onRequestChildFocus(this, this.f9531Y0, view, view2) && view2 != null) {
            m5702I0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f9565r.requestChildRectangleOnScreen(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.f9572v.size();
        for (int i = 0; i < size; i++) {
            this.f9572v.get(i).onRequestDisallowInterceptTouchEvent(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f9519O != 0 || this.f9550k0) {
            this.f9522Q = true;
        } else {
            super.requestLayout();
        }
    }

    /* renamed from: s */
    int m5762s(int i) {
        return m5760r(i, this.f9507D0, this.f9509F0, getHeight());
    }

    /* renamed from: s0 */
    public void m5763s0() {
        m5765t0(true);
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager == null) {
            Log.e(f9496s1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f9550k0) {
            return;
        }
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.f9565r.canScrollVertically();
        if (canScrollHorizontally || canScrollVertically) {
            if (!canScrollHorizontally) {
                i = 0;
            }
            if (!canScrollVertically) {
                i2 = 0;
            }
            m5712N0(i, i2, null, 0);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w(f9496s1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i) {
        if (this.f9550k0) {
            return;
        }
        stopScroll();
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager == null) {
            Log.e(f9496s1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            layoutManager.scrollToPosition(i);
            awakenScrollBars();
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (m5721S0(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(@Nullable RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.f9540f1 = recyclerViewAccessibilityDelegate;
        ViewCompat.setAccessibilityDelegate(this, recyclerViewAccessibilityDelegate);
    }

    public void setAdapter(@Nullable Adapter adapter) {
        setLayoutFrozen(false);
        m5716P0(adapter, false, true);
        m5775y0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(@Nullable ChildDrawingOrderCallback childDrawingOrderCallback) {
        if (childDrawingOrderCallback == this.f9542g1) {
            return;
        }
        this.f9542g1 = childDrawingOrderCallback;
        setChildrenDrawingOrderEnabled(childDrawingOrderCallback != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f9552l) {
            m5742h0();
        }
        this.f9552l = z;
        super.setClipToPadding(z);
        if (this.f9513J) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(@NonNull EdgeEffectFactory edgeEffectFactory) {
        Preconditions.checkNotNull(edgeEffectFactory);
        this.f9505B0 = edgeEffectFactory;
        m5742h0();
    }

    public void setHasFixedSize(boolean z) {
        this.f9578y = z;
    }

    public void setItemAnimator(@Nullable ItemAnimator itemAnimator) {
        ItemAnimator itemAnimator2 = this.f9510G0;
        if (itemAnimator2 != null) {
            itemAnimator2.endAnimations();
            this.f9510G0.m5780b(null);
        }
        this.f9510G0 = itemAnimator;
        if (itemAnimator != null) {
            itemAnimator.m5780b(this.f9536d1);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.f9541g.setViewCacheSize(i);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(@Nullable LayoutManager layoutManager) {
        if (layoutManager == this.f9565r) {
            return;
        }
        stopScroll();
        if (this.f9565r != null) {
            ItemAnimator itemAnimator = this.f9510G0;
            if (itemAnimator != null) {
                itemAnimator.endAnimations();
            }
            this.f9565r.removeAndRecycleAllViews(this.f9541g);
            this.f9565r.m5795n(this.f9541g);
            this.f9541g.clear();
            if (this.f9576x) {
                this.f9565r.m5786d(this, this.f9541g);
            }
            this.f9565r.m5800s(null);
            this.f9565r = null;
        } else {
            this.f9541g.clear();
        }
        this.f9547j.m6125o();
        this.f9565r = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.f9592f != null) {
                throw new IllegalArgumentException("LayoutManager " + layoutManager + " is already attached to a RecyclerView:" + layoutManager.f9592f.m5709M());
            }
            layoutManager.m5800s(this);
            if (this.f9576x) {
                this.f9565r.m5785c(this);
            }
        }
        this.f9541g.m5830J();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().setNestedScrollingEnabled(z);
    }

    public void setOnFlingListener(@Nullable OnFlingListener onFlingListener) {
        this.f9521P0 = onFlingListener;
    }

    @Deprecated
    public void setOnScrollListener(@Nullable OnScrollListener onScrollListener) {
        this.f9532Z0 = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f9527U0 = z;
    }

    public void setRecycledViewPool(@Nullable RecycledViewPool recycledViewPool) {
        this.f9541g.m5825E(recycledViewPool);
    }

    @Deprecated
    public void setRecyclerListener(@Nullable RecyclerListener recyclerListener) {
        this.f9567s = recyclerListener;
    }

    void setScrollState(int i) {
        if (i == this.f9511H0) {
            return;
        }
        this.f9511H0 = i;
        if (i != 2) {
            m5728X0();
        }
        m5694E(i);
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.f9520O0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w(f9496s1, "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.f9520O0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(@Nullable ViewCacheExtension viewCacheExtension) {
        this.f9541g.m5826F(viewCacheExtension);
    }

    public void smoothScrollBy(@Px int i, @Px int i2) {
        smoothScrollBy(i, i2, null);
    }

    public void smoothScrollToPosition(int i) {
        if (this.f9550k0) {
            return;
        }
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager == null) {
            Log.e(f9496s1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            layoutManager.smoothScrollToPosition(this, this.f9531Y0, i);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().startNestedScroll(i);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }

    public void stopScroll() {
        setScrollState(0);
        m5728X0();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.f9550k0) {
            m5747k("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.f9550k0 = true;
                this.f9563q0 = true;
                stopScroll();
                return;
            }
            this.f9550k0 = false;
            if (this.f9522Q && this.f9565r != null && this.f9562q != null) {
                requestLayout();
            }
            this.f9522Q = false;
        }
    }

    public void swapAdapter(@Nullable Adapter adapter, boolean z) {
        setLayoutFrozen(false);
        m5716P0(adapter, true, z);
        m5775y0(true);
        requestLayout();
    }

    /* renamed from: t */
    public void m5764t() {
        if (!this.f9513J || this.f9577x0) {
            TraceCompat.beginSection(f9485L1);
            m5686A();
            TraceCompat.endSection();
            return;
        }
        if (this.f9545i.m6100q()) {
            if (!this.f9545i.m6099p(4) || this.f9545i.m6099p(11)) {
                if (this.f9545i.m6100q()) {
                    TraceCompat.beginSection(f9485L1);
                    m5686A();
                    TraceCompat.endSection();
                    return;
                }
                return;
            }
            TraceCompat.beginSection(f9486M1);
            m5725U0();
            m5761r0();
            this.f9545i.m6107x();
            if (!this.f9522Q) {
                if (m5734c0()) {
                    m5686A();
                } else {
                    this.f9545i.m6093j();
                }
            }
            m5726W0(true);
            m5763s0();
            TraceCompat.endSection();
        }
    }

    /* renamed from: t0 */
    public void m5765t0(boolean z) {
        int i = this.f9581z0 - 1;
        this.f9581z0 = i;
        if (i < 1) {
            this.f9581z0 = 0;
            if (z) {
                m5776z();
                m5697G();
            }
        }
    }

    /* renamed from: u */
    public final void m5766u(Context context, String str, AttributeSet attributeSet, int i, int i2) {
        Constructor constructor;
        Object[] objArr;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String m5729Y = m5729Y(context, trim);
            try {
                Class<? extends U> asSubclass = Class.forName(m5729Y, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(LayoutManager.class);
                try {
                    constructor = asSubclass.getConstructor(f9491R1);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i), Integer.valueOf(i2)};
                } catch (NoSuchMethodException e) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                        objArr = null;
                    } catch (NoSuchMethodException e2) {
                        e2.initCause(e);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + m5729Y, e2);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((LayoutManager) constructor.newInstance(objArr));
            } catch (ClassCastException e3) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + m5729Y, e3);
            } catch (ClassNotFoundException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + m5729Y, e4);
            } catch (IllegalAccessException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + m5729Y, e5);
            } catch (InstantiationException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + m5729Y, e6);
            } catch (InvocationTargetException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + m5729Y, e7);
            }
        }
    }

    /* renamed from: u0 */
    public final void m5767u0(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f9512I0) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f9512I0 = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f9517M0 = x;
            this.f9515K0 = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f9518N0 = y;
            this.f9516L0 = y;
        }
    }

    /* renamed from: v */
    public void m5768v(int i, int i2) {
        setMeasuredDimension(LayoutManager.chooseSize(i, getPaddingLeft() + getPaddingRight(), ViewCompat.getMinimumWidth(this)), LayoutManager.chooseSize(i2, getPaddingTop() + getPaddingBottom(), ViewCompat.getMinimumHeight(this)));
    }

    /* renamed from: v0 */
    public void m5769v0() {
        if (this.f9538e1 || !this.f9576x) {
            return;
        }
        ViewCompat.postOnAnimation(this, this.f9557n1);
        this.f9538e1 = true;
    }

    /* renamed from: w */
    public final boolean m5770w(int i, int i2) {
        m5715P(this.f9544h1);
        int[] iArr = this.f9544h1;
        return (iArr[0] == i && iArr[1] == i2) ? false : true;
    }

    /* renamed from: w0 */
    public final boolean m5771w0() {
        return this.f9510G0 != null && this.f9565r.supportsPredictiveItemAnimations();
    }

    /* renamed from: x */
    public void m5772x(View view) {
        ViewHolder m5677V = m5677V(view);
        onChildAttachedToWindow(view);
        Adapter adapter = this.f9562q;
        if (adapter != null && m5677V != null) {
            adapter.onViewAttachedToWindow(m5677V);
        }
        List<OnChildAttachStateChangeListener> list = this.f9575w0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f9575w0.get(size).onChildViewAttachedToWindow(view);
            }
        }
    }

    /* renamed from: x0 */
    public final void m5773x0() {
        boolean z;
        if (this.f9577x0) {
            this.f9545i.m6109z();
            if (this.f9579y0) {
                this.f9565r.onItemsChanged(this);
            }
        }
        if (m5771w0()) {
            this.f9545i.m6107x();
        } else {
            this.f9545i.m6094k();
        }
        boolean z2 = false;
        boolean z3 = this.f9534b1 || this.f9535c1;
        this.f9531Y0.f9657k = this.f9513J && this.f9510G0 != null && ((z = this.f9577x0) || z3 || this.f9565r.f9598l) && (!z || this.f9562q.hasStableIds());
        State state = this.f9531Y0;
        if (state.f9657k && z3 && !this.f9577x0 && m5771w0()) {
            z2 = true;
        }
        state.f9658l = z2;
    }

    /* renamed from: y */
    public void m5774y(View view) {
        ViewHolder m5677V = m5677V(view);
        onChildDetachedFromWindow(view);
        Adapter adapter = this.f9562q;
        if (adapter != null && m5677V != null) {
            adapter.onViewDetachedFromWindow(m5677V);
        }
        List<OnChildAttachStateChangeListener> list = this.f9575w0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f9575w0.get(size).onChildViewDetachedFromWindow(view);
            }
        }
    }

    /* renamed from: y0 */
    public void m5775y0(boolean z) {
        this.f9579y0 = z | this.f9579y0;
        this.f9577x0 = true;
        m5752m0();
    }

    /* renamed from: z */
    public final void m5776z() {
        int i = this.f9569t0;
        this.f9569t0 = 0;
        if (i == 0 || !m5744i0()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        AccessibilityEventCompat.setContentChangeTypes(obtain, i);
        sendAccessibilityEventUnchecked(obtain);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0040  */
    /* renamed from: z0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5777z0(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 0
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 1
            if (r1 >= 0) goto L21
            r6.m5703J()
            android.widget.EdgeEffect r1 = r6.f9506C0
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r2 - r9
            androidx.core.widget.EdgeEffectCompat.onPullDistance(r1, r4, r9)
        L1f:
            r9 = r3
            goto L3c
        L21:
            int r1 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r1 <= 0) goto L3b
            r6.m5705K()
            android.widget.EdgeEffect r1 = r6.f9508E0
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            androidx.core.widget.EdgeEffectCompat.onPullDistance(r1, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L56
            r6.m5707L()
            android.widget.EdgeEffect r9 = r6.f9507D0
            float r1 = -r10
            int r2 = r6.getHeight()
            float r2 = (float) r2
            float r1 = r1 / r2
            int r2 = r6.getWidth()
            float r2 = (float) r2
            float r7 = r7 / r2
            androidx.core.widget.EdgeEffectCompat.onPullDistance(r9, r1, r7)
            goto L72
        L56:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 <= 0) goto L71
            r6.m5701I()
            android.widget.EdgeEffect r9 = r6.f9509F0
            int r1 = r6.getHeight()
            float r1 = (float) r1
            float r1 = r10 / r1
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r2 = r2 - r7
            androidx.core.widget.EdgeEffectCompat.onPullDistance(r9, r1, r2)
            goto L72
        L71:
            r3 = r9
        L72:
            if (r3 != 0) goto L7c
            int r7 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            androidx.core.view.ViewCompat.postInvalidateOnAnimation(r6)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m5777z0(float, float, float, float):void");
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1308R.attr.recyclerViewStyle);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i, i2, iArr, iArr2, i3);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().dispatchNestedScroll(i, i2, i3, i4, iArr, i5);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i) {
        return getScrollingChildHelper().hasNestedScrollingParent(i);
    }

    public void smoothScrollBy(@Px int i, @Px int i2, @Nullable Interpolator interpolator) {
        smoothScrollBy(i, i2, interpolator, Integer.MIN_VALUE);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i, int i2) {
        return getScrollingChildHelper().startNestedScroll(i, i2);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i) {
        getScrollingChildHelper().stopNestedScroll(i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1349a();
        Parcelable mLayoutState;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$SavedState$a */
        /* loaded from: classes3.dex */
        public class C1349a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mLayoutState = parcel.readParcelable(classLoader == null ? LayoutManager.class.getClassLoader() : classLoader);
        }

        public void copyFrom(SavedState savedState) {
            this.mLayoutState = savedState.mLayoutState;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.mLayoutState, 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f9539f = new C1359j();
        this.f9541g = new Recycler();
        this.f9549k = new C1386k();
        this.f9554m = new RunnableC1350a();
        this.f9556n = new Rect();
        this.f9558o = new Rect();
        this.f9560p = new RectF();
        this.f9568t = new ArrayList();
        this.f9570u = new ArrayList<>();
        this.f9572v = new ArrayList<>();
        this.f9519O = 0;
        this.f9577x0 = false;
        this.f9579y0 = false;
        this.f9581z0 = 0;
        this.f9504A0 = 0;
        this.f9505B0 = f9495V1;
        this.f9510G0 = new DefaultItemAnimator();
        this.f9511H0 = 0;
        this.f9512I0 = -1;
        this.f9525S0 = Float.MIN_VALUE;
        this.f9526T0 = Float.MIN_VALUE;
        this.f9527U0 = true;
        this.f9528V0 = new RunnableC1361l();
        this.f9530X0 = f9476C1 ? new RunnableC1380e.b() : null;
        this.f9531Y0 = new State();
        this.f9534b1 = false;
        this.f9535c1 = false;
        this.f9536d1 = new C1358i();
        this.f9538e1 = false;
        this.f9544h1 = new int[2];
        this.f9548j1 = new int[2];
        this.f9551k1 = new int[2];
        this.f9553l1 = new int[2];
        this.f9555m1 = new ArrayList();
        this.f9557n1 = new RunnableC1351b();
        this.f9561p1 = 0;
        this.f9564q1 = 0;
        this.f9566r1 = new C1353d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f9520O0 = viewConfiguration.getScaledTouchSlop();
        this.f9525S0 = ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, context);
        this.f9526T0 = ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, context);
        this.f9523Q0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f9524R0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f9537e = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.f9510G0.m5780b(this.f9536d1);
        m5735d0();
        m5738f0();
        m5736e0();
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        this.f9573v0 = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1308R.styleable.RecyclerView, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, C1308R.styleable.RecyclerView, attributeSet, obtainStyledAttributes, i, 0);
        String string = obtainStyledAttributes.getString(C1308R.styleable.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(C1308R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f9552l = obtainStyledAttributes.getBoolean(C1308R.styleable.RecyclerView_android_clipToPadding, true);
        boolean z = obtainStyledAttributes.getBoolean(C1308R.styleable.RecyclerView_fastScrollEnabled, false);
        this.f9580z = z;
        if (z) {
            m5740g0((StateListDrawable) obtainStyledAttributes.getDrawable(C1308R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(C1308R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(C1308R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(C1308R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        m5766u(context, string, attributeSet, i, 0);
        int[] iArr = f9499v1;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes2, i, 0);
        boolean z2 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
        PoolingContainer.setPoolingContainer(this, true);
    }

    @Override // androidx.core.view.NestedScrollingChild3
    public final void dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr, int i5, @NonNull int[] iArr2) {
        getScrollingChildHelper().dispatchNestedScroll(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public void smoothScrollBy(@Px int i, @Px int i2, @Nullable Interpolator interpolator, int i3) {
        m5723T0(i, i2, interpolator, i3, false);
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        final Rect mDecorInsets;
        boolean mInsetsDirty;
        boolean mPendingInvalidate;
        ViewHolder mViewHolder;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public int getAbsoluteAdapterPosition() {
            return this.mViewHolder.getAbsoluteAdapterPosition();
        }

        public int getBindingAdapterPosition() {
            return this.mViewHolder.getBindingAdapterPosition();
        }

        @Deprecated
        public int getViewAdapterPosition() {
            return this.mViewHolder.getBindingAdapterPosition();
        }

        public int getViewLayoutPosition() {
            return this.mViewHolder.getLayoutPosition();
        }

        @Deprecated
        public int getViewPosition() {
            return this.mViewHolder.getPosition();
        }

        public boolean isItemChanged() {
            return this.mViewHolder.m5893s();
        }

        public boolean isItemRemoved() {
            return this.mViewHolder.m5890p();
        }

        public boolean isViewInvalid() {
            return this.mViewHolder.m5889o();
        }

        public boolean viewNeedsUpdate() {
            return this.mViewHolder.m5894t();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutManager layoutManager = this.f9565r;
        if (layoutManager != null) {
            return layoutManager.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m5709M());
    }

    public void addItemDecoration(@NonNull ItemDecoration itemDecoration) {
        addItemDecoration(itemDecoration, -1);
    }
}
