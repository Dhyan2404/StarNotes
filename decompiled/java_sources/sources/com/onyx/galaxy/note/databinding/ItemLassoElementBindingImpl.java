package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemLassoElementBindingImpl extends ItemLassoElementBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57053u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57054v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57055q0;

    /* renamed from: t0 */
    public long f57056t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57054v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.iv_select, 2);
    }

    public ItemLassoElementBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57053u0, f57054v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57056t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57056t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57056t0 = 1L;
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

    public ItemLassoElementBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintSwitchCompat) objArr[2], (TintTextView) objArr[1]);
        this.f57056t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57055q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
