package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupLoadingBinding extends ViewDataBinding {

    @NonNull
    public final FrameLayout contentViewWrapper;

    @NonNull
    public final TintTextView loadingView;

    public PopupLoadingBinding(Object obj, View view, int i, FrameLayout frameLayout, TintTextView tintTextView) {
        super(obj, view, i);
        this.contentViewWrapper = frameLayout;
        this.loadingView = tintTextView;
    }

    public static PopupLoadingBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupLoadingBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupLoadingBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_loading);
    }

    @NonNull
    @Deprecated
    public static PopupLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupLoadingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_loading, viewGroup, z, obj);
    }

    @NonNull
    public static PopupLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupLoadingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_loading, null, false, obj);
    }
}
