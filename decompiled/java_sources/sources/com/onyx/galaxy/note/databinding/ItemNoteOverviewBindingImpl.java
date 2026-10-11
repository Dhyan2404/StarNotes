package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemNoteOverviewBindingImpl extends ItemNoteOverviewBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57094u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57095v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f57096q0;

    /* renamed from: t0 */
    public long f57097t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57095v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.cl_thumbnail, 1);
        sparseIntArray.put(C10651R.id.note_thumbnail_bottom_shadow, 2);
        sparseIntArray.put(C10651R.id.iv_thumbnail, 3);
        sparseIntArray.put(C10651R.id.iv_thumbnail_lock, 4);
        sparseIntArray.put(C10651R.id.v_note_thumbnail_broder, 5);
        sparseIntArray.put(C10651R.id.note_thumbnail_shadow, 6);
        sparseIntArray.put(C10651R.id.tv_name, 7);
        sparseIntArray.put(C10651R.id.tv_date, 8);
        sparseIntArray.put(C10651R.id.iv_more, 9);
    }

    public ItemNoteOverviewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f57094u0, f57095v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57097t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57097t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57097t0 = 1L;
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

    public ItemNoteOverviewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[1], (TintImageView) objArr[9], (ShapeableImageView) objArr[3], (ShapeableImageView) objArr[4], (View) objArr[2], (View) objArr[6], (TintTextView) objArr[8], (TintTextView) objArr[7], (TintView) objArr[5]);
        this.f57097t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f57096q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
