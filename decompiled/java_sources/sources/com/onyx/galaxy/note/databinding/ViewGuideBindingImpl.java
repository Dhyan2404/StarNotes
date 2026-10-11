package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.RippleAnimView;

/* loaded from: classes9.dex */
public class ViewGuideBindingImpl extends ViewGuideBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57940u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57941v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57942q0;

    /* renamed from: t0 */
    public long f57943t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57941v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.indicator_left, 1);
        sparseIntArray.put(C10651R.id.ripple_left, 2);
        sparseIntArray.put(C10651R.id.circle_left, 3);
        sparseIntArray.put(C10651R.id.indicator_top, 4);
        sparseIntArray.put(C10651R.id.ripple_top, 5);
        sparseIntArray.put(C10651R.id.circle_top, 6);
        sparseIntArray.put(C10651R.id.indicator_right, 7);
        sparseIntArray.put(C10651R.id.ripple_right, 8);
        sparseIntArray.put(C10651R.id.line_right, 9);
        sparseIntArray.put(C10651R.id.circle_right, 10);
        sparseIntArray.put(C10651R.id.indicator_bottom, 11);
        sparseIntArray.put(C10651R.id.ripple_bottom, 12);
        sparseIntArray.put(C10651R.id.line_bottom, 13);
        sparseIntArray.put(C10651R.id.circle_bottom, 14);
        sparseIntArray.put(C10651R.id.iv_style_03, 15);
        sparseIntArray.put(C10651R.id.tips_content, 16);
        sparseIntArray.put(C10651R.id.tv_content, 17);
        sparseIntArray.put(C10651R.id.iv_style_01, 18);
        sparseIntArray.put(C10651R.id.iv_style_02, 19);
    }

    public ViewGuideBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 20, f57940u0, f57941v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57943t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57943t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57943t0 = 1L;
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

    public ViewGuideBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[14], (View) objArr[3], (View) objArr[10], (View) objArr[6], (ConstraintLayout) objArr[11], (ConstraintLayout) objArr[1], (ConstraintLayout) objArr[7], (ConstraintLayout) objArr[4], (ImageView) objArr[18], (ImageView) objArr[19], (ImageView) objArr[15], (View) objArr[13], (View) objArr[9], (RippleAnimView) objArr[12], (RippleAnimView) objArr[2], (RippleAnimView) objArr[8], (RippleAnimView) objArr[5], (ConstraintLayout) objArr[16], (TextView) objArr[17]);
        this.f57943t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57942q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
