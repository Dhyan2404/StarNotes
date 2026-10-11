package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeToolContainer;

/* loaded from: classes9.dex */
public abstract class LayoutShapeToolAutoBinding extends ViewDataBinding {

    @NonNull
    public final ShapeToolContainer llShapeToolContainer;

    public LayoutShapeToolAutoBinding(Object obj, View view, int i, ShapeToolContainer shapeToolContainer) {
        super(obj, view, i);
        this.llShapeToolContainer = shapeToolContainer;
    }

    public static LayoutShapeToolAutoBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutShapeToolAutoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutShapeToolAutoBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutShapeToolAutoBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_shape_tool_auto);
    }

    @NonNull
    @Deprecated
    public static LayoutShapeToolAutoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutShapeToolAutoBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_shape_tool_auto, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutShapeToolAutoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutShapeToolAutoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutShapeToolAutoBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_shape_tool_auto, null, false, obj);
    }
}
