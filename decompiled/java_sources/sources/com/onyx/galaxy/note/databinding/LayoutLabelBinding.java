package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.flexbox.FlexboxLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutLabelBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57373e;

    @NonNull
    public final FlexboxLayout flexboxLabels;

    @NonNull
    public final TintImageView ivIcon;

    public LayoutLabelBinding(@NonNull LinearLayout linearLayout, @NonNull FlexboxLayout flexboxLayout, @NonNull TintImageView tintImageView) {
        this.f57373e = linearLayout;
        this.flexboxLabels = flexboxLayout;
        this.ivIcon = tintImageView;
    }

    @NonNull
    public static LayoutLabelBinding bind(@NonNull View view) {
        int i = C10651R.id.flexbox_labels;
        FlexboxLayout flexboxLayout = (FlexboxLayout) ViewBindings.findChildViewById(view, i);
        if (flexboxLayout != null) {
            i = C10651R.id.iv_icon;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                return new LayoutLabelBinding((LinearLayout) view, flexboxLayout, tintImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutLabelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLabelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_label, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57373e;
    }
}
