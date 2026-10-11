package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ExpandToMaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class CounterTimeListViewBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout ctlRoot;

    @NonNull
    public final ExpandToMaxHeightRecyclerView rvTimeList;

    @NonNull
    public final TintTextView tvCollapse;

    public CounterTimeListViewBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, ExpandToMaxHeightRecyclerView expandToMaxHeightRecyclerView, TintTextView tintTextView) {
        super(obj, view, i);
        this.ctlRoot = tintConstraintLayout;
        this.rvTimeList = expandToMaxHeightRecyclerView;
        this.tvCollapse = tintTextView;
    }

    public static CounterTimeListViewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static CounterTimeListViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CounterTimeListViewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (CounterTimeListViewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.counter_time_list_view);
    }

    @NonNull
    @Deprecated
    public static CounterTimeListViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (CounterTimeListViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.counter_time_list_view, viewGroup, z, obj);
    }

    @NonNull
    public static CounterTimeListViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static CounterTimeListViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (CounterTimeListViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.counter_time_list_view, null, false, obj);
    }
}
