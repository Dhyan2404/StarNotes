package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentVerifyMethodBindingImpl extends FragmentVerifyMethodBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56891t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56892u0;

    /* renamed from: q0 */
    public long f56893q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56892u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 1);
        sparseIntArray.put(C10651R.id.back_button, 2);
        sparseIntArray.put(C10651R.id.title_text, 3);
        sparseIntArray.put(C10651R.id.method_layout, 4);
        sparseIntArray.put(C10651R.id.password_layout, 5);
        sparseIntArray.put(C10651R.id.password_text, 6);
        sparseIntArray.put(C10651R.id.password_image, 7);
        sparseIntArray.put(C10651R.id.phone_layout, 8);
        sparseIntArray.put(C10651R.id.phone_text, 9);
        sparseIntArray.put(C10651R.id.phone_image, 10);
        sparseIntArray.put(C10651R.id.email_layout, 11);
        sparseIntArray.put(C10651R.id.email_text, 12);
        sparseIntArray.put(C10651R.id.email_image, 13);
        sparseIntArray.put(C10651R.id.wechat_layout, 14);
        sparseIntArray.put(C10651R.id.wechat_text, 15);
        sparseIntArray.put(C10651R.id.wechat_image, 16);
        sparseIntArray.put(C10651R.id.huawei_layout, 17);
        sparseIntArray.put(C10651R.id.huawei_text, 18);
        sparseIntArray.put(C10651R.id.huawei_image, 19);
        sparseIntArray.put(C10651R.id.next_button, 20);
    }

    public FragmentVerifyMethodBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 21, f56891t0, f56892u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56893q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56893q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56893q0 = 1L;
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

    public FragmentVerifyMethodBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[2], (TintImageView) objArr[13], (TintLinearLayout) objArr[11], (TintTextView) objArr[12], (TintImageView) objArr[19], (TintLinearLayout) objArr[17], (TintTextView) objArr[18], (TintLinearLayout) objArr[4], (TintTextView) objArr[20], (TintImageView) objArr[7], (TintLinearLayout) objArr[5], (TintTextView) objArr[6], (TintImageView) objArr[10], (TintLinearLayout) objArr[8], (TintTextView) objArr[9], (TintConstraintLayout) objArr[0], (FrameLayout) objArr[1], (TintTextView) objArr[3], (TintImageView) objArr[16], (TintLinearLayout) objArr[14], (TintTextView) objArr[15]);
        this.f56893q0 = -1L;
        this.rootLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
