package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemThemeBinding extends ViewDataBinding {

    @NonNull
    public final TintCheckBox cbSel;

    @NonNull
    public final TintView ivItemThemeStroke;

    @NonNull
    public final ImageView ivPayment;

    @NonNull
    public final ImageView ivThemeThumbnail;

    @NonNull
    public final ConstraintLayout themeContainer;

    @NonNull
    public final TintTextView tvName;

    @NonNull
    public final TextView tvVipStyle;

    public ItemThemeBinding(Object obj, View view, int i, TintCheckBox tintCheckBox, TintView tintView, ImageView imageView, ImageView imageView2, ConstraintLayout constraintLayout, TintTextView tintTextView, TextView textView) {
        super(obj, view, i);
        this.cbSel = tintCheckBox;
        this.ivItemThemeStroke = tintView;
        this.ivPayment = imageView;
        this.ivThemeThumbnail = imageView2;
        this.themeContainer = constraintLayout;
        this.tvName = tintTextView;
        this.tvVipStyle = textView;
    }

    public static ItemThemeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemThemeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemThemeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_theme);
    }

    @NonNull
    @Deprecated
    public static ItemThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemThemeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_theme, viewGroup, z, obj);
    }

    @NonNull
    public static ItemThemeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemThemeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_theme, null, false, obj);
    }
}
