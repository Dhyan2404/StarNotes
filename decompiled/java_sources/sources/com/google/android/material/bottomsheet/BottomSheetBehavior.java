package com.google.android.material.bottomsheet;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import androidx.activity.BackEventCompat;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.C5139R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBottomContainerBackHelper;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.sunia.HTREnginev2.jmi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes6.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> implements MaterialBackHandler {
    public static final int PEEK_HEIGHT_AUTO = -1;
    public static final int SAVE_ALL = -1;
    public static final int SAVE_FIT_TO_CONTENTS = 2;
    public static final int SAVE_HIDEABLE = 4;
    public static final int SAVE_NONE = 0;
    public static final int SAVE_PEEK_HEIGHT = 1;
    public static final int SAVE_SKIP_COLLAPSED = 8;
    public static final int STATE_COLLAPSED = 4;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_EXPANDED = 3;
    public static final int STATE_HALF_EXPANDED = 6;
    public static final int STATE_HIDDEN = 5;
    public static final int STATE_SETTLING = 2;

    /* renamed from: Z0 */
    public static final String f30446Z0 = "BottomSheetBehavior";

    /* renamed from: a1 */
    @VisibleForTesting
    public static final int f30447a1 = 500;

    /* renamed from: b1 */
    public static final float f30448b1 = 0.5f;

    /* renamed from: c1 */
    public static final float f30449c1 = 0.1f;

    /* renamed from: d1 */
    public static final int f30450d1 = 500;

    /* renamed from: e1 */
    public static final int f30451e1 = -1;

    /* renamed from: f1 */
    public static final int f30452f1 = 0;

    /* renamed from: g1 */
    public static final int f30453g1 = -1;

    /* renamed from: h1 */
    @VisibleForTesting
    public static final int f30454h1 = 1;

    /* renamed from: i1 */
    public static final int f30455i1 = C5139R.style.Widget_Design_BottomSheet_Modal;

    /* renamed from: A0 */
    public boolean f30456A0;

    /* renamed from: B0 */
    public boolean f30457B0;

    /* renamed from: C0 */
    public boolean f30458C0;

    /* renamed from: D0 */
    public int f30459D0;

    /* renamed from: E0 */
    public int f30460E0;

    /* renamed from: F0 */
    @Nullable
    public ViewDragHelper f30461F0;

    /* renamed from: G0 */
    public boolean f30462G0;

    /* renamed from: H0 */
    public int f30463H0;

    /* renamed from: I0 */
    public boolean f30464I0;

    /* renamed from: J */
    public int f30465J;

    /* renamed from: J0 */
    public float f30466J0;

    /* renamed from: K0 */
    public int f30467K0;

    /* renamed from: L0 */
    public int f30468L0;

    /* renamed from: M0 */
    public int f30469M0;

    /* renamed from: N0 */
    @Nullable
    public WeakReference<V> f30470N0;

    /* renamed from: O */
    public int f30471O;

    /* renamed from: O0 */
    @Nullable
    public WeakReference<View> f30472O0;

    /* renamed from: P0 */
    @Nullable
    public WeakReference<View> f30473P0;

    /* renamed from: Q */
    public boolean f30474Q;

    /* renamed from: Q0 */
    @NonNull
    public final ArrayList<BottomSheetCallback> f30475Q0;

    /* renamed from: R0 */
    @Nullable
    public VelocityTracker f30476R0;

    /* renamed from: S0 */
    @Nullable
    public MaterialBottomContainerBackHelper f30477S0;

    /* renamed from: T0 */
    public int f30478T0;

    /* renamed from: U0 */
    public int f30479U0;

    /* renamed from: V0 */
    public boolean f30480V0;

    /* renamed from: W0 */
    @Nullable
    public Map<View, Integer> f30481W0;

    /* renamed from: X0 */
    @VisibleForTesting
    public final SparseIntArray f30482X0;

    /* renamed from: Y0 */
    public final ViewDragHelper.Callback f30483Y0;

    /* renamed from: Z */
    public ShapeAppearanceModel f30484Z;

    /* renamed from: e */
    public int f30485e;

    /* renamed from: f */
    public boolean f30486f;

    /* renamed from: g */
    public boolean f30487g;

    /* renamed from: h */
    public float f30488h;

    /* renamed from: i */
    public int f30489i;

    /* renamed from: j */
    public int f30490j;

    /* renamed from: k */
    public boolean f30491k;

    /* renamed from: k0 */
    public boolean f30492k0;

    /* renamed from: l */
    public int f30493l;

    /* renamed from: m */
    public int f30494m;

    /* renamed from: n */
    public MaterialShapeDrawable f30495n;

    /* renamed from: o */
    @Nullable
    public ColorStateList f30496o;

    /* renamed from: p */
    public int f30497p;

    /* renamed from: q */
    public int f30498q;

    /* renamed from: q0 */
    public final BottomSheetBehavior<V>.C5177g f30499q0;

    /* renamed from: r */
    public int f30500r;

    /* renamed from: s */
    public boolean f30501s;

    /* renamed from: t */
    public boolean f30502t;

    /* renamed from: t0 */
    @Nullable
    public ValueAnimator f30503t0;

    /* renamed from: u */
    public boolean f30504u;

    /* renamed from: u0 */
    public int f30505u0;

    /* renamed from: v */
    public boolean f30506v;

    /* renamed from: v0 */
    public int f30507v0;

    /* renamed from: w */
    public boolean f30508w;

    /* renamed from: w0 */
    public int f30509w0;

    /* renamed from: x */
    public boolean f30510x;

    /* renamed from: x0 */
    public float f30511x0;

    /* renamed from: y */
    public boolean f30512y;

    /* renamed from: y0 */
    public int f30513y0;

    /* renamed from: z */
    public boolean f30514z;

    /* renamed from: z0 */
    public float f30515z0;

    /* loaded from: classes6.dex */
    public static abstract class BottomSheetCallback {
        /* renamed from: a */
        public void mo23205a(@NonNull View view) {
        }

        public abstract void onSlide(@NonNull View view, float f);

        public abstract void onStateChanged(@NonNull View view, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface SaveFlags {
    }

    /* loaded from: classes6.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5170a();
        boolean fitToContents;
        boolean hideable;
        int peekHeight;
        boolean skipCollapsed;
        final int state;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5170a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.state);
            parcel.writeInt(this.peekHeight);
            parcel.writeInt(this.fitToContents ? 1 : 0);
            parcel.writeInt(this.hideable ? 1 : 0);
            parcel.writeInt(this.skipCollapsed ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.state = parcel.readInt();
            this.peekHeight = parcel.readInt();
            this.fitToContents = parcel.readInt() == 1;
            this.hideable = parcel.readInt() == 1;
            this.skipCollapsed = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.state = bottomSheetBehavior.f30459D0;
            this.peekHeight = bottomSheetBehavior.f30490j;
            this.fitToContents = bottomSheetBehavior.f30486f;
            this.hideable = bottomSheetBehavior.f30456A0;
            this.skipCollapsed = bottomSheetBehavior.f30457B0;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.state = i;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface StableState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes6.dex */
    public @interface State {
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$a */
    /* loaded from: classes6.dex */
    public class RunnableC5171a implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ View f30516e;

        /* renamed from: f */
        public final /* synthetic */ int f30517f;

        public RunnableC5171a(View view, int i) {
            this.f30516e = view;
            this.f30517f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.m23192Z(this.f30516e, this.f30517f, false);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$b */
    /* loaded from: classes6.dex */
    public class C5172b extends AnimatorListenerAdapter {
        public C5172b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomSheetBehavior.this.m23188V(5);
            WeakReference<V> weakReference = BottomSheetBehavior.this.f30470N0;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            BottomSheetBehavior.this.f30470N0.get().requestLayout();
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$c */
    /* loaded from: classes6.dex */
    public class C5173c implements ValueAnimator.AnimatorUpdateListener {
        public C5173c() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f30495n != null) {
                BottomSheetBehavior.this.f30495n.setInterpolation(floatValue);
            }
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$d */
    /* loaded from: classes6.dex */
    public class C5174d implements ViewUtils.OnApplyWindowInsetsListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f30521a;

        public C5174d(boolean z) {
            this.f30521a = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00c3  */
        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.core.view.WindowInsetsCompat onApplyWindowInsets(android.view.View r11, androidx.core.view.WindowInsetsCompat r12, com.google.android.material.internal.ViewUtils.RelativePadding r13) {
            /*
                r10 = this;
                int r0 = androidx.core.view.WindowInsetsCompat.Type.systemBars()
                androidx.core.graphics.Insets r0 = r12.getInsets(r0)
                int r1 = androidx.core.view.WindowInsetsCompat.Type.mandatorySystemGestures()
                androidx.core.graphics.Insets r1 = r12.getInsets(r1)
                com.google.android.material.bottomsheet.BottomSheetBehavior r2 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r3 = r0.top
                com.google.android.material.bottomsheet.BottomSheetBehavior.m23159l(r2, r3)
                boolean r2 = com.google.android.material.internal.ViewUtils.isLayoutRtl(r11)
                int r3 = r11.getPaddingBottom()
                int r4 = r11.getPaddingLeft()
                int r5 = r11.getPaddingRight()
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.m23160m(r6)
                if (r6 == 0) goto L41
                com.google.android.material.bottomsheet.BottomSheetBehavior r3 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r6 = r12.getSystemWindowInsetBottom()
                com.google.android.material.bottomsheet.BottomSheetBehavior.m23162o(r3, r6)
                int r3 = r13.bottom
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.m23161n(r6)
                int r3 = r3 + r6
            L41:
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.m23163p(r6)
                if (r6 == 0) goto L53
                if (r2 == 0) goto L4e
                int r4 = r13.end
                goto L50
            L4e:
                int r4 = r13.start
            L50:
                int r6 = r0.left
                int r4 = r4 + r6
            L53:
                com.google.android.material.bottomsheet.BottomSheetBehavior r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r6 = com.google.android.material.bottomsheet.BottomSheetBehavior.m23164q(r6)
                if (r6 == 0) goto L66
                if (r2 == 0) goto L60
                int r13 = r13.start
                goto L62
            L60:
                int r13 = r13.end
            L62:
                int r2 = r0.right
                int r5 = r13 + r2
            L66:
                android.view.ViewGroup$LayoutParams r13 = r11.getLayoutParams()
                android.view.ViewGroup$MarginLayoutParams r13 = (android.view.ViewGroup.MarginLayoutParams) r13
                com.google.android.material.bottomsheet.BottomSheetBehavior r2 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r2 = com.google.android.material.bottomsheet.BottomSheetBehavior.m23165r(r2)
                r6 = 0
                r7 = 1
                if (r2 == 0) goto L80
                int r2 = r13.leftMargin
                int r8 = r0.left
                if (r2 == r8) goto L80
                r13.leftMargin = r8
                r2 = r7
                goto L81
            L80:
                r2 = r6
            L81:
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.m23166s(r8)
                if (r8 == 0) goto L92
                int r8 = r13.rightMargin
                int r9 = r0.right
                if (r8 == r9) goto L92
                r13.rightMargin = r9
                r2 = r7
            L92:
                com.google.android.material.bottomsheet.BottomSheetBehavior r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r8 = com.google.android.material.bottomsheet.BottomSheetBehavior.m23149b(r8)
                if (r8 == 0) goto La3
                int r8 = r13.topMargin
                int r0 = r0.top
                if (r8 == r0) goto La3
                r13.topMargin = r0
                goto La4
            La3:
                r7 = r2
            La4:
                if (r7 == 0) goto La9
                r11.setLayoutParams(r13)
            La9:
                int r13 = r11.getPaddingTop()
                r11.setPadding(r4, r13, r5, r3)
                boolean r11 = r10.f30521a
                if (r11 == 0) goto Lbb
                com.google.android.material.bottomsheet.BottomSheetBehavior r11 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                int r13 = r1.bottom
                com.google.android.material.bottomsheet.BottomSheetBehavior.m23150c(r11, r13)
            Lbb:
                com.google.android.material.bottomsheet.BottomSheetBehavior r11 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                boolean r11 = com.google.android.material.bottomsheet.BottomSheetBehavior.m23160m(r11)
                if (r11 != 0) goto Lc7
                boolean r11 = r10.f30521a
                if (r11 == 0) goto Lcc
            Lc7:
                com.google.android.material.bottomsheet.BottomSheetBehavior r10 = com.google.android.material.bottomsheet.BottomSheetBehavior.this
                com.google.android.material.bottomsheet.BottomSheetBehavior.m23151d(r10, r6)
            Lcc:
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.C5174d.onApplyWindowInsets(android.view.View, androidx.core.view.WindowInsetsCompat, com.google.android.material.internal.ViewUtils$RelativePadding):androidx.core.view.WindowInsetsCompat");
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$e */
    /* loaded from: classes6.dex */
    public class C5175e extends ViewDragHelper.Callback {

        /* renamed from: a */
        public long f30523a;

        public C5175e() {
        }

        /* renamed from: a */
        public final boolean m23209a(@NonNull View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.f30469M0 + bottomSheetBehavior.getExpandedOffset()) / 2;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return MathUtils.clamp(i, BottomSheetBehavior.this.getExpandedOffset(), getViewVerticalDragRange(view));
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            return BottomSheetBehavior.this.m23167A() ? BottomSheetBehavior.this.f30469M0 : BottomSheetBehavior.this.f30513y0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == 1 && BottomSheetBehavior.this.f30458C0) {
                BottomSheetBehavior.this.m23188V(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.m23172F(i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        
            if (r7.f30524b.shouldExpandOnUpwardDrag(r0, (r9 * 100.0f) / r10.f30469M0) != false) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
        
            if (r9 > r7.f30524b.f30509w0) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        
            if (java.lang.Math.abs(r8.getTop() - r7.f30524b.getExpandedOffset()) < java.lang.Math.abs(r8.getTop() - r7.f30524b.f30509w0)) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00cf, code lost:
        
            if (r7.f30524b.shouldSkipHalfExpandedStateWhenDragging() == false) goto L63;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x00f1, code lost:
        
            if (java.lang.Math.abs(r9 - r7.f30524b.f30507v0) < java.lang.Math.abs(r9 - r7.f30524b.f30513y0)) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x010d, code lost:
        
            if (r7.f30524b.shouldSkipHalfExpandedStateWhenDragging() != false) goto L39;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0127, code lost:
        
            if (r7.f30524b.shouldSkipHalfExpandedStateWhenDragging() == false) goto L63;
         */
        @Override // androidx.customview.widget.ViewDragHelper.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onViewReleased(@androidx.annotation.NonNull android.view.View r8, float r9, float r10) {
            /*
                Method dump skipped, instructions count: 308
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.C5175e.onViewReleased(android.view.View, float, float):void");
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.f30459D0;
            if (i2 == 1 || bottomSheetBehavior.f30480V0) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.f30478T0 == i) {
                WeakReference<View> weakReference = bottomSheetBehavior.f30473P0;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            this.f30523a = System.currentTimeMillis();
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.f30470N0;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$f */
    /* loaded from: classes6.dex */
    public class C5176f implements AccessibilityViewCommand {

        /* renamed from: a */
        public final /* synthetic */ int f30525a;

        public C5176f(int i) {
            this.f30525a = i;
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            BottomSheetBehavior.this.setState(this.f30525a);
            return true;
        }
    }

    public BottomSheetBehavior() {
        this.f30485e = 0;
        this.f30486f = true;
        this.f30487g = false;
        this.f30497p = -1;
        this.f30498q = -1;
        this.f30499q0 = new C5177g(this, null);
        this.f30511x0 = 0.5f;
        this.f30515z0 = -1.0f;
        this.f30458C0 = true;
        this.f30459D0 = 4;
        this.f30460E0 = 4;
        this.f30466J0 = 0.1f;
        this.f30475Q0 = new ArrayList<>();
        this.f30479U0 = -1;
        this.f30482X0 = new SparseIntArray();
        this.f30483Y0 = new C5175e();
    }

    @NonNull
    public static <V extends View> BottomSheetBehavior<V> from(@NonNull V v) {
        ViewGroup.LayoutParams layoutParams = v.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    /* renamed from: A */
    public final boolean m23167A() {
        return isHideable() && isHideableWhenDragging();
    }

    /* renamed from: B */
    public final void m23168B(View view, int i) {
        if (view == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(view, 524288);
        ViewCompat.removeAccessibilityAction(view, 262144);
        ViewCompat.removeAccessibilityAction(view, 1048576);
        int i2 = this.f30482X0.get(i, -1);
        if (i2 != -1) {
            ViewCompat.removeAccessibilityAction(view, i2);
            this.f30482X0.delete(i);
        }
    }

    /* renamed from: C */
    public final AccessibilityViewCommand m23169C(int i) {
        return new C5176f(i);
    }

    /* renamed from: D */
    public final void m23170D(@NonNull Context context) {
        if (this.f30484Z == null) {
            return;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f30484Z);
        this.f30495n = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(context);
        ColorStateList colorStateList = this.f30496o;
        if (colorStateList != null) {
            this.f30495n.setFillColor(colorStateList);
            return;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
        this.f30495n.setTint(typedValue.data);
    }

    /* renamed from: E */
    public final void m23171E() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(m23202x(), 1.0f);
        this.f30503t0 = ofFloat;
        ofFloat.setDuration(500L);
        this.f30503t0.addUpdateListener(new C5173c());
    }

    /* renamed from: F */
    public void m23172F(int i) {
        V v = this.f30470N0.get();
        if (v == null || this.f30475Q0.isEmpty()) {
            return;
        }
        float m23204z = m23204z(i);
        for (int i2 = 0; i2 < this.f30475Q0.size(); i2++) {
            this.f30475Q0.get(i2).onSlide(v, m23204z);
        }
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: G */
    public View m23173G(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View m23173G = m23173G(viewGroup.getChildAt(i));
                if (m23173G != null) {
                    return m23173G;
                }
            }
        }
        return null;
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: H */
    public MaterialBottomContainerBackHelper m23174H() {
        return this.f30477S0;
    }

    /* renamed from: I */
    public final int m23175I(int i, int i2, int i3, int i4) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, i2, i4);
        if (i3 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i3), 1073741824);
        }
        if (size != 0) {
            i3 = Math.min(size, i3);
        }
        return View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
    }

    /* renamed from: J */
    public MaterialShapeDrawable m23176J() {
        return this.f30495n;
    }

    @VisibleForTesting
    /* renamed from: K */
    public int m23177K() {
        return this.f30493l;
    }

    /* renamed from: L */
    public final int m23178L(int i) {
        if (i == 3) {
            return getExpandedOffset();
        }
        if (i == 4) {
            return this.f30513y0;
        }
        if (i == 5) {
            return this.f30469M0;
        }
        if (i == 6) {
            return this.f30509w0;
        }
        throw new IllegalArgumentException("Invalid state to get top offset: " + i);
    }

    /* renamed from: M */
    public final float m23179M() {
        VelocityTracker velocityTracker = this.f30476R0;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f30488h);
        return this.f30476R0.getYVelocity(this.f30478T0);
    }

    /* renamed from: N */
    public final boolean m23180N() {
        WeakReference<V> weakReference = this.f30470N0;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        this.f30470N0.get().getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    /* renamed from: O */
    public final boolean m23181O() {
        return this.f30459D0 == 3 && (this.f30474Q || m23180N());
    }

    /* renamed from: P */
    public final boolean m23182P(V v) {
        ViewParent parent = v.getParent();
        return parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v);
    }

    /* renamed from: Q */
    public final void m23183Q(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i) {
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, m23169C(i));
    }

    /* renamed from: R */
    public final void m23184R() {
        this.f30478T0 = -1;
        this.f30479U0 = -1;
        VelocityTracker velocityTracker = this.f30476R0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f30476R0 = null;
        }
    }

    /* renamed from: S */
    public final void m23185S(@NonNull SavedState savedState) {
        int i = this.f30485e;
        if (i == 0) {
            return;
        }
        if (i == -1 || (i & 1) == 1) {
            this.f30490j = savedState.peekHeight;
        }
        if (i == -1 || (i & 2) == 2) {
            this.f30486f = savedState.fitToContents;
        }
        if (i == -1 || (i & 4) == 4) {
            this.f30456A0 = savedState.hideable;
        }
        if (i == -1 || (i & 8) == 8) {
            this.f30457B0 = savedState.skipCollapsed;
        }
    }

    /* renamed from: T */
    public final void m23186T(V v, Runnable runnable) {
        if (m23182P(v)) {
            v.post(runnable);
        } else {
            runnable.run();
        }
    }

    /* renamed from: U */
    public void m23187U(@Nullable View view) {
        WeakReference<View> weakReference;
        if (view != null || (weakReference = this.f30472O0) == null) {
            this.f30472O0 = new WeakReference<>(view);
            m23194b0(view, 1);
        } else {
            m23168B(weakReference.get(), 1);
            this.f30472O0 = null;
        }
    }

    /* renamed from: V */
    public void m23188V(int i) {
        V v;
        if (this.f30459D0 == i) {
            return;
        }
        this.f30459D0 = i;
        if (i == 4 || i == 3 || i == 6 || (this.f30456A0 && i == 5)) {
            this.f30460E0 = i;
        }
        WeakReference<V> weakReference = this.f30470N0;
        if (weakReference == null || (v = weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            m23196d0(true);
        } else if (i == 6 || i == 5 || i == 4) {
            m23196d0(false);
        }
        m23195c0(i, true);
        for (int i2 = 0; i2 < this.f30475Q0.size(); i2++) {
            this.f30475Q0.get(i2).onStateChanged(v, i);
        }
        m23193a0();
    }

    /* renamed from: W */
    public final void m23189W(@NonNull View view) {
        boolean z = (isGestureInsetBottomIgnored() || this.f30491k) ? false : true;
        if (this.f30502t || this.f30504u || this.f30506v || this.f30510x || this.f30512y || this.f30514z || z) {
            ViewUtils.doOnApplyWindowInsets(view, new C5174d(z));
        }
    }

    /* renamed from: X */
    public final boolean m23190X() {
        return this.f30461F0 != null && (this.f30458C0 || this.f30459D0 == 1);
    }

    /* renamed from: Y */
    public boolean m23191Y(@NonNull View view, float f) {
        if (this.f30457B0) {
            return true;
        }
        if (isHideableWhenDragging() && view.getTop() >= this.f30513y0) {
            return Math.abs((((float) view.getTop()) + (f * this.f30466J0)) - ((float) this.f30513y0)) / ((float) m23203y()) > 0.5f;
        }
        return false;
    }

    /* renamed from: Z */
    public final void m23192Z(View view, int i, boolean z) {
        int m23178L = m23178L(i);
        ViewDragHelper viewDragHelper = this.f30461F0;
        if (!(viewDragHelper != null && (!z ? !viewDragHelper.smoothSlideViewTo(view, view.getLeft(), m23178L) : !viewDragHelper.settleCapturedViewAt(view.getLeft(), m23178L)))) {
            m23188V(i);
            return;
        }
        m23188V(2);
        m23195c0(i, true);
        this.f30499q0.m23212c(i);
    }

    /* renamed from: a0 */
    public final void m23193a0() {
        WeakReference<V> weakReference = this.f30470N0;
        if (weakReference != null) {
            m23194b0(weakReference.get(), 0);
        }
        WeakReference<View> weakReference2 = this.f30472O0;
        if (weakReference2 != null) {
            m23194b0(weakReference2.get(), 1);
        }
    }

    public void addBottomSheetCallback(@NonNull BottomSheetCallback bottomSheetCallback) {
        if (this.f30475Q0.contains(bottomSheetCallback)) {
            return;
        }
        this.f30475Q0.add(bottomSheetCallback);
    }

    /* renamed from: b0 */
    public final void m23194b0(View view, int i) {
        if (view == null) {
            return;
        }
        m23168B(view, i);
        if (!this.f30486f && this.f30459D0 != 6) {
            this.f30482X0.put(i, m23198t(view, C5139R.string.bottomsheet_action_expand_halfway, 6));
        }
        if (this.f30456A0 && isHideableWhenDragging() && this.f30459D0 != 5) {
            m23183Q(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        int i2 = this.f30459D0;
        if (i2 == 3) {
            m23183Q(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.f30486f ? 4 : 6);
            return;
        }
        if (i2 == 4) {
            m23183Q(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.f30486f ? 3 : 6);
        } else {
            if (i2 != 6) {
                return;
            }
            m23183Q(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
            m23183Q(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    /* renamed from: c0 */
    public final void m23195c0(int i, boolean z) {
        boolean m23181O;
        ValueAnimator valueAnimator;
        if (i == 2 || this.f30492k0 == (m23181O = m23181O()) || this.f30495n == null) {
            return;
        }
        this.f30492k0 = m23181O;
        if (!z || (valueAnimator = this.f30503t0) == null) {
            ValueAnimator valueAnimator2 = this.f30503t0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f30503t0.cancel();
            }
            this.f30495n.setInterpolation(this.f30492k0 ? m23202x() : 1.0f);
            return;
        }
        if (valueAnimator.isRunning()) {
            this.f30503t0.reverse();
        } else {
            this.f30503t0.setFloatValues(this.f30495n.getInterpolation(), m23181O ? m23202x() : 1.0f);
            this.f30503t0.start();
        }
    }

    public float calculateSlideOffset() {
        WeakReference<V> weakReference = this.f30470N0;
        if (weakReference == null || weakReference.get() == null) {
            return -1.0f;
        }
        return m23204z(this.f30470N0.get().getTop());
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void cancelBackProgress() {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.f30477S0;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        materialBottomContainerBackHelper.cancelBackProgress();
    }

    /* renamed from: d0 */
    public final void m23196d0(boolean z) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.f30470N0;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.f30481W0 != null) {
                    return;
                } else {
                    this.f30481W0 = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.f30470N0.get()) {
                    if (z) {
                        this.f30481W0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        if (this.f30487g) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.f30487g && (map = this.f30481W0) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.f30481W0.get(childAt).intValue());
                    }
                }
            }
            if (!z) {
                this.f30481W0 = null;
            } else if (this.f30487g) {
                this.f30470N0.get().sendAccessibilityEvent(8);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void disableShapeAnimations() {
        this.f30503t0 = null;
    }

    /* renamed from: e0 */
    public final void m23197e0(boolean z) {
        V v;
        if (this.f30470N0 != null) {
            m23199u();
            if (this.f30459D0 != 4 || (v = this.f30470N0.get()) == null) {
                return;
            }
            if (z) {
                setState(4);
            } else {
                v.requestLayout();
            }
        }
    }

    public int getExpandedOffset() {
        if (this.f30486f) {
            return this.f30507v0;
        }
        return Math.max(this.f30505u0, this.f30508w ? 0 : this.f30471O);
    }

    @FloatRange(from = 0.0d, m280to = 1.0d)
    public float getHalfExpandedRatio() {
        return this.f30511x0;
    }

    public float getHideFriction() {
        return this.f30466J0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getLastStableState() {
        return this.f30460E0;
    }

    @Px
    public int getMaxHeight() {
        return this.f30498q;
    }

    @Px
    public int getMaxWidth() {
        return this.f30497p;
    }

    public int getPeekHeight() {
        if (this.f30491k) {
            return -1;
        }
        return this.f30490j;
    }

    public int getSaveFlags() {
        return this.f30485e;
    }

    public int getSignificantVelocityThreshold() {
        return this.f30489i;
    }

    public boolean getSkipCollapsed() {
        return this.f30457B0;
    }

    public int getState() {
        return this.f30459D0;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void handleBackInvoked() {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.f30477S0;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        BackEventCompat onHandleBackInvoked = materialBottomContainerBackHelper.onHandleBackInvoked();
        if (onHandleBackInvoked == null || Build.VERSION.SDK_INT < 34) {
            setState(this.f30456A0 ? 5 : 4);
        } else if (this.f30456A0) {
            this.f30477S0.finishBackProgressNotPersistent(onHandleBackInvoked, new C5172b());
        } else {
            this.f30477S0.finishBackProgressPersistent(onHandleBackInvoked, null);
            setState(4);
        }
    }

    public boolean isDraggable() {
        return this.f30458C0;
    }

    public boolean isFitToContents() {
        return this.f30486f;
    }

    public boolean isGestureInsetBottomIgnored() {
        return this.f30501s;
    }

    public boolean isHideable() {
        return this.f30456A0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isHideableWhenDragging() {
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isNestedScrollingCheckEnabled() {
        return true;
    }

    public boolean isShouldRemoveExpandedCorners() {
        return this.f30474Q;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.f30470N0 = null;
        this.f30461F0 = null;
        this.f30477S0 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.f30470N0 = null;
        this.f30461F0 = null;
        this.f30477S0 = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        int i;
        ViewDragHelper viewDragHelper;
        if (!v.isShown() || !this.f30458C0) {
            this.f30462G0 = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m23184R();
        }
        if (this.f30476R0 == null) {
            this.f30476R0 = VelocityTracker.obtain();
        }
        this.f30476R0.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x = (int) motionEvent.getX();
            this.f30479U0 = (int) motionEvent.getY();
            if (this.f30459D0 != 2) {
                WeakReference<View> weakReference = this.f30473P0;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.isPointInChildBounds(view, x, this.f30479U0)) {
                    this.f30478T0 = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f30480V0 = true;
                }
            }
            this.f30462G0 = this.f30478T0 == -1 && !coordinatorLayout.isPointInChildBounds(v, x, this.f30479U0);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f30480V0 = false;
            this.f30478T0 = -1;
            if (this.f30462G0) {
                this.f30462G0 = false;
                return false;
            }
        }
        if (!this.f30462G0 && (viewDragHelper = this.f30461F0) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.f30473P0;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.f30462G0 || this.f30459D0 == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f30461F0 == null || (i = this.f30479U0) == -1 || Math.abs(((float) i) - motionEvent.getY()) <= ((float) this.f30461F0.getTouchSlop())) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v)) {
            v.setFitsSystemWindows(true);
        }
        if (this.f30470N0 == null) {
            this.f30493l = coordinatorLayout.getResources().getDimensionPixelSize(C5139R.dimen.design_bottom_sheet_peek_height_min);
            m23189W(v);
            ViewCompat.setWindowInsetsAnimationCallback(v, new jmi(v));
            this.f30470N0 = new WeakReference<>(v);
            this.f30477S0 = new MaterialBottomContainerBackHelper(v);
            MaterialShapeDrawable materialShapeDrawable = this.f30495n;
            if (materialShapeDrawable != null) {
                ViewCompat.setBackground(v, materialShapeDrawable);
                MaterialShapeDrawable materialShapeDrawable2 = this.f30495n;
                float f = this.f30515z0;
                if (f == -1.0f) {
                    f = ViewCompat.getElevation(v);
                }
                materialShapeDrawable2.setElevation(f);
            } else {
                ColorStateList colorStateList = this.f30496o;
                if (colorStateList != null) {
                    ViewCompat.setBackgroundTintList(v, colorStateList);
                }
            }
            m23193a0();
            if (ViewCompat.getImportantForAccessibility(v) == 0) {
                ViewCompat.setImportantForAccessibility(v, 1);
            }
        }
        if (this.f30461F0 == null) {
            this.f30461F0 = ViewDragHelper.create(coordinatorLayout, this.f30483Y0);
        }
        int top = v.getTop();
        coordinatorLayout.onLayoutChild(v, i);
        this.f30468L0 = coordinatorLayout.getWidth();
        this.f30469M0 = coordinatorLayout.getHeight();
        int height = v.getHeight();
        this.f30467K0 = height;
        int i2 = this.f30469M0;
        int i3 = i2 - height;
        int i4 = this.f30471O;
        if (i3 < i4) {
            if (this.f30508w) {
                int i5 = this.f30498q;
                if (i5 != -1) {
                    i2 = Math.min(i2, i5);
                }
                this.f30467K0 = i2;
            } else {
                int i6 = i2 - i4;
                int i7 = this.f30498q;
                if (i7 != -1) {
                    i6 = Math.min(i6, i7);
                }
                this.f30467K0 = i6;
            }
        }
        this.f30507v0 = Math.max(0, this.f30469M0 - this.f30467K0);
        m23201w();
        m23199u();
        int i8 = this.f30459D0;
        if (i8 == 3) {
            ViewCompat.offsetTopAndBottom(v, getExpandedOffset());
        } else if (i8 == 6) {
            ViewCompat.offsetTopAndBottom(v, this.f30509w0);
        } else if (this.f30456A0 && i8 == 5) {
            ViewCompat.offsetTopAndBottom(v, this.f30469M0);
        } else if (i8 == 4) {
            ViewCompat.offsetTopAndBottom(v, this.f30513y0);
        } else if (i8 == 1 || i8 == 2) {
            ViewCompat.offsetTopAndBottom(v, top - v.getTop());
        }
        m23195c0(this.f30459D0, false);
        this.f30473P0 = new WeakReference<>(m23173G(v));
        for (int i9 = 0; i9 < this.f30475Q0.size(); i9++) {
            this.f30475Q0.get(i9).mo23205a(v);
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) v.getLayoutParams();
        v.measure(m23175I(i, coordinatorLayout.getPaddingLeft() + coordinatorLayout.getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, this.f30497p, marginLayoutParams.width), m23175I(i3, coordinatorLayout.getPaddingTop() + coordinatorLayout.getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, this.f30498q, marginLayoutParams.height));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
        WeakReference<View> weakReference;
        if (isNestedScrollingCheckEnabled() && (weakReference = this.f30473P0) != null && view == weakReference.get()) {
            return this.f30459D0 != 3 || super.onNestedPreFling(coordinatorLayout, v, view, f, f2);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.f30473P0;
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!isNestedScrollingCheckEnabled() || view == view2) {
            int top = v.getTop();
            int i4 = top - i2;
            if (i2 > 0) {
                if (i4 < getExpandedOffset()) {
                    int expandedOffset = top - getExpandedOffset();
                    iArr[1] = expandedOffset;
                    ViewCompat.offsetTopAndBottom(v, -expandedOffset);
                    m23188V(3);
                } else {
                    if (!this.f30458C0) {
                        return;
                    }
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    m23188V(1);
                }
            } else if (i2 < 0 && !view.canScrollVertically(-1)) {
                if (i4 > this.f30513y0 && !m23167A()) {
                    int i5 = top - this.f30513y0;
                    iArr[1] = i5;
                    ViewCompat.offsetTopAndBottom(v, -i5);
                    m23188V(4);
                } else {
                    if (!this.f30458C0) {
                        return;
                    }
                    iArr[1] = i2;
                    ViewCompat.offsetTopAndBottom(v, -i2);
                    m23188V(1);
                }
            }
            m23172F(v.getTop());
            this.f30463H0 = i2;
            this.f30464I0 = true;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v, savedState.getSuperState());
        m23185S(savedState);
        int i = savedState.state;
        if (i == 1 || i == 2) {
            this.f30459D0 = 4;
            this.f30460E0 = 4;
        } else {
            this.f30459D0 = i;
            this.f30460E0 = i;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v), (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        this.f30463H0 = 0;
        this.f30464I0 = false;
        return (i & 2) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        if (r4.getTop() <= r2.f30509w0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
    
        r0 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0065, code lost:
    
        if (java.lang.Math.abs(r3 - r2.f30507v0) < java.lang.Math.abs(r3 - r2.f30513y0)) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007b, code lost:
    
        if (shouldSkipHalfExpandedStateWhenDragging() != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008b, code lost:
    
        if (java.lang.Math.abs(r3 - r1) < java.lang.Math.abs(r3 - r2.f30513y0)) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a7, code lost:
    
        if (java.lang.Math.abs(r3 - r2.f30509w0) < java.lang.Math.abs(r3 - r2.f30513y0)) goto L51;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onStopNestedScroll(@androidx.annotation.NonNull androidx.coordinatorlayout.widget.CoordinatorLayout r3, @androidx.annotation.NonNull V r4, @androidx.annotation.NonNull android.view.View r5, int r6) {
        /*
            r2 = this;
            int r3 = r4.getTop()
            int r6 = r2.getExpandedOffset()
            r0 = 3
            if (r3 != r6) goto Lf
            r2.m23188V(r0)
            return
        Lf:
            boolean r3 = r2.isNestedScrollingCheckEnabled()
            if (r3 == 0) goto L24
            java.lang.ref.WeakReference<android.view.View> r3 = r2.f30473P0
            if (r3 == 0) goto L23
            java.lang.Object r3 = r3.get()
            if (r5 != r3) goto L23
            boolean r3 = r2.f30464I0
            if (r3 != 0) goto L24
        L23:
            return
        L24:
            int r3 = r2.f30463H0
            r5 = 6
            if (r3 <= 0) goto L39
            boolean r3 = r2.f30486f
            if (r3 == 0) goto L2f
            goto Laa
        L2f:
            int r3 = r4.getTop()
            int r6 = r2.f30509w0
            if (r3 <= r6) goto Laa
            goto La9
        L39:
            boolean r3 = r2.f30456A0
            if (r3 == 0) goto L49
            float r3 = r2.m23179M()
            boolean r3 = r2.m23191Y(r4, r3)
            if (r3 == 0) goto L49
            r0 = 5
            goto Laa
        L49:
            int r3 = r2.f30463H0
            r6 = 4
            if (r3 != 0) goto L8e
            int r3 = r4.getTop()
            boolean r1 = r2.f30486f
            if (r1 == 0) goto L68
            int r5 = r2.f30507v0
            int r5 = r3 - r5
            int r5 = java.lang.Math.abs(r5)
            int r1 = r2.f30513y0
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r5 >= r3) goto L92
            goto Laa
        L68:
            int r1 = r2.f30509w0
            if (r3 >= r1) goto L7e
            int r1 = r2.f30513y0
            int r1 = r3 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r3 >= r1) goto L77
            goto Laa
        L77:
            boolean r3 = r2.shouldSkipHalfExpandedStateWhenDragging()
            if (r3 == 0) goto La9
            goto L92
        L7e:
            int r0 = r3 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.f30513y0
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L92
            goto La9
        L8e:
            boolean r3 = r2.f30486f
            if (r3 == 0) goto L94
        L92:
            r0 = r6
            goto Laa
        L94:
            int r3 = r4.getTop()
            int r0 = r2.f30509w0
            int r0 = r3 - r0
            int r0 = java.lang.Math.abs(r0)
            int r1 = r2.f30513y0
            int r3 = r3 - r1
            int r3 = java.lang.Math.abs(r3)
            if (r0 >= r3) goto L92
        La9:
            r0 = r5
        Laa:
            r3 = 0
            r2.m23192Z(r4, r0, r3)
            r2.f30464I0 = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.onStopNestedScroll(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        if (!v.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f30459D0 == 1 && actionMasked == 0) {
            return true;
        }
        if (m23190X()) {
            this.f30461F0.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            m23184R();
        }
        if (this.f30476R0 == null) {
            this.f30476R0 = VelocityTracker.obtain();
        }
        this.f30476R0.addMovement(motionEvent);
        if (m23190X() && actionMasked == 2 && !this.f30462G0 && Math.abs(this.f30479U0 - motionEvent.getY()) > this.f30461F0.getTouchSlop()) {
            this.f30461F0.captureChildView(v, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f30462G0;
    }

    public void removeBottomSheetCallback(@NonNull BottomSheetCallback bottomSheetCallback) {
        this.f30475Q0.remove(bottomSheetCallback);
    }

    @Deprecated
    public void setBottomSheetCallback(BottomSheetCallback bottomSheetCallback) {
        Log.w(f30446Z0, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
        this.f30475Q0.clear();
        if (bottomSheetCallback != null) {
            this.f30475Q0.add(bottomSheetCallback);
        }
    }

    public void setDraggable(boolean z) {
        this.f30458C0 = z;
    }

    public void setExpandedOffset(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.f30505u0 = i;
        m23195c0(this.f30459D0, true);
    }

    public void setFitToContents(boolean z) {
        if (this.f30486f == z) {
            return;
        }
        this.f30486f = z;
        if (this.f30470N0 != null) {
            m23199u();
        }
        m23188V((this.f30486f && this.f30459D0 == 6) ? 3 : this.f30459D0);
        m23195c0(this.f30459D0, true);
        m23193a0();
    }

    public void setGestureInsetBottomIgnored(boolean z) {
        this.f30501s = z;
    }

    public void setHalfExpandedRatio(@FloatRange(from = 0.0d, fromInclusive = false, m280to = 1.0d, toInclusive = false) float f) {
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f30511x0 = f;
        if (this.f30470N0 != null) {
            m23201w();
        }
    }

    public void setHideFriction(float f) {
        this.f30466J0 = f;
    }

    public void setHideable(boolean z) {
        if (this.f30456A0 != z) {
            this.f30456A0 = z;
            if (!z && this.f30459D0 == 5) {
                setState(4);
            }
            m23193a0();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setHideableInternal(boolean z) {
        this.f30456A0 = z;
    }

    public void setMaxHeight(@Px int i) {
        this.f30498q = i;
    }

    public void setMaxWidth(@Px int i) {
        this.f30497p = i;
    }

    public void setPeekHeight(int i) {
        setPeekHeight(i, false);
    }

    public void setSaveFlags(int i) {
        this.f30485e = i;
    }

    public void setShouldRemoveExpandedCorners(boolean z) {
        if (this.f30474Q != z) {
            this.f30474Q = z;
            m23195c0(getState(), true);
        }
    }

    public void setSignificantVelocityThreshold(int i) {
        this.f30489i = i;
    }

    public void setSkipCollapsed(boolean z) {
        this.f30457B0 = z;
    }

    public void setState(int i) {
        if (i == 1 || i == 2) {
            StringBuilder sb = new StringBuilder();
            sb.append("STATE_");
            sb.append(i == 1 ? "DRAGGING" : "SETTLING");
            sb.append(" should not be set externally.");
            throw new IllegalArgumentException(sb.toString());
        }
        if (!this.f30456A0 && i == 5) {
            Log.w(f30446Z0, "Cannot set state: " + i);
            return;
        }
        int i2 = (i == 6 && this.f30486f && m23178L(i) <= this.f30507v0) ? 3 : i;
        WeakReference<V> weakReference = this.f30470N0;
        if (weakReference == null || weakReference.get() == null) {
            m23188V(i);
        } else {
            V v = this.f30470N0.get();
            m23186T(v, new RunnableC5171a(v, i2));
        }
    }

    public void setUpdateImportantForAccessibilityOnSiblings(boolean z) {
        this.f30487g = z;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean shouldExpandOnUpwardDrag(long j, @FloatRange(from = 0.0d, m280to = 100.0d) float f) {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean shouldSkipHalfExpandedStateWhenDragging() {
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean shouldSkipSmoothAnimation() {
        return true;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void startBackProgress(@NonNull BackEventCompat backEventCompat) {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.f30477S0;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        materialBottomContainerBackHelper.startBackProgress(backEventCompat);
    }

    /* renamed from: t */
    public final int m23198t(View view, @StringRes int i, int i2) {
        return ViewCompat.addAccessibilityAction(view, view.getResources().getString(i), m23169C(i2));
    }

    /* renamed from: u */
    public final void m23199u() {
        int m23203y = m23203y();
        if (this.f30486f) {
            this.f30513y0 = Math.max(this.f30469M0 - m23203y, this.f30507v0);
        } else {
            this.f30513y0 = this.f30469M0 - m23203y;
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void updateBackProgress(@NonNull BackEventCompat backEventCompat) {
        MaterialBottomContainerBackHelper materialBottomContainerBackHelper = this.f30477S0;
        if (materialBottomContainerBackHelper == null) {
            return;
        }
        materialBottomContainerBackHelper.updateBackProgress(backEventCompat);
    }

    @RequiresApi(31)
    /* renamed from: v */
    public final float m23200v(float f, @Nullable RoundedCorner roundedCorner) {
        int radius;
        if (roundedCorner != null) {
            radius = roundedCorner.getRadius();
            float f2 = radius;
            if (f2 > 0.0f && f > 0.0f) {
                return f2 / f;
            }
        }
        return 0.0f;
    }

    /* renamed from: w */
    public final void m23201w() {
        this.f30509w0 = (int) (this.f30469M0 * (1.0f - this.f30511x0));
    }

    /* renamed from: x */
    public final float m23202x() {
        WeakReference<V> weakReference;
        WindowInsets rootWindowInsets;
        RoundedCorner roundedCorner;
        RoundedCorner roundedCorner2;
        if (this.f30495n == null || (weakReference = this.f30470N0) == null || weakReference.get() == null || Build.VERSION.SDK_INT < 31) {
            return 0.0f;
        }
        V v = this.f30470N0.get();
        if (!m23180N() || (rootWindowInsets = v.getRootWindowInsets()) == null) {
            return 0.0f;
        }
        float topLeftCornerResolvedSize = this.f30495n.getTopLeftCornerResolvedSize();
        roundedCorner = rootWindowInsets.getRoundedCorner(0);
        float m23200v = m23200v(topLeftCornerResolvedSize, roundedCorner);
        float topRightCornerResolvedSize = this.f30495n.getTopRightCornerResolvedSize();
        roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
        return Math.max(m23200v, m23200v(topRightCornerResolvedSize, roundedCorner2));
    }

    /* renamed from: y */
    public final int m23203y() {
        int i;
        int i2;
        int i3;
        if (this.f30491k) {
            i = Math.min(Math.max(this.f30493l, this.f30469M0 - ((this.f30468L0 * 9) / 16)), this.f30467K0);
            i2 = this.f30465J;
        } else {
            if (!this.f30501s && !this.f30502t && (i3 = this.f30500r) > 0) {
                return Math.max(this.f30490j, i3 + this.f30494m);
            }
            i = this.f30490j;
            i2 = this.f30465J;
        }
        return i + i2;
    }

    /* renamed from: z */
    public final float m23204z(int i) {
        float f;
        float f2;
        int i2 = this.f30513y0;
        if (i > i2 || i2 == getExpandedOffset()) {
            int i3 = this.f30513y0;
            f = i3 - i;
            f2 = this.f30469M0 - i3;
        } else {
            int i4 = this.f30513y0;
            f = i4 - i;
            f2 = i4 - getExpandedOffset();
        }
        return f / f2;
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$g */
    /* loaded from: classes6.dex */
    public class C5177g {

        /* renamed from: a */
        public int f30527a;

        /* renamed from: b */
        public boolean f30528b;

        /* renamed from: c */
        public final Runnable f30529c;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$g$a */
        /* loaded from: classes6.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C5177g.this.f30528b = false;
                ViewDragHelper viewDragHelper = BottomSheetBehavior.this.f30461F0;
                if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                    C5177g c5177g = C5177g.this;
                    c5177g.m23212c(c5177g.f30527a);
                    return;
                }
                C5177g c5177g2 = C5177g.this;
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.f30459D0 == 2) {
                    bottomSheetBehavior.m23188V(c5177g2.f30527a);
                }
            }
        }

        public C5177g() {
            this.f30529c = new a();
        }

        /* renamed from: c */
        public void m23212c(int i) {
            WeakReference<V> weakReference = BottomSheetBehavior.this.f30470N0;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f30527a = i;
            if (this.f30528b) {
                return;
            }
            ViewCompat.postOnAnimation(BottomSheetBehavior.this.f30470N0.get(), this.f30529c);
            this.f30528b = true;
        }

        public /* synthetic */ C5177g(BottomSheetBehavior bottomSheetBehavior, RunnableC5171a runnableC5171a) {
            this();
        }
    }

    public final void setPeekHeight(int i, boolean z) {
        boolean z2 = true;
        if (i == -1) {
            if (!this.f30491k) {
                this.f30491k = true;
            }
            z2 = false;
        } else {
            if (this.f30491k || this.f30490j != i) {
                this.f30491k = false;
                this.f30490j = Math.max(0, i);
            }
            z2 = false;
        }
        if (z2) {
            m23197e0(z);
        }
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        int i;
        this.f30485e = 0;
        this.f30486f = true;
        this.f30487g = false;
        this.f30497p = -1;
        this.f30498q = -1;
        this.f30499q0 = new C5177g(this, null);
        this.f30511x0 = 0.5f;
        this.f30515z0 = -1.0f;
        this.f30458C0 = true;
        this.f30459D0 = 4;
        this.f30460E0 = 4;
        this.f30466J0 = 0.1f;
        this.f30475Q0 = new ArrayList<>();
        this.f30479U0 = -1;
        this.f30482X0 = new SparseIntArray();
        this.f30483Y0 = new C5175e();
        this.f30494m = context.getResources().getDimensionPixelSize(C5139R.dimen.mtrl_min_touch_target_size);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5139R.styleable.BottomSheetBehavior_Layout);
        if (obtainStyledAttributes.hasValue(C5139R.styleable.BottomSheetBehavior_Layout_backgroundTint)) {
            this.f30496o = MaterialResources.getColorStateList(context, obtainStyledAttributes, C5139R.styleable.BottomSheetBehavior_Layout_backgroundTint);
        }
        if (obtainStyledAttributes.hasValue(C5139R.styleable.BottomSheetBehavior_Layout_shapeAppearance)) {
            this.f30484Z = ShapeAppearanceModel.builder(context, attributeSet, C5139R.attr.bottomSheetStyle, f30455i1).build();
        }
        m23170D(context);
        m23171E();
        this.f30515z0 = obtainStyledAttributes.getDimension(C5139R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        if (obtainStyledAttributes.hasValue(C5139R.styleable.BottomSheetBehavior_Layout_android_maxWidth)) {
            setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.BottomSheetBehavior_Layout_android_maxWidth, -1));
        }
        if (obtainStyledAttributes.hasValue(C5139R.styleable.BottomSheetBehavior_Layout_android_maxHeight)) {
            setMaxHeight(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.BottomSheetBehavior_Layout_android_maxHeight, -1));
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(C5139R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight);
        if (peekValue != null && (i = peekValue.data) == -1) {
            setPeekHeight(i);
        } else {
            setPeekHeight(obtainStyledAttributes.getDimensionPixelSize(C5139R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight, -1));
        }
        setHideable(obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        setGestureInsetBottomIgnored(obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        setFitToContents(obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        setSkipCollapsed(obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        setDraggable(obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        setSaveFlags(obtainStyledAttributes.getInt(C5139R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        setHalfExpandedRatio(obtainStyledAttributes.getFloat(C5139R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        TypedValue peekValue2 = obtainStyledAttributes.peekValue(C5139R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset);
        if (peekValue2 != null && peekValue2.type == 16) {
            setExpandedOffset(peekValue2.data);
        } else {
            setExpandedOffset(obtainStyledAttributes.getDimensionPixelOffset(C5139R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset, 0));
        }
        setSignificantVelocityThreshold(obtainStyledAttributes.getInt(C5139R.styleable.BottomSheetBehavior_Layout_behavior_significantVelocityThreshold, 500));
        this.f30502t = obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.f30504u = obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.f30506v = obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.f30508w = obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        this.f30510x = obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_marginLeftSystemWindowInsets, false);
        this.f30512y = obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_marginRightSystemWindowInsets, false);
        this.f30514z = obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_marginTopSystemWindowInsets, false);
        this.f30474Q = obtainStyledAttributes.getBoolean(C5139R.styleable.BottomSheetBehavior_Layout_shouldRemoveExpandedCorners, true);
        obtainStyledAttributes.recycle();
        this.f30488h = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
