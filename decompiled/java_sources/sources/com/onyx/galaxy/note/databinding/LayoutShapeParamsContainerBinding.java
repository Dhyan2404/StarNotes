package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView;

/* loaded from: classes9.dex */
public abstract class LayoutShapeParamsContainerBinding extends ViewDataBinding {

    @NonNull
    public final ColorSizePropertyView colorSizeProperty;

    @NonNull
    public final TintImageView ivColorSetStatus;

    @NonNull
    public final TintImageView lineStyleArrow;

    @NonNull
    public final TintLinearLayout lineStyleContainer;

    @NonNull
    public final TintView lineStyleDivider;

    @NonNull
    public final TintLinearLayout lineStyleGroup;

    @NonNull
    public final TintImageView lineStyleImage;

    @NonNull
    public final LinearLayout paramsContainer;

    @NonNull
    public final LinearLayout shapeSizeContainer;

    @NonNull
    public final TintView viewLine;

    public LayoutShapeParamsContainerBinding(Object obj, View view, int i, ColorSizePropertyView colorSizePropertyView, TintImageView tintImageView, TintImageView tintImageView2, TintLinearLayout tintLinearLayout, TintView tintView, TintLinearLayout tintLinearLayout2, TintImageView tintImageView3, LinearLayout linearLayout, LinearLayout linearLayout2, TintView tintView2) {
        super(obj, view, i);
        this.colorSizeProperty = colorSizePropertyView;
        this.ivColorSetStatus = tintImageView;
        this.lineStyleArrow = tintImageView2;
        this.lineStyleContainer = tintLinearLayout;
        this.lineStyleDivider = tintView;
        this.lineStyleGroup = tintLinearLayout2;
        this.lineStyleImage = tintImageView3;
        this.paramsContainer = linearLayout;
        this.shapeSizeContainer = linearLayout2;
        this.viewLine = tintView2;
    }

    public static LayoutShapeParamsContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutShapeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutShapeParamsContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutShapeParamsContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_shape_params_container);
    }

    @NonNull
    @Deprecated
    public static LayoutShapeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutShapeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_shape_params_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutShapeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutShapeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutShapeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_shape_params_container, null, false, obj);
    }
}
