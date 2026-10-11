package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutCounterHistoryEmptyBinding extends ViewDataBinding {
    public LayoutCounterHistoryEmptyBinding(Object obj, View view, int i) {
        super(obj, view, i);
    }

    public static LayoutCounterHistoryEmptyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutCounterHistoryEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutCounterHistoryEmptyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutCounterHistoryEmptyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_counter_history_empty);
    }

    @NonNull
    @Deprecated
    public static LayoutCounterHistoryEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutCounterHistoryEmptyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_counter_history_empty, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutCounterHistoryEmptyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutCounterHistoryEmptyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutCounterHistoryEmptyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_counter_history_empty, null, false, obj);
    }
}
