package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemTagShadowViewLayoutBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57212e;

    @NonNull
    public final TintImageView ivNoteTree;

    @NonNull
    public final TintImageView ivTreeExpand;

    @NonNull
    public final TintTextView tvItemName;

    @NonNull
    public final TintTextView tvTotalCount;

    @NonNull
    public final TintView vOp;

    public ItemTagShadowViewLayoutBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintView tintView) {
        this.f57212e = constraintLayout;
        this.clsContent = constraintLayout2;
        this.ivNoteTree = tintImageView;
        this.ivTreeExpand = tintImageView2;
        this.tvItemName = tintTextView;
        this.tvTotalCount = tintTextView2;
        this.vOp = tintView;
    }

    @NonNull
    public static ItemTagShadowViewLayoutBinding bind(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = C10651R.id.iv_note_tree;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.iv_tree_expand;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                i = C10651R.id.tv_item_name;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    i = C10651R.id.tv_total_count;
                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView2 != null) {
                        i = C10651R.id.v_op;
                        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                        if (tintView != null) {
                            return new ItemTagShadowViewLayoutBinding(constraintLayout, constraintLayout, tintImageView, tintImageView2, tintTextView, tintTextView2, tintView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTagShadowViewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTagShadowViewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_tag_shadow_view_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57212e;
    }
}
