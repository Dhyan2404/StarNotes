package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.viewmodel.LoginViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentLoginBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView btnBack;

    @NonNull
    public final TintTextView btnForgetPassword;

    @NonNull
    public final TintTextView btnLogin;

    @NonNull
    public final TintImageView btnTogglePwdVisible;

    @NonNull
    public final TintTextView btnVerificationCode;

    @NonNull
    public final TintCheckBox cbPolicy;

    @NonNull
    public final TintTextView edtAreaCode;

    @NonNull
    public final TintEditText edtPhoneOrEmail;

    @NonNull
    public final ImageView imageView;

    @NonNull
    public final TintImageView ivAreaCodeArrow;

    @NonNull
    public final TintTextView ivLoginEmail;

    @NonNull
    public final TintTextView ivLoginPhone;

    @NonNull
    public final ConstraintLayout llLogins;

    @NonNull
    public final TintConstraintLayout loginContentContainer;

    @Bindable
    protected LoginViewModel mViewModel;

    @NonNull
    public final NestedScrollView scrollView;

    @NonNull
    public final TintTextView textView;

    @NonNull
    public final TintEditText tiePwdOrVerification;

    @NonNull
    public final TintTextInputLayoutView tilPwdOrVerification;

    @NonNull
    public final TintTextView tvAreaCodeMark;

    @NonNull
    public final TintTextView tvLoginAccount;

    @NonNull
    public final TintTextView tvLoginGoogle;

    @NonNull
    public final TintTextView tvLoginHuawei;

    @NonNull
    public final TintTextView tvLoginMicrosoft;

    @NonNull
    public final TintTextView tvLoginType;

    @NonNull
    public final TintTextView tvLoginTypeHint;

    @NonNull
    public final TintTextView tvLoginWechat;

    @NonNull
    public final TintView vDivider;

    @NonNull
    public final TintView vEdtBg;

    @NonNull
    public final View view;

    @NonNull
    public final View view2;

    @NonNull
    public final TintView view3;

    @NonNull
    public final TintView view4;

    public FragmentLoginBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintTextView tintTextView2, TintImageView tintImageView2, TintTextView tintTextView3, TintCheckBox tintCheckBox, TintTextView tintTextView4, TintEditText tintEditText, ImageView imageView, TintImageView tintImageView3, TintTextView tintTextView5, TintTextView tintTextView6, ConstraintLayout constraintLayout, TintConstraintLayout tintConstraintLayout, NestedScrollView nestedScrollView, TintTextView tintTextView7, TintEditText tintEditText2, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView8, TintTextView tintTextView9, TintTextView tintTextView10, TintTextView tintTextView11, TintTextView tintTextView12, TintTextView tintTextView13, TintTextView tintTextView14, TintTextView tintTextView15, TintView tintView, TintView tintView2, View view2, View view3, TintView tintView3, TintView tintView4) {
        super(obj, view, i);
        this.btnBack = tintImageView;
        this.btnForgetPassword = tintTextView;
        this.btnLogin = tintTextView2;
        this.btnTogglePwdVisible = tintImageView2;
        this.btnVerificationCode = tintTextView3;
        this.cbPolicy = tintCheckBox;
        this.edtAreaCode = tintTextView4;
        this.edtPhoneOrEmail = tintEditText;
        this.imageView = imageView;
        this.ivAreaCodeArrow = tintImageView3;
        this.ivLoginEmail = tintTextView5;
        this.ivLoginPhone = tintTextView6;
        this.llLogins = constraintLayout;
        this.loginContentContainer = tintConstraintLayout;
        this.scrollView = nestedScrollView;
        this.textView = tintTextView7;
        this.tiePwdOrVerification = tintEditText2;
        this.tilPwdOrVerification = tintTextInputLayoutView;
        this.tvAreaCodeMark = tintTextView8;
        this.tvLoginAccount = tintTextView9;
        this.tvLoginGoogle = tintTextView10;
        this.tvLoginHuawei = tintTextView11;
        this.tvLoginMicrosoft = tintTextView12;
        this.tvLoginType = tintTextView13;
        this.tvLoginTypeHint = tintTextView14;
        this.tvLoginWechat = tintTextView15;
        this.vDivider = tintView;
        this.vEdtBg = tintView2;
        this.view = view2;
        this.view2 = view3;
        this.view3 = tintView3;
        this.view4 = tintView4;
    }

    public static FragmentLoginBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public LoginViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable LoginViewModel loginViewModel);

    @Deprecated
    public static FragmentLoginBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentLoginBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_login);
    }

    @NonNull
    @Deprecated
    public static FragmentLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentLoginBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_login, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentLoginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentLoginBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_login, null, false, obj);
    }
}
