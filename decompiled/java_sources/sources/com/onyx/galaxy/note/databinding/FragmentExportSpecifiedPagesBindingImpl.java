package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentExportSpecifiedPagesBindingImpl extends FragmentExportSpecifiedPagesBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56686u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56687v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f56688q0;

    /* renamed from: t0 */
    public long f56689t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56687v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.selection_layout, 1);
        sparseIntArray.put(C10651R.id.close_text, 2);
        sparseIntArray.put(C10651R.id.title, 3);
        sparseIntArray.put(C10651R.id.finish, 4);
        sparseIntArray.put(C10651R.id.iv_thumb_size, 5);
        sparseIntArray.put(C10651R.id.topDivider, 6);
        sparseIntArray.put(C10651R.id.select_all, 7);
        sparseIntArray.put(C10651R.id.tv_label_selected_pages, 8);
        sparseIntArray.put(C10651R.id.tv_selected_pages, 9);
        sparseIntArray.put(C10651R.id.container, 10);
    }

    public FragmentExportSpecifiedPagesBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56686u0, f56687v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56689t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56689t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56689t0 = 1L;
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

    public FragmentExportSpecifiedPagesBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[2], (TintFrameLayout) objArr[10], (MediumTextView) objArr[4], (TintImageView) objArr[5], (TintRadioButton) objArr[7], (TintRelativeLayout) objArr[1], (MediumTextView) objArr[3], (TintView) objArr[6], (TintTextView) objArr[8], (TintTextView) objArr[9]);
        this.f56689t0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f56688q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
