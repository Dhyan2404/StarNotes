package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class DialogWebviewGuideBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f56558e;

    @NonNull
    public final TintConstraintLayout guideContainer;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TintTextView tvDescription;

    @NonNull
    public final WebView webView;

    public DialogWebviewGuideBinding(@NonNull FrameLayout frameLayout, @NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintImageView tintImageView, @NonNull TintTextView tintTextView, @NonNull WebView webView) {
        this.f56558e = frameLayout;
        this.guideContainer = tintConstraintLayout;
        this.ivClose = tintImageView;
        this.tvDescription = tintTextView;
        this.webView = webView;
    }

    @NonNull
    public static DialogWebviewGuideBinding bind(@NonNull View view) {
        int i = C10651R.id.guide_container;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (tintConstraintLayout != null) {
            i = C10651R.id.iv_close;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.tv_description;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    i = C10651R.id.web_view;
                    WebView webView = (WebView) ViewBindings.findChildViewById(view, i);
                    if (webView != null) {
                        return new DialogWebviewGuideBinding((FrameLayout) view, tintConstraintLayout, tintImageView, tintTextView, webView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static DialogWebviewGuideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogWebviewGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.dialog_webview_guide, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f56558e;
    }
}
