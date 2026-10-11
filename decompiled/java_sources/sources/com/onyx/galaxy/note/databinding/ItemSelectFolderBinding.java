package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemSelectFolderBinding implements ViewBinding {

    @NonNull
    public final TintConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57166e;

    @NonNull
    public final TintImageView ivCheck;

    @NonNull
    public final TintImageView ivNoteTreeExpand;

    @NonNull
    public final TintImageView ivNoteTreeFolder;

    @NonNull
    public final TintImageView ivNoteTreeFolderBottom;

    @NonNull
    public final TintTextView tvItemName;

    public ItemSelectFolderBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintImageView tintImageView4, @NonNull TintTextView tintTextView) {
        this.f57166e = tintConstraintLayout;
        this.clsContent = tintConstraintLayout2;
        this.ivCheck = tintImageView;
        this.ivNoteTreeExpand = tintImageView2;
        this.ivNoteTreeFolder = tintImageView3;
        this.ivNoteTreeFolderBottom = tintImageView4;
        this.tvItemName = tintTextView;
    }

    @NonNull
    public static ItemSelectFolderBinding bind(@NonNull View view) {
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
        int i = C10651R.id.iv_check;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.iv_note_tree_expand;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                i = C10651R.id.iv_note_tree_folder;
                TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView3 != null) {
                    i = C10651R.id.iv_note_tree_folder_bottom;
                    TintImageView tintImageView4 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView4 != null) {
                        i = C10651R.id.tv_item_name;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            return new ItemSelectFolderBinding(tintConstraintLayout, tintConstraintLayout, tintImageView, tintImageView2, tintImageView3, tintImageView4, tintTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemSelectFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSelectFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_select_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57166e;
    }
}
