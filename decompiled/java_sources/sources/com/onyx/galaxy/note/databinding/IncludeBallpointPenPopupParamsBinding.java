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
public abstract class IncludeBallpointPenPopupParamsBinding extends ViewDataBinding {

    @NonNull
    public final StickSeekBarContainer seekBarSmooth;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    public IncludeBallpointPenPopupParamsBinding(Object obj, View view, int i, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2) {
        super(obj, view, i);
        this.seekBarSmooth = stickSeekBarContainer;
        this.seekBarThickness = stickSeekBarContainer2;
    }

    public static IncludeBallpointPenPopupParamsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static IncludeBallpointPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static IncludeBallpointPenPopupParamsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (IncludeBallpointPenPopupParamsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.include_ballpoint_pen_popup_params);
    }

    @NonNull
    @Deprecated
    public static IncludeBallpointPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (IncludeBallpointPenPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_ballpoint_pen_popup_params, viewGroup, z, obj);
    }

    @NonNull
    public static IncludeBallpointPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static IncludeBallpointPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (IncludeBallpointPenPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_ballpoint_pen_popup_params, null, false, obj);
    }
}
