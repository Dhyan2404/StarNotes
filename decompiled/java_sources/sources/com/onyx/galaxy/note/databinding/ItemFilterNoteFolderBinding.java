package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemFilterNoteFolderBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final TintFrameLayout f57025e;

    @NonNull
    public final TintFrameLayout flRoot;

    @NonNull
    public final TintImageView ivFolderExpand;

    @NonNull
    public final TintImageView ivNoteTreeFolder;

    @NonNull
    public final TintImageView ivNoteTreeFolderBottom;

    @NonNull
    public final TintTextView tvItemName;

    @NonNull
    public final TintTextView tvNoteTotalCount;

    @NonNull
    public final TintView vDragBottom;

    @NonNull
    public final TintView vDragIn;

    @NonNull
    public final TintView vDragTop;

    @NonNull
    public final TintView vOp;

    public ItemFilterNoteFolderBinding(@NonNull TintFrameLayout tintFrameLayout, @NonNull ConstraintLayout constraintLayout, @NonNull TintFrameLayout tintFrameLayout2, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintView tintView, @NonNull TintView tintView2, @NonNull TintView tintView3, @NonNull TintView tintView4) {
        this.f57025e = tintFrameLayout;
        this.clsContent = constraintLayout;
        this.flRoot = tintFrameLayout2;
        this.ivFolderExpand = tintImageView;
        this.ivNoteTreeFolder = tintImageView2;
        this.ivNoteTreeFolderBottom = tintImageView3;
        this.tvItemName = tintTextView;
        this.tvNoteTotalCount = tintTextView2;
        this.vDragBottom = tintView;
        this.vDragIn = tintView2;
        this.vDragTop = tintView3;
        this.vOp = tintView4;
    }

    @NonNull
    public static ItemFilterNoteFolderBinding bind(@NonNull View view) {
        int i = C10651R.id.cls_content;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            TintFrameLayout tintFrameLayout = (TintFrameLayout) view;
            i = C10651R.id.iv_folder_expand;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.iv_note_tree_folder;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    i = C10651R.id.iv_note_tree_folder_bottom;
                    TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView3 != null) {
                        i = C10651R.id.tv_item_name;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            i = C10651R.id.tv_note_total_count;
                            TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView2 != null) {
                                i = C10651R.id.v_drag_bottom;
                                TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                if (tintView != null) {
                                    i = C10651R.id.v_drag_in;
                                    TintView tintView2 = (TintView) ViewBindings.findChildViewById(view, i);
                                    if (tintView2 != null) {
                                        i = C10651R.id.v_drag_top;
                                        TintView tintView3 = (TintView) ViewBindings.findChildViewById(view, i);
                                        if (tintView3 != null) {
                                            i = C10651R.id.v_op;
                                            TintView tintView4 = (TintView) ViewBindings.findChildViewById(view, i);
                                            if (tintView4 != null) {
                                                return new ItemFilterNoteFolderBinding(tintFrameLayout, constraintLayout, tintFrameLayout, tintImageView, tintImageView2, tintImageView3, tintTextView, tintTextView2, tintView, tintView2, tintView3, tintView4);
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
    public static ItemFilterNoteFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterNoteFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_note_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintFrameLayout getRoot() {
        return this.f57025e;
    }
}
