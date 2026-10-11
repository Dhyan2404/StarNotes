package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.SpannableTextView;
import com.onyx.galaxy.note.usercenter.viewmodel.PasswordResetViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentPasswordResetBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView backButton;

    @NonNull
    public final TintEditText confirmPasswordEdit;

    @NonNull
    public final SpannableTextView errorText;

    @NonNull
    public final TintTextView headerText;

    @Bindable
    protected PasswordResetViewModel mPasswordViewModel;

    @NonNull
    public final TintEditText newPasswordEdit;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintConstraintLayout rootLayout;

    @NonNull
    public final TintImageView showConfirmPasswordButton;

    @NonNull
    public final TintImageView showNewPasswordButton;

    @NonNull
    public final SpannableTextView tipText;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TintTextView titleText;

    @NonNull
    public final ConstraintLayout verifyLayout;

    public FragmentPasswordResetBinding(Object obj, View view, int i, TintImageView tintImageView, TintEditText tintEditText, SpannableTextView spannableTextView, TintTextView tintTextView, TintEditText tintEditText2, TintTextView tintTextView2, TintConstraintLayout tintConstraintLayout, TintImageView tintImageView2, TintImageView tintImageView3, SpannableTextView spannableTextView2, FrameLayout frameLayout, TintTextView tintTextView3, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.backButton = tintImageView;
        this.confirmPasswordEdit = tintEditText;
        this.errorText = spannableTextView;
        this.headerText = tintTextView;
        this.newPasswordEdit = tintEditText2;
        this.nextButton = tintTextView2;
        this.rootLayout = tintConstraintLayout;
        this.showConfirmPasswordButton = tintImageView2;
        this.showNewPasswordButton = tintImageView3;
        this.tipText = spannableTextView2;
        this.titleBar = frameLayout;
        this.titleText = tintTextView3;
        this.verifyLayout = constraintLayout;
    }

    public static FragmentPasswordResetBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentPasswordResetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public PasswordResetViewModel getPasswordViewModel() {
        return this.mPasswordViewModel;
    }

    public abstract void setPasswordViewModel(@Nullable PasswordResetViewModel passwordResetViewModel);

    @Deprecated
    public static FragmentPasswordResetBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentPasswordResetBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_password_reset);
    }

    @NonNull
    @Deprecated
    public static FragmentPasswordResetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentPasswordResetBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_password_reset, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentPasswordResetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentPasswordResetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentPasswordResetBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_password_reset, null, false, obj);
    }
}
