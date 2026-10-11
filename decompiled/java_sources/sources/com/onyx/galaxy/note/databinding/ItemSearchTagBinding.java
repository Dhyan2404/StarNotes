package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemSearchTagBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57165e;

    @NonNull
    public final FrameLayout flRoot;

    @NonNull
    public final TintImageView ivNoteTreeBottom;

    @NonNull
    public final TintImageView ivNoteTreeFolder;

    @NonNull
    public final TintTextView tvItemName;

    public ItemSearchTagBinding(@NonNull FrameLayout frameLayout, @NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout2, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView) {
        this.f57165e = frameLayout;
        this.clsContent = constraintLayout;
        this.flRoot = frameLayout2;
        this.ivNoteTreeBottom = tintImageView;
        this.ivNoteTreeFolder = tintImageView2;
        this.tvItemName = tintTextView;
    }

    @NonNull
    public static ItemSearchTagBinding bind(@NonNull View view) {
        int i = C10651R.id.cls_content;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i = C10651R.id.iv_note_tree_bottom;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.iv_note_tree_folder;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    i = C10651R.id.tv_item_name;
                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView != null) {
                        return new ItemSearchTagBinding(frameLayout, constraintLayout, frameLayout, tintImageView, tintImageView2, tintTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemSearchTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_search_tag, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57165e;
    }
}
