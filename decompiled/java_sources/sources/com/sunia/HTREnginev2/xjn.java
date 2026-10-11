package com.sunia.HTREnginev2;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class xjn implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: o */
    public static final String f89763o = "TooltipCompatHandler";

    /* renamed from: p */
    public static final long f89764p = 2500;

    /* renamed from: q */
    public static final long f89765q = 15000;

    /* renamed from: r */
    public static final long f89766r = 3000;

    /* renamed from: s */
    public static xjn f89767s;

    /* renamed from: t */
    public static xjn f89768t;

    /* renamed from: e */
    public final View f89769e;

    /* renamed from: f */
    public final CharSequence f89770f;

    /* renamed from: g */
    public final int f89771g;

    /* renamed from: h */
    public final Runnable f89772h = new Runnable() { // from class: com.sunia.HTREnginev2.vjn
        @Override // java.lang.Runnable
        public final void run() {
            xjn.this.m58270e();
        }
    };

    /* renamed from: i */
    public final Runnable f89773i = new Runnable() { // from class: com.sunia.HTREnginev2.wjn
        @Override // java.lang.Runnable
        public final void run() {
            xjn.this.m58275d();
        }
    };

    /* renamed from: j */
    public int f89774j;

    /* renamed from: k */
    public int f89775k;

    /* renamed from: l */
    public yjn f89776l;

    /* renamed from: m */
    public boolean f89777m;

    /* renamed from: n */
    public boolean f89778n;

    public xjn(View view, CharSequence charSequence) {
        this.f89769e = view;
        this.f89770f = charSequence;
        this.f89771g = ViewConfigurationCompat.getScaledHoverSlop(ViewConfiguration.get(view.getContext()));
        m58274c();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m58270e() {
        m58277i(false);
    }

    /* renamed from: g */
    public static void m58271g(xjn xjnVar) {
        xjn xjnVar2 = f89767s;
        if (xjnVar2 != null) {
            xjnVar2.m58273b();
        }
        f89767s = xjnVar;
        if (xjnVar != null) {
            xjnVar.m58276f();
        }
    }

    /* renamed from: h */
    public static void m58272h(View view, CharSequence charSequence) {
        xjn xjnVar = f89767s;
        if (xjnVar != null && xjnVar.f89769e == view) {
            m58271g(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new xjn(view, charSequence);
            return;
        }
        xjn xjnVar2 = f89768t;
        if (xjnVar2 != null && xjnVar2.f89769e == view) {
            xjnVar2.m58275d();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    /* renamed from: b */
    public final void m58273b() {
        this.f89769e.removeCallbacks(this.f89772h);
    }

    /* renamed from: c */
    public final void m58274c() {
        this.f89778n = true;
    }

    /* renamed from: d */
    public void m58275d() {
        if (f89768t == this) {
            f89768t = null;
            yjn yjnVar = this.f89776l;
            if (yjnVar != null) {
                yjnVar.m58445c();
                this.f89776l = null;
                m58274c();
                this.f89769e.removeOnAttachStateChangeListener(this);
            } else {
                Log.e(f89763o, "sActiveHandler.mPopup == null");
            }
        }
        if (f89767s == this) {
            m58271g(null);
        }
        this.f89769e.removeCallbacks(this.f89773i);
    }

    /* renamed from: f */
    public final void m58276f() {
        this.f89769e.postDelayed(this.f89772h, ViewConfiguration.getLongPressTimeout());
    }

    /* renamed from: i */
    public void m58277i(boolean z) {
        long longPressTimeout;
        long j;
        long j2;
        if (this.f89769e.isAttachedToWindow()) {
            m58271g(null);
            xjn xjnVar = f89768t;
            if (xjnVar != null) {
                xjnVar.m58275d();
            }
            f89768t = this;
            this.f89777m = z;
            yjn yjnVar = new yjn(this.f89769e.getContext());
            this.f89776l = yjnVar;
            yjnVar.m58447e(this.f89769e, this.f89774j, this.f89775k, this.f89777m, this.f89770f);
            this.f89769e.addOnAttachStateChangeListener(this);
            if (this.f89777m) {
                j2 = f89764p;
            } else {
                if ((ViewCompat.getWindowSystemUiVisibility(this.f89769e) & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 15000;
                }
                j2 = j - longPressTimeout;
            }
            this.f89769e.removeCallbacks(this.f89773i);
            this.f89769e.postDelayed(this.f89773i, j2);
        }
    }

    /* renamed from: j */
    public final boolean m58278j(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (!this.f89778n && Math.abs(x - this.f89774j) <= this.f89771g && Math.abs(y - this.f89775k) <= this.f89771g) {
            return false;
        }
        this.f89774j = x;
        this.f89775k = y;
        this.f89778n = false;
        return true;
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f89776l != null && this.f89777m) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f89769e.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                m58274c();
                m58275d();
            }
        } else if (this.f89769e.isEnabled() && this.f89776l == null && m58278j(motionEvent)) {
            m58271g(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f89774j = view.getWidth() / 2;
        this.f89775k = view.getHeight() / 2;
        m58277i(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        m58275d();
    }
}
