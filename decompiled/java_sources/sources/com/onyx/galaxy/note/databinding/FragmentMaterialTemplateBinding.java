package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;

/* loaded from: classes9.dex */
public abstract class FragmentMaterialTemplateBinding extends ViewDataBinding {

    @NonNull
    public final TintRecycleView clCategoryAddedTemplate;

    @NonNull
    public final CommonEmptyView emptyView;

    @NonNull
    public final TintRecycleView rlCategoryTitle;

    public FragmentMaterialTemplateBinding(Object obj, View view, int i, TintRecycleView tintRecycleView, CommonEmptyView commonEmptyView, TintRecycleView tintRecycleView2) {
        super(obj, view, i);
        this.clCategoryAddedTemplate = tintRecycleView;
        this.emptyView = commonEmptyView;
        this.rlCategoryTitle = tintRecycleView2;
    }

    public static FragmentMaterialTemplateBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentMaterialTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentMaterialTemplateBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentMaterialTemplateBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_material_template);
    }

    @NonNull
    @Deprecated
    public static FragmentMaterialTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentMaterialTemplateBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_material_template, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentMaterialTemplateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentMaterialTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentMaterialTemplateBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_material_template, null, false, obj);
    }
}
