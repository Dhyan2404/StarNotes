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
public final class ItemFilterNoteAllBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57023e;

    @NonNull
    public final TintImageView ivNoteSeriesExpand;

    @NonNull
    public final TintImageView ivNoteSet;

    @NonNull
    public final TintConstraintLayout llRoot;

    @NonNull
    public final TintTextView tvNoteSet;

    public ItemFilterNoteAllBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintTextView tintTextView) {
        this.f57023e = tintConstraintLayout;
        this.ivNoteSeriesExpand = tintImageView;
        this.ivNoteSet = tintImageView2;
        this.llRoot = tintConstraintLayout2;
        this.tvNoteSet = tintTextView;
    }

    @NonNull
    public static ItemFilterNoteAllBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_note_series_expand;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.iv_note_set;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
                i = C10651R.id.tv_note_set;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    return new ItemFilterNoteAllBinding(tintConstraintLayout, tintImageView, tintImageView2, tintConstraintLayout, tintTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemFilterNoteAllBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterNoteAllBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_note_all, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57023e;
    }
}
