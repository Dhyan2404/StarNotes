package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemEditTagForNoteBinding implements ViewBinding {

    @NonNull
    public final Barrier barrier;

    @NonNull
    public final TintCheckBox cbSel;

    @NonNull
    public final ConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f56999e;

    @NonNull
    public final Guideline guideline;

    @NonNull
    public final Guideline guideline1;

    @NonNull
    public final TintImageView ivNoteTreeBottom;

    @NonNull
    public final TintImageView ivNoteTreeExpand;

    @NonNull
    public final TintImageView ivNoteTreeFolder;

    @NonNull
    public final TintTextView tvItemName;

    public ItemEditTagForNoteBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Barrier barrier, @NonNull TintCheckBox tintCheckBox, @NonNull ConstraintLayout constraintLayout2, @NonNull Guideline guideline, @NonNull Guideline guideline2, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintTextView tintTextView) {
        this.f56999e = constraintLayout;
        this.barrier = barrier;
        this.cbSel = tintCheckBox;
        this.clsContent = constraintLayout2;
        this.guideline = guideline;
        this.guideline1 = guideline2;
        this.ivNoteTreeBottom = tintImageView;
        this.ivNoteTreeExpand = tintImageView2;
        this.ivNoteTreeFolder = tintImageView3;
        this.tvItemName = tintTextView;
    }

    @NonNull
    public static ItemEditTagForNoteBinding bind(@NonNull View view) {
        int i = C10651R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i);
        if (barrier != null) {
            i = C10651R.id.cb_sel;
            TintCheckBox tintCheckBox = (TintCheckBox) ViewBindings.findChildViewById(view, i);
            if (tintCheckBox != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i = C10651R.id.guideline;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i);
                if (guideline != null) {
                    i = C10651R.id.guideline1;
                    Guideline guideline2 = (Guideline) ViewBindings.findChildViewById(view, i);
                    if (guideline2 != null) {
                        i = C10651R.id.iv_note_tree_bottom;
                        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                        if (tintImageView != null) {
                            i = C10651R.id.iv_note_tree_expand;
                            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                            if (tintImageView2 != null) {
                                i = C10651R.id.iv_note_tree_folder;
                                TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                                if (tintImageView3 != null) {
                                    i = C10651R.id.tv_item_name;
                                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                                    if (tintTextView != null) {
                                        return new ItemEditTagForNoteBinding(constraintLayout, barrier, tintCheckBox, constraintLayout, guideline, guideline2, tintImageView, tintImageView2, tintImageView3, tintTextView);
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
    public static ItemEditTagForNoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemEditTagForNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_edit_tag_for_note, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f56999e;
    }
}
