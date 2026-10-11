package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.RatioImageView;

/* loaded from: classes9.dex */
public final class LayoutSidebarNotificationBinding implements ViewBinding {

    @NonNull
    public final ImageView closeButton;

    @NonNull
    public final TintFrameLayout container;

    /* renamed from: e */
    @NonNull
    public final TintFrameLayout f57472e;

    @NonNull
    public final RatioImageView image;

    public LayoutSidebarNotificationBinding(@NonNull TintFrameLayout tintFrameLayout, @NonNull ImageView imageView, @NonNull TintFrameLayout tintFrameLayout2, @NonNull RatioImageView ratioImageView) {
        this.f57472e = tintFrameLayout;
        this.closeButton = imageView;
        this.container = tintFrameLayout2;
        this.image = ratioImageView;
    }

    @NonNull
    public static LayoutSidebarNotificationBinding bind(@NonNull View view) {
        int i = C10651R.id.closeButton;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            TintFrameLayout tintFrameLayout = (TintFrameLayout) view;
            int i2 = C10651R.id.image;
            RatioImageView ratioImageView = (RatioImageView) ViewBindings.findChildViewById(view, i2);
            if (ratioImageView != null) {
                return new LayoutSidebarNotificationBinding(tintFrameLayout, imageView, tintFrameLayout, ratioImageView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutSidebarNotificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSidebarNotificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_sidebar_notification, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintFrameLayout getRoot() {
        return this.f57472e;
    }
}
