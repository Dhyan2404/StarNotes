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
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyPhoneViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutAccountVerifyPhoneBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView areaCodeText;

    @Bindable
    protected AccountVerifyPhoneViewModel mPhoneViewModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintEditText phoneEdit;

    @NonNull
    public final TintLinearLayout phoneLayout;

    @NonNull
    public final TintEditText verificationCodeEdit;

    @NonNull
    public final TintTextView verifyCodeButton;

    public LayoutAccountVerifyPhoneBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintEditText tintEditText, TintLinearLayout tintLinearLayout, TintEditText tintEditText2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.areaCodeText = tintTextView;
        this.nextButton = tintTextView2;
        this.phoneEdit = tintEditText;
        this.phoneLayout = tintLinearLayout;
        this.verificationCodeEdit = tintEditText2;
        this.verifyCodeButton = tintTextView3;
    }

    public static LayoutAccountVerifyPhoneBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutAccountVerifyPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AccountVerifyPhoneViewModel getPhoneViewModel() {
        return this.mPhoneViewModel;
    }

    public abstract void setPhoneViewModel(@Nullable AccountVerifyPhoneViewModel accountVerifyPhoneViewModel);

    @Deprecated
    public static LayoutAccountVerifyPhoneBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutAccountVerifyPhoneBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_account_verify_phone);
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutAccountVerifyPhoneBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_phone, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutAccountVerifyPhoneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutAccountVerifyPhoneBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_phone, null, false, obj);
    }
}
