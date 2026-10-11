package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutLassoTypeParamsContainerBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView freeLassoType;

    @NonNull
    public final TintImageView rectangleLassoType;

    public LayoutLassoTypeParamsContainerBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2) {
        super(obj, view, i);
        this.freeLassoType = tintImageView;
        this.rectangleLassoType = tintImageView2;
    }

    public static LayoutLassoTypeParamsContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutLassoTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutLassoTypeParamsContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutLassoTypeParamsContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_lasso_type_params_container);
    }

    @NonNull
    @Deprecated
    public static LayoutLassoTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutLassoTypeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_lasso_type_params_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutLassoTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutLassoTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutLassoTypeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_lasso_type_params_container, null, false, obj);
    }
}
