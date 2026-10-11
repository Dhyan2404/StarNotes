package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ColorView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class ItemColorSetBinding extends ViewDataBinding {

    @NonNull
    public final ColorView grid1;

    @NonNull
    public final ColorView grid2;

    @NonNull
    public final ColorView grid3;

    @NonNull
    public final ColorView grid4;

    @NonNull
    public final ColorView grid5;

    @NonNull
    public final TintLinearLayout gridLayout;

    @NonNull
    public final TintImageView ivMenu;

    @NonNull
    public final TintTextView nameText;

    @NonNull
    public final ShadowLayout shadowLayout;

    public ItemColorSetBinding(Object obj, View view, int i, ColorView colorView, ColorView colorView2, ColorView colorView3, ColorView colorView4, ColorView colorView5, TintLinearLayout tintLinearLayout, TintImageView tintImageView, TintTextView tintTextView, ShadowLayout shadowLayout) {
        super(obj, view, i);
        this.grid1 = colorView;
        this.grid2 = colorView2;
        this.grid3 = colorView3;
        this.grid4 = colorView4;
        this.grid5 = colorView5;
        this.gridLayout = tintLinearLayout;
        this.ivMenu = tintImageView;
        this.nameText = tintTextView;
        this.shadowLayout = shadowLayout;
    }

    public static ItemColorSetBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemColorSetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemColorSetBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemColorSetBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_color_set);
    }

    @NonNull
    @Deprecated
    public static ItemColorSetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemColorSetBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_color_set, viewGroup, z, obj);
    }

    @NonNull
    public static ItemColorSetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemColorSetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemColorSetBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_color_set, null, false, obj);
    }
}
