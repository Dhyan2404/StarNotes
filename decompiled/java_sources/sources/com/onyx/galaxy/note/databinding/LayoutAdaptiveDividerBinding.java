package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutAdaptiveDividerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintFrameLayout f57304e;

    public LayoutAdaptiveDividerBinding(@NonNull TintFrameLayout tintFrameLayout) {
        this.f57304e = tintFrameLayout;
    }

    @NonNull
    public static LayoutAdaptiveDividerBinding bind(@NonNull View view) {
        if (view != null) {
            return new LayoutAdaptiveDividerBinding((TintFrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static LayoutAdaptiveDividerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutAdaptiveDividerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_adaptive_divider, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintFrameLayout getRoot() {
        return this.f57304e;
    }
}
