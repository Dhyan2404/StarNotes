package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentLogOffAgreementBinding extends ViewDataBinding {

    @NonNull
    public final ImageView backButton;

    @NonNull
    public final LinearLayout loadingView;

    @Bindable
    protected AccountCenterViewModel mViewModel;

    @NonNull
    public final LinearLayout offlinePlaceholderView;

    @NonNull
    public final ConstraintLayout rootLayout;

    @NonNull
    public final TextView tipText;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TextView titleText;

    @NonNull
    public final OnyxWebView webView;

    public FragmentLogOffAgreementBinding(Object obj, View view, int i, ImageView imageView, LinearLayout linearLayout, LinearLayout linearLayout2, ConstraintLayout constraintLayout, TextView textView, FrameLayout frameLayout, TextView textView2, OnyxWebView onyxWebView) {
        super(obj, view, i);
        this.backButton = imageView;
        this.loadingView = linearLayout;
        this.offlinePlaceholderView = linearLayout2;
        this.rootLayout = constraintLayout;
        this.tipText = textView;
        this.titleBar = frameLayout;
        this.titleText = textView2;
        this.webView = onyxWebView;
    }

    public static FragmentLogOffAgreementBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentLogOffAgreementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AccountCenterViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable AccountCenterViewModel accountCenterViewModel);

    @Deprecated
    public static FragmentLogOffAgreementBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentLogOffAgreementBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_log_off_agreement);
    }

    @NonNull
    @Deprecated
    public static FragmentLogOffAgreementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentLogOffAgreementBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_log_off_agreement, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentLogOffAgreementBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentLogOffAgreementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentLogOffAgreementBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_log_off_agreement, null, false, obj);
    }
}
