package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentPhoneVerifyBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView backButton;

    @Bindable
    protected VerifyCodeViewModel mVerifyCodeViewModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintEditText phoneEdit;

    @NonNull
    public final ConstraintLayout rootLayout;

    @NonNull
    public final TintTabLayoutView tabLayout;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TintTextView titleText;

    @NonNull
    public final TintTextView verifyCodeButton;

    @NonNull
    public final TintEditText verifyCodeEdit;

    @NonNull
    public final LinearLayout verifyLayout;

    public FragmentPhoneVerifyBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintEditText tintEditText, ConstraintLayout constraintLayout, TintTabLayoutView tintTabLayoutView, FrameLayout frameLayout, TintTextView tintTextView2, TintTextView tintTextView3, TintEditText tintEditText2, LinearLayout linearLayout) {
        super(obj, view, i);
        this.backButton = tintImageView;
        this.nextButton = tintTextView;
        this.phoneEdit = tintEditText;
        this.rootLayout = constraintLayout;
        this.tabLayout = tintTabLayoutView;
        this.titleBar = frameLayout;
        this.titleText = tintTextView2;
        this.verifyCodeButton = tintTextView3;
        this.verifyCodeEdit = tintEditText2;
        this.verifyLayout = linearLayout;
    }

    public static FragmentPhoneVerifyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentPhoneVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VerifyCodeViewModel getVerifyCodeViewModel() {
        return this.mVerifyCodeViewModel;
    }

    public abstract void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel);

    @Deprecated
    public static FragmentPhoneVerifyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentPhoneVerifyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_phone_verify);
    }

    @NonNull
    @Deprecated
    public static FragmentPhoneVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentPhoneVerifyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_phone_verify, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentPhoneVerifyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentPhoneVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentPhoneVerifyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_phone_verify, null, false, obj);
    }
}
