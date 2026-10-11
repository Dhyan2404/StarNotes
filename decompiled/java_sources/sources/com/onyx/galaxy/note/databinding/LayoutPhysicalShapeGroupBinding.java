package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.PenShapeView;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView;

/* loaded from: classes9.dex */
public abstract class LayoutPhysicalShapeGroupBinding extends ViewDataBinding {

    @NonNull
    public final PenShapeView ivShape;

    @NonNull
    public final PhysicalShapeIconView phyShapeTool;

    public LayoutPhysicalShapeGroupBinding(Object obj, View view, int i, PenShapeView penShapeView, PhysicalShapeIconView physicalShapeIconView) {
        super(obj, view, i);
        this.ivShape = penShapeView;
        this.phyShapeTool = physicalShapeIconView;
    }

    public static LayoutPhysicalShapeGroupBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutPhysicalShapeGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutPhysicalShapeGroupBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutPhysicalShapeGroupBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_physical_shape_group);
    }

    @NonNull
    @Deprecated
    public static LayoutPhysicalShapeGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutPhysicalShapeGroupBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_physical_shape_group, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutPhysicalShapeGroupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutPhysicalShapeGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutPhysicalShapeGroupBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_physical_shape_group, null, false, obj);
    }
}
