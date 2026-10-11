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
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;

/* loaded from: classes9.dex */
public abstract class FragmentUserCenterBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout accountSettingButton;

    @NonNull
    public final TextView accountSettingText;

    @NonNull
    public final TintImageView backButton;

    @NonNull
    public final ImageView header1;

    @NonNull
    public final ImageView header2;

    @NonNull
    public final LinearLayout loadingView;

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

    public FragmentUserCenterBinding(Object obj, View view, int i, LinearLayout linearLayout, TextView textView, TintImageView tintImageView, ImageView imageView, ImageView imageView2, LinearLayout linearLayout2, LinearLayout linearLayout3, ConstraintLayout constraintLayout, TextView textView2, FrameLayout frameLayout, TextView textView3, OnyxWebView onyxWebView) {
        super(obj, view, i);
        this.accountSettingButton = linearLayout;
        this.accountSettingText = textView;
        this.backButton = tintImageView;
        this.header1 = imageView;
        this.header2 = imageView2;
        this.loadingView = linearLayout2;
        this.offlinePlaceholderView = linearLayout3;
        this.rootLayout = constraintLayout;
        this.tipText = textView2;
        this.titleBar = frameLayout;
        this.titleText = textView3;
        this.webView = onyxWebView;
    }

    public static FragmentUserCenterBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentUserCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentUserCenterBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentUserCenterBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_user_center);
    }

    @NonNull
    @Deprecated
    public static FragmentUserCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentUserCenterBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_user_center, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentUserCenterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentUserCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentUserCenterBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_user_center, null, false, obj);
    }
}
