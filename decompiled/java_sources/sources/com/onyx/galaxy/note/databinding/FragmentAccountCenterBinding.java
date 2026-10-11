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
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentAccountCenterBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView backButton;

    @NonNull
    public final TintTextView disagreeProtocolButton;

    @NonNull
    public final LinearLayout exitLayout;

    @NonNull
    public final TintTextView logOffButton;

    @NonNull
    public final TintTextView logOutButton;

    @Bindable
    protected AccountCenterViewModel mViewModel;

    @NonNull
    public final TintConstraintLayout rootLayout;

    @NonNull
    public final LayoutUserInfoBinding scrollLayout;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final MediumTextView titleText;

    public FragmentAccountCenterBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, LinearLayout linearLayout, TintTextView tintTextView2, TintTextView tintTextView3, TintConstraintLayout tintConstraintLayout, LayoutUserInfoBinding layoutUserInfoBinding, FrameLayout frameLayout, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.backButton = tintImageView;
        this.disagreeProtocolButton = tintTextView;
        this.exitLayout = linearLayout;
        this.logOffButton = tintTextView2;
        this.logOutButton = tintTextView3;
        this.rootLayout = tintConstraintLayout;
        this.scrollLayout = layoutUserInfoBinding;
        this.titleBar = frameLayout;
        this.titleText = mediumTextView;
    }

    public static FragmentAccountCenterBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentAccountCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AccountCenterViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable AccountCenterViewModel accountCenterViewModel);

    @Deprecated
    public static FragmentAccountCenterBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentAccountCenterBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_account_center);
    }

    @NonNull
    @Deprecated
    public static FragmentAccountCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentAccountCenterBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_account_center, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentAccountCenterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentAccountCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentAccountCenterBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_account_center, null, false, obj);
    }
}
