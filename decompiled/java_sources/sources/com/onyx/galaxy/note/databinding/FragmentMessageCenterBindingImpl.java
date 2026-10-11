package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentMessageCenterBindingImpl extends FragmentMessageCenterBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56730u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56731v0;

    /* renamed from: q0 */
    @Nullable
    public final LayoutUsercenterLoadingBinding f56732q0;

    /* renamed from: t0 */
    public long f56733t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56731v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.webViewTimeoutLayout, 2);
        sparseIntArray.put(C10651R.id.title_bar, 4);
        sparseIntArray.put(C10651R.id.back_button, 5);
        sparseIntArray.put(C10651R.id.title_text, 6);
        sparseIntArray.put(C10651R.id.readAllButton, 7);
        sparseIntArray.put(C10651R.id.webView, 8);
    }

    public FragmentMessageCenterBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56730u0, f56731v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56733t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56733t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56733t0 = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FragmentMessageCenterBindingImpl(androidx.databinding.DataBindingComponent r15, android.view.View r16, java.lang.Object[] r17) {
        /*
            r14 = this;
            r12 = r14
            r3 = 0
            r0 = 5
            r0 = r17[r0]
            r4 = r0
            android.widget.ImageView r4 = (android.widget.ImageView) r4
            r0 = 1
            r0 = r17[r0]
            r5 = r0
            android.widget.LinearLayout r5 = (android.widget.LinearLayout) r5
            r0 = 7
            r0 = r17[r0]
            r6 = r0
            android.widget.TextView r6 = (android.widget.TextView) r6
            r0 = 0
            r0 = r17[r0]
            r7 = r0
            androidx.constraintlayout.widget.ConstraintLayout r7 = (androidx.constraintlayout.widget.ConstraintLayout) r7
            r0 = 4
            r0 = r17[r0]
            r8 = r0
            android.widget.FrameLayout r8 = (android.widget.FrameLayout) r8
            r0 = 6
            r0 = r17[r0]
            r9 = r0
            android.widget.TextView r9 = (android.widget.TextView) r9
            r0 = 8
            r0 = r17[r0]
            r10 = r0
            com.onyx.galaxy.note.ui.view.OnyxWebView r10 = (com.onyx.galaxy.note.p048ui.view.OnyxWebView) r10
            r0 = 2
            r0 = r17[r0]
            r13 = 0
            if (r0 == 0) goto L3b
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutWebviewTimeoutBinding r0 = com.onyx.galaxy.note.databinding.LayoutWebviewTimeoutBinding.bind(r0)
            r11 = r0
            goto L3c
        L3b:
            r11 = r13
        L3c:
            r0 = r14
            r1 = r15
            r2 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r0 = -1
            r12.f56733t0 = r0
            android.widget.LinearLayout r0 = r12.loadingView
            r0.setTag(r13)
            r0 = 3
            r0 = r17[r0]
            if (r0 == 0) goto L58
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutUsercenterLoadingBinding r0 = com.onyx.galaxy.note.databinding.LayoutUsercenterLoadingBinding.bind(r0)
            goto L59
        L58:
            r0 = r13
        L59:
            r12.f56732q0 = r0
            androidx.constraintlayout.widget.ConstraintLayout r0 = r12.rootLayout
            r0.setTag(r13)
            r0 = r16
            r14.setRootTag(r0)
            r14.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentMessageCenterBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
