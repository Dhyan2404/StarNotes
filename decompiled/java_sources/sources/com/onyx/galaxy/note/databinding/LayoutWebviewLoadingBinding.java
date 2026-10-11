package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutWebviewLoadingBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57536e;

    public LayoutWebviewLoadingBinding(@NonNull LinearLayout linearLayout) {
        this.f57536e = linearLayout;
    }

    @NonNull
    public static LayoutWebviewLoadingBinding bind(@NonNull View view) {
        if (view != null) {
            return new LayoutWebviewLoadingBinding((LinearLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static LayoutWebviewLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutWebviewLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_webview_loading, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57536e;
    }
}
