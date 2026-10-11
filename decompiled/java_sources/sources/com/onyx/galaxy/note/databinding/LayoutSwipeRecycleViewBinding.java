package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;
import com.onyx.galaxy.note.common.view.SwipeFrameLayout;

/* loaded from: classes9.dex */
public abstract class LayoutSwipeRecycleViewBinding extends ViewDataBinding {

    @NonNull
    public final CustomScrollBarRecycleView recyclerView;

    @NonNull
    public final SwipeFrameLayout swipeContainer;

    public LayoutSwipeRecycleViewBinding(Object obj, View view, int i, CustomScrollBarRecycleView customScrollBarRecycleView, SwipeFrameLayout swipeFrameLayout) {
        super(obj, view, i);
        this.recyclerView = customScrollBarRecycleView;
        this.swipeContainer = swipeFrameLayout;
    }

    public static LayoutSwipeRecycleViewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutSwipeRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutSwipeRecycleViewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutSwipeRecycleViewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_swipe_recycle_view);
    }

    @NonNull
    @Deprecated
    public static LayoutSwipeRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutSwipeRecycleViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_swipe_recycle_view, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutSwipeRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutSwipeRecycleViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutSwipeRecycleViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_swipe_recycle_view, null, false, obj);
    }
}
