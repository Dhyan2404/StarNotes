package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;

/* loaded from: classes9.dex */
public abstract class PopupWritePenGroupBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addToPenBox;

    @NonNull
    public final IncludeArtInkPenPopupParamsBinding artPenParams;

    @NonNull
    public final IncludeBallpointPenPopupParamsBinding ballpointPenParams;

    @NonNull
    public final ShapeColorArgsPropertyLayout colorLayout;

    @NonNull
    public final TintView divider;

    @NonNull
    public final IncludeInkPenPopupParamsBinding inkParams;

    @NonNull
    public final FrameLayout paramsContainer;

    @NonNull
    public final IncludePencilPopupParamsBinding pencilParams;

    @NonNull
    public final PhysicalShapeIconContainer shapeToolContainer;

    @NonNull
    public final IncludeSoftPaintPenPopupParamsBinding softPaintPenParams;

    @NonNull
    public final TintTextView tvColorTitle;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupWritePenGroupBinding(Object obj, View view, int i, TintTextView tintTextView, IncludeArtInkPenPopupParamsBinding includeArtInkPenPopupParamsBinding, IncludeBallpointPenPopupParamsBinding includeBallpointPenPopupParamsBinding, ShapeColorArgsPropertyLayout shapeColorArgsPropertyLayout, TintView tintView, IncludeInkPenPopupParamsBinding includeInkPenPopupParamsBinding, FrameLayout frameLayout, IncludePencilPopupParamsBinding includePencilPopupParamsBinding, PhysicalShapeIconContainer physicalShapeIconContainer, IncludeSoftPaintPenPopupParamsBinding includeSoftPaintPenPopupParamsBinding, TintTextView tintTextView2, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.addToPenBox = tintTextView;
        this.artPenParams = includeArtInkPenPopupParamsBinding;
        this.ballpointPenParams = includeBallpointPenPopupParamsBinding;
        this.colorLayout = shapeColorArgsPropertyLayout;
        this.divider = tintView;
        this.inkParams = includeInkPenPopupParamsBinding;
        this.paramsContainer = frameLayout;
        this.pencilParams = includePencilPopupParamsBinding;
        this.shapeToolContainer = physicalShapeIconContainer;
        this.softPaintPenParams = includeSoftPaintPenPopupParamsBinding;
        this.tvColorTitle = tintTextView2;
        this.tvTitle = mediumTextView;
    }

    public static PopupWritePenGroupBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupWritePenGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupWritePenGroupBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupWritePenGroupBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_write_pen_group);
    }

    @NonNull
    @Deprecated
    public static PopupWritePenGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupWritePenGroupBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_write_pen_group, viewGroup, z, obj);
    }

    @NonNull
    public static PopupWritePenGroupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupWritePenGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupWritePenGroupBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_write_pen_group, null, false, obj);
    }
}
