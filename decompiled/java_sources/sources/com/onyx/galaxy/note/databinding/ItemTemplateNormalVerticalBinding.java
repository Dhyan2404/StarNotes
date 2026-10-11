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
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public final class ItemTemplateNormalVerticalBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clThumbnail;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57228e;

    @NonNull
    public final ShadowLayout ivShadow;

    @NonNull
    public final TintImageView ivTemplateSelected;

    @NonNull
    public final TemplateThumbnailView templateThumbnail;

    @NonNull
    public final TintTextView tvTemplateName;

    public ItemTemplateNormalVerticalBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ShadowLayout shadowLayout, @NonNull TintImageView tintImageView, @NonNull TemplateThumbnailView templateThumbnailView, @NonNull TintTextView tintTextView) {
        this.f57228e = constraintLayout;
        this.clThumbnail = constraintLayout2;
        this.ivShadow = shadowLayout;
        this.ivTemplateSelected = tintImageView;
        this.templateThumbnail = templateThumbnailView;
        this.tvTemplateName = tintTextView;
    }

    @NonNull
    public static ItemTemplateNormalVerticalBinding bind(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i = C10651R.id.iv_shadow;
        ShadowLayout shadowLayout = (ShadowLayout) ViewBindings.findChildViewById(view, i);
        if (shadowLayout != null) {
            i = C10651R.id.iv_template_selected;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.template_thumbnail;
                TemplateThumbnailView templateThumbnailView = (TemplateThumbnailView) ViewBindings.findChildViewById(view, i);
                if (templateThumbnailView != null) {
                    i = C10651R.id.tv_template_name;
                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView != null) {
                        return new ItemTemplateNormalVerticalBinding(constraintLayout, constraintLayout, shadowLayout, tintImageView, templateThumbnailView, tintTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTemplateNormalVerticalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTemplateNormalVerticalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_template_normal_vertical, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57228e;
    }
}
