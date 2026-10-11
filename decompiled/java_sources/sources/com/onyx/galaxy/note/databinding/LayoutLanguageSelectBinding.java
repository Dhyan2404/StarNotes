package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutLanguageSelectBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57374e;

    @NonNull
    public final TintConstraintLayout languageContainer;

    @NonNull
    public final TintView languageDivider;

    @NonNull
    public final TintTextView languageTitle;

    @NonNull
    public final TintRecycleView rlLanguageList;

    @NonNull
    public final TintTextView tvLanguageBack;

    public LayoutLanguageSelectBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintView tintView, @NonNull TintTextView tintTextView, @NonNull TintRecycleView tintRecycleView, @NonNull TintTextView tintTextView2) {
        this.f57374e = tintConstraintLayout;
        this.languageContainer = tintConstraintLayout2;
        this.languageDivider = tintView;
        this.languageTitle = tintTextView;
        this.rlLanguageList = tintRecycleView;
        this.tvLanguageBack = tintTextView2;
    }

    @NonNull
    public static LayoutLanguageSelectBinding bind(@NonNull View view) {
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
        int i = C10651R.id.language_divider;
        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
        if (tintView != null) {
            i = C10651R.id.language_title;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.rl_language_list;
                TintRecycleView tintRecycleView = (TintRecycleView) ViewBindings.findChildViewById(view, i);
                if (tintRecycleView != null) {
                    i = C10651R.id.tv_language_back;
                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView2 != null) {
                        return new LayoutLanguageSelectBinding(tintConstraintLayout, tintConstraintLayout, tintView, tintTextView, tintRecycleView, tintTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutLanguageSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutLanguageSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_language_select, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57374e;
    }
}
