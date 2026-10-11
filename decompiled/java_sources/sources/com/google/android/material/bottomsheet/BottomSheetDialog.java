package com.google.android.material.bottomsheet;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.EdgeToEdgeUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.shape.MaterialShapeDrawable;

/* loaded from: classes6.dex */
public class BottomSheetDialog extends AppCompatDialog {

    /* renamed from: j */
    public BottomSheetBehavior<FrameLayout> f30532j;

    /* renamed from: k */
    public FrameLayout f30533k;

    /* renamed from: l */
    public CoordinatorLayout f30534l;

    /* renamed from: m */
    public FrameLayout f30535m;

    /* renamed from: n */
    public boolean f30536n;

    /* renamed from: o */
    public boolean f30537o;

    /* renamed from: p */
    public boolean f30538p;

    /* renamed from: q */
    public boolean f30539q;

    /* renamed from: r */
    public C5183f f30540r;

    /* renamed from: s */
    public boolean f30541s;

    /* renamed from: t */
    @Nullable
    public MaterialBackOrchestrator f30542t;

    /* renamed from: u */
    @NonNull
    public BottomSheetBehavior.BottomSheetCallback f30543u;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$a */
    /* loaded from: classes6.dex */
    public class C5178a implements OnApplyWindowInsetsListener {
        public C5178a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            if (BottomSheetDialog.this.f30540r != null) {
                BottomSheetDialog.this.f30532j.removeBottomSheetCallback(BottomSheetDialog.this.f30540r);
            }
            if (windowInsetsCompat != null) {
                BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                bottomSheetDialog.f30540r = new C5183f(bottomSheetDialog.f30535m, windowInsetsCompat, null);
                BottomSheetDialog.this.f30540r.m23224c(BottomSheetDialog.this.getWindow());
                BottomSheetDialog.this.f30532j.addBottomSheetCallback(BottomSheetDialog.this.f30540r);
            }
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$b */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5179b implements View.OnClickListener {
        public ViewOnClickListenerC5179b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
            if (bottomSheetDialog.f30537o && bottomSheetDialog.isShowing() && BottomSheetDialog.this.m23220m()) {
                BottomSheetDialog.this.cancel();
            }
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$c */
    /* loaded from: classes6.dex */
    public class C5180c extends AccessibilityDelegateCompat {
        public C5180c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!BottomSheetDialog.this.f30537o) {
                accessibilityNodeInfoCompat.setDismissable(false);
            } else {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i == 1048576) {
                BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                if (bottomSheetDialog.f30537o) {
                    bottomSheetDialog.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i, bundle);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$d */
    /* loaded from: classes6.dex */
    public class ViewOnTouchListenerC5181d implements View.OnTouchListener {
        public ViewOnTouchListenerC5181d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$e */
    /* loaded from: classes6.dex */
    public class C5182e extends BottomSheetBehavior.BottomSheetCallback {
        public C5182e() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View view, int i) {
            if (i == 5) {
                BottomSheetDialog.this.cancel();
            }
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$f */
    /* loaded from: classes6.dex */
    public static class C5183f extends BottomSheetBehavior.BottomSheetCallback {

        /* renamed from: a */
        @Nullable
        public final Boolean f30549a;

        /* renamed from: b */
        @NonNull
        public final WindowInsetsCompat f30550b;

        /* renamed from: c */
        @Nullable
        public Window f30551c;

        /* renamed from: d */
        public boolean f30552d;

        public /* synthetic */ C5183f(View view, WindowInsetsCompat windowInsetsCompat, C5178a c5178a) {
            this(view, windowInsetsCompat);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        /* renamed from: a */
        public void mo23205a(@NonNull View view) {
            m23223b(view);
        }

        /* renamed from: b */
        public final void m23223b(View view) {
            if (view.getTop() < this.f30550b.getSystemWindowInsetTop()) {
                Window window = this.f30551c;
                if (window != null) {
                    Boolean bool = this.f30549a;
                    EdgeToEdgeUtils.setLightStatusBar(window, bool == null ? this.f30552d : bool.booleanValue());
                }
                view.setPadding(view.getPaddingLeft(), this.f30550b.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            if (view.getTop() != 0) {
                Window window2 = this.f30551c;
                if (window2 != null) {
                    EdgeToEdgeUtils.setLightStatusBar(window2, this.f30552d);
                }
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        /* renamed from: c */
        public void m23224c(@Nullable Window window) {
            if (this.f30551c == window) {
                return;
            }
            this.f30551c = window;
            if (window != null) {
                this.f30552d = WindowCompat.getInsetsController(window, window.getDecorView()).isAppearanceLightStatusBars();
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View view, float f) {
            m23223b(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View view, int i) {
            m23223b(view);
        }

        public C5183f(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            ColorStateList backgroundTintList;
            this.f30550b = windowInsetsCompat;
            MaterialShapeDrawable m23176J = BottomSheetBehavior.from(view).m23176J();
            if (m23176J != null) {
                backgroundTintList = m23176J.getFillColor();
            } else {
                backgroundTintList = ViewCompat.getBackgroundTintList(view);
            }
            if (backgroundTintList != null) {
                this.f30549a = Boolean.valueOf(MaterialColors.isColorLight(backgroundTintList.getDefaultColor()));
                return;
            }
            Integer backgroundColor = ViewUtils.getBackgroundColor(view);
            if (backgroundColor != null) {
                this.f30549a = Boolean.valueOf(MaterialColors.isColorLight(backgroundColor.intValue()));
            } else {
                this.f30549a = null;
            }
        }
    }

    public BottomSheetDialog(@NonNull Context context) {
        this(context, 0);
        this.f30541s = getContext().getTheme().obtainStyledAttributes(new int[]{C5139R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    /* renamed from: d */
    public static int m23213d(@NonNull Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(C5139R.attr.bottomSheetDialogTheme, typedValue, true) ? typedValue.resourceId : C5139R.style.Theme_Design_Light_BottomSheetDialog;
    }

    @Deprecated
    public static void setLightStatusBar(@NonNull View view, boolean z) {
        int systemUiVisibility = view.getSystemUiVisibility();
        view.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> behavior = getBehavior();
        if (!this.f30536n || behavior.getState() == 5) {
            super.cancel();
        } else {
            behavior.setState(5);
        }
    }

    @NonNull
    public BottomSheetBehavior<FrameLayout> getBehavior() {
        if (this.f30532j == null) {
            m23218k();
        }
        return this.f30532j;
    }

    public boolean getDismissWithAnimation() {
        return this.f30536n;
    }

    public boolean getEdgeToEdgeEnabled() {
        return this.f30541s;
    }

    /* renamed from: k */
    public final FrameLayout m23218k() {
        if (this.f30533k == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), C5139R.layout.design_bottom_sheet_dialog, null);
            this.f30533k = frameLayout;
            this.f30534l = (CoordinatorLayout) frameLayout.findViewById(C5139R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.f30533k.findViewById(C5139R.id.design_bottom_sheet);
            this.f30535m = frameLayout2;
            BottomSheetBehavior<FrameLayout> from = BottomSheetBehavior.from(frameLayout2);
            this.f30532j = from;
            from.addBottomSheetCallback(this.f30543u);
            this.f30532j.setHideable(this.f30537o);
            this.f30542t = new MaterialBackOrchestrator(this.f30532j, this.f30535m);
        }
        return this.f30533k;
    }

    /* renamed from: l */
    public void m23219l() {
        this.f30532j.removeBottomSheetCallback(this.f30543u);
    }

    /* renamed from: m */
    public boolean m23220m() {
        if (!this.f30539q) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.f30538p = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f30539q = true;
        }
        return this.f30538p;
    }

    /* renamed from: n */
    public final void m23221n() {
        MaterialBackOrchestrator materialBackOrchestrator = this.f30542t;
        if (materialBackOrchestrator == null) {
            return;
        }
        if (this.f30537o) {
            materialBackOrchestrator.startListeningForBackCallbacks();
        } else {
            materialBackOrchestrator.stopListeningForBackCallbacks();
        }
    }

    /* renamed from: o */
    public final View m23222o(int i, @Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        m23218k();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f30533k.findViewById(C5139R.id.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f30541s) {
            ViewCompat.setOnApplyWindowInsetsListener(this.f30535m, new C5178a());
        }
        this.f30535m.removeAllViews();
        if (layoutParams == null) {
            this.f30535m.addView(view);
        } else {
            this.f30535m.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(C5139R.id.touch_outside).setOnClickListener(new ViewOnClickListenerC5179b());
        ViewCompat.setAccessibilityDelegate(this.f30535m, new C5180c());
        this.f30535m.setOnTouchListener(new ViewOnTouchListenerC5181d());
        return this.f30533k;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            boolean z = this.f30541s && Color.alpha(window.getNavigationBarColor()) < 255;
            FrameLayout frameLayout = this.f30533k;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z);
            }
            CoordinatorLayout coordinatorLayout = this.f30534l;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z);
            }
            WindowCompat.setDecorFitsSystemWindows(window, !z);
            C5183f c5183f = this.f30540r;
            if (c5183f != null) {
                c5183f.m23224c(window);
            }
        }
        m23221n();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        C5183f c5183f = this.f30540r;
        if (c5183f != null) {
            c5183f.m23224c(null);
        }
        MaterialBackOrchestrator materialBackOrchestrator = this.f30542t;
        if (materialBackOrchestrator != null) {
            materialBackOrchestrator.stopListeningForBackCallbacks();
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f30532j;
        if (bottomSheetBehavior == null || bottomSheetBehavior.getState() != 5) {
            return;
        }
        this.f30532j.setState(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f30537o != z) {
            this.f30537o = z;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f30532j;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.setHideable(z);
            }
            if (getWindow() != null) {
                m23221n();
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f30537o) {
            this.f30537o = true;
        }
        this.f30538p = z;
        this.f30539q = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        super.setContentView(m23222o(i, null, null));
    }

    public void setDismissWithAnimation(boolean z) {
        this.f30536n = z;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(m23222o(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(m23222o(0, view, layoutParams));
    }

    public BottomSheetDialog(@NonNull Context context, @StyleRes int i) {
        super(context, m23213d(context, i));
        this.f30537o = true;
        this.f30538p = true;
        this.f30543u = new C5182e();
        supportRequestWindowFeature(1);
        this.f30541s = getContext().getTheme().obtainStyledAttributes(new int[]{C5139R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    public BottomSheetDialog(@NonNull Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.f30537o = true;
        this.f30538p = true;
        this.f30543u = new C5182e();
        supportRequestWindowFeature(1);
        this.f30537o = z;
        this.f30541s = getContext().getTheme().obtainStyledAttributes(new int[]{C5139R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }
}
