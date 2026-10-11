package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemNoteOverviewBinding extends ViewDataBinding {

    @NonNull
    public final ConstraintLayout clThumbnail;

    @NonNull
    public final TintImageView ivMore;

    @NonNull
    public final ShapeableImageView ivThumbnail;

    @NonNull
    public final ShapeableImageView ivThumbnailLock;

    @NonNull
    public final View noteThumbnailBottomShadow;

    @NonNull
    public final View noteThumbnailShadow;

    @NonNull
    public final TintTextView tvDate;

    @NonNull
    public final TintTextView tvName;

    @NonNull
    public final TintView vNoteThumbnailBroder;

    public ItemNoteOverviewBinding(Object obj, View view, int i, ConstraintLayout constraintLayout, TintImageView tintImageView, ShapeableImageView shapeableImageView, ShapeableImageView shapeableImageView2, View view2, View view3, TintTextView tintTextView, TintTextView tintTextView2, TintView tintView) {
        super(obj, view, i);
        this.clThumbnail = constraintLayout;
        this.ivMore = tintImageView;
        this.ivThumbnail = shapeableImageView;
        this.ivThumbnailLock = shapeableImageView2;
        this.noteThumbnailBottomShadow = view2;
        this.noteThumbnailShadow = view3;
        this.tvDate = tintTextView;
        this.tvName = tintTextView2;
        this.vNoteThumbnailBroder = tintView;
    }

    public static ItemNoteOverviewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemNoteOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemNoteOverviewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemNoteOverviewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_note_overview);
    }

    @NonNull
    @Deprecated
    public static ItemNoteOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemNoteOverviewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_overview, viewGroup, z, obj);
    }

    @NonNull
    public static ItemNoteOverviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemNoteOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemNoteOverviewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_note_overview, null, false, obj);
    }
}
