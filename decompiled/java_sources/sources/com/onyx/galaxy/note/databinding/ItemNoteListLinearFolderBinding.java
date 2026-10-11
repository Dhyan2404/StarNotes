package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;

/* loaded from: classes9.dex */
public final class ItemNoteListLinearFolderBinding implements ViewBinding {

    @NonNull
    public final TintCheckBox cbSel;

    @NonNull
    public final ConstraintLayout clThumbnail;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57089e;

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
    public final TintImageView ivOption;

    @NonNull
    public final ImageView ivThumbnail;

    @NonNull
    public final TagsLinearLayout llTags;

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
    public final TintView vDragIn;

    @NonNull
    public final TintView vDragTop;

    @NonNull
    public final View vFolderBottomShadow;

    public ItemNoteListLinearFolderBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TintCheckBox tintCheckBox, @NonNull ConstraintLayout constraintLayout2, @NonNull ShapeableImageView shapeableImageView, @NonNull ShapeableImageView shapeableImageView2, @NonNull ShapeableImageView shapeableImageView3, @NonNull ShapeableImageView shapeableImageView4, @NonNull ShapeableImageView shapeableImageView5, @NonNull TintImageView tintImageView, @NonNull ImageView imageView, @NonNull TagsLinearLayout tagsLinearLayout, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull View view, @NonNull View view2, @NonNull TintView tintView, @NonNull TintView tintView2, @NonNull TintView tintView3, @NonNull View view3) {
        this.f57089e = constraintLayout;
        this.cbSel = tintCheckBox;
        this.clThumbnail = constraintLayout2;
        this.ivFaceBottom = shapeableImageView;
        this.ivFaceFourthTop = shapeableImageView2;
        this.ivFaceSecTop = shapeableImageView3;
        this.ivFaceThrTop = shapeableImageView4;
        this.ivFaceTop = shapeableImageView5;
        this.ivOption = tintImageView;
        this.ivThumbnail = imageView;
        this.llTags = tagsLinearLayout;
        this.tvName = tintTextView;
        this.tvTime = tintTextView2;
        this.vClickOpen = view;
        this.vClickOption = view2;
        this.vDragBottom = tintView;
        this.vDragIn = tintView2;
        this.vDragTop = tintView3;
        this.vFolderBottomShadow = view3;
    }

    @NonNull
    public static ItemNoteListLinearFolderBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        int i = C10651R.id.cb_sel;
        TintCheckBox tintCheckBox = (TintCheckBox) ViewBindings.findChildViewById(view, i);
        if (tintCheckBox != null) {
            i = C10651R.id.cl_thumbnail;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
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
                                    i = C10651R.id.iv_option;
                                    TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                                    if (tintImageView != null) {
                                        i = C10651R.id.iv_thumbnail;
                                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                        if (imageView != null) {
                                            i = C10651R.id.ll_tags;
                                            TagsLinearLayout tagsLinearLayout = (TagsLinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (tagsLinearLayout != null) {
                                                i = C10651R.id.tv_name;
                                                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                if (tintTextView != null) {
                                                    i = C10651R.id.tv_time;
                                                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                    if (tintTextView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_open))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_option))) != null) {
                                                        i = C10651R.id.v_drag_bottom;
                                                        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                                        if (tintView != null) {
                                                            i = C10651R.id.v_drag_in;
                                                            TintView tintView2 = (TintView) ViewBindings.findChildViewById(view, i);
                                                            if (tintView2 != null) {
                                                                i = C10651R.id.v_drag_top;
                                                                TintView tintView3 = (TintView) ViewBindings.findChildViewById(view, i);
                                                                if (tintView3 != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_folder_bottom_shadow))) != null) {
                                                                    return new ItemNoteListLinearFolderBinding((ConstraintLayout) view, tintCheckBox, constraintLayout, shapeableImageView, shapeableImageView2, shapeableImageView3, shapeableImageView4, shapeableImageView5, tintImageView, imageView, tagsLinearLayout, tintTextView, tintTextView2, findChildViewById, findChildViewById2, tintView, tintView2, tintView3, findChildViewById3);
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
    public static ItemNoteListLinearFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNoteListLinearFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_note_list_linear_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57089e;
    }
}
