package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutExcerptTypeParamsContainerBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout rectExcerptContainer;

    @NonNull
    public final TintImageView rectExcerptLayout;

    @NonNull
    public final TintFrameLayout textExcerptContainer;

    @NonNull
    public final TintImageView textExcerptLayout;

    public LayoutExcerptTypeParamsContainerBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintImageView tintImageView, TintFrameLayout tintFrameLayout2, TintImageView tintImageView2) {
        super(obj, view, i);
        this.rectExcerptContainer = tintFrameLayout;
        this.rectExcerptLayout = tintImageView;
        this.textExcerptContainer = tintFrameLayout2;
        this.textExcerptLayout = tintImageView2;
    }

    public static LayoutExcerptTypeParamsContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutExcerptTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutExcerptTypeParamsContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutExcerptTypeParamsContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_excerpt_type_params_container);
    }

    @NonNull
    @Deprecated
    public static LayoutExcerptTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutExcerptTypeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_excerpt_type_params_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutExcerptTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutExcerptTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutExcerptTypeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_excerpt_type_params_container, null, false, obj);
    }
}
