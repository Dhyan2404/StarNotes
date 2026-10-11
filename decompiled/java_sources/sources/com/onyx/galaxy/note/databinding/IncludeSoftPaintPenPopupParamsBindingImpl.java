package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;

/* loaded from: classes9.dex */
public class IncludeSoftPaintPenPopupParamsBindingImpl extends IncludeSoftPaintPenPopupParamsBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56922u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56923v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f56924q0;

    /* renamed from: t0 */
    public long f56925t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56923v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 1);
    }

    public IncludeSoftPaintPenPopupParamsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f56922u0, f56923v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56925t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56925t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56925t0 = 1L;
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

    public IncludeSoftPaintPenPopupParamsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StickSeekBarContainer) objArr[1]);
        this.f56925t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f56924q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
