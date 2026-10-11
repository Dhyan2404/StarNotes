package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import androidx.customview.widget.FocusStrategy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;

    /* renamed from: n */
    public static final String f6618n = "android.view.View";

    /* renamed from: o */
    public static final Rect f6619o = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: p */
    public static final FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> f6620p = new C0945a();

    /* renamed from: q */
    public static final FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> f6621q = new C0946b();

    /* renamed from: h */
    public final AccessibilityManager f6626h;

    /* renamed from: i */
    public final View f6627i;

    /* renamed from: j */
    public C0947c f6628j;

    /* renamed from: d */
    public final Rect f6622d = new Rect();

    /* renamed from: e */
    public final Rect f6623e = new Rect();

    /* renamed from: f */
    public final Rect f6624f = new Rect();

    /* renamed from: g */
    public final int[] f6625g = new int[2];

    /* renamed from: k */
    public int f6629k = Integer.MIN_VALUE;

    /* renamed from: l */
    public int f6630l = Integer.MIN_VALUE;

    /* renamed from: m */
    public int f6631m = Integer.MIN_VALUE;

    /* renamed from: androidx.customview.widget.ExploreByTouchHelper$a */
    /* loaded from: classes3.dex */
    public class C0945a implements FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> {
        @Override // androidx.customview.widget.FocusStrategy.BoundsAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void obtainBounds(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
            accessibilityNodeInfoCompat.getBoundsInParent(rect);
        }
    }

    /* renamed from: androidx.customview.widget.ExploreByTouchHelper$b */
    /* loaded from: classes3.dex */
    public class C0946b implements FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> {
        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccessibilityNodeInfoCompat get(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i) {
            return sparseArrayCompat.valueAt(i);
        }

        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public int size(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
            return sparseArrayCompat.size();
        }
    }

    /* renamed from: androidx.customview.widget.ExploreByTouchHelper$c */
    /* loaded from: classes3.dex */
    public class C0947c extends AccessibilityNodeProviderCompat {
        public C0947c() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
            return AccessibilityNodeInfoCompat.obtain(ExploreByTouchHelper.this.m3993r(i));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat findFocus(int i) {
            int i2 = i == 2 ? ExploreByTouchHelper.this.f6629k : ExploreByTouchHelper.this.f6630l;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return createAccessibilityNodeInfo(i2);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public boolean performAction(int i, int i2, Bundle bundle) {
            return ExploreByTouchHelper.this.m3994s(i, i2, bundle);
        }
    }

    public ExploreByTouchHelper(@NonNull View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f6627i = view;
        this.f6626h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (ViewCompat.getImportantForAccessibility(view) == 0) {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
    }

    /* renamed from: n */
    public static Rect m3980n(@NonNull View view, int i, @NonNull Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i == 17) {
            rect.set(width, 0, width, height);
        } else if (i == 33) {
            rect.set(0, height, width, height);
        } else if (i == 66) {
            rect.set(-1, 0, -1, height);
        } else {
            if (i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    /* renamed from: p */
    public static int m3981p(int i) {
        if (i == 19) {
            return 33;
        }
        if (i != 21) {
            return i != 22 ? 130 : 66;
        }
        return 17;
    }

    public final boolean clearKeyboardFocusForVirtualView(int i) {
        if (this.f6630l != i) {
            return false;
        }
        this.f6630l = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i, false);
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        if (!this.f6626h.isEnabled() || !this.f6626h.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
            m3998w(virtualViewAt);
            return virtualViewAt != Integer.MIN_VALUE;
        }
        if (action != 10 || this.f6631m == Integer.MIN_VALUE) {
            return false;
        }
        m3998w(Integer.MIN_VALUE);
        return true;
    }

    public final boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        int i = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61) {
            if (keyEvent.hasNoModifiers()) {
                return m3992q(2, null);
            }
            if (keyEvent.hasModifiers(1)) {
                return m3992q(1, null);
            }
            return false;
        }
        if (keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (!keyEvent.hasNoModifiers()) {
                        return false;
                    }
                    int m3981p = m3981p(keyCode);
                    int repeatCount = keyEvent.getRepeatCount() + 1;
                    boolean z = false;
                    while (i < repeatCount && m3992q(m3981p, null)) {
                        i++;
                        z = true;
                    }
                    return z;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        m3983f();
        return true;
    }

    /* renamed from: e */
    public final boolean m3982e(int i) {
        if (this.f6629k != i) {
            return false;
        }
        this.f6629k = Integer.MIN_VALUE;
        this.f6627i.invalidate();
        sendEventForVirtualView(i, 65536);
        return true;
    }

    /* renamed from: f */
    public final boolean m3983f() {
        int i = this.f6630l;
        return i != Integer.MIN_VALUE && onPerformActionForVirtualView(i, 16, null);
    }

    /* renamed from: g */
    public final AccessibilityEvent m3984g(int i, int i2) {
        return i != -1 ? m3985h(i, i2) : m3986i(i2);
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f6629k;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.f6628j == null) {
            this.f6628j = new C0947c();
        }
        return this.f6628j;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.f6630l;
    }

    public abstract int getVirtualViewAt(float f, float f2);

    public abstract void getVisibleVirtualViews(List<Integer> list);

    /* renamed from: h */
    public final AccessibilityEvent m3985h(int i, int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        AccessibilityNodeInfoCompat m3993r = m3993r(i);
        obtain.getText().add(m3993r.getText());
        obtain.setContentDescription(m3993r.getContentDescription());
        obtain.setScrollable(m3993r.isScrollable());
        obtain.setPassword(m3993r.isPassword());
        obtain.setEnabled(m3993r.isEnabled());
        obtain.setChecked(m3993r.isChecked());
        onPopulateEventForVirtualView(i, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setClassName(m3993r.getClassName());
        AccessibilityRecordCompat.setSource(obtain, this.f6627i, i);
        obtain.setPackageName(this.f6627i.getContext().getPackageName());
        return obtain;
    }

    /* renamed from: i */
    public final AccessibilityEvent m3986i(int i) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        this.f6627i.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    public final void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int i) {
        invalidateVirtualView(i, 0);
    }

    @NonNull
    /* renamed from: j */
    public final AccessibilityNodeInfoCompat m3987j(int i) {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        obtain.setClassName("android.view.View");
        Rect rect = f6619o;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        obtain.setParent(this.f6627i);
        onPopulateNodeForVirtualView(i, obtain);
        if (obtain.getText() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        obtain.getBoundsInParent(this.f6623e);
        if (this.f6623e.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        obtain.setPackageName(this.f6627i.getContext().getPackageName());
        obtain.setSource(this.f6627i, i);
        if (this.f6629k == i) {
            obtain.setAccessibilityFocused(true);
            obtain.addAction(128);
        } else {
            obtain.setAccessibilityFocused(false);
            obtain.addAction(64);
        }
        boolean z = this.f6630l == i;
        if (z) {
            obtain.addAction(2);
        } else if (obtain.isFocusable()) {
            obtain.addAction(1);
        }
        obtain.setFocused(z);
        this.f6627i.getLocationOnScreen(this.f6625g);
        obtain.getBoundsInScreen(this.f6622d);
        if (this.f6622d.equals(rect)) {
            obtain.getBoundsInParent(this.f6622d);
            if (obtain.mParentVirtualDescendantId != -1) {
                AccessibilityNodeInfoCompat obtain2 = AccessibilityNodeInfoCompat.obtain();
                for (int i2 = obtain.mParentVirtualDescendantId; i2 != -1; i2 = obtain2.mParentVirtualDescendantId) {
                    obtain2.setParent(this.f6627i, -1);
                    obtain2.setBoundsInParent(f6619o);
                    onPopulateNodeForVirtualView(i2, obtain2);
                    obtain2.getBoundsInParent(this.f6623e);
                    Rect rect2 = this.f6622d;
                    Rect rect3 = this.f6623e;
                    rect2.offset(rect3.left, rect3.top);
                }
                obtain2.recycle();
            }
            this.f6622d.offset(this.f6625g[0] - this.f6627i.getScrollX(), this.f6625g[1] - this.f6627i.getScrollY());
        }
        if (this.f6627i.getLocalVisibleRect(this.f6624f)) {
            this.f6624f.offset(this.f6625g[0] - this.f6627i.getScrollX(), this.f6625g[1] - this.f6627i.getScrollY());
            if (this.f6622d.intersect(this.f6624f)) {
                obtain.setBoundsInScreen(this.f6622d);
                if (m3991o(this.f6622d)) {
                    obtain.setVisibleToUser(true);
                }
            }
        }
        return obtain;
    }

    @NonNull
    /* renamed from: k */
    public final AccessibilityNodeInfoCompat m3988k() {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(this.f6627i);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.f6627i, obtain);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            obtain.addChild(this.f6627i, ((Integer) arrayList.get(i)).intValue());
        }
        return obtain;
    }

    /* renamed from: l */
    public final SparseArrayCompat<AccessibilityNodeInfoCompat> m3989l() {
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat = new SparseArrayCompat<>();
        for (int i = 0; i < arrayList.size(); i++) {
            sparseArrayCompat.put(arrayList.get(i).intValue(), m3987j(arrayList.get(i).intValue()));
        }
        return sparseArrayCompat;
    }

    /* renamed from: m */
    public final void m3990m(int i, Rect rect) {
        m3993r(i).getBoundsInParent(rect);
    }

    /* renamed from: o */
    public final boolean m3991o(Rect rect) {
        if (rect == null || rect.isEmpty() || this.f6627i.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.f6627i.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    public final void onFocusChanged(boolean z, int i, @Nullable Rect rect) {
        int i2 = this.f6630l;
        if (i2 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i2);
        }
        if (z) {
            m3992q(i, rect);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        onPopulateEventForHost(accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        onPopulateNodeForHost(accessibilityNodeInfoCompat);
    }

    public abstract boolean onPerformActionForVirtualView(int i, int i2, @Nullable Bundle bundle);

    public void onPopulateEventForHost(@NonNull AccessibilityEvent accessibilityEvent) {
    }

    public void onPopulateEventForVirtualView(int i, @NonNull AccessibilityEvent accessibilityEvent) {
    }

    public void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public abstract void onPopulateNodeForVirtualView(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
    }

    /* renamed from: q */
    public final boolean m3992q(int i, @Nullable Rect rect) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        SparseArrayCompat<AccessibilityNodeInfoCompat> m3989l = m3989l();
        int i2 = this.f6630l;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i2 == Integer.MIN_VALUE ? null : m3989l.get(i2);
        if (i == 1 || i == 2) {
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.m4005d(m3989l, f6621q, f6620p, accessibilityNodeInfoCompat2, i, ViewCompat.getLayoutDirection(this.f6627i) == 1, false);
        } else {
            if (i != 17 && i != 33 && i != 66 && i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i3 = this.f6630l;
            if (i3 != Integer.MIN_VALUE) {
                m3990m(i3, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                m3980n(this.f6627i, i, rect2);
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.m4004c(m3989l, f6621q, f6620p, accessibilityNodeInfoCompat2, rect2, i);
        }
        return requestKeyboardFocusForVirtualView(accessibilityNodeInfoCompat != null ? m3989l.keyAt(m3989l.indexOfValue(accessibilityNodeInfoCompat)) : Integer.MIN_VALUE);
    }

    @NonNull
    /* renamed from: r */
    public AccessibilityNodeInfoCompat m3993r(int i) {
        return i == -1 ? m3988k() : m3987j(i);
    }

    public final boolean requestKeyboardFocusForVirtualView(int i) {
        int i2;
        if ((!this.f6627i.isFocused() && !this.f6627i.requestFocus()) || (i2 = this.f6630l) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.f6630l = i;
        onVirtualViewKeyboardFocusChanged(i, true);
        sendEventForVirtualView(i, 8);
        return true;
    }

    /* renamed from: s */
    public boolean m3994s(int i, int i2, Bundle bundle) {
        return i != -1 ? m3995t(i, i2, bundle) : m3996u(i2, bundle);
    }

    public final boolean sendEventForVirtualView(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f6626h.isEnabled() || (parent = this.f6627i.getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.f6627i, m3984g(i, i2));
    }

    /* renamed from: t */
    public final boolean m3995t(int i, int i2, Bundle bundle) {
        return i2 != 1 ? i2 != 2 ? i2 != 64 ? i2 != 128 ? onPerformActionForVirtualView(i, i2, bundle) : m3982e(i) : m3997v(i) : clearKeyboardFocusForVirtualView(i) : requestKeyboardFocusForVirtualView(i);
    }

    /* renamed from: u */
    public final boolean m3996u(int i, Bundle bundle) {
        return ViewCompat.performAccessibilityAction(this.f6627i, i, bundle);
    }

    /* renamed from: v */
    public final boolean m3997v(int i) {
        int i2;
        if (!this.f6626h.isEnabled() || !this.f6626h.isTouchExplorationEnabled() || (i2 = this.f6629k) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m3982e(i2);
        }
        this.f6629k = i;
        this.f6627i.invalidate();
        sendEventForVirtualView(i, 32768);
        return true;
    }

    /* renamed from: w */
    public final void m3998w(int i) {
        int i2 = this.f6631m;
        if (i2 == i) {
            return;
        }
        this.f6631m = i;
        sendEventForVirtualView(i, 128);
        sendEventForVirtualView(i2, 256);
    }

    public final void invalidateVirtualView(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f6626h.isEnabled() || (parent = this.f6627i.getParent()) == null) {
            return;
        }
        AccessibilityEvent m3984g = m3984g(i, 2048);
        AccessibilityEventCompat.setContentChangeTypes(m3984g, i2);
        parent.requestSendAccessibilityEvent(this.f6627i, m3984g);
    }
}
