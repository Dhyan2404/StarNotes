package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public final class PopupOptionsSelectorBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57753e;

    @NonNull
    public final MaxHeightRecyclerView optionsListView;

    @NonNull
    public final TintLinearLayout rootLayout;

    public PopupOptionsSelectorBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull MaxHeightRecyclerView maxHeightRecyclerView, @NonNull TintLinearLayout tintLinearLayout2) {
        this.f57753e = tintLinearLayout;
        this.optionsListView = maxHeightRecyclerView;
        this.rootLayout = tintLinearLayout2;
    }

    @NonNull
    public static PopupOptionsSelectorBinding bind(@NonNull View view) {
        int i = C10651R.id.optionsListView;
        MaxHeightRecyclerView maxHeightRecyclerView = (MaxHeightRecyclerView) ViewBindings.findChildViewById(view, i);
        if (maxHeightRecyclerView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
        TintLinearLayout tintLinearLayout = (TintLinearLayout) view;
        return new PopupOptionsSelectorBinding(tintLinearLayout, maxHeightRecyclerView, tintLinearLayout);
    }

    @NonNull
    public static PopupOptionsSelectorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupOptionsSelectorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_options_selector, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57753e;
    }
}
