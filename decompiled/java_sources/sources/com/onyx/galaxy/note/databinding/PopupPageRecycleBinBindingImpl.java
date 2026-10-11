package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;

/* loaded from: classes9.dex */
public class PopupPageRecycleBinBindingImpl extends PopupPageRecycleBinBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57758u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57759v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57760q0;

    /* renamed from: t0 */
    public long f57761t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57759v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.page_layout, 1);
        sparseIntArray.put(C10651R.id.select_all, 2);
        sparseIntArray.put(C10651R.id.selected_count, 3);
        sparseIntArray.put(C10651R.id.close, 4);
        sparseIntArray.put(C10651R.id.finish, 5);
        sparseIntArray.put(C10651R.id.selection_action_layout, 6);
        sparseIntArray.put(C10651R.id.ll_dust_bin_op_delete, 7);
        sparseIntArray.put(C10651R.id.iv_dust_bin_op_delete, 8);
        sparseIntArray.put(C10651R.id.tv_dust_bin_op_delete, 9);
        sparseIntArray.put(C10651R.id.ll_dust_bin_op_restore, 10);
        sparseIntArray.put(C10651R.id.iv_dust_bin_op_restore, 11);
        sparseIntArray.put(C10651R.id.tv_dust_bin_op_restore, 12);
        sparseIntArray.put(C10651R.id.swipe_container, 13);
        sparseIntArray.put(C10651R.id.empty_view, 14);
    }

    public PopupPageRecycleBinBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f57758u0, f57759v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57761t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57761t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57761t0 = 1L;
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

    public PopupPageRecycleBinBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[4], (CommonEmptyView) objArr[14], (TintTextView) objArr[5], (TintImageView) objArr[8], (TintImageView) objArr[11], (TintLinearLayout) objArr[7], (TintLinearLayout) objArr[10], (LinearLayout) objArr[1], (TintCheckBox) objArr[2], (TintTextView) objArr[3], (TintLinearLayout) objArr[6], (SwipeRecycleViewContainer) objArr[13], (TintTextView) objArr[9], (TintTextView) objArr[12]);
        this.f57761t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57760q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
