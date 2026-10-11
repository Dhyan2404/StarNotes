package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class LayoutCounterTipsViewBindingImpl extends LayoutCounterTipsViewBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57319u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57320v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57321q0;

    /* renamed from: t0 */
    public long f57322t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57320v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.icon, 1);
        sparseIntArray.put(C10651R.id.tv_tip, 2);
        sparseIntArray.put(C10651R.id.tv_time_name, 3);
        sparseIntArray.put(C10651R.id.iv_action, 4);
    }

    public LayoutCounterTipsViewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57319u0, f57320v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57322t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57322t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57322t0 = 1L;
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

    public LayoutCounterTipsViewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ShadowLayout) objArr[1], (TintImageView) objArr[4], (TintTextView) objArr[3], (TintTextView) objArr[2]);
        this.f57322t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57321q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
