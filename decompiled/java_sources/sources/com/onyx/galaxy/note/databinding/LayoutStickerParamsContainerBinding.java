package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutStickerParamsContainerBinding extends ViewDataBinding {

    @NonNull
    public final RecyclerView listview;

    public LayoutStickerParamsContainerBinding(Object obj, View view, int i, RecyclerView recyclerView) {
        super(obj, view, i);
        this.listview = recyclerView;
    }

    public static LayoutStickerParamsContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutStickerParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutStickerParamsContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutStickerParamsContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_sticker_params_container);
    }

    @NonNull
    @Deprecated
    public static LayoutStickerParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutStickerParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_sticker_params_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutStickerParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutStickerParamsContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutStickerParamsContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_sticker_params_container, null, false, obj);
    }
}
