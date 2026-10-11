package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupShapeTagBinding extends ViewDataBinding {

    @NonNull
    public final MaterialButton copy;

    @NonNull
    public final MaterialButton delete;

    public PopupShapeTagBinding(Object obj, View view, int i, MaterialButton materialButton, MaterialButton materialButton2) {
        super(obj, view, i);
        this.copy = materialButton;
        this.delete = materialButton2;
    }

    public static PopupShapeTagBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupShapeTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupShapeTagBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupShapeTagBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_shape_tag);
    }

    @NonNull
    @Deprecated
    public static PopupShapeTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupShapeTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shape_tag, viewGroup, z, obj);
    }

    @NonNull
    public static PopupShapeTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupShapeTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupShapeTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shape_tag, null, false, obj);
    }
}
