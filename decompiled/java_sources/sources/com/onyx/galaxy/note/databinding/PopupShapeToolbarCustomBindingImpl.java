package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupShapeToolbarCustomBindingImpl extends PopupShapeToolbarCustomBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57828u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57829v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57830q0;

    /* renamed from: t0 */
    public long f57831t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57829v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_layout, 1);
        sparseIntArray.put(C10651R.id.tv_cancel, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.tv_apply, 4);
        sparseIntArray.put(C10651R.id.enabled_list, 5);
        sparseIntArray.put(C10651R.id.disabled_list, 6);
        sparseIntArray.put(C10651R.id.tv_reset_config, 7);
    }

    public PopupShapeToolbarCustomBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57828u0, f57829v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57831t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57831t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57831t0 = 1L;
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

    public PopupShapeToolbarCustomBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintRecycleView) objArr[6], (TintRecycleView) objArr[5], (TintLinearLayout) objArr[1], (MediumTextView) objArr[4], (TintTextView) objArr[2], (TintTextView) objArr[7], (MediumTextView) objArr[3]);
        this.f57831t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57830q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
