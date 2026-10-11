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

/* loaded from: classes9.dex */
public abstract class PopupSelectMoveToLayerBinding extends ViewDataBinding {

    @NonNull
    public final TintRecycleView recyclerView;

    public PopupSelectMoveToLayerBinding(Object obj, View view, int i, TintRecycleView tintRecycleView) {
        super(obj, view, i);
        this.recyclerView = tintRecycleView;
    }

    public static PopupSelectMoveToLayerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupSelectMoveToLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupSelectMoveToLayerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupSelectMoveToLayerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_select_move_to_layer);
    }

    @NonNull
    @Deprecated
    public static PopupSelectMoveToLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupSelectMoveToLayerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_select_move_to_layer, viewGroup, z, obj);
    }

    @NonNull
    public static PopupSelectMoveToLayerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupSelectMoveToLayerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupSelectMoveToLayerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_select_move_to_layer, null, false, obj);
    }
}
