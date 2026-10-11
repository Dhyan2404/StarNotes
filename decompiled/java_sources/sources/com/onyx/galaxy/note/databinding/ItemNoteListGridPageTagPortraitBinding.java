package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.p039ui.EllipsizingTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.TagsLinearLayout;

/* loaded from: classes9.dex */
public final class ItemNoteListGridPageTagPortraitBinding implements ViewBinding {

    @NonNull
    public final CheckBox cbSel;

    @NonNull
    public final ConstraintLayout clThumbnail;

    @NonNull
    public final ConstraintLayout clsRoot;

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57088e;

    @NonNull
    public final FrameLayout flRoot;

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
    public final EllipsizingTextView tvName;

    @NonNull
    public final TextView tvNotePageIndex;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final View vClickOpen;

    @NonNull
    public final View vClickOption;

    @NonNull
    public final TintView vNoteThumbnailBroder;

    public ItemNoteListGridPageTagPortraitBinding(@NonNull FrameLayout frameLayout, @NonNull CheckBox checkBox, @NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull FrameLayout frameLayout2, @NonNull ShapeableImageView shapeableImageView, @NonNull ShapeableImageView shapeableImageView2, @NonNull TagsLinearLayout tagsLinearLayout, @NonNull View view, @NonNull View view2, @NonNull EllipsizingTextView ellipsizingTextView, @NonNull TextView textView, @NonNull TintTextView tintTextView, @NonNull View view3, @NonNull View view4, @NonNull TintView tintView) {
        this.f57088e = frameLayout;
        this.cbSel = checkBox;
        this.clThumbnail = constraintLayout;
        this.clsRoot = constraintLayout2;
        this.flRoot = frameLayout2;
        this.ivLockThumbnail = shapeableImageView;
        this.ivThumbnail = shapeableImageView2;
        this.llTags = tagsLinearLayout;
        this.noteThumbnailBottomShadow = view;
        this.noteThumbnailShadow = view2;
        this.tvName = ellipsizingTextView;
        this.tvNotePageIndex = textView;
        this.tvTime = tintTextView;
        this.vClickOpen = view3;
        this.vClickOption = view4;
        this.vNoteThumbnailBroder = tintView;
    }

    @NonNull
    public static ItemNoteListGridPageTagPortraitBinding bind(@NonNull View view) {
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
                                EllipsizingTextView ellipsizingTextView = (EllipsizingTextView) ViewBindings.findChildViewById(view, i);
                                if (ellipsizingTextView != null) {
                                    i = C10651R.id.tv_note_page_index;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = C10651R.id.tv_time;
                                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_open))) != null && (findChildViewById4 = ViewBindings.findChildViewById(view, (i = C10651R.id.v_click_option))) != null) {
                                            i = C10651R.id.v_note_thumbnail_broder;
                                            TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                            if (tintView != null) {
                                                return new ItemNoteListGridPageTagPortraitBinding(frameLayout, checkBox, constraintLayout, constraintLayout2, frameLayout, shapeableImageView, shapeableImageView2, tagsLinearLayout, findChildViewById, findChildViewById2, ellipsizingTextView, textView, tintTextView, findChildViewById3, findChildViewById4, tintView);
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
    public static ItemNoteListGridPageTagPortraitBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNoteListGridPageTagPortraitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_note_list_grid_page_tag_portrait, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57088e;
    }
}
