package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemFeedbackPictureLayoutBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivDelete;

    @NonNull
    public final ShapeableImageView ivNoteThumbnail;

    @NonNull
    public final TintView vNoteThumbnailBroder;

    public ItemFeedbackPictureLayoutBinding(Object obj, View view, int i, TintImageView tintImageView, ShapeableImageView shapeableImageView, TintView tintView) {
        super(obj, view, i);
        this.ivDelete = tintImageView;
        this.ivNoteThumbnail = shapeableImageView;
        this.vNoteThumbnailBroder = tintView;
    }

    public static ItemFeedbackPictureLayoutBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemFeedbackPictureLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemFeedbackPictureLayoutBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemFeedbackPictureLayoutBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_feedback_picture_layout);
    }

    @NonNull
    @Deprecated
    public static ItemFeedbackPictureLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemFeedbackPictureLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_feedback_picture_layout, viewGroup, z, obj);
    }

    @NonNull
    public static ItemFeedbackPictureLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemFeedbackPictureLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemFeedbackPictureLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_feedback_picture_layout, null, false, obj);
    }
}
