package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemFeedbackPictureFooterBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57010e;

    /* renamed from: iv */
    @NonNull
    public final TintImageView f57011iv;

    @NonNull
    public final TintView vBg;

    public ItemFeedbackPictureFooterBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintImageView tintImageView, @NonNull TintView tintView) {
        this.f57010e = tintConstraintLayout;
        this.f57011iv = tintImageView;
        this.vBg = tintView;
    }

    @NonNull
    public static ItemFeedbackPictureFooterBinding bind(@NonNull View view) {
        int i = C10651R.id.f53352iv;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.v_bg;
            TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
            if (tintView != null) {
                return new ItemFeedbackPictureFooterBinding((TintConstraintLayout) view, tintImageView, tintView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemFeedbackPictureFooterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFeedbackPictureFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_feedback_picture_footer, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57010e;
    }
}
