package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class PopupCommonPopupWindowBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57567e;

    public PopupCommonPopupWindowBinding(@NonNull FrameLayout frameLayout) {
        this.f57567e = frameLayout;
    }

    @NonNull
    public static PopupCommonPopupWindowBinding bind(@NonNull View view) {
        if (view != null) {
            return new PopupCommonPopupWindowBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static PopupCommonPopupWindowBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupCommonPopupWindowBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_common_popup_window, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57567e;
    }
}
