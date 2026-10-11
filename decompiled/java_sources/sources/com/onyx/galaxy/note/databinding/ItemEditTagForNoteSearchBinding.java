package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemEditTagForNoteSearchBinding implements ViewBinding {

    @NonNull
    public final TintCheckBox cbSel;

    @NonNull
    public final ConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57000e;

    @NonNull
    public final TintImageView ivNoteTreeBottom;

    @NonNull
    public final TintImageView ivNoteTreeFolder;

    @NonNull
    public final TintTextView tvItemName;

    @NonNull
    public final View vDivider;

    public ItemEditTagForNoteSearchBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TintCheckBox tintCheckBox, @NonNull ConstraintLayout constraintLayout2, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView, @NonNull View view) {
        this.f57000e = constraintLayout;
        this.cbSel = tintCheckBox;
        this.clsContent = constraintLayout2;
        this.ivNoteTreeBottom = tintImageView;
        this.ivNoteTreeFolder = tintImageView2;
        this.tvItemName = tintTextView;
        this.vDivider = view;
    }

    @NonNull
    public static ItemEditTagForNoteSearchBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.cb_sel;
        TintCheckBox tintCheckBox = (TintCheckBox) ViewBindings.findChildViewById(view, i);
        if (tintCheckBox != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i = C10651R.id.iv_note_tree_bottom;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.iv_note_tree_folder;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    i = C10651R.id.tv_item_name;
                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.v_divider))) != null) {
                        return new ItemEditTagForNoteSearchBinding(constraintLayout, tintCheckBox, constraintLayout, tintImageView, tintImageView2, tintTextView, findChildViewById);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemEditTagForNoteSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemEditTagForNoteSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_edit_tag_for_note_search, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57000e;
    }
}
