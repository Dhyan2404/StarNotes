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
public abstract class IncludeArtInkPenPopupParamsBinding extends ViewDataBinding {

    @NonNull
    public final StickSeekBarContainer seekBarSmooth;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    public IncludeArtInkPenPopupParamsBinding(Object obj, View view, int i, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2) {
        super(obj, view, i);
        this.seekBarSmooth = stickSeekBarContainer;
        this.seekBarThickness = stickSeekBarContainer2;
    }

    public static IncludeArtInkPenPopupParamsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static IncludeArtInkPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static IncludeArtInkPenPopupParamsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (IncludeArtInkPenPopupParamsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.include_art_ink_pen_popup_params);
    }

    @NonNull
    @Deprecated
    public static IncludeArtInkPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (IncludeArtInkPenPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_art_ink_pen_popup_params, viewGroup, z, obj);
    }

    @NonNull
    public static IncludeArtInkPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static IncludeArtInkPenPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (IncludeArtInkPenPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_art_ink_pen_popup_params, null, false, obj);
    }
}
