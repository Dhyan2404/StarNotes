package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public final class ItemTemplateNormalHorizontalBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clThumbnail;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57227e;

    @NonNull
    public final ShadowLayout ivShadow;

    @NonNull
    public final TintImageView ivTemplateSelected;

    @NonNull
    public final TemplateThumbnailView templateThumbnail;

    @NonNull
    public final TintFrameLayout thumbnailContainer;

    @NonNull
    public final TintTextView tvTemplateName;

    public ItemTemplateNormalHorizontalBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ShadowLayout shadowLayout, @NonNull TintImageView tintImageView, @NonNull TemplateThumbnailView templateThumbnailView, @NonNull TintFrameLayout tintFrameLayout, @NonNull TintTextView tintTextView) {
        this.f57227e = constraintLayout;
        this.clThumbnail = constraintLayout2;
        this.ivShadow = shadowLayout;
        this.ivTemplateSelected = tintImageView;
        this.templateThumbnail = templateThumbnailView;
        this.thumbnailContainer = tintFrameLayout;
        this.tvTemplateName = tintTextView;
    }

    @NonNull
    public static ItemTemplateNormalHorizontalBinding bind(@NonNull View view) {
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
                    i = C10651R.id.thumbnailContainer;
                    TintFrameLayout tintFrameLayout = (TintFrameLayout) ViewBindings.findChildViewById(view, i);
                    if (tintFrameLayout != null) {
                        i = C10651R.id.tv_template_name;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            return new ItemTemplateNormalHorizontalBinding(constraintLayout, constraintLayout, shadowLayout, tintImageView, templateThumbnailView, tintFrameLayout, tintTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTemplateNormalHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTemplateNormalHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_template_normal_horizontal, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57227e;
    }
}
