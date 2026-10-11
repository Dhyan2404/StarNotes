package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemTemplateCreateVerticalBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57224e;

    @NonNull
    public final TintImageView ivThumbnail;

    public ItemTemplateCreateVerticalBinding(@NonNull LinearLayout linearLayout, @NonNull TintImageView tintImageView) {
        this.f57224e = linearLayout;
        this.ivThumbnail = tintImageView;
    }

    @NonNull
    public static ItemTemplateCreateVerticalBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_thumbnail;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            return new ItemTemplateCreateVerticalBinding((LinearLayout) view, tintImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemTemplateCreateVerticalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTemplateCreateVerticalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_template_create_vertical, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57224e;
    }
}
