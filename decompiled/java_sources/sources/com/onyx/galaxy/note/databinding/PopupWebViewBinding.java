package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;

/* loaded from: classes9.dex */
public abstract class PopupWebViewBinding extends ViewDataBinding {

    @NonNull
    public final OnyxWebView webView;

    public PopupWebViewBinding(Object obj, View view, int i, OnyxWebView onyxWebView) {
        super(obj, view, i);
        this.webView = onyxWebView;
    }

    public static PopupWebViewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupWebViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupWebViewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupWebViewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_web_view);
    }

    @NonNull
    @Deprecated
    public static PopupWebViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupWebViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_web_view, viewGroup, z, obj);
    }

    @NonNull
    public static PopupWebViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupWebViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupWebViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_web_view, null, false, obj);
    }
}
