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
public abstract class PopupMarginStyleBinding extends ViewDataBinding {

    @NonNull
    public final TintRecycleView rvSize;

    public PopupMarginStyleBinding(Object obj, View view, int i, TintRecycleView tintRecycleView) {
        super(obj, view, i);
        this.rvSize = tintRecycleView;
    }

    public static PopupMarginStyleBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupMarginStyleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupMarginStyleBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupMarginStyleBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_margin_style);
    }

    @NonNull
    @Deprecated
    public static PopupMarginStyleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupMarginStyleBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_margin_style, viewGroup, z, obj);
    }

    @NonNull
    public static PopupMarginStyleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupMarginStyleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupMarginStyleBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_margin_style, null, false, obj);
    }
}
