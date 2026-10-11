package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutColorPropertyLargeBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout colorContainer;

    public LayoutColorPropertyLargeBinding(Object obj, View view, int i, LinearLayout linearLayout) {
        super(obj, view, i);
        this.colorContainer = linearLayout;
    }

    public static LayoutColorPropertyLargeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutColorPropertyLargeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutColorPropertyLargeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutColorPropertyLargeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_color_property_large);
    }

    @NonNull
    @Deprecated
    public static LayoutColorPropertyLargeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutColorPropertyLargeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_color_property_large, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutColorPropertyLargeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutColorPropertyLargeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutColorPropertyLargeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_color_property_large, null, false, obj);
    }
}
