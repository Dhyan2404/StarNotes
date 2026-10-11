package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemPageMarginSizeBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout itemContainer;

    @NonNull
    public final TintImageView ivSelect;

    @NonNull
    public final TintTextView tvName;

    public ItemPageMarginSizeBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, TintImageView tintImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.itemContainer = tintConstraintLayout;
        this.ivSelect = tintImageView;
        this.tvName = tintTextView;
    }

    public static ItemPageMarginSizeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemPageMarginSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemPageMarginSizeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemPageMarginSizeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_page_margin_size);
    }

    @NonNull
    @Deprecated
    public static ItemPageMarginSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemPageMarginSizeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_page_margin_size, viewGroup, z, obj);
    }

    @NonNull
    public static ItemPageMarginSizeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemPageMarginSizeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemPageMarginSizeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_page_margin_size, null, false, obj);
    }
}
