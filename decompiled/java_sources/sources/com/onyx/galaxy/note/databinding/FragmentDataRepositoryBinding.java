package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;

/* loaded from: classes9.dex */
public abstract class FragmentDataRepositoryBinding extends ViewDataBinding {

    @NonNull
    public final ImageView backButton;

    @NonNull
    public final TintLinearLayout loadingView;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final OnyxWebView webView;

    @NonNull
    public final LayoutWebviewTimeoutBinding webViewTimeoutLayout;

    public FragmentDataRepositoryBinding(Object obj, View view, int i, ImageView imageView, TintLinearLayout tintLinearLayout, FrameLayout frameLayout, OnyxWebView onyxWebView, LayoutWebviewTimeoutBinding layoutWebviewTimeoutBinding) {
        super(obj, view, i);
        this.backButton = imageView;
        this.loadingView = tintLinearLayout;
        this.titleBar = frameLayout;
        this.webView = onyxWebView;
        this.webViewTimeoutLayout = layoutWebviewTimeoutBinding;
    }

    public static FragmentDataRepositoryBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentDataRepositoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDataRepositoryBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentDataRepositoryBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_data_repository);
    }

    @NonNull
    @Deprecated
    public static FragmentDataRepositoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentDataRepositoryBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_data_repository, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentDataRepositoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentDataRepositoryBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentDataRepositoryBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_data_repository, null, false, obj);
    }
}
