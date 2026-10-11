package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class DialogSearchProgressBinding implements ViewBinding {

    @NonNull
    public final TintImageView closeButton;

    @NonNull
    public final TintTextView countText;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f56505e;

    @NonNull
    public final TintImageView loadingView;

    @NonNull
    public final TintTextView nameText;

    @NonNull
    public final View parentSizeView;

    @NonNull
    public final TintProgressBar progressBar;

    @NonNull
    public final TintTextView progressText;

    @NonNull
    public final MediumTextView titleText;

    public DialogSearchProgressBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintImageView tintImageView, @NonNull TintTextView tintTextView, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView2, @NonNull View view, @NonNull TintProgressBar tintProgressBar, @NonNull TintTextView tintTextView3, @NonNull MediumTextView mediumTextView) {
        this.f56505e = tintConstraintLayout;
        this.closeButton = tintImageView;
        this.countText = tintTextView;
        this.loadingView = tintImageView2;
        this.nameText = tintTextView2;
        this.parentSizeView = view;
        this.progressBar = tintProgressBar;
        this.progressText = tintTextView3;
        this.titleText = mediumTextView;
    }

    @NonNull
    public static DialogSearchProgressBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.closeButton;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.countText;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.loadingView;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    i = C10651R.id.nameText;
                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.parentSizeView))) != null) {
                        i = C10651R.id.progressBar;
                        TintProgressBar tintProgressBar = (TintProgressBar) ViewBindings.findChildViewById(view, i);
                        if (tintProgressBar != null) {
                            i = C10651R.id.progressText;
                            TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView3 != null) {
                                i = C10651R.id.titleText;
                                MediumTextView mediumTextView = (MediumTextView) ViewBindings.findChildViewById(view, i);
                                if (mediumTextView != null) {
                                    return new DialogSearchProgressBinding((TintConstraintLayout) view, tintImageView, tintTextView, tintImageView2, tintTextView2, findChildViewById, tintProgressBar, tintTextView3, mediumTextView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static DialogSearchProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogSearchProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.dialog_search_progress, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f56505e;
    }
}
