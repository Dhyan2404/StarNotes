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
public final class LayoutStylusFunContainerBinding implements ViewBinding {

    @NonNull
    public final TintConstraintLayout clStylusFunContainer;

    @NonNull
    public final TintView dividerStylusFun;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57495e;

    @NonNull
    public final TintRecycleView rlStylusFunList;

    @NonNull
    public final TintTextView tvBack;

    @NonNull
    public final TintTextView tvTitle;

    public LayoutStylusFunContainerBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintView tintView, @NonNull TintRecycleView tintRecycleView, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2) {
        this.f57495e = tintConstraintLayout;
        this.clStylusFunContainer = tintConstraintLayout2;
        this.dividerStylusFun = tintView;
        this.rlStylusFunList = tintRecycleView;
        this.tvBack = tintTextView;
        this.tvTitle = tintTextView2;
    }

    @NonNull
    public static LayoutStylusFunContainerBinding bind(@NonNull View view) {
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
        int i = C10651R.id.divider_stylus_fun;
        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
        if (tintView != null) {
            i = C10651R.id.rl_stylus_fun_list;
            TintRecycleView tintRecycleView = (TintRecycleView) ViewBindings.findChildViewById(view, i);
            if (tintRecycleView != null) {
                i = C10651R.id.tv_back;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    i = C10651R.id.tv_title;
                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView2 != null) {
                        return new LayoutStylusFunContainerBinding(tintConstraintLayout, tintConstraintLayout, tintView, tintRecycleView, tintTextView, tintTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutStylusFunContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutStylusFunContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_stylus_fun_container, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57495e;
    }
}
