package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ActivityHtmlWindowBindingImpl extends ActivityHtmlWindowBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56270v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56271w0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f56272q0;

    /* renamed from: t0 */
    @Nullable
    public final LayoutUsercenterLoadingBinding f56273t0;

    /* renamed from: u0 */
    public long f56274u0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56271w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.timeoutLayoutBinding, 3);
        sparseIntArray.put(C10651R.id.progressLayoutBinding, 5);
        sparseIntArray.put(C10651R.id.titleBar, 6);
        sparseIntArray.put(C10651R.id.backButton, 7);
        sparseIntArray.put(C10651R.id.titleText, 8);
        sparseIntArray.put(C10651R.id.webView, 9);
    }

    public ActivityHtmlWindowBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56270v0, f56271w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56274u0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56274u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56274u0 = 1L;
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
    public ActivityHtmlWindowBindingImpl(androidx.databinding.DataBindingComponent r15, android.view.View r16, java.lang.Object[] r17) {
        /*
            r14 = this;
            r12 = r14
            r3 = 0
            r0 = 7
            r0 = r17[r0]
            r4 = r0
            android.widget.ImageView r4 = (android.widget.ImageView) r4
            r0 = 1
            r0 = r17[r0]
            r5 = r0
            android.widget.LinearLayout r5 = (android.widget.LinearLayout) r5
            r0 = 2
            r0 = r17[r0]
            r6 = r0
            android.widget.LinearLayout r6 = (android.widget.LinearLayout) r6
            r0 = 5
            r0 = r17[r0]
            r13 = 0
            if (r0 == 0) goto L22
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutUsercenterLoadingBinding r0 = com.onyx.galaxy.note.databinding.LayoutUsercenterLoadingBinding.bind(r0)
            r7 = r0
            goto L23
        L22:
            r7 = r13
        L23:
            r0 = 3
            r0 = r17[r0]
            if (r0 == 0) goto L30
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutWebviewTimeoutBinding r0 = com.onyx.galaxy.note.databinding.LayoutWebviewTimeoutBinding.bind(r0)
            r8 = r0
            goto L31
        L30:
            r8 = r13
        L31:
            r0 = 6
            r0 = r17[r0]
            r9 = r0
            android.widget.FrameLayout r9 = (android.widget.FrameLayout) r9
            r0 = 8
            r0 = r17[r0]
            r10 = r0
            android.widget.TextView r10 = (android.widget.TextView) r10
            r0 = 9
            r0 = r17[r0]
            r11 = r0
            com.onyx.galaxy.note.ui.view.OnyxWebView r11 = (com.onyx.galaxy.note.p048ui.view.OnyxWebView) r11
            r0 = r14
            r1 = r15
            r2 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r0 = -1
            r12.f56274u0 = r0
            android.widget.LinearLayout r0 = r12.loadingLayout
            r0.setTag(r13)
            r0 = 0
            r0 = r17[r0]
            androidx.constraintlayout.widget.ConstraintLayout r0 = (androidx.constraintlayout.widget.ConstraintLayout) r0
            r12.f56272q0 = r0
            r0.setTag(r13)
            r0 = 4
            r0 = r17[r0]
            if (r0 == 0) goto L6b
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutUsercenterLoadingBinding r0 = com.onyx.galaxy.note.databinding.LayoutUsercenterLoadingBinding.bind(r0)
            goto L6c
        L6b:
            r0 = r13
        L6c:
            r12.f56273t0 = r0
            android.widget.LinearLayout r0 = r12.progressLayout
            r0.setTag(r13)
            r0 = r16
            r14.setRootTag(r0)
            r14.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.ActivityHtmlWindowBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
