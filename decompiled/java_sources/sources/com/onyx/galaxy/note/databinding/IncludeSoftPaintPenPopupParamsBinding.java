package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;

/* loaded from: classes9.dex */
public abstract class IncludeSoftPaintPenPopupParamsBinding extends ViewDataBinding {

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    public IncludeSoftPaintPenPopupParamsBinding(Object obj, View view, int i, StickSeekBarContainer stickSeekBarContainer) {
        super(obj, view, i);
        this.seekBarThickness = stickSeekBarContainer;
    }

    public static IncludeSoftPaintPenPopupParamsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static IncludeSoftPaintPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static IncludeSoftPaintPenPopupParamsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (IncludeSoftPaintPenPopupParamsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.include_soft_paint_pen_popup_params);
    }

    @NonNull
    @Deprecated
    public static IncludeSoftPaintPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (IncludeSoftPaintPenPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_soft_paint_pen_popup_params, viewGroup, z, obj);
    }

    @NonNull
    public static IncludeSoftPaintPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static IncludeSoftPaintPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (IncludeSoftPaintPenPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_soft_paint_pen_popup_params, null, false, obj);
    }
}
