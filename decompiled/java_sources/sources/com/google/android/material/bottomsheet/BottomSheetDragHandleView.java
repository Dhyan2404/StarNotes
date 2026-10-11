package com.google.android.material.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.C5139R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDragHandleView;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* loaded from: classes6.dex */
public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {

    /* renamed from: q */
    public static final int f30555q = C5139R.style.Widget_Material3_BottomSheet_DragHandle;

    /* renamed from: h */
    @Nullable
    public final AccessibilityManager f30556h;

    /* renamed from: i */
    @Nullable
    public BottomSheetBehavior<?> f30557i;

    /* renamed from: j */
    public boolean f30558j;

    /* renamed from: k */
    public boolean f30559k;

    /* renamed from: l */
    public boolean f30560l;

    /* renamed from: m */
    public final String f30561m;

    /* renamed from: n */
    public final String f30562n;

    /* renamed from: o */
    public final String f30563o;

    /* renamed from: p */
    public final BottomSheetBehavior.BottomSheetCallback f30564p;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDragHandleView$a */
    /* loaded from: classes6.dex */
    public class C5186a extends BottomSheetBehavior.BottomSheetCallback {
        public C5186a() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(@NonNull View view, int i) {
            BottomSheetDragHandleView.this.m23237i(i);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDragHandleView$b */
    /* loaded from: classes6.dex */
    public class C5187b extends AccessibilityDelegateCompat {
        public C5187b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            if (accessibilityEvent.getEventType() == 1) {
                BottomSheetDragHandleView.this.m23235e();
            }
        }
    }

    public BottomSheetDragHandleView(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    /* renamed from: g */
    public static View m23232g(View view) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ boolean m23233h(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        return m23235e();
    }

    private void setBottomSheetBehavior(@Nullable BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior<?> bottomSheetBehavior2 = this.f30557i;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.removeBottomSheetCallback(this.f30564p);
            this.f30557i.m23187U(null);
        }
        this.f30557i = bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.m23187U(this);
            m23237i(this.f30557i.getState());
            this.f30557i.addBottomSheetCallback(this.f30564p);
        }
        m23238j();
    }

    /* renamed from: d */
    public final void m23234d(String str) {
        if (this.f30556h == null) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
        obtain.getText().add(str);
        this.f30556h.sendAccessibilityEvent(obtain);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
    
        if (r1 != false) goto L23;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m23235e() {
        /*
            r6 = this;
            boolean r0 = r6.f30559k
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.lang.String r0 = r6.f30563o
            r6.m23234d(r0)
            com.google.android.material.bottomsheet.BottomSheetBehavior<?> r0 = r6.f30557i
            boolean r0 = r0.isFitToContents()
            r2 = 1
            if (r0 != 0) goto L1d
            com.google.android.material.bottomsheet.BottomSheetBehavior<?> r0 = r6.f30557i
            boolean r0 = r0.shouldSkipHalfExpandedStateWhenDragging()
            if (r0 != 0) goto L1d
            r1 = r2
        L1d:
            com.google.android.material.bottomsheet.BottomSheetBehavior<?> r0 = r6.f30557i
            int r0 = r0.getState()
            r3 = 6
            r4 = 3
            r5 = 4
            if (r0 != r5) goto L2b
            if (r1 == 0) goto L38
            goto L39
        L2b:
            if (r0 != r4) goto L32
            if (r1 == 0) goto L30
            goto L39
        L30:
            r3 = r5
            goto L39
        L32:
            boolean r0 = r6.f30560l
            if (r0 == 0) goto L37
            goto L38
        L37:
            r4 = r5
        L38:
            r3 = r4
        L39:
            com.google.android.material.bottomsheet.BottomSheetBehavior<?> r6 = r6.f30557i
            r6.setState(r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetDragHandleView.m23235e():boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.material.bottomsheet.BottomSheetDragHandleView] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View] */
    @Nullable
    /* renamed from: f */
    public final BottomSheetBehavior<?> m23236f() {
        while (true) {
            this = m23232g(this);
            if (this == 0) {
                return null;
            }
            ViewGroup.LayoutParams layoutParams = this.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
                if (behavior instanceof BottomSheetBehavior) {
                    return (BottomSheetBehavior) behavior;
                }
            }
        }
    }

    /* renamed from: i */
    public final void m23237i(int i) {
        if (i == 4) {
            this.f30560l = true;
        } else if (i == 3) {
            this.f30560l = false;
        }
        ViewCompat.replaceAccessibilityAction(this, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK, this.f30560l ? this.f30561m : this.f30562n, new AccessibilityViewCommand() { // from class: com.sunia.HTREnginev2.iu
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                boolean m23233h;
                m23233h = BottomSheetDragHandleView.this.m23233h(view, commandArguments);
                return m23233h;
            }
        });
    }

    /* renamed from: j */
    public final void m23238j() {
        this.f30559k = this.f30558j && this.f30557i != null;
        ViewCompat.setImportantForAccessibility(this, this.f30557i == null ? 2 : 1);
        setClickable(this.f30559k);
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z) {
        this.f30558j = z;
        m23238j();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setBottomSheetBehavior(m23236f());
        AccessibilityManager accessibilityManager = this.f30556h;
        if (accessibilityManager != null) {
            accessibilityManager.addAccessibilityStateChangeListener(this);
            onAccessibilityStateChanged(this.f30556h.isEnabled());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        AccessibilityManager accessibilityManager = this.f30556h;
        if (accessibilityManager != null) {
            accessibilityManager.removeAccessibilityStateChangeListener(this);
        }
        setBottomSheetBehavior(null);
        super.onDetachedFromWindow();
    }

    public BottomSheetDragHandleView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.bottomSheetDragHandleStyle);
    }

    public BottomSheetDragHandleView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, f30555q), attributeSet, i);
        this.f30561m = getResources().getString(C5139R.string.bottomsheet_action_expand);
        this.f30562n = getResources().getString(C5139R.string.bottomsheet_action_collapse);
        this.f30563o = getResources().getString(C5139R.string.bottomsheet_drag_handle_clicked);
        this.f30564p = new C5186a();
        this.f30556h = (AccessibilityManager) getContext().getSystemService("accessibility");
        m23238j();
        ViewCompat.setAccessibilityDelegate(this, new C5187b());
    }
}
