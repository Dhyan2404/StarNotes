package com.sunia.HTREnginev2;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.GravityInt;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.sidesheet.Sheet;
import com.sagittarius.p050v6.C13086AB;
import com.sunia.HTREnginev2.tnm;

/* loaded from: classes17.dex */
public abstract class wnm<C extends tnm> extends AppCompatDialog {

    /* renamed from: r */
    public static final int f88805r = C5139R.id.coordinator;

    /* renamed from: s */
    public static final int f88806s = C5139R.id.touch_outside;

    /* renamed from: j */
    @Nullable
    public Sheet<C> f88807j;

    /* renamed from: k */
    @Nullable
    public FrameLayout f88808k;

    /* renamed from: l */
    @Nullable
    public FrameLayout f88809l;

    /* renamed from: m */
    public boolean f88810m;

    /* renamed from: n */
    public boolean f88811n;

    /* renamed from: o */
    public boolean f88812o;

    /* renamed from: p */
    public boolean f88813p;

    /* renamed from: q */
    @Nullable
    public MaterialBackOrchestrator f88814q;

    /* renamed from: com.sunia.HTREnginev2.wnm$a */
    /* loaded from: classes6.dex */
    public class C14614a extends AccessibilityDelegateCompat {
        public C14614a() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!wnm.this.f88811n) {
                accessibilityNodeInfoCompat.setDismissable(false);
            } else {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (i == 1048576) {
                wnm wnmVar = wnm.this;
                if (wnmVar.f88811n) {
                    wnmVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i, bundle);
        }
    }

    public wnm(@NonNull Context context, @StyleRes int i, @AttrRes int i2, @StyleRes int i3) {
        super(context, m58114p(context, i, i2, i3));
        this.f88811n = true;
        this.f88812o = true;
        supportRequestWindowFeature(1);
    }

    /* renamed from: p */
    public static int m58114p(@NonNull Context context, @StyleRes int i, @AttrRes int i2, @StyleRes int i3) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(i2, typedValue, true) ? typedValue.resourceId : i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m58115q(View view) {
        if (this.f88811n && isShowing() && m58120s()) {
            cancel();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        Sheet<C> behavior = getBehavior();
        if (!this.f88810m || behavior.getState() == 5) {
            super.cancel();
        } else {
            behavior.setState(5);
        }
    }

    @NonNull
    public Sheet<C> getBehavior() {
        if (this.f88807j == null) {
            m58116i();
        }
        return this.f88807j;
    }

    /* renamed from: h */
    public abstract void mo24903h(Sheet<C> sheet);

    /* renamed from: i */
    public final void m58116i() {
        if (this.f88808k == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), mo24906m(), null);
            this.f88808k = frameLayout;
            FrameLayout frameLayout2 = (FrameLayout) frameLayout.findViewById(mo24905l());
            this.f88809l = frameLayout2;
            Sheet<C> mo24904j = mo24904j(frameLayout2);
            this.f88807j = mo24904j;
            mo24903h(mo24904j);
            this.f88814q = new MaterialBackOrchestrator(this.f88807j, this.f88809l);
        }
    }

    public boolean isDismissWithSheetAnimationEnabled() {
        return this.f88810m;
    }

    @NonNull
    /* renamed from: j */
    public abstract Sheet<C> mo24904j(@NonNull FrameLayout frameLayout);

    @NonNull
    /* renamed from: k */
    public final FrameLayout m58117k() {
        if (this.f88808k == null) {
            m58116i();
        }
        return this.f88808k;
    }

    @IdRes
    /* renamed from: l */
    public abstract int mo24905l();

    @LayoutRes
    /* renamed from: m */
    public abstract int mo24906m();

    @NonNull
    /* renamed from: n */
    public final FrameLayout m58118n() {
        if (this.f88809l == null) {
            m58116i();
        }
        return this.f88809l;
    }

    /* renamed from: o */
    public abstract int mo24907o();

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m58119r();
        m58121t();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(@Nullable Bundle bundle) {
        C13086AB.m52315v(-1426063237, this, bundle);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MaterialBackOrchestrator materialBackOrchestrator = this.f88814q;
        if (materialBackOrchestrator != null) {
            materialBackOrchestrator.stopListeningForBackCallbacks();
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void onStart() {
        super.onStart();
        Sheet<C> sheet = this.f88807j;
        if (sheet == null || sheet.getState() != 5) {
            return;
        }
        this.f88807j.setState(mo24907o());
    }

    /* renamed from: r */
    public final void m58119r() {
        FrameLayout frameLayout;
        Window window = getWindow();
        if (window == null || (frameLayout = this.f88809l) == null || !(frameLayout.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
            return;
        }
        window.setWindowAnimations(GravityCompat.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) this.f88809l.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this.f88809l)) == 3 ? C5139R.style.Animation_Material3_SideSheetDialog_Left : C5139R.style.Animation_Material3_SideSheetDialog_Right);
    }

    /* renamed from: s */
    public final boolean m58120s() {
        if (!this.f88813p) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.f88812o = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f88813p = true;
        }
        return this.f88812o;
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.f88811n != z) {
            this.f88811n = z;
        }
        if (getWindow() != null) {
            m58121t();
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f88811n) {
            this.f88811n = true;
        }
        this.f88812o = z;
        this.f88813p = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        super.setContentView(m58122u(i, null, null));
    }

    public void setDismissWithSheetAnimationEnabled(boolean z) {
        this.f88810m = z;
    }

    public void setSheetEdge(@GravityInt int i) {
        FrameLayout frameLayout = this.f88809l;
        if (frameLayout == null) {
            throw new IllegalStateException("Sheet view reference is null; sheet edge cannot be changed if the sheet view is null.");
        }
        if (ViewCompat.isLaidOut(frameLayout)) {
            throw new IllegalStateException("Sheet view has been laid out; sheet edge cannot be changed once the sheet has been laid out.");
        }
        ViewGroup.LayoutParams layoutParams = this.f88809l.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            ((CoordinatorLayout.LayoutParams) layoutParams).gravity = i;
            m58119r();
        }
    }

    /* renamed from: t */
    public final void m58121t() {
        MaterialBackOrchestrator materialBackOrchestrator = this.f88814q;
        if (materialBackOrchestrator == null) {
            return;
        }
        if (this.f88811n) {
            materialBackOrchestrator.startListeningForBackCallbacks();
        } else {
            materialBackOrchestrator.stopListeningForBackCallbacks();
        }
    }

    /* renamed from: u */
    public final View m58122u(int i, @Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        m58116i();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) m58117k().findViewById(f88805r);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        FrameLayout m58118n = m58118n();
        m58118n.removeAllViews();
        if (layoutParams == null) {
            m58118n.addView(view);
        } else {
            m58118n.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(f88806s).setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vnm
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                wnm.this.m58115q(view2);
            }
        });
        ViewCompat.setAccessibilityDelegate(m58118n(), new C14614a());
        return this.f88808k;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@Nullable View view) {
        super.setContentView(m58122u(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        super.setContentView(m58122u(0, view, layoutParams));
    }
}
