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

/* loaded from: classes9.dex */
public abstract class PopupCounterHistoryOptionsBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvDelete;

    @NonNull
    public final TintTextView tvRename;

    public PopupCounterHistoryOptionsBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.tvDelete = tintTextView;
        this.tvRename = tintTextView2;
    }

    public static PopupCounterHistoryOptionsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupCounterHistoryOptionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupCounterHistoryOptionsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupCounterHistoryOptionsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_counter_history_options);
    }

    @NonNull
    @Deprecated
    public static PopupCounterHistoryOptionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupCounterHistoryOptionsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_counter_history_options, viewGroup, z, obj);
    }

    @NonNull
    public static PopupCounterHistoryOptionsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupCounterHistoryOptionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupCounterHistoryOptionsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_counter_history_options, null, false, obj);
    }
}
