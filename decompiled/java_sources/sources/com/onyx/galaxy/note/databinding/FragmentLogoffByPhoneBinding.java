package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentLogoffByPhoneBinding extends ViewDataBinding {

    @NonNull
    public final TextView areaCodeText;

    @NonNull
    public final TintImageView backButton;

    @Bindable
    protected VerifyCodeViewModel mVerifyCodeViewModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final AppCompatEditText phoneEdit;

    @NonNull
    public final TintConstraintLayout rootLayout;

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

    public FragmentLogoffByPhoneBinding(Object obj, View view, int i, TextView textView, TintImageView tintImageView, TintTextView tintTextView, AppCompatEditText appCompatEditText, TintConstraintLayout tintConstraintLayout, TintTabLayoutView tintTabLayoutView, FrameLayout frameLayout, TintTextView tintTextView2, TintTextView tintTextView3, TintEditText tintEditText, LinearLayout linearLayout) {
        super(obj, view, i);
        this.areaCodeText = textView;
        this.backButton = tintImageView;
        this.nextButton = tintTextView;
        this.phoneEdit = appCompatEditText;
        this.rootLayout = tintConstraintLayout;
        this.tabLayout = tintTabLayoutView;
        this.titleBar = frameLayout;
        this.titleText = tintTextView2;
        this.verifyCodeButton = tintTextView3;
        this.verifyCodeEdit = tintEditText;
        this.verifyLayout = linearLayout;
    }

    public static FragmentLogoffByPhoneBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentLogoffByPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VerifyCodeViewModel getVerifyCodeViewModel() {
        return this.mVerifyCodeViewModel;
    }

    public abstract void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel);

    @Deprecated
    public static FragmentLogoffByPhoneBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentLogoffByPhoneBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_logoff_by_phone);
    }

    @NonNull
    @Deprecated
    public static FragmentLogoffByPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentLogoffByPhoneBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_logoff_by_phone, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentLogoffByPhoneBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentLogoffByPhoneBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentLogoffByPhoneBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_logoff_by_phone, null, false, obj);
    }
}
