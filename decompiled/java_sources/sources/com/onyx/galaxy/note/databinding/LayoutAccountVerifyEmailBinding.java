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
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyEmailViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutAccountVerifyEmailBinding extends ViewDataBinding {

    @NonNull
    public final TintEditText emailEdit;

    @Bindable
    protected AccountVerifyEmailViewModel mEmailViewModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintEditText verificationCodeEdit;

    @NonNull
    public final TintTextView verifyCodeButton;

    public LayoutAccountVerifyEmailBinding(Object obj, View view, int i, TintEditText tintEditText, TintTextView tintTextView, TintEditText tintEditText2, TintTextView tintTextView2) {
        super(obj, view, i);
        this.emailEdit = tintEditText;
        this.nextButton = tintTextView;
        this.verificationCodeEdit = tintEditText2;
        this.verifyCodeButton = tintTextView2;
    }

    public static LayoutAccountVerifyEmailBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutAccountVerifyEmailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AccountVerifyEmailViewModel getEmailViewModel() {
        return this.mEmailViewModel;
    }

    public abstract void setEmailViewModel(@Nullable AccountVerifyEmailViewModel accountVerifyEmailViewModel);

    @Deprecated
    public static LayoutAccountVerifyEmailBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutAccountVerifyEmailBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_account_verify_email);
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyEmailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutAccountVerifyEmailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_email, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutAccountVerifyEmailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyEmailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutAccountVerifyEmailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_email, null, false, obj);
    }
}
