package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.canhub.cropper.CropImageView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentImageCropBindingImpl extends FragmentImageCropBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56690t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56691u0;

    /* renamed from: q0 */
    public long f56692q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56691u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 1);
        sparseIntArray.put(C10651R.id.back_button, 2);
        sparseIntArray.put(C10651R.id.title_text, 3);
        sparseIntArray.put(C10651R.id.finishButton, 4);
        sparseIntArray.put(C10651R.id.cropImageView, 5);
    }

    public FragmentImageCropBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56690t0, f56691u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56692q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56692q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56692q0 = 1L;
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

    public FragmentImageCropBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[2], (CropImageView) objArr[5], (TextView) objArr[4], (LinearLayout) objArr[0], (FrameLayout) objArr[1], (TextView) objArr[3]);
        this.f56692q0 = -1L;
        this.rootLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
