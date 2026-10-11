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
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;

/* loaded from: classes9.dex */
public final class ItemNoteListLinearNotePortraitBinding implements ViewBinding {

    @NonNull
    public final TintCheckBox cbSel;

    @NonNull
    public final ConstraintLayout clThumbnail;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57091e;

    @NonNull
    public final ShapeableImageView ivLockThumbnail;

    @NonNull
    public final TintImageView ivOption;

    @NonNull
    public final TintImageView ivSyncStatus;

    @NonNull
    public final ShapeableImageView ivThumbnail;

    @NonNull
    public final TagsLinearLayout llTags;

    @NonNull
    public final View noteThumbnailBottomShadow;

    @NonNull
    public final View noteThumbnailShadow;

    @NonNull
    public final CircularProgressIndicator progressSync;

    @NonNull
    public final TintTextView tvName;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final View vClickOpen;

    @NonNull
    public final View vClickOption;

    @NonNull
    public final TintView vDragBottom;

    @NonNull
    public final TintView vDragTop;

    @NonNull
    public final TintView vNoteThumbnailBroder;

    public ItemNoteListLinearNotePortraitBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TintCheckBox tintCheckBox, @NonNull ConstraintLayout constraintLayout2, @NonNull ShapeableImageView shapeableImageView, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull ShapeableImageView shapeableImageView2, @NonNull TagsLinearLayout tagsLinearLayout, @NonNull View view, @NonNull View view2, @NonNull CircularProgressIndicator circularProgressIndicator, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull View view3, @NonNull View view4, @NonNull TintView tintView, @NonNull TintView tintView2, @NonNull TintView tintView3) {
        this.f57091e = constraintLayout;
        this.cbSel = tintCheckBox;
        this.clThumbnail = constraintLayout2;
        this.ivLockThumbnail = shapeableImageView;
        this.ivOption = tintImageView;
        this.ivSyncStatus = tintImageView2;
        this.ivThumbnail = shapeableImageView2;
        this.llTags = tagsLinearLayout;
        this.noteThumbnailBottomShadow = view;
        this.noteThumbnailShadow = view2;
        this.progressSync = circularProgressIndicator;
        this.tvName = tintTextView;
        this.tvTime = tintTextView2;
        this.vClickOpen = view3;
        this.vClickOption = view4;
        this.vDragBottom = tintView;
        this.vDragTop = tintView2;
        this.vNoteThumbnailBroder = tintView3;
    }

    @NonNull
    public static ItemNoteListLinearNotePortraitBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        View findChildViewById4;
        int i = C10651R.id.cb_sel;
        TintCheckBox tintCheckBox = (TintCheckBox) ViewBindings.findChildViewById(view, i);
        if (tintCheckBox != null) {
            i = C10651R.id.cl_thumbnail;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C10651R.id.iv_lock_thumbnail;
                ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                if (shapeableImageView != null) {
                    i = C10651R.id.iv_option;
                    TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView != null) {
                        i = C10651R.id.iv_sync_status;
                        TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                        if (tintImageView2 != null) {
                            i = C10651R.id.iv_thumbnail;
                            ShapeableImageView shapeableImageView2 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                            if (shapeableImageView2 != null) {
                                i = C10651R.id.ll_tags;
                                TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) ViewBindings.findChildViewById(view, i);
                                if (tagsLinearLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_bottom_shadow))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow))) != null) {
                                    i = C10651R.id.progress_sync;
                                    CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, i);
                                    if (circularProgressIndicator != null) {
                                        i = C10651R.id.tv_name;
                                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView != null) {
                                            i = C10651R.id.tv_time;
                                            TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                            if (tintTextView2 != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_open))) != null && (findChildViewById4 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_option))) != null) {
                                                i = C10651R.id.v_drag_bottom;
                                                TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                                if (tintView != null) {
                                                    i = C10651R.id.v_drag_top;
                                                    TintView tintView2 = (TintView) ViewBindings.findChildViewById(view, i);
                                                    if (tintView2 != null) {
                                                        i = C10651R.id.v_note_thumbnail_broder;
                                                        TintView tintView3 = (TintView) ViewBindings.findChildViewById(view, i);
                                                        if (tintView3 != null) {
                                                            return new ItemNoteListLinearNotePortraitBinding((ConstraintLayout) view, tintCheckBox, constraintLayout, shapeableImageView, tintImageView, tintImageView2, shapeableImageView2, tagsLinearLayout, findChildViewById, findChildViewById2, circularProgressIndicator, tintTextView, tintTextView2, findChildViewById3, findChildViewById4, tintView, tintView2, tintView3);
                                                        }
                                                    }
                                                }
                                            }
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
    public static ItemNoteListLinearNotePortraitBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNoteListLinearNotePortraitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_note_list_linear_note_portrait, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57091e;
    }
}
