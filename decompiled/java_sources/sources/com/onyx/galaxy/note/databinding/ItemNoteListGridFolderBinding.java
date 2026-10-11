package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.p039ui.EllipsizingTextView;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;

/* loaded from: classes9.dex */
public final class ItemNoteListGridFolderBinding implements ViewBinding {

    @NonNull
    public final TintCheckBox cbSel;

    @NonNull
    public final ConstraintLayout clThumbnail;

    @NonNull
    public final ConstraintLayout clsRoot;

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57084e;

    @NonNull
    public final FrameLayout flRoot;

    @NonNull
    public final ShapeableImageView ivFaceBottom;

    @NonNull
    public final ShapeableImageView ivFaceFourthTop;

    @NonNull
    public final ShapeableImageView ivFaceSecTop;

    @NonNull
    public final ShapeableImageView ivFaceThrTop;

    @NonNull
    public final ShapeableImageView ivFaceTop;

    @NonNull
    public final ImageView ivThumbnail;

    @NonNull
    public final TagsLinearLayout llTags;

    @NonNull
    public final EllipsizingTextView tvName;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final View vClickOpen;

    @NonNull
    public final View vClickOption;

    @NonNull
    public final TintView vDragBottom;

    @NonNull
    public final TintView vDragIn;

    @NonNull
    public final TintView vDragTop;

    @NonNull
    public final View vFolderBottomShadow;

    public ItemNoteListGridFolderBinding(@NonNull FrameLayout frameLayout, @NonNull TintCheckBox tintCheckBox, @NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull FrameLayout frameLayout2, @NonNull ShapeableImageView shapeableImageView, @NonNull ShapeableImageView shapeableImageView2, @NonNull ShapeableImageView shapeableImageView3, @NonNull ShapeableImageView shapeableImageView4, @NonNull ShapeableImageView shapeableImageView5, @NonNull ImageView imageView, @NonNull TagsLinearLayout tagsLinearLayout, @NonNull EllipsizingTextView ellipsizingTextView, @NonNull TintTextView tintTextView, @NonNull View view, @NonNull View view2, @NonNull TintView tintView, @NonNull TintView tintView2, @NonNull TintView tintView3, @NonNull View view3) {
        this.f57084e = frameLayout;
        this.cbSel = tintCheckBox;
        this.clThumbnail = constraintLayout;
        this.clsRoot = constraintLayout2;
        this.flRoot = frameLayout2;
        this.ivFaceBottom = shapeableImageView;
        this.ivFaceFourthTop = shapeableImageView2;
        this.ivFaceSecTop = shapeableImageView3;
        this.ivFaceThrTop = shapeableImageView4;
        this.ivFaceTop = shapeableImageView5;
        this.ivThumbnail = imageView;
        this.llTags = tagsLinearLayout;
        this.tvName = ellipsizingTextView;
        this.tvTime = tintTextView;
        this.vClickOpen = view;
        this.vClickOption = view2;
        this.vDragBottom = tintView;
        this.vDragIn = tintView2;
        this.vDragTop = tintView3;
        this.vFolderBottomShadow = view3;
    }

    @NonNull
    public static ItemNoteListGridFolderBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        int i = C10651R.id.cb_sel;
        TintCheckBox tintCheckBox = (TintCheckBox) ViewBindings.findChildViewById(view, i);
        if (tintCheckBox != null) {
            i = C10651R.id.cl_thumbnail;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C10651R.id.cls_root;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout2 != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i = C10651R.id.iv_face_bottom;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                    if (shapeableImageView != null) {
                        i = C10651R.id.iv_face_fourth_top;
                        ShapeableImageView shapeableImageView2 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                        if (shapeableImageView2 != null) {
                            i = C10651R.id.iv_face_sec_top;
                            ShapeableImageView shapeableImageView3 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                            if (shapeableImageView3 != null) {
                                i = C10651R.id.iv_face_thr_top;
                                ShapeableImageView shapeableImageView4 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                                if (shapeableImageView4 != null) {
                                    i = C10651R.id.iv_face_top;
                                    ShapeableImageView shapeableImageView5 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                                    if (shapeableImageView5 != null) {
                                        i = C10651R.id.iv_thumbnail;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                        if (imageView != null) {
                                            i = C10651R.id.ll_tags;
                                            TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (tagsLinearLayout != null) {
                                                i = C10651R.id.tv_name;
                                                EllipsizingTextView ellipsizingTextView = (EllipsizingTextView) ViewBindings.findChildViewById(view, i);
                                                if (ellipsizingTextView != null) {
                                                    i = C10651R.id.tv_time;
                                                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                    if (tintTextView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_open))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_option))) != null) {
                                                        i = C10651R.id.v_drag_bottom;
                                                        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                                        if (tintView != null) {
                                                            i = C10651R.id.v_drag_in;
                                                            TintView tintView2 = (TintView) ViewBindings.findChildViewById(view, i);
                                                            if (tintView2 != null) {
                                                                i = C10651R.id.v_drag_top;
                                                                TintView tintView3 = (TintView) ViewBindings.findChildViewById(view, i);
                                                                if (tintView3 != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_folder_bottom_shadow))) != null) {
                                                                    return new ItemNoteListGridFolderBinding(frameLayout, tintCheckBox, constraintLayout, constraintLayout2, frameLayout, shapeableImageView, shapeableImageView2, shapeableImageView3, shapeableImageView4, shapeableImageView5, imageView, tagsLinearLayout, ellipsizingTextView, tintTextView, findChildViewById, findChildViewById2, tintView, tintView2, tintView3, findChildViewById3);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemNoteListGridFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNoteListGridFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_note_list_grid_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57084e;
    }
}
