package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.model.AreaCodeModel;

/* loaded from: classes9.dex */
public class ItemAreaCodeBindingImpl extends ItemAreaCodeBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56928u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56929v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f56930q0;

    /* renamed from: t0 */
    public long f56931t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56929v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.v_divider, 2);
    }

    public ItemAreaCodeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f56928u0, f56929v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f56931t0;
            this.f56931t0 = 0L;
        }
        AreaCodeModel areaCodeModel = this.mModel;
        long j2 = j & 3;
        String title = (j2 == 0 || areaCodeModel == null) ? null : areaCodeModel.getTitle();
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.btn, title);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56931t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56931t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemAreaCodeBinding
    public void setModel(@Nullable AreaCodeModel areaCodeModel) {
        this.mModel = areaCodeModel;
        synchronized (this) {
            this.f56931t0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((AreaCodeModel) obj);
        return true;
    }

    public ItemAreaCodeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[1], (TintView) objArr[2]);
        this.f56931t0 = -1L;
        this.btn.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f56930q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
