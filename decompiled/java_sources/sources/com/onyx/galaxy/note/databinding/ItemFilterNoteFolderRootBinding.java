package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemFilterNoteFolderRootBinding implements ViewBinding {

    @NonNull
    public final Barrier barrier2;

    @NonNull
    public final TintConstraintLayout clsRoot;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57026e;

    @NonNull
    public final Guideline guideline2;

    @NonNull
    public final TintImageView ivCreateFolder;

    @NonNull
    public final TintImageView ivFolderRoot;

    @NonNull
    public final TintImageView ivNoteFolderExpand;

    @NonNull
    public final TintTextView tvFolderCreateHint;

    @NonNull
    public final TintTextView tvFolderRoot;

    @NonNull
    public final TintView vDragIn;

    public ItemFilterNoteFolderRootBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull Barrier barrier, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull Guideline guideline, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintView tintView) {
        this.f57026e = tintConstraintLayout;
        this.barrier2 = barrier;
        this.clsRoot = tintConstraintLayout2;
        this.guideline2 = guideline;
        this.ivCreateFolder = tintImageView;
        this.ivFolderRoot = tintImageView2;
        this.ivNoteFolderExpand = tintImageView3;
        this.tvFolderCreateHint = tintTextView;
        this.tvFolderRoot = tintTextView2;
        this.vDragIn = tintView;
    }

    @NonNull
    public static ItemFilterNoteFolderRootBinding bind(@NonNull View view) {
        int i = C10651R.id.barrier2;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i);
        if (barrier != null) {
            TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
            i = C10651R.id.guideline2;
            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i);
            if (guideline != null) {
                i = C10651R.id.iv_create_folder;
                TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView != null) {
                    i = C10651R.id.iv_folder_root;
                    TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView2 != null) {
                        i = C10651R.id.iv_note_folder_expand;
                        TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                        if (tintImageView3 != null) {
                            i = C10651R.id.tv_folder_create_hint;
                            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView != null) {
                                i = C10651R.id.tv_folder_root;
                                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView2 != null) {
                                    i = C10651R.id.v_drag_in;
                                    TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                    if (tintView != null) {
                                        return new ItemFilterNoteFolderRootBinding(tintConstraintLayout, barrier, tintConstraintLayout, guideline, tintImageView, tintImageView2, tintImageView3, tintTextView, tintTextView2, tintView);
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
    public static ItemFilterNoteFolderRootBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterNoteFolderRootBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_note_folder_root, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57026e;
    }
}
