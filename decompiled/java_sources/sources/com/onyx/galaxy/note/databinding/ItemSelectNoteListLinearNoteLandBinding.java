package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;

/* loaded from: classes9.dex */
public final class ItemSelectNoteListLinearNoteLandBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clThumbnail;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57175e;

    @NonNull
    public final ShapeableImageView ivNoteLockThumbnail;

    @NonNull
    public final ShapeableImageView ivThumbnail;

    @NonNull
    public final TagsLinearLayout llTags;

    @NonNull
    public final View noteThumbnailShadowBottomLand;

    @NonNull
    public final View noteThumbnailShadowLand;

    @NonNull
    public final TintTextView tvName;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final TintView vNoteThumbnailLandBroder;

    public ItemSelectNoteListLinearNoteLandBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ShapeableImageView shapeableImageView, @NonNull ShapeableImageView shapeableImageView2, @NonNull TagsLinearLayout tagsLinearLayout, @NonNull View view, @NonNull View view2, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintView tintView) {
        this.f57175e = constraintLayout;
        this.clThumbnail = constraintLayout2;
        this.ivNoteLockThumbnail = shapeableImageView;
        this.ivThumbnail = shapeableImageView2;
        this.llTags = tagsLinearLayout;
        this.noteThumbnailShadowBottomLand = view;
        this.noteThumbnailShadowLand = view2;
        this.tvName = tintTextView;
        this.tvTime = tintTextView2;
        this.vNoteThumbnailLandBroder = tintView;
    }

    @NonNull
    public static ItemSelectNoteListLinearNoteLandBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        int i = C10651R.id.cl_thumbnail;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C10651R.id.iv_note_lock_thumbnail;
            ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
            if (shapeableImageView != null) {
                i = C10651R.id.iv_thumbnail;
                ShapeableImageView shapeableImageView2 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                if (shapeableImageView2 != null) {
                    i = C10651R.id.ll_tags;
                    TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) ViewBindings.findChildViewById(view, i);
                    if (tagsLinearLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow_bottom_land))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow_land))) != null) {
                        i = C10651R.id.tv_name;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            i = C10651R.id.tv_time;
                            TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView2 != null) {
                                i = C10651R.id.v_note_thumbnail_land_broder;
                                TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                if (tintView != null) {
                                    return new ItemSelectNoteListLinearNoteLandBinding((ConstraintLayout) view, constraintLayout, shapeableImageView, shapeableImageView2, tagsLinearLayout, findChildViewById, findChildViewById2, tintTextView, tintTextView2, tintView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemSelectNoteListLinearNoteLandBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSelectNoteListLinearNoteLandBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_select_note_list_linear_note_land, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57175e;
    }
}
