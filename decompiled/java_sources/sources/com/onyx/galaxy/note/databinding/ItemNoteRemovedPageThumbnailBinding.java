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
public abstract class ItemNoteRemovedPageThumbnailBinding extends ViewDataBinding {

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
    public final TintTextView removedDate;

    @NonNull
    public final TintTextView restorePos;

    public ItemNoteRemovedPageThumbnailBinding(Object obj, View view, int i, ShadowLayout shadowLayout, TintCheckBox tintCheckBox, ImageView imageView, LinearLayout linearLayout, TintImageView tintImageView, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.card = shadowLayout;
        this.checkbox = tintCheckBox;
        this.image = imageView;
        this.imageContainer = linearLayout;
        this.moreSettings = tintImageView;
        this.removedDate = tintTextView;
        this.restorePos = tintTextView2;
    }

    public static ItemNoteRemovedPageThumbnailBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemNoteRemovedPageThumbnailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemNoteRemovedPageThumbnailBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemNoteRemovedPageThumbnailBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_note_removed_page_thumbnail);
    }

    @NonNull
    @Deprecated
    public static ItemNoteRemovedPageThumbnailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemNoteRemovedPageThumbnailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_removed_page_thumbnail, viewGroup, z, obj);
    }

    @NonNull
    public static ItemNoteRemovedPageThumbnailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemNoteRemovedPageThumbnailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemNoteRemovedPageThumbnailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_removed_page_thumbnail, null, false, obj);
    }
}
