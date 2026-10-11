package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemListImportFilesBindingImpl extends ItemListImportFilesBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57060u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57061v0;

    /* renamed from: q0 */
    @NonNull
    public final TintRelativeLayout f57062q0;

    /* renamed from: t0 */
    public long f57063t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57061v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_container_multiple, 1);
        sparseIntArray.put(C10651R.id.iv_icon_multiple, 2);
        sparseIntArray.put(C10651R.id.tv_name_multiple, 3);
        sparseIntArray.put(C10651R.id.ll_container_single, 4);
        sparseIntArray.put(C10651R.id.iv_icon_single, 5);
        sparseIntArray.put(C10651R.id.tv_name_single, 6);
    }

    public ItemListImportFilesBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57060u0, f57061v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57063t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57063t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57063t0 = 1L;
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

    public ItemListImportFilesBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[2], (TintImageView) objArr[5], (TintLinearLayout) objArr[1], (TintLinearLayout) objArr[4], (TintTextView) objArr[3], (TintTextView) objArr[6]);
        this.f57063t0 = -1L;
        TintRelativeLayout tintRelativeLayout = (TintRelativeLayout) objArr[0];
        this.f57062q0 = tintRelativeLayout;
        tintRelativeLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
