package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutScreenCaptureBindingImpl extends LayoutScreenCaptureBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57444u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57445v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57446q0;

    /* renamed from: t0 */
    public long f57447t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57445v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.buttonGroup, 1);
        sparseIntArray.put(C10651R.id.btn_cancel, 2);
        sparseIntArray.put(C10651R.id.btn_ok, 3);
        sparseIntArray.put(C10651R.id.shot_container, 4);
        sparseIntArray.put(C10651R.id.shot_view, 5);
        sparseIntArray.put(C10651R.id.left_top_handle, 6);
        sparseIntArray.put(C10651R.id.right_top_handle, 7);
        sparseIntArray.put(C10651R.id.top_handle, 8);
        sparseIntArray.put(C10651R.id.bottom_handle, 9);
        sparseIntArray.put(C10651R.id.left_handle, 10);
        sparseIntArray.put(C10651R.id.right_handle, 11);
        sparseIntArray.put(C10651R.id.left_bottom_handle, 12);
        sparseIntArray.put(C10651R.id.right_bottom_handle, 13);
    }

    public LayoutScreenCaptureBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f57444u0, f57445v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57447t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57447t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57447t0 = 1L;
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

    public LayoutScreenCaptureBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatImageView) objArr[9], (AppCompatImageView) objArr[2], (AppCompatImageView) objArr[3], (LinearLayout) objArr[1], (AppCompatImageView) objArr[12], (AppCompatImageView) objArr[10], (AppCompatImageView) objArr[6], (AppCompatImageView) objArr[13], (AppCompatImageView) objArr[11], (AppCompatImageView) objArr[7], (ConstraintLayout) objArr[4], (View) objArr[5], (AppCompatImageView) objArr[8]);
        this.f57447t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57446q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
