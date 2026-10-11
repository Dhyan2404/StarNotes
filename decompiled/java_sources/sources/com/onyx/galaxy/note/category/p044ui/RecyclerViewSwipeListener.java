package com.onyx.galaxy.note.category.p044ui;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TimeGuard;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u0000 72\u00020\u0001:\u000278B\u0007¢\u0006\u0004\b5\u00106J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fJ\b\u0010\u000f\u001a\u00020\u0006H&J\u0016\u0010\u0013\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H&J\u0018\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\u0017\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001eR&\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\u00110!j\b\u0012\u0004\u0012\u00020\u0011`\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\u001eR\u0016\u0010)\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001eR\u0018\u0010-\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00104\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103¨\u00069"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;", "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;", "Landroidx/recyclerview/widget/RecyclerView;", "rv", "Landroid/view/MotionEvent;", "e", "", "onInterceptTouchEvent", "", "onTouchEvent", "disallowIntercept", "onRequestDisallowInterceptTouchEvent", "", "limit", "setBorderLimit", "isEnableSwipe", "", "", "positionList", "updateChangeItems", "a", "Landroid/graphics/PointF;", "Landroid/graphics/PointF;", "downPointF", "b", Constants.HASIDCALL_INDEX_SIG, "isSwipeHorizontal", "c", "isSwipeVertical", "d", "I", "lastPosition", "downPosition", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", C6997f.f39671c, "Ljava/util/HashSet;", "swipeSet", C6998g.f39679a, "touchSlop", C6999h.f39688c, "activePointId", "Lcom/onyx/android/sdk/base/data/TimeGuard;", "i", "Lcom/onyx/android/sdk/base/data/TimeGuard;", "timeGuard", "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;", "j", "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;", "edgeScroller", C4921e.f26537n, "F", "borderLimit", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "EdgeScroller", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public abstract class RecyclerViewSwipeListener implements RecyclerView.OnItemTouchListener {
    public static final int SCROLLING_STEP = 10;
    public static final long START_SCROLL_DURATION = 600;
    public static final long START_SWIPE_TOUCH_DURATION = 500;
    public static final int STOP_SCROLLING_ANIMATOR_LIMIT = 80;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isSwipeHorizontal;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isSwipeVertical;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public TimeGuard timeGuard;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public EdgeScroller edgeScroller;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: l */
    public static final float f54907l = ResManager.INSTANCE.getDimension(C7384R.dimen.dp_100);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public PointF downPointF = new PointF();

    /* renamed from: d, reason: from kotlin metadata */
    public int lastPosition = -1;

    /* renamed from: e, reason: from kotlin metadata */
    public int downPosition = -1;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public HashSet<Integer> swipeSet = new HashSet<>();

    /* renamed from: g, reason: from kotlin metadata */
    public int touchSlop = ViewConfiguration.get(ResManager.INSTANCE.getContext()).getScaledTouchSlop();

    /* renamed from: h, reason: from kotlin metadata */
    public int activePointId = -1;

    /* renamed from: k, reason: from kotlin metadata */
    public float borderLimit = f54907l;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$Companion;", "", "()V", "BORDER_LIMIT", "", "getBORDER_LIMIT", "()F", "SCROLLING_STEP", "", "START_SCROLL_DURATION", "", "START_SWIPE_TOUCH_DURATION", "STOP_SCROLLING_ANIMATOR_LIMIT", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float getBORDER_LIMIT() {
            return RecyclerViewSwipeListener.f54907l;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0007*\u0001)\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0018\u001a\u00020\f¢\u0006\u0004\b-\u0010.J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0004J\u0006\u0010\u0007\u001a\u00020\u0004J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010\u001f\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\u0010R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+¨\u0006/"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller;", "", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "updateMovePoint", "startScroll", "stopScroll", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "eventY", "", "a", "Landroidx/recyclerview/widget/RecyclerView;", "b", "F", "borderLimit", "", "c", "J", "startScrollDuration", "d", "I", "baseScrollAmount", "e", "Landroid/view/MotionEvent;", "currentMoveEvent", "", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "isScrolling", Constants.BOOLEAN_VALUE_SIG, "setScrolling", "(Z)V", "Lcom/onyx/android/sdk/base/data/TimeGuard;", C6998g.f39679a, "Lcom/onyx/android/sdk/base/data/TimeGuard;", "startScrollTimeGuard", C6999h.f39688c, "lastMoveY", "com/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1", "i", "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1;", "scrollRunnable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/recyclerview/widget/RecyclerView;FJI)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public static final class EdgeScroller {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final RecyclerView recyclerView;

        /* renamed from: b, reason: from kotlin metadata */
        public final float borderLimit;

        /* renamed from: c, reason: from kotlin metadata */
        public final long startScrollDuration;

        /* renamed from: d, reason: from kotlin metadata */
        public final int baseScrollAmount;

        /* renamed from: e, reason: from kotlin metadata */
        @Nullable
        public MotionEvent currentMoveEvent;

        /* renamed from: f, reason: from kotlin metadata */
        public boolean isScrolling;

        /* renamed from: g, reason: from kotlin metadata */
        @NotNull
        public TimeGuard startScrollTimeGuard;

        /* renamed from: h, reason: from kotlin metadata */
        public float lastMoveY;

        /* renamed from: i, reason: from kotlin metadata */
        @NotNull
        public final RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1 scrollRunnable;

        /* JADX WARN: Type inference failed for: r9v3, types: [com.onyx.galaxy.note.category.ui.RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1] */
        public EdgeScroller(@NotNull RecyclerView recyclerView, float f, long j, int i) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            this.recyclerView = recyclerView;
            this.borderLimit = f;
            this.startScrollDuration = j;
            this.baseScrollAmount = i;
            this.startScrollTimeGuard = new TimeGuard(j, 0L, 2, null);
            this.lastMoveY = -1.0f;
            this.scrollRunnable = new Runnable() { // from class: com.onyx.galaxy.note.category.ui.RecyclerViewSwipeListener$EdgeScroller$scrollRunnable$1
                @Override // java.lang.Runnable
                public void run() {
                    MotionEvent motionEvent;
                    RecyclerView recyclerView2;
                    int m43795a;
                    RecyclerView recyclerView3;
                    RecyclerView recyclerView4;
                    RecyclerView recyclerView5;
                    RecyclerView recyclerView6;
                    motionEvent = RecyclerViewSwipeListener.EdgeScroller.this.currentMoveEvent;
                    if (motionEvent == null) {
                        RecyclerViewSwipeListener.EdgeScroller.this.stopScroll();
                        return;
                    }
                    RecyclerViewSwipeListener.EdgeScroller edgeScroller = RecyclerViewSwipeListener.EdgeScroller.this;
                    recyclerView2 = edgeScroller.recyclerView;
                    m43795a = edgeScroller.m43795a(recyclerView2, motionEvent.getY());
                    recyclerView3 = RecyclerViewSwipeListener.EdgeScroller.this.recyclerView;
                    if (!recyclerView3.canScrollVertically(m43795a)) {
                        RecyclerViewSwipeListener.EdgeScroller.this.stopScroll();
                        return;
                    }
                    recyclerView4 = RecyclerViewSwipeListener.EdgeScroller.this.recyclerView;
                    recyclerView4.scrollBy(0, m43795a);
                    recyclerView5 = RecyclerViewSwipeListener.EdgeScroller.this.recyclerView;
                    recyclerView5.removeCallbacks(this);
                    recyclerView6 = RecyclerViewSwipeListener.EdgeScroller.this.recyclerView;
                    ViewCompat.postOnAnimation(recyclerView6, this);
                }
            };
        }

        /* renamed from: a */
        public final int m43795a(RecyclerView recyclerView, float eventY) {
            float coerceIn;
            int height = recyclerView.getHeight();
            float f = height;
            coerceIn = RangesKt___RangesKt.coerceIn(eventY, 0.0f, f);
            float f2 = height / 2;
            float abs = coerceIn < f2 ? eventY / this.borderLimit : (this.borderLimit - Math.abs(f - eventY)) / this.borderLimit;
            float f3 = 1;
            int i = (int) (this.baseScrollAmount * (f3 + (f3 - abs)));
            return coerceIn < f2 ? -i : i;
        }

        /* renamed from: isScrolling, reason: from getter */
        public final boolean getIsScrolling() {
            return this.isScrolling;
        }

        public final void setScrolling(boolean z) {
            this.isScrolling = z;
        }

        public final void startScroll() {
            if (this.isScrolling || !this.startScrollTimeGuard.check()) {
                return;
            }
            this.isScrolling = true;
            this.recyclerView.post(this.scrollRunnable);
        }

        public final void stopScroll() {
            this.isScrolling = false;
            this.currentMoveEvent = null;
            this.recyclerView.removeCallbacks(this.scrollRunnable);
        }

        public final void updateMovePoint(@NotNull MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            this.currentMoveEvent = event;
            if (Math.abs(this.lastMoveY - event.getY()) > ResManager.INSTANCE.getScaledTouchSlop()) {
                TimeGuard.resetStartTime$default(this.startScrollTimeGuard, 0L, 1, null);
            }
            this.lastMoveY = event.getY();
        }
    }

    /* renamed from: a */
    public final void m43794a(RecyclerView rv, MotionEvent e) {
        EdgeScroller edgeScroller;
        EdgeScroller edgeScroller2;
        float y = e.getY();
        float f = f54907l;
        if (y <= f || e.getY() >= rv.getHeight() - f) {
            if (e.getAction() == 2 && (edgeScroller = this.edgeScroller) != null) {
                edgeScroller.startScroll();
                return;
            }
            return;
        }
        if (e.getY() <= 80.0f || e.getY() >= rv.getHeight() - 80 || (edgeScroller2 = this.edgeScroller) == null) {
            return;
        }
        edgeScroller2.stopScroll();
    }

    public abstract boolean isEnableSwipe();

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        if (r0 != 3) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007a  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(@org.jetbrains.annotations.NotNull androidx.recyclerview.widget.RecyclerView r8, @org.jetbrains.annotations.NotNull android.view.MotionEvent r9) {
        /*
            r7 = this;
            java.lang.String r0 = "rv"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "e"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            boolean r0 = r7.isEnableSwipe()
            r1 = 0
            if (r0 == 0) goto L12
            return r1
        L12:
            int r0 = r9.getAction()
            r2 = -1
            if (r0 == 0) goto L8c
            r8 = 1
            if (r0 == r8) goto L7d
            r3 = 2
            if (r0 == r3) goto L24
            r8 = 3
            if (r0 == r8) goto L7d
            goto Lce
        L24:
            int r0 = r7.activePointId
            int r0 = r9.findPointerIndex(r0)
            if (r0 == r2) goto Lce
            boolean r2 = r7.isSwipeHorizontal
            if (r2 == 0) goto L31
            return r8
        L31:
            boolean r2 = r7.isSwipeVertical
            if (r2 == 0) goto L36
            return r1
        L36:
            float r2 = r9.getRawX(r0)
            float r9 = r9.getRawY(r0)
            android.graphics.PointF r0 = r7.downPointF
            float r0 = r0.y
            float r9 = r9 - r0
            float r9 = java.lang.Math.abs(r9)
            int r0 = r7.touchSlop
            float r0 = (float) r0
            int r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r0 >= 0) goto L60
            com.onyx.android.sdk.base.data.TimeGuard r0 = r7.timeGuard
            if (r0 == 0) goto L5a
            boolean r0 = r0.check()
            if (r0 != r8) goto L5a
            r0 = r8
            goto L5b
        L5a:
            r0 = r1
        L5b:
            if (r0 == 0) goto L60
            r7.isSwipeHorizontal = r8
            goto L6a
        L60:
            int r0 = r7.touchSlop
            float r0 = (float) r0
            int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r9 <= 0) goto L6a
            r7.isSwipeVertical = r8
            return r1
        L6a:
            android.graphics.PointF r9 = r7.downPointF
            float r9 = r9.x
            float r2 = r2 - r9
            float r9 = java.lang.Math.abs(r2)
            int r0 = r7.touchSlop
            float r0 = (float) r0
            int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r9 <= 0) goto Lce
            r7.isSwipeHorizontal = r8
            goto Lce
        L7d:
            com.onyx.galaxy.note.category.ui.RecyclerViewSwipeListener$EdgeScroller r8 = r7.edgeScroller
            if (r8 == 0) goto L84
            r8.stopScroll()
        L84:
            r8 = 0
            r7.edgeScroller = r8
            r7.lastPosition = r2
            r7.downPosition = r2
            goto Lce
        L8c:
            r7.isSwipeVertical = r1
            r7.isSwipeHorizontal = r1
            android.graphics.PointF r0 = r7.downPointF
            float r3 = r9.getRawX()
            float r4 = r9.getRawY()
            r0.set(r3, r4)
            r7.lastPosition = r2
            r7.downPosition = r2
            java.util.HashSet<java.lang.Integer> r0 = r7.swipeSet
            r0.clear()
            int r0 = r9.getPointerId(r1)
            r7.activePointId = r0
            float r0 = r9.getX()
            float r9 = r9.getY()
            android.view.View r9 = r8.findChildViewUnder(r0, r9)
            if (r9 == 0) goto Lc0
            int r8 = r8.getChildAdapterPosition(r9)
            r7.downPosition = r8
        Lc0:
            com.onyx.android.sdk.base.data.TimeGuard r8 = new com.onyx.android.sdk.base.data.TimeGuard
            r1 = 500(0x1f4, double:2.47E-321)
            r3 = 0
            r5 = 2
            r6 = 0
            r0 = r8
            r0.<init>(r1, r3, r5, r6)
            r7.timeGuard = r8
        Lce:
            boolean r7 = r7.isSwipeHorizontal
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.category.p044ui.RecyclerViewSwipeListener.onInterceptTouchEvent(androidx.recyclerview.widget.RecyclerView, android.view.MotionEvent):boolean");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(@NotNull RecyclerView rv, @NotNull MotionEvent e) {
        List list;
        List<Integer> list2;
        Intrinsics.checkNotNullParameter(rv, "rv");
        Intrinsics.checkNotNullParameter(e, "e");
        if (this.isSwipeHorizontal) {
            if (this.edgeScroller == null) {
                this.edgeScroller = new EdgeScroller(rv, this.borderLimit, 600L, 10);
            }
            EdgeScroller edgeScroller = this.edgeScroller;
            if (edgeScroller != null) {
                edgeScroller.updateMovePoint(e);
            }
            int action = e.getAction();
            if (action != 1) {
                if (action == 2) {
                    View findChildViewUnder = rv.findChildViewUnder(e.getX(), e.getY());
                    if (findChildViewUnder == null) {
                        m43794a(rv, e);
                        return;
                    }
                    int childAdapterPosition = rv.getChildAdapterPosition(findChildViewUnder);
                    if (childAdapterPosition < 0) {
                        return;
                    }
                    int i = this.lastPosition;
                    if (i == childAdapterPosition) {
                        m43794a(rv, e);
                        return;
                    }
                    if (this.downPosition == -1) {
                        this.downPosition = childAdapterPosition;
                    }
                    if (i == -1) {
                        this.lastPosition = childAdapterPosition;
                    }
                    list = CollectionsKt___CollectionsKt.toList(this.swipeSet);
                    MathUtils mathUtils = MathUtils.INSTANCE;
                    int intValue = ((Number) mathUtils.atLeast(Integer.valueOf(Math.min(this.downPosition, childAdapterPosition)), 0)).intValue();
                    int intValue2 = ((Number) mathUtils.atLeast(Integer.valueOf(Math.max(this.downPosition, childAdapterPosition)), 0)).intValue();
                    HashSet hashSet = new HashSet();
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        int intValue3 = ((Number) it2.next()).intValue();
                        if (intValue3 < intValue || intValue3 > intValue2) {
                            this.swipeSet.remove(Integer.valueOf(intValue3));
                            hashSet.add(Integer.valueOf(intValue3));
                        }
                    }
                    if (intValue <= intValue2) {
                        while (true) {
                            if (!this.swipeSet.contains(Integer.valueOf(intValue))) {
                                this.swipeSet.add(Integer.valueOf(intValue));
                                hashSet.add(Integer.valueOf(intValue));
                            }
                            if (intValue == intValue2) {
                                break;
                            } else {
                                intValue++;
                            }
                        }
                    }
                    this.lastPosition = childAdapterPosition;
                    if (!hashSet.isEmpty()) {
                        list2 = CollectionsKt___CollectionsKt.toList(hashSet);
                        updateChangeItems(list2);
                    }
                    m43794a(rv, e);
                    return;
                }
                if (action != 3) {
                    return;
                }
            }
            EdgeScroller edgeScroller2 = this.edgeScroller;
            if (edgeScroller2 != null) {
                edgeScroller2.stopScroll();
            }
            this.edgeScroller = null;
            this.lastPosition = -1;
            this.downPosition = -1;
        }
    }

    public final void setBorderLimit(float limit) {
        this.borderLimit = limit;
    }

    public abstract void updateChangeItems(@NotNull List<Integer> positionList);
}
