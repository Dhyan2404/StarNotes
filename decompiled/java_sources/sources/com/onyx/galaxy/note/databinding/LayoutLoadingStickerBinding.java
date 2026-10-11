package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.LoadingView;

/* loaded from: classes9.dex */
public final class LayoutLoadingStickerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57379e;

    @NonNull
    public final LinearLayout loadingLayout;

    @NonNull
    public final TextView loadingText;

    @NonNull
    public final LoadingView loadingView;

    public LayoutLoadingStickerBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LoadingView loadingView) {
        this.f57379e = linearLayout;
        this.loadingLayout = linearLayout2;
        this.loadingText = textView;
        this.loadingView = loadingView;
    }

    @NonNull
    public static LayoutLoadingStickerBinding bind(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i = C10651R.id.loadingText;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C10651R.id.loadingView;
            LoadingView loadingView = (LoadingView) ViewBindings.findChildViewById(view, i);
            if (loadingView != null) {
                return new LayoutLoadingStickerBinding(linearLayout, linearLayout, textView, loadingView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutLoadingStickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLoadingStickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_loading_sticker, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57379e;
    }
}
