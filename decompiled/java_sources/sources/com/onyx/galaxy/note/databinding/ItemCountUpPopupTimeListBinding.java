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
public abstract class ItemCountUpPopupTimeListBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvCountName;

    @NonNull
    public final TintTextView tvTotalTime;

    public ItemCountUpPopupTimeListBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.tvCountName = tintTextView;
        this.tvTotalTime = tintTextView2;
    }

    public static ItemCountUpPopupTimeListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemCountUpPopupTimeListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemCountUpPopupTimeListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemCountUpPopupTimeListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_count_up_popup_time_list);
    }

    @NonNull
    @Deprecated
    public static ItemCountUpPopupTimeListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemCountUpPopupTimeListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_count_up_popup_time_list, viewGroup, z, obj);
    }

    @NonNull
    public static ItemCountUpPopupTimeListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemCountUpPopupTimeListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemCountUpPopupTimeListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_count_up_popup_time_list, null, false, obj);
    }
}
