package com.onyx.android.sdk.cloudstorage.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.cloudstorage.C7153R;

/* loaded from: classes7.dex */
public class CustomDialogWebdavAuthBindingImpl extends CustomDialogWebdavAuthBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f41105u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f41106v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f41107q0;

    /* renamed from: t0 */
    public long f41108t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41106v0 = sparseIntArray;
        sparseIntArray.put(C7153R.id.title_back, 1);
        sparseIntArray.put(C7153R.id.content_view, 2);
        sparseIntArray.put(C7153R.id.url_edit, 3);
        sparseIntArray.put(C7153R.id.account, 4);
        sparseIntArray.put(C7153R.id.password, 5);
        sparseIntArray.put(C7153R.id.button_negative, 6);
        sparseIntArray.put(C7153R.id.button_positive, 7);
        sparseIntArray.put(C7153R.id.tv_tip, 8);
    }

    public CustomDialogWebdavAuthBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f41105u0, f41106v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f41108t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41108t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41108t0 = 1L;
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

    public CustomDialogWebdavAuthBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (EditText) objArr[4], (Button) objArr[6], (Button) objArr[7], (LinearLayout) objArr[2], (EditText) objArr[5], (TextView) objArr[1], (TextView) objArr[8], (EditText) objArr[3]);
        this.f41108t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f41107q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
