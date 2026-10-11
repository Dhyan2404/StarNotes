package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView;

/* loaded from: classes9.dex */
public abstract class LayoutMagnifierViewPortBinding extends ViewDataBinding {

    @NonNull
    public final MagnifierViewportView viewportView;

    public LayoutMagnifierViewPortBinding(Object obj, View view, int i, MagnifierViewportView magnifierViewportView) {
        super(obj, view, i);
        this.viewportView = magnifierViewportView;
    }

    public static LayoutMagnifierViewPortBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutMagnifierViewPortBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutMagnifierViewPortBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutMagnifierViewPortBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_magnifier_view_port);
    }

    @NonNull
    @Deprecated
    public static LayoutMagnifierViewPortBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutMagnifierViewPortBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_magnifier_view_port, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutMagnifierViewPortBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutMagnifierViewPortBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutMagnifierViewPortBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_magnifier_view_port, null, false, obj);
    }
}
