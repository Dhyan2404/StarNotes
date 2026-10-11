package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemTemplateCreateHorizontalBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57223e;

    @NonNull
    public final TintImageView ivThumbnail;

    public ItemTemplateCreateHorizontalBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView) {
        this.f57223e = tintLinearLayout;
        this.ivThumbnail = tintImageView;
    }

    @NonNull
    public static ItemTemplateCreateHorizontalBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_thumbnail;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            return new ItemTemplateCreateHorizontalBinding((TintLinearLayout) view, tintImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTemplateCreateHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTemplateCreateHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_template_create_horizontal, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57223e;
    }
}
