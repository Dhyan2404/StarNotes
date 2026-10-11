package com.onyx.android.sdk.p039ui.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public class DialogCommonBindingImpl extends DialogCommonBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f47186u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f47187v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f47188q0;

    /* renamed from: t0 */
    public long f47189t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f47187v0 = sparseIntArray;
        sparseIntArray.put(C8037R.id.loading_container, 1);
        sparseIntArray.put(C8037R.id.iv_loading_anim, 2);
        sparseIntArray.put(C8037R.id.tv_progress, 3);
        sparseIntArray.put(C8037R.id.text_container, 4);
        sparseIntArray.put(C8037R.id.tv_title_container, 5);
        sparseIntArray.put(C8037R.id.iv_warning, 6);
        sparseIntArray.put(C8037R.id.tv_title, 7);
        sparseIntArray.put(C8037R.id.content_container, 8);
        sparseIntArray.put(C8037R.id.tv_content, 9);
        sparseIntArray.put(C8037R.id.cl_edit_container, 10);
        sparseIntArray.put(C8037R.id.tv_edit_length_display, 11);
        sparseIntArray.put(C8037R.id.til_name, 12);
        sparseIntArray.put(C8037R.id.edit_text, 13);
        sparseIntArray.put(C8037R.id.tv_cancel, 14);
        sparseIntArray.put(C8037R.id.tv_confirm, 15);
    }

    public DialogCommonBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 16, f47186u0, f47187v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f47189t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f47189t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f47189t0 = 1L;
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

    public DialogCommonBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[10], (LinearLayout) objArr[8], (MaxLengthInputTextEdit) objArr[13], (ImageView) objArr[2], (TintImageView) objArr[6], (LinearLayout) objArr[1], (TintLinearLayout) objArr[4], (TintTextInputLayoutView) objArr[12], (MediumTextView) objArr[14], (MediumTextView) objArr[15], (TintTextView) objArr[9], (TintTextView) objArr[11], (TextView) objArr[3], (MediumTextView) objArr[7], (LinearLayout) objArr[5]);
        this.f47189t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f47188q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
