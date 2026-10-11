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
public abstract class IncludeInkPenPopupParamsBinding extends ViewDataBinding {

    @NonNull
    public final StickSeekBarContainer seekBarNib;

    @NonNull
    public final StickSeekBarContainer seekBarPressure;

    @NonNull
    public final StickSeekBarContainer seekBarSmooth;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final StickSeekBarContainer seekBarVelocity;

    @NonNull
    public final StickSeekBarContainer seekBarVelocityAmplifier;

    @NonNull
    public final StickSeekBarContainer seekBarVelocityIgnoreThreshold;

    @NonNull
    public final StickSeekBarContainer seekBarVelocityLowerBound;

    @NonNull
    public final StickSeekBarContainer seekBarVelocityUpperBound;

    public IncludeInkPenPopupParamsBinding(Object obj, View view, int i, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2, StickSeekBarContainer stickSeekBarContainer3, StickSeekBarContainer stickSeekBarContainer4, StickSeekBarContainer stickSeekBarContainer5, StickSeekBarContainer stickSeekBarContainer6, StickSeekBarContainer stickSeekBarContainer7, StickSeekBarContainer stickSeekBarContainer8, StickSeekBarContainer stickSeekBarContainer9) {
        super(obj, view, i);
        this.seekBarNib = stickSeekBarContainer;
        this.seekBarPressure = stickSeekBarContainer2;
        this.seekBarSmooth = stickSeekBarContainer3;
        this.seekBarThickness = stickSeekBarContainer4;
        this.seekBarVelocity = stickSeekBarContainer5;
        this.seekBarVelocityAmplifier = stickSeekBarContainer6;
        this.seekBarVelocityIgnoreThreshold = stickSeekBarContainer7;
        this.seekBarVelocityLowerBound = stickSeekBarContainer8;
        this.seekBarVelocityUpperBound = stickSeekBarContainer9;
    }

    public static IncludeInkPenPopupParamsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static IncludeInkPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static IncludeInkPenPopupParamsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (IncludeInkPenPopupParamsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.include_ink_pen_popup_params);
    }

    @NonNull
    @Deprecated
    public static IncludeInkPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (IncludeInkPenPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_ink_pen_popup_params, viewGroup, z, obj);
    }

    @NonNull
    public static IncludeInkPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static IncludeInkPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (IncludeInkPenPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_ink_pen_popup_params, null, false, obj);
    }
}
