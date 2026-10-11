package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutEmailVerifyItemBinding extends ViewDataBinding {

    @NonNull
    public final TintEditText emailEdit;

    @Bindable
    protected VerifyCodeViewModel mModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintTextView verifyCodeButton;

    @NonNull
    public final TintEditText verifyCodeEdit;

    public LayoutEmailVerifyItemBinding(Object obj, View view, int i, TintEditText tintEditText, TintTextView tintTextView, TintTextView tintTextView2, TintEditText tintEditText2) {
        super(obj, view, i);
        this.emailEdit = tintEditText;
        this.nextButton = tintTextView;
        this.verifyCodeButton = tintTextView2;
        this.verifyCodeEdit = tintEditText2;
    }

    public static LayoutEmailVerifyItemBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutEmailVerifyItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VerifyCodeViewModel getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable VerifyCodeViewModel verifyCodeViewModel);

    @Deprecated
    public static LayoutEmailVerifyItemBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutEmailVerifyItemBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_email_verify_item);
    }

    @NonNull
    @Deprecated
    public static LayoutEmailVerifyItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutEmailVerifyItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_email_verify_item, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutEmailVerifyItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutEmailVerifyItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutEmailVerifyItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_email_verify_item, null, false, obj);
    }
}
