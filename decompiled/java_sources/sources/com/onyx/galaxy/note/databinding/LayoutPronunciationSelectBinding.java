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
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutPronunciationSelectBinding implements ViewBinding {

    @NonNull
    public final TintTextView dividerPronunciation;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57434e;

    @NonNull
    public final TintConstraintLayout pronunciationContainer;

    @NonNull
    public final TintRecycleView rlPronunciationList;

    @NonNull
    public final TintTextView tvBack;

    @NonNull
    public final TintTextView tvTitle;

    public LayoutPronunciationSelectBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintTextView tintTextView, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintRecycleView tintRecycleView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3) {
        this.f57434e = tintConstraintLayout;
        this.dividerPronunciation = tintTextView;
        this.pronunciationContainer = tintConstraintLayout2;
        this.rlPronunciationList = tintRecycleView;
        this.tvBack = tintTextView2;
        this.tvTitle = tintTextView3;
    }

    @NonNull
    public static LayoutPronunciationSelectBinding bind(@NonNull View view) {
        int i = C10651R.id.divider_pronunciation;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
            i = C10651R.id.rl_pronunciation_list;
            TintRecycleView tintRecycleView = (TintRecycleView) ViewBindings.findChildViewById(view, i);
            if (tintRecycleView != null) {
                i = C10651R.id.tv_back;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    i = C10651R.id.tv_title;
                    TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView3 != null) {
                        return new LayoutPronunciationSelectBinding(tintConstraintLayout, tintTextView, tintConstraintLayout, tintRecycleView, tintTextView2, tintTextView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutPronunciationSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutPronunciationSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_pronunciation_select, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57434e;
    }
}
