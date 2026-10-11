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
public abstract class ItemThemeHeaderBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvThemeTitle;

    public ItemThemeHeaderBinding(Object obj, View view, int i, TintTextView tintTextView) {
        super(obj, view, i);
        this.tvThemeTitle = tintTextView;
    }

    public static ItemThemeHeaderBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemThemeHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemThemeHeaderBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemThemeHeaderBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_theme_header);
    }

    @NonNull
    @Deprecated
    public static ItemThemeHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemThemeHeaderBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_theme_header, viewGroup, z, obj);
    }

    @NonNull
    public static ItemThemeHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemThemeHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemThemeHeaderBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_theme_header, null, false, obj);
    }
}
