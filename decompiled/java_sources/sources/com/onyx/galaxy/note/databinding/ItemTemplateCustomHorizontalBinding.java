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
public final class ItemTemplateCustomHorizontalBinding implements ViewBinding {

    @NonNull
    public final ConstraintLayout clThumbnail;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57225e;

    @NonNull
    public final ShadowLayout ivShadow;

    @NonNull
    public final TintImageView ivTemplateMultiSelected;

    @NonNull
    public final TintImageView ivTemplateSelected;

    @NonNull
    public final TemplateThumbnailView ivThumbnail;

    @NonNull
    public final TintTextView tvTemplateName;

    public ItemTemplateCustomHorizontalBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ShadowLayout shadowLayout, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TemplateThumbnailView templateThumbnailView, @NonNull TintTextView tintTextView) {
        this.f57225e = constraintLayout;
        this.clThumbnail = constraintLayout2;
        this.ivShadow = shadowLayout;
        this.ivTemplateMultiSelected = tintImageView;
        this.ivTemplateSelected = tintImageView2;
        this.ivThumbnail = templateThumbnailView;
        this.tvTemplateName = tintTextView;
    }

    @NonNull
    public static ItemTemplateCustomHorizontalBinding bind(@NonNull View view) {
        int i = C10651R.id.cl_thumbnail;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (constraintLayout != null) {
            i = C10651R.id.iv_shadow;
            ShadowLayout shadowLayout = (ShadowLayout) ViewBindings.findChildViewById(view, i);
            if (shadowLayout != null) {
                i = C10651R.id.iv_template_multi_selected;
                TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView != null) {
                    i = C10651R.id.iv_template_selected;
                    TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView2 != null) {
                        i = C10651R.id.iv_thumbnail;
                        TemplateThumbnailView templateThumbnailView = (TemplateThumbnailView) ViewBindings.findChildViewById(view, i);
                        if (templateThumbnailView != null) {
                            i = C10651R.id.tv_template_name;
                            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView != null) {
                                return new ItemTemplateCustomHorizontalBinding((ConstraintLayout) view, constraintLayout, shadowLayout, tintImageView, tintImageView2, templateThumbnailView, tintTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTemplateCustomHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTemplateCustomHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_template_custom_horizontal, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57225e;
    }
}
