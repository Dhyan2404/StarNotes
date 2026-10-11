package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemFilterDummyBinding implements ViewBinding {

    @NonNull
    public final TintView divider;

    /* renamed from: e */
    @NonNull
    public final TintView f57020e;

    public ItemFilterDummyBinding(@NonNull TintView tintView, @NonNull TintView tintView2) {
        this.f57020e = tintView;
        this.divider = tintView2;
    }

    @NonNull
    public static ItemFilterDummyBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TintView tintView = (TintView) view;
        return new ItemFilterDummyBinding(tintView, tintView);
    }

    @NonNull
    public static ItemFilterDummyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterDummyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_dummy, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintView getRoot() {
        return this.f57020e;
    }
}
