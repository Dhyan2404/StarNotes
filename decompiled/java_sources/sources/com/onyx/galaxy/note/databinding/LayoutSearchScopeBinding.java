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
public final class LayoutSearchScopeBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57449e;

    @NonNull
    public final TintImageView folderConditionIcon;

    @NonNull
    public final TintLinearLayout folderConditionLayout;

    @NonNull
    public final TintTextView folderConditionText;

    @NonNull
    public final TintTextView folderConditionTitle;

    @NonNull
    public final TintImageView scopePreviewIcon;

    @NonNull
    public final TintLinearLayout scopePreviewLayout;

    @NonNull
    public final TintTextView scopePreviewText;

    @NonNull
    public final TintLinearLayout searchConditionLayout;

    @NonNull
    public final TintTextView searchScopeHint;

    @NonNull
    public final TintLinearLayout searchScopeLayout;

    @NonNull
    public final TintTextView searchScopeTitle;

    @NonNull
    public final TintImageView tagConditionIcon;

    @NonNull
    public final TintLinearLayout tagConditionLayout;

    @NonNull
    public final TintTextView tagConditionText;

    @NonNull
    public final TintTextView tagConditionTitle;

    public LayoutSearchScopeBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView, @NonNull TintLinearLayout tintLinearLayout2, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintImageView tintImageView2, @NonNull TintLinearLayout tintLinearLayout3, @NonNull TintTextView tintTextView3, @NonNull TintLinearLayout tintLinearLayout4, @NonNull TintTextView tintTextView4, @NonNull TintLinearLayout tintLinearLayout5, @NonNull TintTextView tintTextView5, @NonNull TintImageView tintImageView3, @NonNull TintLinearLayout tintLinearLayout6, @NonNull TintTextView tintTextView6, @NonNull TintTextView tintTextView7) {
        this.f57449e = tintLinearLayout;
        this.folderConditionIcon = tintImageView;
        this.folderConditionLayout = tintLinearLayout2;
        this.folderConditionText = tintTextView;
        this.folderConditionTitle = tintTextView2;
        this.scopePreviewIcon = tintImageView2;
        this.scopePreviewLayout = tintLinearLayout3;
        this.scopePreviewText = tintTextView3;
        this.searchConditionLayout = tintLinearLayout4;
        this.searchScopeHint = tintTextView4;
        this.searchScopeLayout = tintLinearLayout5;
        this.searchScopeTitle = tintTextView5;
        this.tagConditionIcon = tintImageView3;
        this.tagConditionLayout = tintLinearLayout6;
        this.tagConditionText = tintTextView6;
        this.tagConditionTitle = tintTextView7;
    }

    @NonNull
    public static LayoutSearchScopeBinding bind(@NonNull View view) {
        int i = C10651R.id.folderConditionIcon;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.folderConditionLayout;
            TintLinearLayout tintLinearLayout = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
            if (tintLinearLayout != null) {
                i = C10651R.id.folderConditionText;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    i = C10651R.id.folderConditionTitle;
                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView2 != null) {
                        i = C10651R.id.scopePreviewIcon;
                        TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                        if (tintImageView2 != null) {
                            i = C10651R.id.scopePreviewLayout;
                            TintLinearLayout tintLinearLayout2 = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                            if (tintLinearLayout2 != null) {
                                i = C10651R.id.scopePreviewText;
                                TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView3 != null) {
                                    i = C10651R.id.searchConditionLayout;
                                    TintLinearLayout tintLinearLayout3 = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (tintLinearLayout3 != null) {
                                        i = C10651R.id.searchScopeHint;
                                        TintTextView tintTextView4 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView4 != null) {
                                            TintLinearLayout tintLinearLayout4 = (TintLinearLayout) view;
                                            i = C10651R.id.searchScopeTitle;
                                            TintTextView tintTextView5 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                            if (tintTextView5 != null) {
                                                i = C10651R.id.tagConditionIcon;
                                                TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                                                if (tintImageView3 != null) {
                                                    i = C10651R.id.tagConditionLayout;
                                                    TintLinearLayout tintLinearLayout5 = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                                                    if (tintLinearLayout5 != null) {
                                                        i = C10651R.id.tagConditionText;
                                                        TintTextView tintTextView6 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                        if (tintTextView6 != null) {
                                                            i = C10651R.id.tagConditionTitle;
                                                            TintTextView tintTextView7 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                            if (tintTextView7 != null) {
                                                                return new LayoutSearchScopeBinding(tintLinearLayout4, tintImageView, tintLinearLayout, tintTextView, tintTextView2, tintImageView2, tintLinearLayout2, tintTextView3, tintLinearLayout3, tintTextView4, tintLinearLayout4, tintTextView5, tintImageView3, tintLinearLayout5, tintTextView6, tintTextView7);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
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
    public static LayoutSearchScopeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSearchScopeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_search_scope, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57449e;
    }
}
