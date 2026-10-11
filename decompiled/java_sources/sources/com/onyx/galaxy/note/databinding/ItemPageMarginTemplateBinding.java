package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemPageMarginTemplateBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivSelected;

    @NonNull
    public final TintImageView templateThumbnail;

    public ItemPageMarginTemplateBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2) {
        super(obj, view, i);
        this.ivSelected = tintImageView;
        this.templateThumbnail = tintImageView2;
    }

    public static ItemPageMarginTemplateBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemPageMarginTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemPageMarginTemplateBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemPageMarginTemplateBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_page_margin_template);
    }

    @NonNull
    @Deprecated
    public static ItemPageMarginTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemPageMarginTemplateBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_page_margin_template, viewGroup, z, obj);
    }

    @NonNull
    public static ItemPageMarginTemplateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemPageMarginTemplateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemPageMarginTemplateBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_page_margin_template, null, false, obj);
    }
}
