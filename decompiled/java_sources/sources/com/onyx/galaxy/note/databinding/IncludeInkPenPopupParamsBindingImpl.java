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
public class IncludeInkPenPopupParamsBindingImpl extends IncludeInkPenPopupParamsBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56909u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56910v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f56911q0;

    /* renamed from: t0 */
    public long f56912t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56910v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.seek_bar_nib, 1);
        sparseIntArray.put(C10651R.id.seek_bar_pressure, 2);
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 3);
        sparseIntArray.put(C10651R.id.seek_bar_smooth, 4);
        sparseIntArray.put(C10651R.id.seek_bar_velocity_amplifier, 5);
        sparseIntArray.put(C10651R.id.seek_bar_velocity_ignore_threshold, 6);
        sparseIntArray.put(C10651R.id.seek_bar_velocity_lower_bound, 7);
        sparseIntArray.put(C10651R.id.seek_bar_velocity_upper_bound, 8);
        sparseIntArray.put(C10651R.id.seek_bar_velocity, 9);
    }

    public IncludeInkPenPopupParamsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56909u0, f56910v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56912t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56912t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56912t0 = 1L;
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

    public IncludeInkPenPopupParamsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StickSeekBarContainer) objArr[1], (StickSeekBarContainer) objArr[2], (StickSeekBarContainer) objArr[4], (StickSeekBarContainer) objArr[3], (StickSeekBarContainer) objArr[9], (StickSeekBarContainer) objArr[5], (StickSeekBarContainer) objArr[6], (StickSeekBarContainer) objArr[7], (StickSeekBarContainer) objArr[8]);
        this.f56912t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f56911q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
