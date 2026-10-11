package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;

/* loaded from: classes9.dex */
public abstract class PopupLaserShapeBinding extends ViewDataBinding {

    @NonNull
    public final ShapeColorPropertyLayout colorLayout;

    @NonNull
    public final TintImageView dotType;

    @NonNull
    public final TintImageView lineType;

    @NonNull
    public final StickSeekBarContainer seekBarDuration;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final TintTextView tvColorTitle;

    public PopupLaserShapeBinding(Object obj, View view, int i, ShapeColorPropertyLayout shapeColorPropertyLayout, TintImageView tintImageView, TintImageView tintImageView2, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2, TintTextView tintTextView) {
        super(obj, view, i);
        this.colorLayout = shapeColorPropertyLayout;
        this.dotType = tintImageView;
        this.lineType = tintImageView2;
        this.seekBarDuration = stickSeekBarContainer;
        this.seekBarThickness = stickSeekBarContainer2;
        this.tvColorTitle = tintTextView;
    }

    public static PopupLaserShapeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupLaserShapeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupLaserShapeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupLaserShapeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_laser_shape);
    }

    @NonNull
    @Deprecated
    public static PopupLaserShapeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupLaserShapeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_laser_shape, viewGroup, z, obj);
    }

    @NonNull
    public static PopupLaserShapeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupLaserShapeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupLaserShapeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_laser_shape, null, false, obj);
    }
}
