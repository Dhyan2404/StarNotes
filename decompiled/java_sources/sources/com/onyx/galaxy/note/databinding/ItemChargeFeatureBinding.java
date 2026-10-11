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
public abstract class ItemChargeFeatureBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final View viewSelectedLine;

    public ItemChargeFeatureBinding(Object obj, View view, int i, TintTextView tintTextView, View view2) {
        super(obj, view, i);
        this.tvTitle = tintTextView;
        this.viewSelectedLine = view2;
    }

    public static ItemChargeFeatureBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemChargeFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemChargeFeatureBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemChargeFeatureBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_charge_feature);
    }

    @NonNull
    @Deprecated
    public static ItemChargeFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemChargeFeatureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_charge_feature, viewGroup, z, obj);
    }

    @NonNull
    public static ItemChargeFeatureBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemChargeFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemChargeFeatureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_charge_feature, null, false, obj);
    }
}
