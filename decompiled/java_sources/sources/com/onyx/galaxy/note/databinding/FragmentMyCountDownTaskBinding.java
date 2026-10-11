package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ThemeRecyclerView;

/* loaded from: classes9.dex */
public abstract class FragmentMyCountDownTaskBinding extends ViewDataBinding {

    @NonNull
    public final ThemeRecyclerView rvTask;

    @NonNull
    public final TintTextView tvAdd;

    public FragmentMyCountDownTaskBinding(Object obj, View view, int i, ThemeRecyclerView themeRecyclerView, TintTextView tintTextView) {
        super(obj, view, i);
        this.rvTask = themeRecyclerView;
        this.tvAdd = tintTextView;
    }

    public static FragmentMyCountDownTaskBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentMyCountDownTaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentMyCountDownTaskBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentMyCountDownTaskBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_my_count_down_task);
    }

    @NonNull
    @Deprecated
    public static FragmentMyCountDownTaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentMyCountDownTaskBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_my_count_down_task, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentMyCountDownTaskBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentMyCountDownTaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentMyCountDownTaskBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_my_count_down_task, null, false, obj);
    }
}
