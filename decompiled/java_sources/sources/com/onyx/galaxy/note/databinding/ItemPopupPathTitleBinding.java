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
public final class ItemPopupPathTitleBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clsContent;

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57145e;

    @NonNull
    public final FrameLayout flRoot;

    @NonNull
    public final TintImageView ivIcon;

    @NonNull
    public final TintImageView ivIconBottom;

    @NonNull
    public final TintTextView tvTitle;

    public ItemPopupPathTitleBinding(@NonNull FrameLayout frameLayout, @NonNull ConstraintLayout constraintLayout, @NonNull FrameLayout frameLayout2, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView) {
        this.f57145e = frameLayout;
        this.clsContent = constraintLayout;
        this.flRoot = frameLayout2;
        this.ivIcon = tintImageView;
        this.ivIconBottom = tintImageView2;
        this.tvTitle = tintTextView;
    }

    @NonNull
    public static ItemPopupPathTitleBinding bind(@NonNull View view) {
        int i = C10651R.id.cls_content;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i = C10651R.id.iv_icon;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.iv_icon_bottom;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    i = C10651R.id.tv_title;
                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView != null) {
                        return new ItemPopupPathTitleBinding(frameLayout, constraintLayout, frameLayout, tintImageView, tintImageView2, tintTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemPopupPathTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPopupPathTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_popup_path_title, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57145e;
    }
}
