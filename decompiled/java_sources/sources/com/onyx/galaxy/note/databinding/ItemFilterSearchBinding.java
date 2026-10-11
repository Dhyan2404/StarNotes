package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemFilterSearchBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57031e;

    @NonNull
    public final TintImageView ivSearch;

    @NonNull
    public final TintLinearLayout llRoot;

    @NonNull
    public final TintTextView tvSearch;

    public ItemFilterSearchBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView, @NonNull TintLinearLayout tintLinearLayout2, @NonNull TintTextView tintTextView) {
        this.f57031e = tintLinearLayout;
        this.ivSearch = tintImageView;
        this.llRoot = tintLinearLayout2;
        this.tvSearch = tintTextView;
    }

    @NonNull
    public static ItemFilterSearchBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_search;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            TintLinearLayout tintLinearLayout = (TintLinearLayout) view;
            int i2 = C10651R.id.tv_search;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i2);
            if (tintTextView != null) {
                return new ItemFilterSearchBinding(tintLinearLayout, tintImageView, tintLinearLayout, tintTextView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemFilterSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_search, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57031e;
    }
}
