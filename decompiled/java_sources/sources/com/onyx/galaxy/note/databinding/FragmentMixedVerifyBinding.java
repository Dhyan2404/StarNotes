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
import com.google.android.material.tabs.TabItem;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentMixedVerifyBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView backButton;

    @NonNull
    public final TabItem emailTab;

    @NonNull
    public final LayoutEmailVerifyItemBinding emailVerifyLayout;

    @Bindable
    protected VerifyCodeViewModel mEmailViewModel;

    @Bindable
    protected VerifyCodeViewModel mPhoneViewModel;

    @NonNull
    public final TabItem phoneTab;

    @NonNull
    public final LayoutPhoneVerifyItemBinding phoneVerifyLayout;

    @NonNull
    public final TintConstraintLayout rootLayout;

    @NonNull
    public final TintTextView subTitleTipText;

    @NonNull
    public final TintTabLayoutView tabLayout;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TintTextView titleText;

    @NonNull
    public final LinearLayout verifyLayout;

    public FragmentMixedVerifyBinding(Object obj, View view, int i, TintImageView tintImageView, TabItem tabItem, LayoutEmailVerifyItemBinding layoutEmailVerifyItemBinding, TabItem tabItem2, LayoutPhoneVerifyItemBinding layoutPhoneVerifyItemBinding, TintConstraintLayout tintConstraintLayout, TintTextView tintTextView, TintTabLayoutView tintTabLayoutView, FrameLayout frameLayout, TintTextView tintTextView2, LinearLayout linearLayout) {
        super(obj, view, i);
        this.backButton = tintImageView;
        this.emailTab = tabItem;
        this.emailVerifyLayout = layoutEmailVerifyItemBinding;
        this.phoneTab = tabItem2;
        this.phoneVerifyLayout = layoutPhoneVerifyItemBinding;
        this.rootLayout = tintConstraintLayout;
        this.subTitleTipText = tintTextView;
        this.tabLayout = tintTabLayoutView;
        this.titleBar = frameLayout;
        this.titleText = tintTextView2;
        this.verifyLayout = linearLayout;
    }

    public static FragmentMixedVerifyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentMixedVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public VerifyCodeViewModel getEmailViewModel() {
        return this.mEmailViewModel;
    }

    @Nullable
    public VerifyCodeViewModel getPhoneViewModel() {
        return this.mPhoneViewModel;
    }

    public abstract void setEmailViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel);

    public abstract void setPhoneViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel);

    @Deprecated
    public static FragmentMixedVerifyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentMixedVerifyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_mixed_verify);
    }

    @NonNull
    @Deprecated
    public static FragmentMixedVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentMixedVerifyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_mixed_verify, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentMixedVerifyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentMixedVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentMixedVerifyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_mixed_verify, null, false, obj);
    }
}
