package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemFilterNoteDustbinBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57024e;

    @NonNull
    public final TintImageView ivDustBin;

    @NonNull
    public final TintConstraintLayout llRoot;

    @NonNull
    public final TintTextView tvDustBin;

    public ItemFilterNoteDustbinBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintImageView tintImageView, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintTextView tintTextView) {
        this.f57024e = tintConstraintLayout;
        this.ivDustBin = tintImageView;
        this.llRoot = tintConstraintLayout2;
        this.tvDustBin = tintTextView;
    }

    @NonNull
    public static ItemFilterNoteDustbinBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_dust_bin;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
            int i2 = C10651R.id.tv_dust_bin;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i2);
            if (tintTextView != null) {
                return new ItemFilterNoteDustbinBinding(tintConstraintLayout, tintImageView, tintConstraintLayout, tintTextView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemFilterNoteDustbinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterNoteDustbinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_note_dustbin, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57024e;
    }
}
