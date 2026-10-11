package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public final class LayoutSearchNoteProgressBinding implements ViewBinding {

    @NonNull
    public final TintTextView cancelButton;

    /* renamed from: e */
    @NonNull
    public final ShadowLayout f57448e;

    @NonNull
    public final ImageView ivSearchingLoading;

    @NonNull
    public final TintTextView progressText;

    @NonNull
    public final TintTextView remainNotesText;

    @NonNull
    public final ShadowLayout slLoading;

    public LayoutSearchNoteProgressBinding(@NonNull ShadowLayout shadowLayout, @NonNull TintTextView tintTextView, @NonNull ImageView imageView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3, @NonNull ShadowLayout shadowLayout2) {
        this.f57448e = shadowLayout;
        this.cancelButton = tintTextView;
        this.ivSearchingLoading = imageView;
        this.progressText = tintTextView2;
        this.remainNotesText = tintTextView3;
        this.slLoading = shadowLayout2;
    }

    @NonNull
    public static LayoutSearchNoteProgressBinding bind(@NonNull View view) {
        int i = C10651R.id.cancel_button;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            i = C10651R.id.iv_searching_loading;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = C10651R.id.progress_text;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    i = C10651R.id.remain_notes_text;
                    TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView3 != null) {
                        ShadowLayout shadowLayout = (ShadowLayout) view;
                        return new LayoutSearchNoteProgressBinding(shadowLayout, tintTextView, imageView, tintTextView2, tintTextView3, shadowLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutSearchNoteProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSearchNoteProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_search_note_progress, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ShadowLayout getRoot() {
        return this.f57448e;
    }
}
