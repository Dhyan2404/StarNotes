package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class EditorViewLockLayoutBindingImpl extends EditorViewLockLayoutBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56575t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56576u0;

    /* renamed from: q0 */
    public long f56577q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56576u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.cls_lock_root, 1);
        sparseIntArray.put(C10651R.id.tintImageView, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.til_name, 4);
        sparseIntArray.put(C10651R.id.tie_name, 5);
        sparseIntArray.put(C10651R.id.btn_toggle_pwd_visible, 6);
        sparseIntArray.put(C10651R.id.tv_forget, 7);
        sparseIntArray.put(C10651R.id.btn_ok, 8);
        sparseIntArray.put(C10651R.id.tv_finger, 9);
    }

    public EditorViewLockLayoutBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56575t0, f56576u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56577q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56577q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56577q0 = 1L;
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

    public EditorViewLockLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[8], (TintImageView) objArr[6], (TintConstraintLayout) objArr[1], (MaxLengthInputTextEdit) objArr[5], (TintTextInputLayoutView) objArr[4], (TintImageView) objArr[2], (TintTextView) objArr[9], (TintTextView) objArr[7], (MediumTextView) objArr[3], (TintFrameLayout) objArr[0]);
        this.f56577q0 = -1L;
        this.vBg.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
