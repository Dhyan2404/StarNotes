package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.aitsuki.swipe.SwipeLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemManageTagBinding implements ViewBinding {

    @NonNull
    public final Barrier barrier;

    @NonNull
    public final ConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final SwipeLayout f57066e;

    @NonNull
    public final Guideline guideline;

    @NonNull
    public final TintImageView ivNoteTreeBottom;

    @NonNull
    public final TintImageView ivNoteTreeExpand;

    @NonNull
    public final TintImageView ivNoteTreeFolder;

    @NonNull
    public final TintTextView tvItemName;

    @NonNull
    public final TextView tvRemove;

    @NonNull
    public final TintView vDragBottom;

    @NonNull
    public final TintView vDragIn;

    @NonNull
    public final TintView vDragTop;

    public ItemManageTagBinding(@NonNull SwipeLayout swipeLayout, @NonNull Barrier barrier, @NonNull ConstraintLayout constraintLayout, @NonNull Guideline guideline, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintTextView tintTextView, @NonNull TextView textView, @NonNull TintView tintView, @NonNull TintView tintView2, @NonNull TintView tintView3) {
        this.f57066e = swipeLayout;
        this.barrier = barrier;
        this.clsContent = constraintLayout;
        this.guideline = guideline;
        this.ivNoteTreeBottom = tintImageView;
        this.ivNoteTreeExpand = tintImageView2;
        this.ivNoteTreeFolder = tintImageView3;
        this.tvItemName = tintTextView;
        this.tvRemove = textView;
        this.vDragBottom = tintView;
        this.vDragIn = tintView2;
        this.vDragTop = tintView3;
    }

    @NonNull
    public static ItemManageTagBinding bind(@NonNull View view) {
        int i = C10651R.id.barrier;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i);
        if (barrier != null) {
            i = C10651R.id.cls_content;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = C10651R.id.guideline;
                Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i);
                if (guideline != null) {
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
                                    i = C10651R.id.tv_remove;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = C10651R.id.v_drag_bottom;
                                        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                        if (tintView != null) {
                                            i = C10651R.id.v_drag_in;
                                            TintView tintView2 = (TintView) ViewBindings.findChildViewById(view, i);
                                            if (tintView2 != null) {
                                                i = C10651R.id.v_drag_top;
                                                TintView tintView3 = (TintView) ViewBindings.findChildViewById(view, i);
                                                if (tintView3 != null) {
                                                    return new ItemManageTagBinding((SwipeLayout) view, barrier, constraintLayout, guideline, tintImageView, tintImageView2, tintImageView3, tintTextView, textView, tintView, tintView2, tintView3);
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
    public static ItemManageTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemManageTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_manage_tag, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public SwipeLayout getRoot() {
        return this.f57066e;
    }
}
