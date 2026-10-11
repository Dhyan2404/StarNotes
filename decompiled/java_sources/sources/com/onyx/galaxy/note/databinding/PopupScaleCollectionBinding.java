package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupScaleCollectionBinding extends ViewDataBinding {

    @NonNull
    public final RecyclerView rvList;

    @NonNull
    public final TintTextView tvNoCollection;

    public PopupScaleCollectionBinding(Object obj, View view, int i, RecyclerView recyclerView, TintTextView tintTextView) {
        super(obj, view, i);
        this.rvList = recyclerView;
        this.tvNoCollection = tintTextView;
    }

    public static PopupScaleCollectionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupScaleCollectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupScaleCollectionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupScaleCollectionBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_scale_collection);
    }

    @NonNull
    @Deprecated
    public static PopupScaleCollectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupScaleCollectionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_scale_collection, viewGroup, z, obj);
    }

    @NonNull
    public static PopupScaleCollectionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupScaleCollectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupScaleCollectionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_scale_collection, null, false, obj);
    }
}
