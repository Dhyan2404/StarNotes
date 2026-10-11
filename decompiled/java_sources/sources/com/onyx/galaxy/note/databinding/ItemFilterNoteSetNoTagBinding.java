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
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemFilterNoteSetNoTagBinding implements ViewBinding {

    @NonNull
    public final TintConstraintLayout clsRoot;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57027e;

    @NonNull
    public final TintImageView ivUnTag;

    @NonNull
    public final TintTextView tvUnTag;

    @NonNull
    public final TintTextView tvUnTagCount;

    @NonNull
    public final TintView vDragIn;

    public ItemFilterNoteSetNoTagBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintImageView tintImageView, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintView tintView) {
        this.f57027e = tintConstraintLayout;
        this.clsRoot = tintConstraintLayout2;
        this.ivUnTag = tintImageView;
        this.tvUnTag = tintTextView;
        this.tvUnTagCount = tintTextView2;
        this.vDragIn = tintView;
    }

    @NonNull
    public static ItemFilterNoteSetNoTagBinding bind(@NonNull View view) {
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
        int i = C10651R.id.iv_un_tag;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.tv_un_tag;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.tv_un_tag_count;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    i = C10651R.id.v_drag_in;
                    TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                    if (tintView != null) {
                        return new ItemFilterNoteSetNoTagBinding(tintConstraintLayout, tintConstraintLayout, tintImageView, tintTextView, tintTextView2, tintView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemFilterNoteSetNoTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterNoteSetNoTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_note_set_no_tag, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57027e;
    }
}
