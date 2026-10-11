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
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPasswordViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutAccountVerifyPasswordBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView hidePasswordButton;

    @Bindable
    protected AccountVerifyPasswordViewModel mPasswordViewModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintEditText passwordEdit;

    @NonNull
    public final TintEditText usernameEdit;

    public LayoutAccountVerifyPasswordBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintEditText tintEditText, TintEditText tintEditText2) {
        super(obj, view, i);
        this.hidePasswordButton = tintImageView;
        this.nextButton = tintTextView;
        this.passwordEdit = tintEditText;
        this.usernameEdit = tintEditText2;
    }

    public static LayoutAccountVerifyPasswordBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutAccountVerifyPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AccountVerifyPasswordViewModel getPasswordViewModel() {
        return this.mPasswordViewModel;
    }

    public abstract void setPasswordViewModel(@Nullable AccountVerifyPasswordViewModel accountVerifyPasswordViewModel);

    @Deprecated
    public static LayoutAccountVerifyPasswordBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutAccountVerifyPasswordBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_account_verify_password);
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutAccountVerifyPasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_password, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutAccountVerifyPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutAccountVerifyPasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_password, null, false, obj);
    }
}
