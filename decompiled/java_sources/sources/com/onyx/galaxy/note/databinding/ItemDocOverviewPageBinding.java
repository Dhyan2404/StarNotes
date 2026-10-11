package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class ItemDocOverviewPageBinding extends ViewDataBinding {

    @NonNull
    public final ImageView bookmark;

    @NonNull
    public final ShadowLayout card;

    @NonNull
    public final TintCheckBox checkbox;

    @NonNull
    public final ImageView image;

    @NonNull
    public final LinearLayout imageContainer;

    @NonNull
    public final TintImageView moreSettings;

    @NonNull
    public final TintTextView title;

    public ItemDocOverviewPageBinding(Object obj, View view, int i, ImageView imageView, ShadowLayout shadowLayout, TintCheckBox tintCheckBox, ImageView imageView2, LinearLayout linearLayout, TintImageView tintImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.bookmark = imageView;
        this.card = shadowLayout;
        this.checkbox = tintCheckBox;
        this.image = imageView2;
        this.imageContainer = linearLayout;
        this.moreSettings = tintImageView;
        this.title = tintTextView;
    }

    public static ItemDocOverviewPageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemDocOverviewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemDocOverviewPageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemDocOverviewPageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_doc_overview_page);
    }

    @NonNull
    @Deprecated
    public static ItemDocOverviewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemDocOverviewPageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_overview_page, viewGroup, z, obj);
    }

    @NonNull
    public static ItemDocOverviewPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemDocOverviewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemDocOverviewPageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_overview_page, null, false, obj);
    }
}
