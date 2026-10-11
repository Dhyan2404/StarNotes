package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.RoundImageView;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class ItemNotePageThumbnailBinding extends ViewDataBinding {

    @NonNull
    public final ShadowLayout card;

    @NonNull
    public final TintCheckBox checkbox;

    @NonNull
    public final RoundImageView image;

    @NonNull
    public final TintTextView tvIndex;

    public ItemNotePageThumbnailBinding(Object obj, View view, int i, ShadowLayout shadowLayout, TintCheckBox tintCheckBox, RoundImageView roundImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.card = shadowLayout;
        this.checkbox = tintCheckBox;
        this.image = roundImageView;
        this.tvIndex = tintTextView;
    }

    public static ItemNotePageThumbnailBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemNotePageThumbnailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemNotePageThumbnailBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemNotePageThumbnailBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_note_page_thumbnail);
    }

    @NonNull
    @Deprecated
    public static ItemNotePageThumbnailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemNotePageThumbnailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_page_thumbnail, viewGroup, z, obj);
    }

    @NonNull
    public static ItemNotePageThumbnailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemNotePageThumbnailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemNotePageThumbnailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_page_thumbnail, null, false, obj);
    }
}
