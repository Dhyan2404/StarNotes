package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.aitsuki.swipe.SwipeLayout;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemManageFolderBinding implements ViewBinding {

    @NonNull
    public final Barrier barrier;

    @NonNull
    public final TintConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final SwipeLayout f57065e;

    @NonNull
    public final Guideline guideline;

    @NonNull
    public final TintImageView ivNoteTreeExpand;

    @NonNull
    public final TintImageView ivNoteTreeFolder;

    @NonNull
    public final TintImageView ivNoteTreeFolderBottom;

    @NonNull
    public final TintTextView tvItemName;

    @NonNull
    public final TextView tvRemove;

    @NonNull
    public final TintView vDragIn;

    public ItemManageFolderBinding(@NonNull SwipeLayout swipeLayout, @NonNull Barrier barrier, @NonNull TintConstraintLayout tintConstraintLayout, @NonNull Guideline guideline, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintTextView tintTextView, @NonNull TextView textView, @NonNull TintView tintView) {
        this.f57065e = swipeLayout;
        this.barrier = barrier;
        this.clsContent = tintConstraintLayout;
        this.guideline = guideline;
        this.ivNoteTreeExpand = tintImageView;
        this.ivNoteTreeFolder = tintImageView2;
        this.ivNoteTreeFolderBottom = tintImageView3;
        this.tvItemName = tintTextView;
        this.tvRemove = textView;
        this.vDragIn = tintView;
    }

    @NonNull
    public static ItemManageFolderBinding bind(@NonNull View view) {
        int i = C10651R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i);
        if (barrier != null) {
            i = C10651R.id.cls_content;
            TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (tintConstraintLayout != null) {
                i = C10651R.id.guideline;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i);
                if (guideline != null) {
                    i = C10651R.id.iv_note_tree_expand;
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
                                    i = C10651R.id.tv_remove;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = C10651R.id.v_drag_in;
                                        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                        if (tintView != null) {
                                            return new ItemManageFolderBinding((SwipeLayout) view, barrier, tintConstraintLayout, guideline, tintImageView, tintImageView2, tintImageView3, tintTextView, textView, tintView);
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
    public static ItemManageFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemManageFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_manage_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public SwipeLayout getRoot() {
        return this.f57065e;
    }
}
