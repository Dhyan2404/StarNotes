package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class PopupEditBeautifyResultBinding implements ViewBinding {

    @NonNull
    public final TintImageView clearButton;

    @NonNull
    public final TintImageView confirmButton;

    @NonNull
    public final TintImageView dragButton;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57614e;

    @NonNull
    public final TintEditText resultText;

    @NonNull
    public final TintLinearLayout rootLayout;

    public PopupEditBeautifyResultBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintEditText tintEditText, @NonNull TintLinearLayout tintLinearLayout2) {
        this.f57614e = tintLinearLayout;
        this.clearButton = tintImageView;
        this.confirmButton = tintImageView2;
        this.dragButton = tintImageView3;
        this.resultText = tintEditText;
        this.rootLayout = tintLinearLayout2;
    }

    @NonNull
    public static PopupEditBeautifyResultBinding bind(@NonNull View view) {
        int i = C10651R.id.clearButton;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.confirmButton;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                i = C10651R.id.dragButton;
                TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView3 != null) {
                    i = C10651R.id.resultText;
                    TintEditText tintEditText = (TintEditText) ViewBindings.findChildViewById(view, i);
                    if (tintEditText != null) {
                        TintLinearLayout tintLinearLayout = (TintLinearLayout) view;
                        return new PopupEditBeautifyResultBinding(tintLinearLayout, tintImageView, tintImageView2, tintImageView3, tintEditText, tintLinearLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PopupEditBeautifyResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupEditBeautifyResultBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_edit_beautify_result, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57614e;
    }
}
