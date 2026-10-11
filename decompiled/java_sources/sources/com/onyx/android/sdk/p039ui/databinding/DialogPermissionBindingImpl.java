package com.onyx.android.sdk.p039ui.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public class DialogPermissionBindingImpl extends DialogPermissionBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f47198u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f47199v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f47200q0;

    /* renamed from: t0 */
    public long f47201t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47199v0 = sparseIntArray;
        sparseIntArray.put(C8037R.id.title_container, 1);
        sparseIntArray.put(C8037R.id.iv_warning, 2);
        sparseIntArray.put(C8037R.id.tv_title, 3);
        sparseIntArray.put(C8037R.id.iv_close, 4);
        sparseIntArray.put(C8037R.id.tv_message, 5);
        sparseIntArray.put(C8037R.id.tv_confirm, 6);
    }

    public DialogPermissionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f47198u0, f47199v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f47201t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47201t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47201t0 = 1L;
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

    public DialogPermissionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[4], (TintImageView) objArr[2], (LinearLayout) objArr[1], (TintTextView) objArr[6], (TintTextView) objArr[5], (MediumTextView) objArr[3]);
        this.f47201t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f47200q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
