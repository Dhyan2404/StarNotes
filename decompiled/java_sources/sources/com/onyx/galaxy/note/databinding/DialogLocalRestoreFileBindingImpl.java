package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogLocalRestoreFileBindingImpl extends DialogLocalRestoreFileBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56434u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56435v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56436q0;

    /* renamed from: t0 */
    public long f56437t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56435v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.btn_back, 1);
        sparseIntArray.put(C10651R.id.tv_title, 2);
        sparseIntArray.put(C10651R.id.btn_import, 3);
        sparseIntArray.put(C10651R.id.fl_search_container, 4);
        sparseIntArray.put(C10651R.id.edt_search, 5);
        sparseIntArray.put(C10651R.id.iv_delete, 6);
        sparseIntArray.put(C10651R.id.tv_select_all, 7);
        sparseIntArray.put(C10651R.id.f53355rv, 8);
    }

    public DialogLocalRestoreFileBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56434u0, f56435v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56437t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56437t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56437t0 = 1L;
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

    public DialogLocalRestoreFileBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[1], (TintTextView) objArr[3], (TintEditText) objArr[5], (FrameLayout) objArr[4], (TintImageView) objArr[6], (RecyclerView) objArr[8], (TintTextView) objArr[7], (TintTextView) objArr[2]);
        this.f56437t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56436q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
