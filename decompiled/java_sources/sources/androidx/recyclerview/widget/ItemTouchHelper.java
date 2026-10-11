package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.C1308R;
import androidx.recyclerview.widget.RecyclerView;
import com.sunia.HTREnginev2.eqi;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public static final int ACTION_STATE_DRAG = 2;
    public static final int ACTION_STATE_IDLE = 0;
    public static final int ACTION_STATE_SWIPE = 1;
    public static final int ANIMATION_TYPE_DRAG = 8;
    public static final int ANIMATION_TYPE_SWIPE_CANCEL = 4;
    public static final int ANIMATION_TYPE_SWIPE_SUCCESS = 2;
    public static final int DOWN = 2;

    /* renamed from: E */
    public static final String f9337E = "ItemTouchHelper";
    public static final int END = 32;

    /* renamed from: F */
    public static final boolean f9338F = false;

    /* renamed from: G */
    public static final int f9339G = -1;

    /* renamed from: H */
    public static final int f9340H = 8;

    /* renamed from: I */
    public static final int f9341I = 255;

    /* renamed from: J */
    public static final int f9342J = 65280;

    /* renamed from: K */
    public static final int f9343K = 16711680;

    /* renamed from: L */
    public static final int f9344L = 1000;
    public static final int LEFT = 4;
    public static final int RIGHT = 8;
    public static final int START = 16;

    /* renamed from: UP */
    public static final int f9345UP = 1;

    /* renamed from: A */
    public C1336f f9346A;

    /* renamed from: C */
    public Rect f9348C;

    /* renamed from: D */
    public long f9349D;

    /* renamed from: d */
    public float f9353d;

    /* renamed from: e */
    public float f9354e;

    /* renamed from: f */
    public float f9355f;

    /* renamed from: g */
    public float f9356g;

    /* renamed from: h */
    public float f9357h;

    /* renamed from: i */
    public float f9358i;

    /* renamed from: j */
    public float f9359j;

    /* renamed from: k */
    public float f9360k;

    /* renamed from: m */
    @NonNull
    public Callback f9362m;

    /* renamed from: o */
    public int f9364o;

    /* renamed from: q */
    public int f9366q;

    /* renamed from: r */
    public RecyclerView f9367r;

    /* renamed from: t */
    public VelocityTracker f9369t;

    /* renamed from: u */
    public List<RecyclerView.ViewHolder> f9370u;

    /* renamed from: v */
    public List<Integer> f9371v;

    /* renamed from: z */
    public GestureDetectorCompat f9375z;

    /* renamed from: a */
    public final List<View> f9350a = new ArrayList();

    /* renamed from: b */
    public final float[] f9351b = new float[2];

    /* renamed from: c */
    public RecyclerView.ViewHolder f9352c = null;

    /* renamed from: l */
    public int f9361l = -1;

    /* renamed from: n */
    public int f9363n = 0;

    /* renamed from: p */
    @VisibleForTesting
    public List<C1337g> f9365p = new ArrayList();

    /* renamed from: s */
    public final Runnable f9368s = new RunnableC1331a();

    /* renamed from: w */
    public RecyclerView.ChildDrawingOrderCallback f9372w = null;

    /* renamed from: x */
    public View f9373x = null;

    /* renamed from: y */
    public int f9374y = -1;

    /* renamed from: B */
    public final RecyclerView.OnItemTouchListener f9347B = new C1332b();

    /* loaded from: classes3.dex */
    public static abstract class Callback {
        public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
        public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;

        /* renamed from: b */
        public static final int f9376b = 3158064;

        /* renamed from: c */
        public static final int f9377c = 789516;

        /* renamed from: d */
        public static final Interpolator f9378d = new InterpolatorC1329a();

        /* renamed from: e */
        public static final Interpolator f9379e = new InterpolatorC1330b();

        /* renamed from: f */
        public static final long f9380f = 2000;

        /* renamed from: a */
        public int f9381a = -1;

        /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$Callback$a */
        /* loaded from: classes3.dex */
        public class InterpolatorC1329a implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f * f * f;
            }
        }

        /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$Callback$b */
        /* loaded from: classes3.dex */
        public class InterpolatorC1330b implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        }

        public static int convertToRelativeDirection(int i, int i2) {
            int i3;
            int i4 = i & f9377c;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 << 2;
            } else {
                int i6 = i4 << 1;
                i5 |= (-789517) & i6;
                i3 = (i6 & f9377c) << 2;
            }
            return i5 | i3;
        }

        @NonNull
        public static ItemTouchUIUtil getDefaultUIUtil() {
            return eqi.f69221a;
        }

        public static int makeFlag(int i, int i2) {
            return i2 << (i * 8);
        }

        public static int makeMovementFlags(int i, int i2) {
            return makeFlag(2, i) | makeFlag(1, i2) | makeFlag(0, i2 | i);
        }

        /* renamed from: a */
        public final int m5595a(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return convertToAbsoluteDirection(getMovementFlags(recyclerView, viewHolder), ViewCompat.getLayoutDirection(recyclerView));
        }

        /* renamed from: b */
        public final int m5596b(RecyclerView recyclerView) {
            if (this.f9381a == -1) {
                this.f9381a = recyclerView.getResources().getDimensionPixelSize(C1308R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            return this.f9381a;
        }

        /* renamed from: c */
        public boolean m5597c(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (m5595a(recyclerView, viewHolder) & 16711680) != 0;
        }

        public boolean canDropOver(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
            return true;
        }

        @SuppressLint({"UnknownNullness"})
        public RecyclerView.ViewHolder chooseDropTarget(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<RecyclerView.ViewHolder> list, int i, int i2) {
            int bottom;
            int abs;
            int top;
            int abs2;
            int left;
            int abs3;
            int right;
            int abs4;
            int width = viewHolder.itemView.getWidth() + i;
            int height = viewHolder.itemView.getHeight() + i2;
            int left2 = i - viewHolder.itemView.getLeft();
            int top2 = i2 - viewHolder.itemView.getTop();
            int size = list.size();
            RecyclerView.ViewHolder viewHolder2 = null;
            int i3 = -1;
            for (int i4 = 0; i4 < size; i4++) {
                RecyclerView.ViewHolder viewHolder3 = list.get(i4);
                if (left2 > 0 && (right = viewHolder3.itemView.getRight() - width) < 0 && viewHolder3.itemView.getRight() > viewHolder.itemView.getRight() && (abs4 = Math.abs(right)) > i3) {
                    viewHolder2 = viewHolder3;
                    i3 = abs4;
                }
                if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i) > 0 && viewHolder3.itemView.getLeft() < viewHolder.itemView.getLeft() && (abs3 = Math.abs(left)) > i3) {
                    viewHolder2 = viewHolder3;
                    i3 = abs3;
                }
                if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i2) > 0 && viewHolder3.itemView.getTop() < viewHolder.itemView.getTop() && (abs2 = Math.abs(top)) > i3) {
                    viewHolder2 = viewHolder3;
                    i3 = abs2;
                }
                if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height) < 0 && viewHolder3.itemView.getBottom() > viewHolder.itemView.getBottom() && (abs = Math.abs(bottom)) > i3) {
                    viewHolder2 = viewHolder3;
                    i3 = abs;
                }
            }
            return viewHolder2;
        }

        public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            eqi.f69221a.clearView(viewHolder.itemView);
        }

        public int convertToAbsoluteDirection(int i, int i2) {
            int i3;
            int i4 = i & f9376b;
            if (i4 == 0) {
                return i;
            }
            int i5 = i & (~i4);
            if (i2 == 0) {
                i3 = i4 >> 2;
            } else {
                int i6 = i4 >> 1;
                i5 |= (-3158065) & i6;
                i3 = (3158064 & i6) >> 2;
            }
            return i3 | i5;
        }

        /* renamed from: d */
        public boolean m5598d(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (m5595a(recyclerView, viewHolder) & 65280) != 0;
        }

        /* renamed from: e */
        public void m5599e(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<C1337g> list, int i, float f, float f2) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                C1337g c1337g = list.get(i2);
                c1337g.m5606e();
                int save = canvas.save();
                onChildDraw(canvas, recyclerView, c1337g.f9399i, c1337g.f9404n, c1337g.f9405o, c1337g.f9400j, false);
                canvas.restoreToCount(save);
            }
            if (viewHolder != null) {
                int save2 = canvas.save();
                onChildDraw(canvas, recyclerView, viewHolder, f, f2, i, true);
                canvas.restoreToCount(save2);
            }
        }

        /* renamed from: f */
        public void m5600f(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<C1337g> list, int i, float f, float f2) {
            int size = list.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                C1337g c1337g = list.get(i2);
                int save = canvas.save();
                onChildDrawOver(canvas, recyclerView, c1337g.f9399i, c1337g.f9404n, c1337g.f9405o, c1337g.f9400j, false);
                canvas.restoreToCount(save);
            }
            if (viewHolder != null) {
                int save2 = canvas.save();
                onChildDrawOver(canvas, recyclerView, viewHolder, f, f2, i, true);
                canvas.restoreToCount(save2);
            }
            for (int i3 = size - 1; i3 >= 0; i3--) {
                C1337g c1337g2 = list.get(i3);
                boolean z2 = c1337g2.f9407q;
                if (z2 && !c1337g2.f9403m) {
                    list.remove(i3);
                } else if (!z2) {
                    z = true;
                }
            }
            if (z) {
                recyclerView.invalidate();
            }
        }

        public long getAnimationDuration(@NonNull RecyclerView recyclerView, int i, float f, float f2) {
            RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
            return itemAnimator == null ? i == 8 ? 200L : 250L : i == 8 ? itemAnimator.getMoveDuration() : itemAnimator.getRemoveDuration();
        }

        public int getBoundingBoxMargin() {
            return 0;
        }

        public float getMoveThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public abstract int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder);

        public float getSwipeEscapeVelocity(float f) {
            return f;
        }

        public float getSwipeThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public float getSwipeVelocityThreshold(float f) {
            return f;
        }

        public int interpolateOutOfBoundsScroll(@NonNull RecyclerView recyclerView, int i, int i2, int i3, long j) {
            int signum = (int) (((int) (((int) Math.signum(i2)) * m5596b(recyclerView) * f9379e.getInterpolation(Math.min(1.0f, (Math.abs(i2) * 1.0f) / i)))) * f9378d.getInterpolation(j <= 2000 ? ((float) j) / 2000.0f : 1.0f));
            return signum == 0 ? i2 > 0 ? 1 : -1 : signum;
        }

        /* renamed from: isItemViewSwipeEnabled */
        public boolean get_isItemViewSwipeEnabled() {
            return true;
        }

        /* renamed from: isLongPressDragEnabled */
        public boolean get_isLongPressDragEnabled() {
            return true;
        }

        public void onChildDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            eqi.f69221a.onDraw(canvas, recyclerView, viewHolder.itemView, f, f2, i, z);
        }

        public void onChildDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @SuppressLint({"UnknownNullness"}) RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
            eqi.f69221a.onDrawOver(canvas, recyclerView, viewHolder.itemView, f, f2, i, z);
        }

        public abstract boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2);

        /* JADX WARN: Multi-variable type inference failed */
        public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof ViewDropHandler) {
                ((ViewDropHandler) layoutManager).prepareForDrop(viewHolder.itemView, viewHolder2.itemView, i3, i4);
                return;
            }
            if (layoutManager.canScrollHorizontally()) {
                if (layoutManager.getDecoratedLeft(viewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.getDecoratedRight(viewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
            if (layoutManager.canScrollVertically()) {
                if (layoutManager.getDecoratedTop(viewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                    recyclerView.scrollToPosition(i2);
                }
                if (layoutManager.getDecoratedBottom(viewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.scrollToPosition(i2);
                }
            }
        }

        public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder != null) {
                eqi.f69221a.onSelected(viewHolder.itemView);
            }
        }

        public abstract void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i);
    }

    /* loaded from: classes3.dex */
    public static abstract class SimpleCallback extends Callback {

        /* renamed from: g */
        public int f9382g;

        /* renamed from: h */
        public int f9383h;

        public SimpleCallback(int i, int i2) {
            this.f9382g = i2;
            this.f9383h = i;
        }

        public int getDragDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.f9383h;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return Callback.makeMovementFlags(getDragDirs(recyclerView, viewHolder), getSwipeDirs(recyclerView, viewHolder));
        }

        public int getSwipeDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.f9382g;
        }

        public void setDefaultDragDirs(int i) {
            this.f9383h = i;
        }

        public void setDefaultSwipeDirs(int i) {
            this.f9382g = i;
        }
    }

    /* loaded from: classes3.dex */
    public interface ViewDropHandler {
        void prepareForDrop(@NonNull View view, @NonNull View view2, int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$a */
    /* loaded from: classes3.dex */
    public class RunnableC1331a implements Runnable {
        public RunnableC1331a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            if (itemTouchHelper.f9352c == null || !itemTouchHelper.m5588s()) {
                return;
            }
            ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
            RecyclerView.ViewHolder viewHolder = itemTouchHelper2.f9352c;
            if (viewHolder != null) {
                itemTouchHelper2.m5583n(viewHolder);
            }
            ItemTouchHelper itemTouchHelper3 = ItemTouchHelper.this;
            itemTouchHelper3.f9367r.removeCallbacks(itemTouchHelper3.f9368s);
            ViewCompat.postOnAnimation(ItemTouchHelper.this.f9367r, this);
        }
    }

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$b */
    /* loaded from: classes3.dex */
    public class C1332b implements RecyclerView.OnItemTouchListener {
        public C1332b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            int findPointerIndex;
            C1337g m5577g;
            ItemTouchHelper.this.f9375z.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                ItemTouchHelper.this.f9361l = motionEvent.getPointerId(0);
                ItemTouchHelper.this.f9353d = motionEvent.getX();
                ItemTouchHelper.this.f9354e = motionEvent.getY();
                ItemTouchHelper.this.m5584o();
                ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
                if (itemTouchHelper.f9352c == null && (m5577g = itemTouchHelper.m5577g(motionEvent)) != null) {
                    ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                    itemTouchHelper2.f9353d -= m5577g.f9404n;
                    itemTouchHelper2.f9354e -= m5577g.f9405o;
                    itemTouchHelper2.m5576f(m5577g.f9399i, true);
                    if (ItemTouchHelper.this.f9350a.remove(m5577g.f9399i.itemView)) {
                        ItemTouchHelper itemTouchHelper3 = ItemTouchHelper.this;
                        itemTouchHelper3.f9362m.clearView(itemTouchHelper3.f9367r, m5577g.f9399i);
                    }
                    ItemTouchHelper.this.m5589t(m5577g.f9399i, m5577g.f9400j);
                    ItemTouchHelper itemTouchHelper4 = ItemTouchHelper.this;
                    itemTouchHelper4.m5594y(motionEvent, itemTouchHelper4.f9364o, 0);
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                ItemTouchHelper itemTouchHelper5 = ItemTouchHelper.this;
                itemTouchHelper5.f9361l = -1;
                itemTouchHelper5.m5589t(null, 0);
            } else {
                int i = ItemTouchHelper.this.f9361l;
                if (i != -1 && (findPointerIndex = motionEvent.findPointerIndex(i)) >= 0) {
                    ItemTouchHelper.this.m5573c(actionMasked, motionEvent, findPointerIndex);
                }
            }
            VelocityTracker velocityTracker = ItemTouchHelper.this.f9369t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return ItemTouchHelper.this.f9352c != null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
            if (z) {
                ItemTouchHelper.this.m5589t(null, 0);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            ItemTouchHelper.this.f9375z.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = ItemTouchHelper.this.f9369t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (ItemTouchHelper.this.f9361l == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int findPointerIndex = motionEvent.findPointerIndex(ItemTouchHelper.this.f9361l);
            if (findPointerIndex >= 0) {
                ItemTouchHelper.this.m5573c(actionMasked, motionEvent, findPointerIndex);
            }
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            RecyclerView.ViewHolder viewHolder = itemTouchHelper.f9352c;
            if (viewHolder == null) {
                return;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (findPointerIndex >= 0) {
                        itemTouchHelper.m5594y(motionEvent, itemTouchHelper.f9364o, findPointerIndex);
                        ItemTouchHelper.this.m5583n(viewHolder);
                        ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                        itemTouchHelper2.f9367r.removeCallbacks(itemTouchHelper2.f9368s);
                        ItemTouchHelper.this.f9368s.run();
                        ItemTouchHelper.this.f9367r.invalidate();
                        return;
                    }
                    return;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 6) {
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    ItemTouchHelper itemTouchHelper3 = ItemTouchHelper.this;
                    if (pointerId == itemTouchHelper3.f9361l) {
                        itemTouchHelper3.f9361l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        ItemTouchHelper itemTouchHelper4 = ItemTouchHelper.this;
                        itemTouchHelper4.m5594y(motionEvent, itemTouchHelper4.f9364o, actionIndex);
                        return;
                    }
                    return;
                }
                VelocityTracker velocityTracker2 = itemTouchHelper.f9369t;
                if (velocityTracker2 != null) {
                    velocityTracker2.clear();
                }
            }
            ItemTouchHelper.this.m5589t(null, 0);
            ItemTouchHelper.this.f9361l = -1;
        }
    }

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$c */
    /* loaded from: classes3.dex */
    public class C1333c extends C1337g {

        /* renamed from: s */
        public final /* synthetic */ int f9386s;

        /* renamed from: t */
        public final /* synthetic */ RecyclerView.ViewHolder f9387t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1333c(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4, int i3, RecyclerView.ViewHolder viewHolder2) {
            super(viewHolder, i, i2, f, f2, f3, f4);
            this.f9386s = i3;
            this.f9387t = viewHolder2;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.C1337g, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (this.f9406p) {
                return;
            }
            if (this.f9386s <= 0) {
                ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
                itemTouchHelper.f9362m.clearView(itemTouchHelper.f9367r, this.f9387t);
            } else {
                ItemTouchHelper.this.f9350a.add(this.f9387t.itemView);
                this.f9403m = true;
                int i = this.f9386s;
                if (i > 0) {
                    ItemTouchHelper.this.m5585p(this, i);
                }
            }
            ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
            View view = itemTouchHelper2.f9373x;
            View view2 = this.f9387t.itemView;
            if (view == view2) {
                itemTouchHelper2.m5587r(view2);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$d */
    /* loaded from: classes3.dex */
    public class RunnableC1334d implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ C1337g f9389e;

        /* renamed from: f */
        public final /* synthetic */ int f9390f;

        public RunnableC1334d(C1337g c1337g, int i) {
            this.f9389e = c1337g;
            this.f9390f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = ItemTouchHelper.this.f9367r;
            if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            C1337g c1337g = this.f9389e;
            if (c1337g.f9406p || c1337g.f9399i.getAbsoluteAdapterPosition() == -1) {
                return;
            }
            RecyclerView.ItemAnimator itemAnimator = ItemTouchHelper.this.f9367r.getItemAnimator();
            if ((itemAnimator == null || !itemAnimator.isRunning(null)) && !ItemTouchHelper.this.m5582l()) {
                ItemTouchHelper.this.f9362m.onSwiped(this.f9389e.f9399i, this.f9390f);
            } else {
                ItemTouchHelper.this.f9367r.post(this);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$e */
    /* loaded from: classes3.dex */
    public class C1335e implements RecyclerView.ChildDrawingOrderCallback {
        public C1335e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ChildDrawingOrderCallback
        public int onGetChildDrawingOrder(int i, int i2) {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            View view = itemTouchHelper.f9373x;
            if (view == null) {
                return i2;
            }
            int i3 = itemTouchHelper.f9374y;
            if (i3 == -1) {
                i3 = itemTouchHelper.f9367r.indexOfChild(view);
                ItemTouchHelper.this.f9374y = i3;
            }
            return i2 == i + (-1) ? i3 : i2 < i3 ? i2 : i2 + 1;
        }
    }

    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$f */
    /* loaded from: classes3.dex */
    public class C1336f extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: e */
        public boolean f9393e = true;

        public C1336f() {
        }

        /* renamed from: a */
        public void m5601a() {
            this.f9393e = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            View m5578h;
            RecyclerView.ViewHolder childViewHolder;
            if (!this.f9393e || (m5578h = ItemTouchHelper.this.m5578h(motionEvent)) == null || (childViewHolder = ItemTouchHelper.this.f9367r.getChildViewHolder(m5578h)) == null) {
                return;
            }
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            if (itemTouchHelper.f9362m.m5597c(itemTouchHelper.f9367r, childViewHolder)) {
                int pointerId = motionEvent.getPointerId(0);
                int i = ItemTouchHelper.this.f9361l;
                if (pointerId == i) {
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    float x = motionEvent.getX(findPointerIndex);
                    float y = motionEvent.getY(findPointerIndex);
                    ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                    itemTouchHelper2.f9353d = x;
                    itemTouchHelper2.f9354e = y;
                    itemTouchHelper2.f9358i = 0.0f;
                    itemTouchHelper2.f9357h = 0.0f;
                    if (itemTouchHelper2.f9362m.get_isLongPressDragEnabled()) {
                        ItemTouchHelper.this.m5589t(childViewHolder, 2);
                    }
                }
            }
        }
    }

    @VisibleForTesting
    /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$g */
    /* loaded from: classes3.dex */
    public static class C1337g implements Animator.AnimatorListener {

        /* renamed from: e */
        public final float f9395e;

        /* renamed from: f */
        public final float f9396f;

        /* renamed from: g */
        public final float f9397g;

        /* renamed from: h */
        public final float f9398h;

        /* renamed from: i */
        public final RecyclerView.ViewHolder f9399i;

        /* renamed from: j */
        public final int f9400j;

        /* renamed from: k */
        @VisibleForTesting
        public final ValueAnimator f9401k;

        /* renamed from: l */
        public final int f9402l;

        /* renamed from: m */
        public boolean f9403m;

        /* renamed from: n */
        public float f9404n;

        /* renamed from: o */
        public float f9405o;

        /* renamed from: p */
        public boolean f9406p = false;

        /* renamed from: q */
        public boolean f9407q = false;

        /* renamed from: r */
        public float f9408r;

        /* renamed from: androidx.recyclerview.widget.ItemTouchHelper$g$a */
        /* loaded from: classes3.dex */
        public class a implements ValueAnimator.AnimatorUpdateListener {
            public a() {
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                C1337g.this.m5604c(valueAnimator.getAnimatedFraction());
            }
        }

        public C1337g(RecyclerView.ViewHolder viewHolder, int i, int i2, float f, float f2, float f3, float f4) {
            this.f9400j = i2;
            this.f9402l = i;
            this.f9399i = viewHolder;
            this.f9395e = f;
            this.f9396f = f2;
            this.f9397g = f3;
            this.f9398h = f4;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f9401k = ofFloat;
            ofFloat.addUpdateListener(new a());
            ofFloat.setTarget(viewHolder.itemView);
            ofFloat.addListener(this);
            m5604c(0.0f);
        }

        /* renamed from: a */
        public void m5602a() {
            this.f9401k.cancel();
        }

        /* renamed from: b */
        public void m5603b(long j) {
            this.f9401k.setDuration(j);
        }

        /* renamed from: c */
        public void m5604c(float f) {
            this.f9408r = f;
        }

        /* renamed from: d */
        public void m5605d() {
            this.f9399i.setIsRecyclable(false);
            this.f9401k.start();
        }

        /* renamed from: e */
        public void m5606e() {
            float f = this.f9395e;
            float f2 = this.f9397g;
            if (f == f2) {
                this.f9404n = this.f9399i.itemView.getTranslationX();
            } else {
                this.f9404n = f + (this.f9408r * (f2 - f));
            }
            float f3 = this.f9396f;
            float f4 = this.f9398h;
            if (f3 == f4) {
                this.f9405o = this.f9399i.itemView.getTranslationY();
            } else {
                this.f9405o = f3 + (this.f9408r * (f4 - f3));
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            m5604c(1.0f);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f9407q) {
                this.f9399i.setIsRecyclable(true);
            }
            this.f9407q = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public ItemTouchHelper(@NonNull Callback callback) {
        this.f9362m = callback;
    }

    /* renamed from: m */
    public static boolean m5570m(View view, float f, float f2, float f3, float f4) {
        return f >= f3 && f <= f3 + ((float) view.getWidth()) && f2 >= f4 && f2 <= f4 + ((float) view.getHeight());
    }

    /* renamed from: a */
    public final void m5571a() {
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f9367r;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            m5575e();
        }
        this.f9367r = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.f9355f = resources.getDimension(C1308R.dimen.item_touch_helper_swipe_escape_velocity);
            this.f9356g = resources.getDimension(C1308R.dimen.item_touch_helper_swipe_escape_max_velocity);
            m5590u();
        }
    }

    /* renamed from: b */
    public final int m5572b(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 12) == 0) {
            return 0;
        }
        int i2 = this.f9357h > 0.0f ? 8 : 4;
        VelocityTracker velocityTracker = this.f9369t;
        if (velocityTracker != null && this.f9361l > -1) {
            velocityTracker.computeCurrentVelocity(1000, this.f9362m.getSwipeVelocityThreshold(this.f9356g));
            float xVelocity = this.f9369t.getXVelocity(this.f9361l);
            float yVelocity = this.f9369t.getYVelocity(this.f9361l);
            int i3 = xVelocity <= 0.0f ? 4 : 8;
            float abs = Math.abs(xVelocity);
            if ((i3 & i) != 0 && i2 == i3 && abs >= this.f9362m.getSwipeEscapeVelocity(this.f9355f) && abs > Math.abs(yVelocity)) {
                return i3;
            }
        }
        float width = this.f9367r.getWidth() * this.f9362m.getSwipeThreshold(viewHolder);
        if ((i & i2) == 0 || Math.abs(this.f9357h) <= width) {
            return 0;
        }
        return i2;
    }

    /* renamed from: c */
    public void m5573c(int i, MotionEvent motionEvent, int i2) {
        RecyclerView.ViewHolder m5580j;
        int m5595a;
        if (this.f9352c != null || i != 2 || this.f9363n == 2 || !this.f9362m.get_isItemViewSwipeEnabled() || this.f9367r.getScrollState() == 1 || (m5580j = m5580j(motionEvent)) == null || (m5595a = (this.f9362m.m5595a(this.f9367r, m5580j) & 65280) >> 8) == 0) {
            return;
        }
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.f9353d;
        float f2 = y - this.f9354e;
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        int i3 = this.f9366q;
        if (abs >= i3 || abs2 >= i3) {
            if (abs > abs2) {
                if (f < 0.0f && (m5595a & 4) == 0) {
                    return;
                }
                if (f > 0.0f && (m5595a & 8) == 0) {
                    return;
                }
            } else {
                if (f2 < 0.0f && (m5595a & 1) == 0) {
                    return;
                }
                if (f2 > 0.0f && (m5595a & 2) == 0) {
                    return;
                }
            }
            this.f9358i = 0.0f;
            this.f9357h = 0.0f;
            this.f9361l = motionEvent.getPointerId(0);
            m5589t(m5580j, 1);
        }
    }

    /* renamed from: d */
    public final int m5574d(RecyclerView.ViewHolder viewHolder, int i) {
        if ((i & 3) == 0) {
            return 0;
        }
        int i2 = this.f9358i > 0.0f ? 2 : 1;
        VelocityTracker velocityTracker = this.f9369t;
        if (velocityTracker != null && this.f9361l > -1) {
            velocityTracker.computeCurrentVelocity(1000, this.f9362m.getSwipeVelocityThreshold(this.f9356g));
            float xVelocity = this.f9369t.getXVelocity(this.f9361l);
            float yVelocity = this.f9369t.getYVelocity(this.f9361l);
            int i3 = yVelocity <= 0.0f ? 1 : 2;
            float abs = Math.abs(yVelocity);
            if ((i3 & i) != 0 && i3 == i2 && abs >= this.f9362m.getSwipeEscapeVelocity(this.f9355f) && abs > Math.abs(xVelocity)) {
                return i3;
            }
        }
        float height = this.f9367r.getHeight() * this.f9362m.getSwipeThreshold(viewHolder);
        if ((i & i2) == 0 || Math.abs(this.f9358i) <= height) {
            return 0;
        }
        return i2;
    }

    /* renamed from: e */
    public final void m5575e() {
        this.f9367r.removeItemDecoration(this);
        this.f9367r.removeOnItemTouchListener(this.f9347B);
        this.f9367r.removeOnChildAttachStateChangeListener(this);
        for (int size = this.f9365p.size() - 1; size >= 0; size--) {
            C1337g c1337g = this.f9365p.get(0);
            c1337g.m5602a();
            this.f9362m.clearView(this.f9367r, c1337g.f9399i);
        }
        this.f9365p.clear();
        this.f9373x = null;
        this.f9374y = -1;
        m5586q();
        m5592w();
    }

    /* renamed from: f */
    public void m5576f(RecyclerView.ViewHolder viewHolder, boolean z) {
        for (int size = this.f9365p.size() - 1; size >= 0; size--) {
            C1337g c1337g = this.f9365p.get(size);
            if (c1337g.f9399i == viewHolder) {
                c1337g.f9406p |= z;
                if (!c1337g.f9407q) {
                    c1337g.m5602a();
                }
                this.f9365p.remove(size);
                return;
            }
        }
    }

    /* renamed from: g */
    public C1337g m5577g(MotionEvent motionEvent) {
        if (this.f9365p.isEmpty()) {
            return null;
        }
        View m5578h = m5578h(motionEvent);
        for (int size = this.f9365p.size() - 1; size >= 0; size--) {
            C1337g c1337g = this.f9365p.get(size);
            if (c1337g.f9399i.itemView == m5578h) {
                return c1337g;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    @SuppressLint({"UnknownNullness"})
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    /* renamed from: h */
    public View m5578h(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.f9352c;
        if (viewHolder != null) {
            View view = viewHolder.itemView;
            if (m5570m(view, x, y, this.f9359j + this.f9357h, this.f9360k + this.f9358i)) {
                return view;
            }
        }
        for (int size = this.f9365p.size() - 1; size >= 0; size--) {
            C1337g c1337g = this.f9365p.get(size);
            View view2 = c1337g.f9399i.itemView;
            if (m5570m(view2, x, y, c1337g.f9404n, c1337g.f9405o)) {
                return view2;
            }
        }
        return this.f9367r.findChildViewUnder(x, y);
    }

    /* renamed from: i */
    public final List<RecyclerView.ViewHolder> m5579i(RecyclerView.ViewHolder viewHolder) {
        RecyclerView.ViewHolder viewHolder2 = viewHolder;
        List<RecyclerView.ViewHolder> list = this.f9370u;
        if (list == null) {
            this.f9370u = new ArrayList();
            this.f9371v = new ArrayList();
        } else {
            list.clear();
            this.f9371v.clear();
        }
        int boundingBoxMargin = this.f9362m.getBoundingBoxMargin();
        int round = Math.round(this.f9359j + this.f9357h) - boundingBoxMargin;
        int round2 = Math.round(this.f9360k + this.f9358i) - boundingBoxMargin;
        int i = boundingBoxMargin * 2;
        int width = viewHolder2.itemView.getWidth() + round + i;
        int height = viewHolder2.itemView.getHeight() + round2 + i;
        int i2 = (round + width) / 2;
        int i3 = (round2 + height) / 2;
        RecyclerView.LayoutManager layoutManager = this.f9367r.getLayoutManager();
        int childCount = layoutManager.getChildCount();
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = layoutManager.getChildAt(i4);
            if (childAt != viewHolder2.itemView && childAt.getBottom() >= round2 && childAt.getTop() <= height && childAt.getRight() >= round && childAt.getLeft() <= width) {
                RecyclerView.ViewHolder childViewHolder = this.f9367r.getChildViewHolder(childAt);
                if (this.f9362m.canDropOver(this.f9367r, this.f9352c, childViewHolder)) {
                    int abs = Math.abs(i2 - ((childAt.getLeft() + childAt.getRight()) / 2));
                    int abs2 = Math.abs(i3 - ((childAt.getTop() + childAt.getBottom()) / 2));
                    int i5 = (abs * abs) + (abs2 * abs2);
                    int size = this.f9370u.size();
                    int i6 = 0;
                    for (int i7 = 0; i7 < size && i5 > this.f9371v.get(i7).intValue(); i7++) {
                        i6++;
                    }
                    this.f9370u.add(i6, childViewHolder);
                    this.f9371v.add(i6, Integer.valueOf(i5));
                }
            }
            i4++;
            viewHolder2 = viewHolder;
        }
        return this.f9370u;
    }

    /* renamed from: j */
    public final RecyclerView.ViewHolder m5580j(MotionEvent motionEvent) {
        View m5578h;
        RecyclerView.LayoutManager layoutManager = this.f9367r.getLayoutManager();
        int i = this.f9361l;
        if (i == -1) {
            return null;
        }
        int findPointerIndex = motionEvent.findPointerIndex(i);
        float x = motionEvent.getX(findPointerIndex) - this.f9353d;
        float y = motionEvent.getY(findPointerIndex) - this.f9354e;
        float abs = Math.abs(x);
        float abs2 = Math.abs(y);
        int i2 = this.f9366q;
        if (abs < i2 && abs2 < i2) {
            return null;
        }
        if (abs > abs2 && layoutManager.canScrollHorizontally()) {
            return null;
        }
        if ((abs2 <= abs || !layoutManager.canScrollVertically()) && (m5578h = m5578h(motionEvent)) != null) {
            return this.f9367r.getChildViewHolder(m5578h);
        }
        return null;
    }

    /* renamed from: k */
    public final void m5581k(float[] fArr) {
        if ((this.f9364o & 12) != 0) {
            fArr[0] = (this.f9359j + this.f9357h) - this.f9352c.itemView.getLeft();
        } else {
            fArr[0] = this.f9352c.itemView.getTranslationX();
        }
        if ((this.f9364o & 3) != 0) {
            fArr[1] = (this.f9360k + this.f9358i) - this.f9352c.itemView.getTop();
        } else {
            fArr[1] = this.f9352c.itemView.getTranslationY();
        }
    }

    /* renamed from: l */
    public boolean m5582l() {
        int size = this.f9365p.size();
        for (int i = 0; i < size; i++) {
            if (!this.f9365p.get(i).f9407q) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    public void m5583n(RecyclerView.ViewHolder viewHolder) {
        if (!this.f9367r.isLayoutRequested() && this.f9363n == 2) {
            float moveThreshold = this.f9362m.getMoveThreshold(viewHolder);
            int i = (int) (this.f9359j + this.f9357h);
            int i2 = (int) (this.f9360k + this.f9358i);
            if (Math.abs(i2 - viewHolder.itemView.getTop()) >= viewHolder.itemView.getHeight() * moveThreshold || Math.abs(i - viewHolder.itemView.getLeft()) >= viewHolder.itemView.getWidth() * moveThreshold) {
                List<RecyclerView.ViewHolder> m5579i = m5579i(viewHolder);
                if (m5579i.size() == 0) {
                    return;
                }
                RecyclerView.ViewHolder chooseDropTarget = this.f9362m.chooseDropTarget(viewHolder, m5579i, i, i2);
                if (chooseDropTarget == null) {
                    this.f9370u.clear();
                    this.f9371v.clear();
                    return;
                }
                int absoluteAdapterPosition = chooseDropTarget.getAbsoluteAdapterPosition();
                int absoluteAdapterPosition2 = viewHolder.getAbsoluteAdapterPosition();
                if (this.f9362m.onMove(this.f9367r, viewHolder, chooseDropTarget)) {
                    this.f9362m.onMoved(this.f9367r, viewHolder, absoluteAdapterPosition2, chooseDropTarget, absoluteAdapterPosition, i, i2);
                }
            }
        }
    }

    /* renamed from: o */
    public void m5584o() {
        VelocityTracker velocityTracker = this.f9369t;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.f9369t = VelocityTracker.obtain();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public void onChildViewAttachedToWindow(@NonNull View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public void onChildViewDetachedFromWindow(@NonNull View view) {
        m5587r(view);
        RecyclerView.ViewHolder childViewHolder = this.f9367r.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.f9352c;
        if (viewHolder != null && childViewHolder == viewHolder) {
            m5589t(null, 0);
            return;
        }
        m5576f(childViewHolder, false);
        if (this.f9350a.remove(childViewHolder.itemView)) {
            this.f9362m.clearView(this.f9367r, childViewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    @SuppressLint({"UnknownNullness"})
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f;
        float f2;
        this.f9374y = -1;
        if (this.f9352c != null) {
            m5581k(this.f9351b);
            float[] fArr = this.f9351b;
            float f3 = fArr[0];
            f2 = fArr[1];
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        this.f9362m.m5599e(canvas, recyclerView, this.f9352c, this.f9365p, this.f9363n, f, f2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
        float f;
        float f2;
        if (this.f9352c != null) {
            m5581k(this.f9351b);
            float[] fArr = this.f9351b;
            float f3 = fArr[0];
            f2 = fArr[1];
            f = f3;
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        this.f9362m.m5600f(canvas, recyclerView, this.f9352c, this.f9365p, this.f9363n, f, f2);
    }

    /* renamed from: p */
    public void m5585p(C1337g c1337g, int i) {
        this.f9367r.post(new RunnableC1334d(c1337g, i));
    }

    /* renamed from: q */
    public final void m5586q() {
        VelocityTracker velocityTracker = this.f9369t;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f9369t = null;
        }
    }

    /* renamed from: r */
    public void m5587r(View view) {
        if (view == this.f9373x) {
            this.f9373x = null;
            if (this.f9372w != null) {
                this.f9367r.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c1, code lost:
    
        if (r1 > 0) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0100 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fd  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5588s() {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.m5588s():boolean");
    }

    public void startDrag(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (!this.f9362m.m5597c(this.f9367r, viewHolder)) {
            Log.e(f9337E, "Start drag has been called but dragging is not enabled");
            return;
        }
        if (viewHolder.itemView.getParent() != this.f9367r) {
            Log.e(f9337E, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper.");
            return;
        }
        m5584o();
        this.f9358i = 0.0f;
        this.f9357h = 0.0f;
        m5589t(viewHolder, 2);
    }

    public void startSwipe(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (!this.f9362m.m5598d(this.f9367r, viewHolder)) {
            Log.e(f9337E, "Start swipe has been called but swiping is not enabled");
            return;
        }
        if (viewHolder.itemView.getParent() != this.f9367r) {
            Log.e(f9337E, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper.");
            return;
        }
        m5584o();
        this.f9358i = 0.0f;
        this.f9357h = 0.0f;
        m5589t(viewHolder, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0136  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5589t(@androidx.annotation.Nullable androidx.recyclerview.widget.RecyclerView.ViewHolder r24, int r25) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.m5589t(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    /* renamed from: u */
    public final void m5590u() {
        this.f9366q = ViewConfiguration.get(this.f9367r.getContext()).getScaledTouchSlop();
        this.f9367r.addItemDecoration(this);
        this.f9367r.addOnItemTouchListener(this.f9347B);
        this.f9367r.addOnChildAttachStateChangeListener(this);
        m5591v();
    }

    /* renamed from: v */
    public final void m5591v() {
        this.f9346A = new C1336f();
        this.f9375z = new GestureDetectorCompat(this.f9367r.getContext(), this.f9346A);
    }

    /* renamed from: w */
    public final void m5592w() {
        C1336f c1336f = this.f9346A;
        if (c1336f != null) {
            c1336f.m5601a();
            this.f9346A = null;
        }
        if (this.f9375z != null) {
            this.f9375z = null;
        }
    }

    /* renamed from: x */
    public final int m5593x(RecyclerView.ViewHolder viewHolder) {
        if (this.f9363n == 2) {
            return 0;
        }
        int movementFlags = this.f9362m.getMovementFlags(this.f9367r, viewHolder);
        int convertToAbsoluteDirection = (this.f9362m.convertToAbsoluteDirection(movementFlags, ViewCompat.getLayoutDirection(this.f9367r)) & 65280) >> 8;
        if (convertToAbsoluteDirection == 0) {
            return 0;
        }
        int i = (movementFlags & 65280) >> 8;
        if (Math.abs(this.f9357h) > Math.abs(this.f9358i)) {
            int m5572b = m5572b(viewHolder, convertToAbsoluteDirection);
            if (m5572b > 0) {
                return (i & m5572b) == 0 ? Callback.convertToRelativeDirection(m5572b, ViewCompat.getLayoutDirection(this.f9367r)) : m5572b;
            }
            int m5574d = m5574d(viewHolder, convertToAbsoluteDirection);
            if (m5574d > 0) {
                return m5574d;
            }
        } else {
            int m5574d2 = m5574d(viewHolder, convertToAbsoluteDirection);
            if (m5574d2 > 0) {
                return m5574d2;
            }
            int m5572b2 = m5572b(viewHolder, convertToAbsoluteDirection);
            if (m5572b2 > 0) {
                return (i & m5572b2) == 0 ? Callback.convertToRelativeDirection(m5572b2, ViewCompat.getLayoutDirection(this.f9367r)) : m5572b2;
            }
        }
        return 0;
    }

    /* renamed from: y */
    public void m5594y(MotionEvent motionEvent, int i, int i2) {
        float x = motionEvent.getX(i2);
        float y = motionEvent.getY(i2);
        float f = x - this.f9353d;
        this.f9357h = f;
        this.f9358i = y - this.f9354e;
        if ((i & 4) == 0) {
            this.f9357h = Math.max(0.0f, f);
        }
        if ((i & 8) == 0) {
            this.f9357h = Math.min(0.0f, this.f9357h);
        }
        if ((i & 1) == 0) {
            this.f9358i = Math.max(0.0f, this.f9358i);
        }
        if ((i & 2) == 0) {
            this.f9358i = Math.min(0.0f, this.f9358i);
        }
    }
}
