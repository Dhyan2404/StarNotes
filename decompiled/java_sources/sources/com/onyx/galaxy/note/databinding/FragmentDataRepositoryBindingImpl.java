package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentDataRepositoryBindingImpl extends FragmentDataRepositoryBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56639v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56640w0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56641q0;

    /* renamed from: t0 */
    @Nullable
    public final LayoutUsercenterLoadingBinding f56642t0;

    /* renamed from: u0 */
    public long f56643u0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56640w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.webViewTimeoutLayout, 2);
        sparseIntArray.put(C10651R.id.title_bar, 4);
        sparseIntArray.put(C10651R.id.back_button, 5);
        sparseIntArray.put(C10651R.id.webView, 6);
    }

    public FragmentDataRepositoryBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f56639v0, f56640w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56643u0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56643u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56643u0 = 1L;
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
    public FragmentDataRepositoryBindingImpl(androidx.databinding.DataBindingComponent r11, android.view.View r12, java.lang.Object[] r13) {
        /*
            r10 = this;
            r3 = 0
            r0 = 5
            r0 = r13[r0]
            r4 = r0
            android.widget.ImageView r4 = (android.widget.ImageView) r4
            r0 = 1
            r0 = r13[r0]
            r5 = r0
            com.onyx.android.sdk.theme.widgets.TintLinearLayout r5 = (com.onyx.android.sdk.theme.widgets.TintLinearLayout) r5
            r0 = 4
            r0 = r13[r0]
            r6 = r0
            android.widget.FrameLayout r6 = (android.widget.FrameLayout) r6
            r0 = 6
            r0 = r13[r0]
            r7 = r0
            com.onyx.galaxy.note.ui.view.OnyxWebView r7 = (com.onyx.galaxy.note.p048ui.view.OnyxWebView) r7
            r0 = 2
            r0 = r13[r0]
            r9 = 0
            if (r0 == 0) goto L27
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutWebviewTimeoutBinding r0 = com.onyx.galaxy.note.databinding.LayoutWebviewTimeoutBinding.bind(r0)
            r8 = r0
            goto L28
        L27:
            r8 = r9
        L28:
            r0 = r10
            r1 = r11
            r2 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = -1
            r10.f56643u0 = r0
            com.onyx.android.sdk.theme.widgets.TintLinearLayout r11 = r10.loadingView
            r11.setTag(r9)
            r11 = 0
            r11 = r13[r11]
            com.onyx.android.sdk.theme.widgets.TintConstraintLayout r11 = (com.onyx.android.sdk.theme.widgets.TintConstraintLayout) r11
            r10.f56641q0 = r11
            r11.setTag(r9)
            r11 = 3
            r11 = r13[r11]
            if (r11 == 0) goto L4c
            android.view.View r11 = (android.view.View) r11
            com.onyx.galaxy.note.databinding.LayoutUsercenterLoadingBinding r9 = com.onyx.galaxy.note.databinding.LayoutUsercenterLoadingBinding.bind(r11)
        L4c:
            r10.f56642t0 = r9
            r10.setRootTag(r12)
            r10.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentDataRepositoryBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
