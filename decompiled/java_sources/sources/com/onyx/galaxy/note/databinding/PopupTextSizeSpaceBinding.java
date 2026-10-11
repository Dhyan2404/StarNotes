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
public abstract class PopupTextSizeSpaceBinding extends ViewDataBinding {

    @NonNull
    public final RecyclerView list;

    public PopupTextSizeSpaceBinding(Object obj, View view, int i, RecyclerView recyclerView) {
        super(obj, view, i);
        this.list = recyclerView;
    }

    public static PopupTextSizeSpaceBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTextSizeSpaceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTextSizeSpaceBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTextSizeSpaceBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_text_size_space);
    }

    @NonNull
    @Deprecated
    public static PopupTextSizeSpaceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTextSizeSpaceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_text_size_space, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTextSizeSpaceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTextSizeSpaceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTextSizeSpaceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_text_size_space, null, false, obj);
    }
}
