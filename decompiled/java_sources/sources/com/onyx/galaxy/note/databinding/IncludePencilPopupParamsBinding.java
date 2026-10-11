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
public abstract class IncludePencilPopupParamsBinding extends ViewDataBinding {

    @NonNull
    public final StickSeekBarContainer seekBarAlpha;

    @NonNull
    public final StickSeekBarContainer seekBarPressure;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    public IncludePencilPopupParamsBinding(Object obj, View view, int i, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2, StickSeekBarContainer stickSeekBarContainer3) {
        super(obj, view, i);
        this.seekBarAlpha = stickSeekBarContainer;
        this.seekBarPressure = stickSeekBarContainer2;
        this.seekBarThickness = stickSeekBarContainer3;
    }

    public static IncludePencilPopupParamsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static IncludePencilPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static IncludePencilPopupParamsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (IncludePencilPopupParamsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.include_pencil_popup_params);
    }

    @NonNull
    @Deprecated
    public static IncludePencilPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (IncludePencilPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_pencil_popup_params, viewGroup, z, obj);
    }

    @NonNull
    public static IncludePencilPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static IncludePencilPopupParamsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (IncludePencilPopupParamsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_pencil_popup_params, null, false, obj);
    }
}
