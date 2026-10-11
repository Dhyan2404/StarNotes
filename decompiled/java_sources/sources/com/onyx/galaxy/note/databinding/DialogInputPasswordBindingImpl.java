package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogInputPasswordBindingImpl extends DialogInputPasswordBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56415u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56416v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56417q0;

    /* renamed from: t0 */
    public long f56418t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56416v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_cancel, 1);
        sparseIntArray.put(C10651R.id.tv_title, 2);
        sparseIntArray.put(C10651R.id.tv_confirm, 3);
        sparseIntArray.put(C10651R.id.tv_file_name, 4);
        sparseIntArray.put(C10651R.id.edt_file_password, 5);
        sparseIntArray.put(C10651R.id.iv_file_password_toggle, 6);
        sparseIntArray.put(C10651R.id.tv_error_tip, 7);
    }

    public DialogInputPasswordBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56415u0, f56416v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56418t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56418t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56418t0 = 1L;
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

    public DialogInputPasswordBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintEditText) objArr[5], (TintImageView) objArr[6], (TintTextView) objArr[1], (MediumTextView) objArr[3], (TintTextView) objArr[7], (TintTextView) objArr[4], (MediumTextView) objArr[2]);
        this.f56418t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56417q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
