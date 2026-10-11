package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutPhoneVerifyItemBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView areaCodeSelector;

    @NonNull
    public final TintTextView areaCodeText;

    @NonNull
    public final TintImageView clearButton;

    @NonNull
    public final FrameLayout clearButtonWrapper;

    @Bindable
    protected VerifyCodeViewModel mModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintEditText phoneEdit;

    @NonNull
    public final TintLinearLayout phoneNumberLayout;

    @NonNull
    public final TintTextView verifyCodeButton;

    @NonNull
    public final TintEditText verifyCodeEdit;

    public LayoutPhoneVerifyItemBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintImageView tintImageView2, FrameLayout frameLayout, TintTextView tintTextView2, TintEditText tintEditText, TintLinearLayout tintLinearLayout, TintTextView tintTextView3, TintEditText tintEditText2) {
        super(obj, view, i);
        this.areaCodeSelector = tintImageView;
        this.areaCodeText = tintTextView;
        this.clearButton = tintImageView2;
        this.clearButtonWrapper = frameLayout;
        this.nextButton = tintTextView2;
        this.phoneEdit = tintEditText;
        this.phoneNumberLayout = tintLinearLayout;
        this.verifyCodeButton = tintTextView3;
        this.verifyCodeEdit = tintEditText2;
    }

    public static LayoutPhoneVerifyItemBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutPhoneVerifyItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VerifyCodeViewModel getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable VerifyCodeViewModel verifyCodeViewModel);

    @Deprecated
    public static LayoutPhoneVerifyItemBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutPhoneVerifyItemBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_phone_verify_item);
    }

    @NonNull
    @Deprecated
    public static LayoutPhoneVerifyItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutPhoneVerifyItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_phone_verify_item, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutPhoneVerifyItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutPhoneVerifyItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutPhoneVerifyItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_phone_verify_item, null, false, obj);
    }
}
