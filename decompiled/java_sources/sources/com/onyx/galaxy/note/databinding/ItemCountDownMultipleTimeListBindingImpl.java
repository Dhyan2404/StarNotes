package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemCountDownMultipleTimeListBindingImpl extends ItemCountDownMultipleTimeListBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56954t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56955u0;

    /* renamed from: q0 */
    public long f56956q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56955u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_total_time, 1);
        sparseIntArray.put(C10651R.id.iv_more_option, 2);
        sparseIntArray.put(C10651R.id.edt_count_name, 3);
    }

    public ItemCountDownMultipleTimeListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f56954t0, f56955u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56956q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56956q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56956q0 = 1L;
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

    public ItemCountDownMultipleTimeListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintEditText) objArr[3], (TintRelativeLayout) objArr[0], (TintImageView) objArr[2], (TintTextView) objArr[1]);
        this.f56956q0 = -1L;
        this.itemContainer.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
