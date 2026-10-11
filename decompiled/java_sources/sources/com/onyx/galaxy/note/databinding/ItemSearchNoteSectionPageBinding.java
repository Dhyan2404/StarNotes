package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemSearchNoteSectionPageBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57161e;

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
    public final TintTextView tvName;

    @NonNull
    public final TintView vNoteThumbnailBroder;

    @NonNull
    public final TintView vNoteThumbnailLandBroder;

    public ItemSearchNoteSectionPageBinding(@NonNull FrameLayout frameLayout, @NonNull Group group, @NonNull Group group2, @NonNull ShapeableImageView shapeableImageView, @NonNull ShapeableImageView shapeableImageView2, @NonNull ShapeableImageView shapeableImageView3, @NonNull ShapeableImageView shapeableImageView4, @NonNull TintTextView tintTextView, @NonNull TintView tintView, @NonNull TintView tintView2) {
        this.f57161e = frameLayout;
        this.groupNoteThumbnail = group;
        this.groupNoteThumbnailLand = group2;
        this.ivNoteLockThumbnail = shapeableImageView;
        this.ivNoteLockThumbnailLand = shapeableImageView2;
        this.ivNoteThumbnail = shapeableImageView3;
        this.ivNoteThumbnailLand = shapeableImageView4;
        this.tvName = tintTextView;
        this.vNoteThumbnailBroder = tintView;
        this.vNoteThumbnailLandBroder = tintView2;
    }

    @NonNull
    public static ItemSearchNoteSectionPageBinding bind(@NonNull View view) {
        int i = C10651R.id.group_note_thumbnail;
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
                            if (shapeableImageView4 != null) {
                                i = C10651R.id.tv_name;
                                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView != null) {
                                    i = C10651R.id.v_note_thumbnail_broder;
                                    TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                    if (tintView != null) {
                                        i = C10651R.id.v_note_thumbnail_land_broder;
                                        TintView tintView2 = (TintView) ViewBindings.findChildViewById(view, i);
                                        if (tintView2 != null) {
                                            return new ItemSearchNoteSectionPageBinding((FrameLayout) view, group, group2, shapeableImageView, shapeableImageView2, shapeableImageView3, shapeableImageView4, tintTextView, tintView, tintView2);
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
    public static ItemSearchNoteSectionPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchNoteSectionPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_search_note_section_page, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57161e;
    }
}
