package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class PopupTipsLayoutBinding implements ViewBinding {

    @NonNull
    public final TintImageView arrowView;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57904e;

    @NonNull
    public final TintFrameLayout flyContent;

    @NonNull
    public final TintImageView topArrowView;

    @NonNull
    public final TintTextView tvContent;

    public PopupTipsLayoutBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView, @NonNull TintFrameLayout tintFrameLayout, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView) {
        this.f57904e = tintLinearLayout;
        this.arrowView = tintImageView;
        this.flyContent = tintFrameLayout;
        this.topArrowView = tintImageView2;
        this.tvContent = tintTextView;
    }

    @NonNull
    public static PopupTipsLayoutBinding bind(@NonNull View view) {
        int i = C10651R.id.arrowView;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.fly_content;
            TintFrameLayout tintFrameLayout = (TintFrameLayout) ViewBindings.findChildViewById(view, i);
            if (tintFrameLayout != null) {
                i = C10651R.id.top_arrow_view;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    i = C10651R.id.tv_content;
                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView != null) {
                        return new PopupTipsLayoutBinding((TintLinearLayout) view, tintImageView, tintFrameLayout, tintImageView2, tintTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PopupTipsLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupTipsLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_tips_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57904e;
    }
}
