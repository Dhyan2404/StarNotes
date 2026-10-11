package com.onyx.android.sdk.p039ui.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public class DialogDoubleOptionBindingImpl extends DialogDoubleOptionBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f47190u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f47191v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f47192q0;

    /* renamed from: t0 */
    public long f47193t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47191v0 = sparseIntArray;
        sparseIntArray.put(C8037R.id.titleLayout, 1);
        sparseIntArray.put(C8037R.id.titleText, 2);
        sparseIntArray.put(C8037R.id.titleIconView, 3);
        sparseIntArray.put(C8037R.id.closeButton, 4);
        sparseIntArray.put(C8037R.id.image, 5);
        sparseIntArray.put(C8037R.id.messageText, 6);
        sparseIntArray.put(C8037R.id.optionButtonLeft, 7);
        sparseIntArray.put(C8037R.id.buttonPaddingView, 8);
        sparseIntArray.put(C8037R.id.optionButtonRight, 9);
    }

    public DialogDoubleOptionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f47190u0, f47191v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f47193t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47193t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47193t0 = 1L;
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

    public DialogDoubleOptionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (View) objArr[8], (TintImageView) objArr[4], (ImageView) objArr[5], (TintTextView) objArr[6], (TintTextView) objArr[7], (TintTextView) objArr[9], (ImageView) objArr[3], (ConstraintLayout) objArr[1], (TintTextView) objArr[2]);
        this.f47193t0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f47192q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
