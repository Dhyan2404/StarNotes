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
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentBindPhoneBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView areaCodeSelector;

    @NonNull
    public final TintTextView areaCodeText;

    @NonNull
    public final TintImageView backButton;

    @NonNull
    public final TintImageView clearButton;

    @NonNull
    public final TintTextView headerTipText;

    @NonNull
    public final TintTextView headerTitleText;

    @Bindable
    protected VerifyCodeViewModel mVerifyCodeViewModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintEditText phoneEdit;

    @NonNull
    public final ConstraintLayout rootLayout;

    @NonNull
    public final TintTextView skipButton;

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

    public FragmentBindPhoneBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintImageView tintImageView2, TintImageView tintImageView3, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintEditText tintEditText, ConstraintLayout constraintLayout, TintTextView tintTextView5, FrameLayout frameLayout, TintTextView tintTextView6, TintTextView tintTextView7, TintEditText tintEditText2, LinearLayout linearLayout) {
        super(obj, view, i);
        this.areaCodeSelector = tintImageView;
        this.areaCodeText = tintTextView;
        this.backButton = tintImageView2;
        this.clearButton = tintImageView3;
        this.headerTipText = tintTextView2;
        this.headerTitleText = tintTextView3;
        this.nextButton = tintTextView4;
        this.phoneEdit = tintEditText;
        this.rootLayout = constraintLayout;
        this.skipButton = tintTextView5;
        this.titleBar = frameLayout;
        this.titleText = tintTextView6;
        this.verifyCodeButton = tintTextView7;
        this.verifyCodeEdit = tintEditText2;
        this.verifyLayout = linearLayout;
    }

    public static FragmentBindPhoneBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentBindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VerifyCodeViewModel getVerifyCodeViewModel() {
        return this.mVerifyCodeViewModel;
    }

    public abstract void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel);

    @Deprecated
    public static FragmentBindPhoneBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentBindPhoneBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_bind_phone);
    }

    @NonNull
    @Deprecated
    public static FragmentBindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentBindPhoneBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_bind_phone, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentBindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentBindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentBindPhoneBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_bind_phone, null, false, obj);
    }
}
