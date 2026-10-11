package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemLassoElementBinding extends ViewDataBinding {

    @NonNull
    public final TintSwitchCompat ivSelect;

    @NonNull
    public final TintTextView tvTitle;

    public ItemLassoElementBinding(Object obj, View view, int i, TintSwitchCompat tintSwitchCompat, TintTextView tintTextView) {
        super(obj, view, i);
        this.ivSelect = tintSwitchCompat;
        this.tvTitle = tintTextView;
    }

    public static ItemLassoElementBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemLassoElementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemLassoElementBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemLassoElementBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_lasso_element);
    }

    @NonNull
    @Deprecated
    public static ItemLassoElementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemLassoElementBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_lasso_element, viewGroup, z, obj);
    }

    @NonNull
    public static ItemLassoElementBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemLassoElementBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemLassoElementBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_lasso_element, null, false, obj);
    }
}
