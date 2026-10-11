package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemFontImportBinding extends ViewDataBinding {

    @NonNull
    public final TintCheckBox icCheck;

    @NonNull
    public final TintImageView menuIcon;

    @NonNull
    public final TintTextView tvSize;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final TintTextView tvTitle;

    public ItemFontImportBinding(Object obj, View view, int i, TintCheckBox tintCheckBox, TintImageView tintImageView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.icCheck = tintCheckBox;
        this.menuIcon = tintImageView;
        this.tvSize = tintTextView;
        this.tvTime = tintTextView2;
        this.tvTitle = tintTextView3;
    }

    public static ItemFontImportBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemFontImportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemFontImportBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemFontImportBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_font_import);
    }

    @NonNull
    @Deprecated
    public static ItemFontImportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemFontImportBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_font_import, viewGroup, z, obj);
    }

    @NonNull
    public static ItemFontImportBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemFontImportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemFontImportBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_font_import, null, false, obj);
    }
}
