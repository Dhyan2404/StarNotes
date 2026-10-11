package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class PopupPathOpBinding extends ViewDataBinding {

    /* renamed from: rv */
    @NonNull
    public final MaxHeightRecyclerView f57762rv;

    public PopupPathOpBinding(Object obj, View view, int i, MaxHeightRecyclerView maxHeightRecyclerView) {
        super(obj, view, i);
        this.f57762rv = maxHeightRecyclerView;
    }

    public static PopupPathOpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupPathOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupPathOpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupPathOpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_path_op);
    }

    @NonNull
    @Deprecated
    public static PopupPathOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupPathOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_path_op, viewGroup, z, obj);
    }

    @NonNull
    public static PopupPathOpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupPathOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupPathOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_path_op, null, false, obj);
    }
}
