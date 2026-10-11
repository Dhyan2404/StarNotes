package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class PopupLayerBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addLayer;

    @NonNull
    public final TintTextView clean;

    @NonNull
    public final TintImageView close;

    @NonNull
    public final TintTextView delete;

    @NonNull
    public final TintTextView finish;

    @NonNull
    public final TintFrameLayout flRoot;

    @NonNull
    public final TintTextView merge;

    @NonNull
    public final MaxHeightRecyclerView recyclerView;

    @NonNull
    public final TintTextView rename;

    @NonNull
    public final TintImageView select;

    @NonNull
    public final LinearLayoutCompat selectionActionLayout;

    public PopupLayerBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintImageView tintImageView, TintTextView tintTextView3, TintTextView tintTextView4, TintFrameLayout tintFrameLayout, TintTextView tintTextView5, MaxHeightRecyclerView maxHeightRecyclerView, TintTextView tintTextView6, TintImageView tintImageView2, LinearLayoutCompat linearLayoutCompat) {
        super(obj, view, i);
        this.addLayer = tintTextView;
        this.clean = tintTextView2;
        this.close = tintImageView;
        this.delete = tintTextView3;
        this.finish = tintTextView4;
        this.flRoot = tintFrameLayout;
        this.merge = tintTextView5;
        this.recyclerView = maxHeightRecyclerView;
        this.rename = tintTextView6;
        this.select = tintImageView2;
        this.selectionActionLayout = linearLayoutCompat;
    }

    public static PopupLayerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupLayerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupLayerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_layer);
    }

    @NonNull
    @Deprecated
    public static PopupLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupLayerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_layer, viewGroup, z, obj);
    }

    @NonNull
    public static PopupLayerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupLayerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_layer, null, false, obj);
    }
}
