package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;

/* loaded from: classes9.dex */
public class FragmentLogOffAgreementBindingImpl extends FragmentLogOffAgreementBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56693u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56694v0;

    /* renamed from: q0 */
    @Nullable
    public final LayoutUsercenterLoadingBinding f56695q0;

    /* renamed from: t0 */
    public long f56696t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56694v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 3);
        sparseIntArray.put(C10651R.id.back_button, 4);
        sparseIntArray.put(C10651R.id.title_text, 5);
        sparseIntArray.put(C10651R.id.webView, 6);
        sparseIntArray.put(C10651R.id.offlinePlaceholderView, 7);
        sparseIntArray.put(C10651R.id.tipText, 8);
    }

    public FragmentLogOffAgreementBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56693u0, f56694v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56696t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56696t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56696t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45233r((AccountCenterViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45233r(AccountCenterViewModel accountCenterViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56696t0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (16 != i) {
            return false;
        }
        setViewModel((AccountCenterViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentLogOffAgreementBinding
    public void setViewModel(@Nullable AccountCenterViewModel accountCenterViewModel) {
        this.mViewModel = accountCenterViewModel;
    }

    public FragmentLogOffAgreementBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (ImageView) objArr[4], (LinearLayout) objArr[1], (LinearLayout) objArr[7], (ConstraintLayout) objArr[0], (TextView) objArr[8], (FrameLayout) objArr[3], (TextView) objArr[5], (OnyxWebView) objArr[6]);
        this.f56696t0 = -1L;
        this.loadingView.setTag(null);
        Object obj = objArr[2];
        this.f56695q0 = obj != null ? LayoutUsercenterLoadingBinding.bind((View) obj) : null;
        this.rootLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
