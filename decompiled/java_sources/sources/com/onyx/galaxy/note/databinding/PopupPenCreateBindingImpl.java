package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupPenCreateBindingImpl extends PopupPenCreateBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57767u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57768v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57769q0;

    /* renamed from: t0 */
    public long f57770t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57768v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_back, 1);
        sparseIntArray.put(C10651R.id.tv_title, 2);
        sparseIntArray.put(C10651R.id.tv_name_size, 3);
        sparseIntArray.put(C10651R.id.cl_edit_container, 4);
        sparseIntArray.put(C10651R.id.til_name, 5);
        sparseIntArray.put(C10651R.id.edit_text, 6);
        sparseIntArray.put(C10651R.id.tv_confirm, 7);
    }

    public PopupPenCreateBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57767u0, f57768v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57770t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57770t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57770t0 = 1L;
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

    public PopupPenCreateBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[4], (MaxLengthInputTextEdit) objArr[6], (TintImageView) objArr[1], (TintTextInputLayoutView) objArr[5], (TintTextView) objArr[7], (TintTextView) objArr[3], (MediumTextView) objArr[2]);
        this.f57770t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57769q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
