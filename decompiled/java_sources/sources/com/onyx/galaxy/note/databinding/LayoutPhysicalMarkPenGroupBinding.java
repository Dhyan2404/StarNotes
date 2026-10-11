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
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalMarkPenView;

/* loaded from: classes9.dex */
public abstract class LayoutPhysicalMarkPenGroupBinding extends ViewDataBinding {

    @NonNull
    public final PenShapeView ivShape;

    @NonNull
    public final PhysicalMarkPenView phyShapeTool;

    public LayoutPhysicalMarkPenGroupBinding(Object obj, View view, int i, PenShapeView penShapeView, PhysicalMarkPenView physicalMarkPenView) {
        super(obj, view, i);
        this.ivShape = penShapeView;
        this.phyShapeTool = physicalMarkPenView;
    }

    public static LayoutPhysicalMarkPenGroupBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutPhysicalMarkPenGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutPhysicalMarkPenGroupBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutPhysicalMarkPenGroupBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_physical_mark_pen_group);
    }

    @NonNull
    @Deprecated
    public static LayoutPhysicalMarkPenGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutPhysicalMarkPenGroupBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_physical_mark_pen_group, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutPhysicalMarkPenGroupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutPhysicalMarkPenGroupBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutPhysicalMarkPenGroupBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_physical_mark_pen_group, null, false, obj);
    }
}
