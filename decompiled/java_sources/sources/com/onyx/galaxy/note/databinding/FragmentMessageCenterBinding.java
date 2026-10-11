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
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;

/* loaded from: classes9.dex */
public abstract class FragmentMessageCenterBinding extends ViewDataBinding {

    @NonNull
    public final ImageView backButton;

    @NonNull
    public final LinearLayout loadingView;

    @NonNull
    public final TextView readAllButton;

    @NonNull
    public final ConstraintLayout rootLayout;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TextView titleText;

    @NonNull
    public final OnyxWebView webView;

    @NonNull
    public final LayoutWebviewTimeoutBinding webViewTimeoutLayout;

    public FragmentMessageCenterBinding(Object obj, View view, int i, ImageView imageView, LinearLayout linearLayout, TextView textView, ConstraintLayout constraintLayout, FrameLayout frameLayout, TextView textView2, OnyxWebView onyxWebView, LayoutWebviewTimeoutBinding layoutWebviewTimeoutBinding) {
        super(obj, view, i);
        this.backButton = imageView;
        this.loadingView = linearLayout;
        this.readAllButton = textView;
        this.rootLayout = constraintLayout;
        this.titleBar = frameLayout;
        this.titleText = textView2;
        this.webView = onyxWebView;
        this.webViewTimeoutLayout = layoutWebviewTimeoutBinding;
    }

    public static FragmentMessageCenterBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentMessageCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentMessageCenterBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentMessageCenterBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_message_center);
    }

    @NonNull
    @Deprecated
    public static FragmentMessageCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentMessageCenterBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_message_center, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentMessageCenterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentMessageCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentMessageCenterBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_message_center, null, false, obj);
    }
}
