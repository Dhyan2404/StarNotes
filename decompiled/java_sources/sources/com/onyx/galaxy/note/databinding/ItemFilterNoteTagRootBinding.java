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
public final class ItemFilterNoteTagRootBinding implements ViewBinding {

    @NonNull
    public final Barrier barrier1;

    @NonNull
    public final TintConstraintLayout clsRoot;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57030e;

    @NonNull
    public final Guideline guideline1;

    @NonNull
    public final TintImageView ivCreateTag;

    @NonNull
    public final TintImageView ivNoteTagExpand;

    @NonNull
    public final TintImageView ivTagRoot;

    @NonNull
    public final TintTextView tvTagCreateHint;

    @NonNull
    public final TintTextView tvTagRoot;

    @NonNull
    public final TintView vDragIn;

    public ItemFilterNoteTagRootBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull Barrier barrier, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull Guideline guideline, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintView tintView) {
        this.f57030e = tintConstraintLayout;
        this.barrier1 = barrier;
        this.clsRoot = tintConstraintLayout2;
        this.guideline1 = guideline;
        this.ivCreateTag = tintImageView;
        this.ivNoteTagExpand = tintImageView2;
        this.ivTagRoot = tintImageView3;
        this.tvTagCreateHint = tintTextView;
        this.tvTagRoot = tintTextView2;
        this.vDragIn = tintView;
    }

    @NonNull
    public static ItemFilterNoteTagRootBinding bind(@NonNull View view) {
        int i = C10651R.id.barrier1;
        Barrier barrier = (Barrier) ViewBindings.findChildViewById(view, i);
        if (barrier != null) {
            TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
            i = C10651R.id.guideline1;
            Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i);
            if (guideline != null) {
                i = C10651R.id.iv_create_tag;
                TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView != null) {
                    i = C10651R.id.iv_note_tag_expand;
                    TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView2 != null) {
                        i = C10651R.id.iv_tag_root;
                        TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                        if (tintImageView3 != null) {
                            i = C10651R.id.tv_tag_create_hint;
                            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView != null) {
                                i = C10651R.id.tv_tag_root;
                                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView2 != null) {
                                    i = C10651R.id.v_drag_in;
                                    TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                                    if (tintView != null) {
                                        return new ItemFilterNoteTagRootBinding(tintConstraintLayout, barrier, tintConstraintLayout, guideline, tintImageView, tintImageView2, tintImageView3, tintTextView, tintTextView2, tintView);
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
    public static ItemFilterNoteTagRootBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterNoteTagRootBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_note_tag_root, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57030e;
    }
}
