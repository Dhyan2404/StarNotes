package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.onyx.android.sdk.p039ui.EllipsizingTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;

/* loaded from: classes9.dex */
public final class ItemSelectNoteListGridNoteLandBinding implements ViewBinding {

    @NonNull
    public final CheckBox cbSel;

    @NonNull
    public final ConstraintLayout clThumbnail;

    @NonNull
    public final ConstraintLayout clsRoot;

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57173e;

    @NonNull
    public final FrameLayout flRoot;

    @NonNull
    public final ShapeableImageView ivNoteLockThumbnail;

    @NonNull
    public final TintImageView ivSyncStatus;

    @NonNull
    public final ShapeableImageView ivThumbnail;

    @NonNull
    public final TagsLinearLayout llTags;

    @NonNull
    public final View noteThumbnailShadowBottomLand;

    @NonNull
    public final View noteThumbnailShadowLand;

    @NonNull
    public final CircularProgressIndicator progressSync;

    @NonNull
    public final EllipsizingTextView tvName;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final View vClickOpen;

    @NonNull
    public final View vClickOption;

    @NonNull
    public final TintView vNoteThumbnailLandBroder;

    public ItemSelectNoteListGridNoteLandBinding(@NonNull FrameLayout frameLayout, @NonNull CheckBox checkBox, @NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull FrameLayout frameLayout2, @NonNull ShapeableImageView shapeableImageView, @NonNull TintImageView tintImageView, @NonNull ShapeableImageView shapeableImageView2, @NonNull TagsLinearLayout tagsLinearLayout, @NonNull View view, @NonNull View view2, @NonNull CircularProgressIndicator circularProgressIndicator, @NonNull EllipsizingTextView ellipsizingTextView, @NonNull TintTextView tintTextView, @NonNull View view3, @NonNull View view4, @NonNull TintView tintView) {
        this.f57173e = frameLayout;
        this.cbSel = checkBox;
        this.clThumbnail = constraintLayout;
        this.clsRoot = constraintLayout2;
        this.flRoot = frameLayout2;
        this.ivNoteLockThumbnail = shapeableImageView;
        this.ivSyncStatus = tintImageView;
        this.ivThumbnail = shapeableImageView2;
        this.llTags = tagsLinearLayout;
        this.noteThumbnailShadowBottomLand = view;
        this.noteThumbnailShadowLand = view2;
        this.progressSync = circularProgressIndicator;
        this.tvName = ellipsizingTextView;
        this.tvTime = tintTextView;
        this.vClickOpen = view3;
        this.vClickOption = view4;
        this.vNoteThumbnailLandBroder = tintView;
    }

    @NonNull
    public static ItemSelectNoteListGridNoteLandBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        View findChildViewById4;
        int i = C10651R.id.cb_sel;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, i);
        if (checkBox != null) {
            i = C10651R.id.cl_thumbnail;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C10651R.id.cls_root;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout2 != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i = C10651R.id.iv_note_lock_thumbnail;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                    if (shapeableImageView != null) {
                        i = C10651R.id.iv_sync_status;
                        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                        if (tintImageView != null) {
                            i = C10651R.id.iv_thumbnail;
                            ShapeableImageView shapeableImageView2 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                            if (shapeableImageView2 != null) {
                                i = C10651R.id.ll_tags;
                                TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) ViewBindings.findChildViewById(view, i);
                                if (tagsLinearLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow_bottom_land))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow_land))) != null) {
                                    i = C10651R.id.progress_sync;
                                    CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.findChildViewById(view, i);
                                    if (circularProgressIndicator != null) {
                                        i = C10651R.id.tv_name;
                                        EllipsizingTextView ellipsizingTextView = (EllipsizingTextView) ViewBindings.findChildViewById(view, i);
                                        if (ellipsizingTextView != null) {
                                            i = C10651R.id.tv_time;
                                            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                                            if (tintTextView != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_open))) != null && (findChildViewById4 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_option))) != null) {
                                                i = C10651R.id.v_note_thumbnail_land_broder;
                                                TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                                if (tintView != null) {
                                                    return new ItemSelectNoteListGridNoteLandBinding(frameLayout, checkBox, constraintLayout, constraintLayout2, frameLayout, shapeableImageView, tintImageView, shapeableImageView2, tagsLinearLayout, findChildViewById, findChildViewById2, circularProgressIndicator, ellipsizingTextView, tintTextView, findChildViewById3, findChildViewById4, tintView);
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
    public static ItemSelectNoteListGridNoteLandBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSelectNoteListGridNoteLandBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_select_note_list_grid_note_land, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57173e;
    }
}
