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
public final class LayoutStrokeStyleBinding implements ViewBinding {

    @NonNull
    public final TintImageView dashStyle;

    @NonNull
    public final TintImageView dotStyle;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57494e;

    @NonNull
    public final TintImageView solidStyle;

    public LayoutStrokeStyleBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3) {
        this.f57494e = tintLinearLayout;
        this.dashStyle = tintImageView;
        this.dotStyle = tintImageView2;
        this.solidStyle = tintImageView3;
    }

    @NonNull
    public static LayoutStrokeStyleBinding bind(@NonNull View view) {
        int i = C10651R.id.dashStyle;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.dotStyle;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                i = C10651R.id.solidStyle;
                TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView3 != null) {
                    return new LayoutStrokeStyleBinding((TintLinearLayout) view, tintImageView, tintImageView2, tintImageView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutStrokeStyleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutStrokeStyleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_stroke_style, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57494e;
    }
}
