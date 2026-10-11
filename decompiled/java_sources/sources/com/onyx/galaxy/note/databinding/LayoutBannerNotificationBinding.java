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
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutBannerNotificationBinding implements ViewBinding {

    @NonNull
    public final TintLinearLayout bannerLayout;

    @NonNull
    public final TintImageView closeButton;

    @NonNull
    public final TintTextView contentText;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57305e;

    public LayoutBannerNotificationBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintLinearLayout tintLinearLayout2, @NonNull TintImageView tintImageView, @NonNull TintTextView tintTextView) {
        this.f57305e = tintLinearLayout;
        this.bannerLayout = tintLinearLayout2;
        this.closeButton = tintImageView;
        this.contentText = tintTextView;
    }

    @NonNull
    public static LayoutBannerNotificationBinding bind(@NonNull View view) {
        TintLinearLayout tintLinearLayout = (TintLinearLayout) view;
        int i = C10651R.id.closeButton;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.contentText;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                return new LayoutBannerNotificationBinding(tintLinearLayout, tintLinearLayout, tintImageView, tintTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutBannerNotificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutBannerNotificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_banner_notification, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57305e;
    }
}
