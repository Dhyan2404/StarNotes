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
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ColorSizePropertyView;

/* loaded from: classes9.dex */
public abstract class LayoutEraserTypeParamsContainerBinding extends ViewDataBinding {

    @NonNull
    public final ColorSizePropertyView colorSizeProperty;

    @NonNull
    public final TintImageView pixelEraser;

    @NonNull
    public final TintImageView selectEraser;

    @NonNull
    public final LinearLayout shapeSizeContainer;

    @NonNull
    public final TintImageView strokeEraser;

    @NonNull
    public final TintView viewLine;

    public LayoutEraserTypeParamsContainerBinding(Object obj, View view, int i, ColorSizePropertyView colorSizePropertyView, TintImageView tintImageView, TintImageView tintImageView2, LinearLayout linearLayout, TintImageView tintImageView3, TintView tintView) {
        super(obj, view, i);
        this.colorSizeProperty = colorSizePropertyView;
        this.pixelEraser = tintImageView;
        this.selectEraser = tintImageView2;
        this.shapeSizeContainer = linearLayout;
        this.strokeEraser = tintImageView3;
        this.viewLine = tintView;
    }

    public static LayoutEraserTypeParamsContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutEraserTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutEraserTypeParamsContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutEraserTypeParamsContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_eraser_type_params_container);
    }

    @NonNull
    @Deprecated
    public static LayoutEraserTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutEraserTypeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_eraser_type_params_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutEraserTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutEraserTypeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutEraserTypeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_eraser_type_params_container, null, false, obj);
    }
}
