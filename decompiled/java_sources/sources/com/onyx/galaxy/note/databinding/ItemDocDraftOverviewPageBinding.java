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
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class ItemDocDraftOverviewPageBinding extends ViewDataBinding {

    @NonNull
    public final ShadowLayout card;

    @NonNull
    public final TintCheckBox checkbox;

    @NonNull
    public final ImageView image;

    @NonNull
    public final LinearLayout imageContainer;

    @NonNull
    public final TintTextView title;

    public ItemDocDraftOverviewPageBinding(Object obj, View view, int i, ShadowLayout shadowLayout, TintCheckBox tintCheckBox, ImageView imageView, LinearLayout linearLayout, TintTextView tintTextView) {
        super(obj, view, i);
        this.card = shadowLayout;
        this.checkbox = tintCheckBox;
        this.image = imageView;
        this.imageContainer = linearLayout;
        this.title = tintTextView;
    }

    public static ItemDocDraftOverviewPageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemDocDraftOverviewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemDocDraftOverviewPageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemDocDraftOverviewPageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_doc_draft_overview_page);
    }

    @NonNull
    @Deprecated
    public static ItemDocDraftOverviewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemDocDraftOverviewPageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_draft_overview_page, viewGroup, z, obj);
    }

    @NonNull
    public static ItemDocDraftOverviewPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemDocDraftOverviewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemDocDraftOverviewPageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_draft_overview_page, null, false, obj);
    }
}
