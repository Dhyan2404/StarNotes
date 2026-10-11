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

/* loaded from: classes9.dex */
public final class LayoutWebviewTimeoutBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57537e;

    @NonNull
    public final TextView tvErrorSubTitle;

    public LayoutWebviewTimeoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView) {
        this.f57537e = linearLayout;
        this.tvErrorSubTitle = textView;
    }

    @NonNull
    public static LayoutWebviewTimeoutBinding bind(@NonNull View view) {
        int i = C10651R.id.tv_error_sub_title;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            return new LayoutWebviewTimeoutBinding((LinearLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutWebviewTimeoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutWebviewTimeoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_webview_timeout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57537e;
    }
}
