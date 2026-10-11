package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemSearchNoteSectionHwrBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clsNote;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57160e;

    @NonNull
    public final Group groupNoteThumbnail;

    @NonNull
    public final Group groupNoteThumbnailLand;

    @NonNull
    public final ShapeableImageView ivNoteLockThumbnail;

    @NonNull
    public final ShapeableImageView ivNoteLockThumbnailLand;

    @NonNull
    public final ShapeableImageView ivNoteThumbnail;

    @NonNull
    public final ShapeableImageView ivNoteThumbnailLand;

    @NonNull
    public final View noteThumbnailBottomShadow;

    @NonNull
    public final View noteThumbnailShadow;

    @NonNull
    public final View noteThumbnailShadowBottomLand;

    @NonNull
    public final View noteThumbnailShadowLand;

    @NonNull
    public final TintRecycleView rvHwrs;

    @NonNull
    public final TintTextView tvName;

    @NonNull
    public final TintView vNoteThumbnailBroder;

    @NonNull
    public final TintView vNoteThumbnailLandBroder;

    public ItemSearchNoteSectionHwrBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull ConstraintLayout constraintLayout, @NonNull Group group, @NonNull Group group2, @NonNull ShapeableImageView shapeableImageView, @NonNull ShapeableImageView shapeableImageView2, @NonNull ShapeableImageView shapeableImageView3, @NonNull ShapeableImageView shapeableImageView4, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull View view4, @NonNull TintRecycleView tintRecycleView, @NonNull TintTextView tintTextView, @NonNull TintView tintView, @NonNull TintView tintView2) {
        this.f57160e = tintConstraintLayout;
        this.clsNote = constraintLayout;
        this.groupNoteThumbnail = group;
        this.groupNoteThumbnailLand = group2;
        this.ivNoteLockThumbnail = shapeableImageView;
        this.ivNoteLockThumbnailLand = shapeableImageView2;
        this.ivNoteThumbnail = shapeableImageView3;
        this.ivNoteThumbnailLand = shapeableImageView4;
        this.noteThumbnailBottomShadow = view;
        this.noteThumbnailShadow = view2;
        this.noteThumbnailShadowBottomLand = view3;
        this.noteThumbnailShadowLand = view4;
        this.rvHwrs = tintRecycleView;
        this.tvName = tintTextView;
        this.vNoteThumbnailBroder = tintView;
        this.vNoteThumbnailLandBroder = tintView2;
    }

    @NonNull
    public static ItemSearchNoteSectionHwrBinding bind(@NonNull View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        View findChildViewById4;
        int i = C10651R.id.cls_note;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C10651R.id.group_note_thumbnail;
            Group group = (Group) ViewBindings.findChildViewById(view, i);
            if (group != null) {
                i = C10651R.id.group_note_thumbnail_land;
                Group group2 = (Group) ViewBindings.findChildViewById(view, i);
                if (group2 != null) {
                    i = C10651R.id.iv_note_lock_thumbnail;
                    ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                    if (shapeableImageView != null) {
                        i = C10651R.id.iv_note_lock_thumbnail_land;
                        ShapeableImageView shapeableImageView2 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                        if (shapeableImageView2 != null) {
                            i = C10651R.id.iv_note_thumbnail;
                            ShapeableImageView shapeableImageView3 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                            if (shapeableImageView3 != null) {
                                i = C10651R.id.iv_note_thumbnail_land;
                                ShapeableImageView shapeableImageView4 = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
                                if (shapeableImageView4 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_bottom_shadow))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow))) != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow_bottom_land))) != null && (findChildViewById4 = ViewBindings.findChildViewById(view, (i = C10651R.id.note_thumbnail_shadow_land))) != null) {
                                    i = C10651R.id.rv_hwrs;
                                    TintRecycleView tintRecycleView = (TintRecycleView) ViewBindings.findChildViewById(view, i);
                                    if (tintRecycleView != null) {
                                        i = C10651R.id.tv_name;
                                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView != null) {
                                            i = C10651R.id.v_note_thumbnail_broder;
                                            TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                            if (tintView != null) {
                                                i = C10651R.id.v_note_thumbnail_land_broder;
                                                TintView tintView2 = (TintView) ViewBindings.findChildViewById(view, i);
                                                if (tintView2 != null) {
                                                    return new ItemSearchNoteSectionHwrBinding((TintConstraintLayout) view, constraintLayout, group, group2, shapeableImageView, shapeableImageView2, shapeableImageView3, shapeableImageView4, findChildViewById, findChildViewById2, findChildViewById3, findChildViewById4, tintRecycleView, tintTextView, tintView, tintView2);
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
    public static ItemSearchNoteSectionHwrBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchNoteSectionHwrBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_search_note_section_hwr, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57160e;
    }
}
