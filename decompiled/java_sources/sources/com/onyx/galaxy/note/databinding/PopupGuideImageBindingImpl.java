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
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupGuideImageBindingImpl extends PopupGuideImageBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57635u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57636v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57637q0;

    /* renamed from: t0 */
    public long f57638t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57636v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.dialogRoot, 1);
        sparseIntArray.put(C10651R.id.titleText, 2);
        sparseIntArray.put(C10651R.id.closeButton, 3);
        sparseIntArray.put(C10651R.id.image, 4);
        sparseIntArray.put(C10651R.id.confirmButton, 5);
    }

    public PopupGuideImageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57635u0, f57636v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57638t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57638t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57638t0 = 1L;
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

    public PopupGuideImageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[3], (TextView) objArr[5], (TintLinearLayout) objArr[1], (ImageView) objArr[4], (TintTextView) objArr[2]);
        this.f57638t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57637q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
