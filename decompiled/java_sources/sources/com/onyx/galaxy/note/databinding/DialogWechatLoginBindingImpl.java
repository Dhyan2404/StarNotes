package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;

/* loaded from: classes9.dex */
public class DialogWechatLoginBindingImpl extends DialogWechatLoginBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56559u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56560v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56561q0;

    /* renamed from: t0 */
    public long f56562t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56560v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.webLoadWidget, 1);
        sparseIntArray.put(C10651R.id.tv_dialog_title, 2);
        sparseIntArray.put(C10651R.id.btn_back, 3);
        sparseIntArray.put(C10651R.id.iv_qr, 4);
        sparseIntArray.put(C10651R.id.textView3, 5);
        sparseIntArray.put(C10651R.id.textView13, 6);
        sparseIntArray.put(C10651R.id.textView, 7);
        sparseIntArray.put(C10651R.id.btn_app_login, 8);
    }

    public DialogWechatLoginBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56559u0, f56560v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56562t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56562t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56562t0 = 1L;
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

    public DialogWechatLoginBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[8], (TintImageView) objArr[3], (ShapeableImageView) objArr[4], (TintTextView) objArr[7], (TintTextView) objArr[6], (TintTextView) objArr[5], (TintTextView) objArr[2], (WechatLoadWebWidget) objArr[1]);
        this.f56562t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56561q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
