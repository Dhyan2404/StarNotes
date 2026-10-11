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
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;

/* loaded from: classes9.dex */
public abstract class ActivityHtmlWindowBinding extends ViewDataBinding {

    @NonNull
    public final ImageView backButton;

    @NonNull
    public final LinearLayout loadingLayout;

    @NonNull
    public final LinearLayout progressLayout;

    @NonNull
    public final LayoutUsercenterLoadingBinding progressLayoutBinding;

    @NonNull
    public final LayoutWebviewTimeoutBinding timeoutLayoutBinding;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TextView titleText;

    @NonNull
    public final OnyxWebView webView;

    public ActivityHtmlWindowBinding(Object obj, View view, int i, ImageView imageView, LinearLayout linearLayout, LinearLayout linearLayout2, LayoutUsercenterLoadingBinding layoutUsercenterLoadingBinding, LayoutWebviewTimeoutBinding layoutWebviewTimeoutBinding, FrameLayout frameLayout, TextView textView, OnyxWebView onyxWebView) {
        super(obj, view, i);
        this.backButton = imageView;
        this.loadingLayout = linearLayout;
        this.progressLayout = linearLayout2;
        this.progressLayoutBinding = layoutUsercenterLoadingBinding;
        this.timeoutLayoutBinding = layoutWebviewTimeoutBinding;
        this.titleBar = frameLayout;
        this.titleText = textView;
        this.webView = onyxWebView;
    }

    public static ActivityHtmlWindowBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ActivityHtmlWindowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityHtmlWindowBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ActivityHtmlWindowBinding) ViewDataBinding.bind(obj, view, C10651R.layout.activity_html_window);
    }

    @NonNull
    @Deprecated
    public static ActivityHtmlWindowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ActivityHtmlWindowBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.activity_html_window, viewGroup, z, obj);
    }

    @NonNull
    public static ActivityHtmlWindowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ActivityHtmlWindowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ActivityHtmlWindowBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.activity_html_window, null, false, obj);
    }
}
