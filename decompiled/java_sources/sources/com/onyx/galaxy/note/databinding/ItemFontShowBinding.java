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
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemFontShowBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView deleteButton;

    @NonNull
    public final TintImageView downloadButton;

    @NonNull
    public final TintImageView downloadingButton;

    @NonNull
    public final TintLinearLayout funcBtnContainer;

    @NonNull
    public final TintImageView previewImage;

    @NonNull
    public final TintImageView selectButton;

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final TintView vLine;

    public ItemFontShowBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintLinearLayout tintLinearLayout, TintImageView tintImageView4, TintImageView tintImageView5, TintTextView tintTextView, TintView tintView) {
        super(obj, view, i);
        this.deleteButton = tintImageView;
        this.downloadButton = tintImageView2;
        this.downloadingButton = tintImageView3;
        this.funcBtnContainer = tintLinearLayout;
        this.previewImage = tintImageView4;
        this.selectButton = tintImageView5;
        this.tvTitle = tintTextView;
        this.vLine = tintView;
    }

    public static ItemFontShowBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemFontShowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemFontShowBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemFontShowBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_font_show);
    }

    @NonNull
    @Deprecated
    public static ItemFontShowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemFontShowBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_font_show, viewGroup, z, obj);
    }

    @NonNull
    public static ItemFontShowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemFontShowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemFontShowBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_font_show, null, false, obj);
    }
}
