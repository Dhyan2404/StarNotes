package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;

/* loaded from: classes9.dex */
public abstract class CustomScrollBarRecycleViewBinding extends ViewDataBinding {

    @NonNull
    public final AutoFitRecycleView recycleView;

    @NonNull
    public final TintImageView scrollBar;

    public CustomScrollBarRecycleViewBinding(Object obj, View view, int i, AutoFitRecycleView autoFitRecycleView, TintImageView tintImageView) {
        super(obj, view, i);
        this.recycleView = autoFitRecycleView;
        this.scrollBar = tintImageView;
    }

    public static CustomScrollBarRecycleViewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static CustomScrollBarRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CustomScrollBarRecycleViewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (CustomScrollBarRecycleViewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.custom_scroll_bar_recycle_view);
    }

    @NonNull
    @Deprecated
    public static CustomScrollBarRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (CustomScrollBarRecycleViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.custom_scroll_bar_recycle_view, viewGroup, z, obj);
    }

    @NonNull
    public static CustomScrollBarRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static CustomScrollBarRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (CustomScrollBarRecycleViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.custom_scroll_bar_recycle_view, null, false, obj);
    }
}
