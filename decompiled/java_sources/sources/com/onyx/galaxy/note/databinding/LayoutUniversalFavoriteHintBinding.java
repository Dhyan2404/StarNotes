package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutUniversalFavoriteHintBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintImageView f57513e;

    @NonNull
    public final TintImageView image;

    public LayoutUniversalFavoriteHintBinding(@NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2) {
        this.f57513e = tintImageView;
        this.image = tintImageView2;
    }

    @NonNull
    public static LayoutUniversalFavoriteHintBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TintImageView tintImageView = (TintImageView) view;
        return new LayoutUniversalFavoriteHintBinding(tintImageView, tintImageView);
    }

    @NonNull
    public static LayoutUniversalFavoriteHintBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUniversalFavoriteHintBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_universal_favorite_hint, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintImageView getRoot() {
        return this.f57513e;
    }
}
