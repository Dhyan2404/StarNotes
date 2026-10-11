package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.p039ui.EllipsizingTextView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutCategoryTitleContainerBindingImpl extends LayoutCategoryTitleContainerBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57306t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57307u0;

    /* renamed from: q0 */
    public long f57308q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57307u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_args_container, 1);
        sparseIntArray.put(C10651R.id.tv_category_title, 2);
        sparseIntArray.put(C10651R.id.ll_color_args, 3);
        sparseIntArray.put(C10651R.id.color_divider, 4);
        sparseIntArray.put(C10651R.id.cl_color_list, 5);
        sparseIntArray.put(C10651R.id.ll_space_args, 6);
        sparseIntArray.put(C10651R.id.tv_line_space, 7);
        sparseIntArray.put(C10651R.id.ll_custom_selected_container, 8);
        sparseIntArray.put(C10651R.id.tv_delete, 9);
        sparseIntArray.put(C10651R.id.tv_rename, 10);
        sparseIntArray.put(C10651R.id.tv_done, 11);
        sparseIntArray.put(C10651R.id.tv_select, 12);
        sparseIntArray.put(C10651R.id.rl_change_orientation_container, 13);
        sparseIntArray.put(C10651R.id.tv_change_template_size_orientation, 14);
        sparseIntArray.put(C10651R.id.apply_all, 15);
        sparseIntArray.put(C10651R.id.tv_goto_material_center, 16);
        sparseIntArray.put(C10651R.id.divider_category, 17);
        sparseIntArray.put(C10651R.id.rl_category_title, 18);
    }

    public LayoutCategoryTitleContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f57306t0, f57307u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57308q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57308q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57308q0 = 1L;
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

    public LayoutCategoryTitleContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintCheckBox) objArr[15], (TintConstraintLayout) objArr[0], (RecyclerView) objArr[5], (TintView) objArr[4], (TintView) objArr[17], (LinearLayout) objArr[1], (LinearLayout) objArr[3], (LinearLayout) objArr[8], (LinearLayout) objArr[6], (RecyclerView) objArr[18], (FrameLayout) objArr[13], (MediumTextView) objArr[2], (TintTextView) objArr[14], (TintTextView) objArr[9], (TintTextView) objArr[11], (EllipsizingTextView) objArr[16], (TintTextView) objArr[7], (TintTextView) objArr[10], (TintTextView) objArr[12]);
        this.f57308q0 = -1L;
        this.clCategoryContainer.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
