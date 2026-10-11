package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
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
public final class ItemNoteListLinearPageTagPortraitBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clThumbnail;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57093e;

    @NonNull
    public final ShapeableImageView ivLockThumbnail;

    @NonNull
    public final ShapeableImageView ivThumbnail;

    @NonNull
    public final TagsLinearLayout llTags;

    @NonNull
    public final View noteThumbnailBottomShadow;

    @NonNull
    public final View noteThumbnailShadow;

    @NonNull
    public final TintTextView tvName;

    @NonNull
    public final TextView tvNotePageIndex;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final View vClickOpen;

    @NonNull
    public final TintView vDivider;

    @NonNull
    public final TintView vNoteThumbnailBroder;

    public ItemNoteListLinearPageTagPortraitBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ShapeableImageView shapeableImageView, @NonNull ShapeableImageView shapeableImageView2, @NonNull TagsLinearLayout tagsLinearLayout, @NonNull View view, @NonNull View view2, @NonNull TintTextView tintTextView, @NonNull TextView textView, @NonNull TintTextView tintTextView2, @NonNull View view3, @NonNull TintView tintView, @NonNull TintView tintView2) {
        this.f57093e = constraintLayout;
        this.clThumbnail = constraintLayout2;
        this.ivLockThumbnail = shapeableImageView;
        this.ivThumbnail = shapeableImageView2;
        this.llTags = tagsLinearLayout;
        this.noteThumbnailBottomShadow = view;
        this.noteThumbnailShadow = view2;
        this.tvName = tintTextView;
        this.tvNotePageIndex = textView;
        this.tvTime = tintTextView2;
        this.vClickOpen = view3;
        this.vDivider = tintView;
        this.vNoteThumbnailBroder = tintView2;
    }

    @NonNull
    public static ItemNoteListLinearPageTagPortraitBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        int i = C10651R.id.cl_thumbnail;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C10651R.id.iv_lock_thumbnail;
            ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
            if (shapeableImageView != null) {
                i = C10651R.id.iv_thumbnail;
                ShapeableImageView shapeableImageView2 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                if (shapeableImageView2 != null) {
                    i = C10651R.id.ll_tags;
                    TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) ViewBindings.findChildViewById(view, i);
                    if (tagsLinearLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_bottom_shadow))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow))) != null) {
                        i = C10651R.id.tv_name;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            i = C10651R.id.tv_note_page_index;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = C10651R.id.tv_time;
                                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView2 != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_open))) != null) {
                                    i = C10651R.id.v_divider;
                                    TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                    if (tintView != null) {
                                        i = C10651R.id.v_note_thumbnail_broder;
                                        TintView tintView2 = (TintView) ViewBindings.findChildViewById(view, i);
                                        if (tintView2 != null) {
                                            return new ItemNoteListLinearPageTagPortraitBinding((ConstraintLayout) view, constraintLayout, shapeableImageView, shapeableImageView2, tagsLinearLayout, findChildViewById, findChildViewById2, tintTextView, textView, tintTextView2, findChildViewById3, tintView, tintView2);
                                        }
                                    }
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
    public static ItemNoteListLinearPageTagPortraitBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNoteListLinearPageTagPortraitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_note_list_linear_page_tag_portrait, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57093e;
    }
}
