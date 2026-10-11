package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public final class LayoutNoteQuotaWarningBinding implements ViewBinding {

    @NonNull
    public final TintImageView closeButton;

    @NonNull
    public final TintTextView confirmButton;

    @NonNull
    public final TintTextView contentText1;

    @NonNull
    public final TintTextView contentText2;

    /* renamed from: e */
    @NonNull
    public final ShadowLayout f57395e;

    public LayoutNoteQuotaWarningBinding(@NonNull ShadowLayout shadowLayout, @NonNull TintImageView tintImageView, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3) {
        this.f57395e = shadowLayout;
        this.closeButton = tintImageView;
        this.confirmButton = tintTextView;
        this.contentText1 = tintTextView2;
        this.contentText2 = tintTextView3;
    }

    @NonNull
    public static LayoutNoteQuotaWarningBinding bind(@NonNull View view) {
        int i = C10651R.id.closeButton;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.confirmButton;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.contentText1;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    i = C10651R.id.contentText2;
                    TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView3 != null) {
                        return new LayoutNoteQuotaWarningBinding((ShadowLayout) view, tintImageView, tintTextView, tintTextView2, tintTextView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutNoteQuotaWarningBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutNoteQuotaWarningBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_note_quota_warning, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ShadowLayout getRoot() {
        return this.f57395e;
    }
}
