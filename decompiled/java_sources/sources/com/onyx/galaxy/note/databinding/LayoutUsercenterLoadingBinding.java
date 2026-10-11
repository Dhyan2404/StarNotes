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
public final class LayoutUsercenterLoadingBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57535e;

    @NonNull
    public final TextView loadingText;

    @NonNull
    public final LoadingView loadingView;

    public LayoutUsercenterLoadingBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LoadingView loadingView) {
        this.f57535e = linearLayout;
        this.loadingText = textView;
        this.loadingView = loadingView;
    }

    @NonNull
    public static LayoutUsercenterLoadingBinding bind(@NonNull View view) {
        int i = C10651R.id.loadingText;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C10651R.id.loadingView;
            LoadingView loadingView = (LoadingView) ViewBindings.findChildViewById(view, i);
            if (loadingView != null) {
                return new LayoutUsercenterLoadingBinding((LinearLayout) view, textView, loadingView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutUsercenterLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutUsercenterLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_usercenter_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57535e;
    }
}
