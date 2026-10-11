package com.onyx.android.sdk.pay.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public abstract class ItemHuaweiProductInfoBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView productName;

    @NonNull
    public final TextView productPrice;

    public ItemHuaweiProductInfoBinding(Object obj, View view, int i, TintTextView tintTextView, TextView textView) {
        super(obj, view, i);
        this.productName = tintTextView;
        this.productPrice = textView;
    }

    public static ItemHuaweiProductInfoBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemHuaweiProductInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemHuaweiProductInfoBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemHuaweiProductInfoBinding) ViewDataBinding.bind(obj, view, C7520R.layout.item_huawei_product_info);
    }

    @NonNull
    @Deprecated
    public static ItemHuaweiProductInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemHuaweiProductInfoBinding) ViewDataBinding.inflateInternal(layoutInflater, C7520R.layout.item_huawei_product_info, viewGroup, z, obj);
    }

    @NonNull
    public static ItemHuaweiProductInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemHuaweiProductInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemHuaweiProductInfoBinding) ViewDataBinding.inflateInternal(layoutInflater, C7520R.layout.item_huawei_product_info, null, false, obj);
    }
}
