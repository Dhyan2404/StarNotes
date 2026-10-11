package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupMarginSizeBinding extends ViewDataBinding {

    @NonNull
    public final TintRecycleView rvSize;

    public PopupMarginSizeBinding(Object obj, View view, int i, TintRecycleView tintRecycleView) {
        super(obj, view, i);
        this.rvSize = tintRecycleView;
    }

    public static PopupMarginSizeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupMarginSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupMarginSizeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupMarginSizeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_margin_size);
    }

    @NonNull
    @Deprecated
    public static PopupMarginSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupMarginSizeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_margin_size, viewGroup, z, obj);
    }

    @NonNull
    public static PopupMarginSizeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupMarginSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupMarginSizeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_margin_size, null, false, obj);
    }
}
