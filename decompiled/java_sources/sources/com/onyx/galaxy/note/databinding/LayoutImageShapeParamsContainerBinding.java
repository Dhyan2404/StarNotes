package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutImageShapeParamsContainerBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView add;

    @NonNull
    public final RecyclerView listview;

    /* renamed from: ll */
    @NonNull
    public final LinearLayout f57358ll;

    public LayoutImageShapeParamsContainerBinding(Object obj, View view, int i, TintImageView tintImageView, RecyclerView recyclerView, LinearLayout linearLayout) {
        super(obj, view, i);
        this.add = tintImageView;
        this.listview = recyclerView;
        this.f57358ll = linearLayout;
    }

    public static LayoutImageShapeParamsContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutImageShapeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutImageShapeParamsContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutImageShapeParamsContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_image_shape_params_container);
    }

    @NonNull
    @Deprecated
    public static LayoutImageShapeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutImageShapeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_image_shape_params_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutImageShapeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutImageShapeParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutImageShapeParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_image_shape_params_container, null, false, obj);
    }
}
