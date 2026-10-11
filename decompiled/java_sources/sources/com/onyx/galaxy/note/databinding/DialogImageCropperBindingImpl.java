package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.canhub.cropper.CropImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.FreeCropImageView;

/* loaded from: classes9.dex */
public class DialogImageCropperBindingImpl extends DialogImageCropperBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56399u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56400v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56401q0;

    /* renamed from: t0 */
    public long f56402t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56400v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.f53354rl, 1);
        sparseIntArray.put(C10651R.id.title_layout, 2);
        sparseIntArray.put(C10651R.id.btn_cancel, 3);
        sparseIntArray.put(C10651R.id.radio_group, 4);
        sparseIntArray.put(C10651R.id.rect_crop, 5);
        sparseIntArray.put(C10651R.id.free_crop, 6);
        sparseIntArray.put(C10651R.id.finish, 7);
        sparseIntArray.put(C10651R.id.image_container, 8);
        sparseIntArray.put(C10651R.id.rect_crop_View, 9);
        sparseIntArray.put(C10651R.id.free_crop_View, 10);
    }

    public DialogImageCropperBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56399u0, f56400v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56402t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56402t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56402t0 = 1L;
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

    public DialogImageCropperBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[3], (TintTextView) objArr[7], (TintRadioButton) objArr[6], (FreeCropImageView) objArr[10], (TintRelativeLayout) objArr[8], (RadioGroup) objArr[4], (TintRadioButton) objArr[5], (CropImageView) objArr[9], (TintLinearLayout) objArr[1], (RelativeLayout) objArr[2]);
        this.f56402t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56401q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
