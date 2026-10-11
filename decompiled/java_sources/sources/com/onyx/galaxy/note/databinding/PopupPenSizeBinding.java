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
public abstract class PopupPenSizeBinding extends ViewDataBinding {

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    public PopupPenSizeBinding(Object obj, View view, int i, StickSeekBarContainer stickSeekBarContainer) {
        super(obj, view, i);
        this.seekBarThickness = stickSeekBarContainer;
    }

    public static PopupPenSizeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupPenSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupPenSizeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupPenSizeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_pen_size);
    }

    @NonNull
    @Deprecated
    public static PopupPenSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupPenSizeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_pen_size, viewGroup, z, obj);
    }

    @NonNull
    public static PopupPenSizeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupPenSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupPenSizeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_pen_size, null, false, obj);
    }
}
