package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentUnbindPhoneBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView areaCodeText;

    @NonNull
    public final TintImageView backButton;

    @Bindable
    protected VerifyCodeViewModel mVerifyCodeViewModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintEditText phoneEdit;

    @NonNull
    public final TintConstraintLayout rootLayout;

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

    public FragmentUnbindPhoneBinding(Object obj, View view, int i, TintTextView tintTextView, TintImageView tintImageView, TintTextView tintTextView2, TintEditText tintEditText, TintConstraintLayout tintConstraintLayout, FrameLayout frameLayout, TintTextView tintTextView3, TintTextView tintTextView4, TintEditText tintEditText2, LinearLayout linearLayout) {
        super(obj, view, i);
        this.areaCodeText = tintTextView;
        this.backButton = tintImageView;
        this.nextButton = tintTextView2;
        this.phoneEdit = tintEditText;
        this.rootLayout = tintConstraintLayout;
        this.titleBar = frameLayout;
        this.titleText = tintTextView3;
        this.verifyCodeButton = tintTextView4;
        this.verifyCodeEdit = tintEditText2;
        this.verifyLayout = linearLayout;
    }

    public static FragmentUnbindPhoneBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentUnbindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VerifyCodeViewModel getVerifyCodeViewModel() {
        return this.mVerifyCodeViewModel;
    }

    public abstract void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel);

    @Deprecated
    public static FragmentUnbindPhoneBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentUnbindPhoneBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_unbind_phone);
    }

    @NonNull
    @Deprecated
    public static FragmentUnbindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentUnbindPhoneBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_unbind_phone, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentUnbindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentUnbindPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentUnbindPhoneBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_unbind_phone, null, false, obj);
    }
}
