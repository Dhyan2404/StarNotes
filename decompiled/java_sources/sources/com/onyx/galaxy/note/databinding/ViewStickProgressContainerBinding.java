package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarView;

/* loaded from: classes9.dex */
public final class ViewStickProgressContainerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57944e;

    @NonNull
    public final StickSeekBarView seekBar;

    @NonNull
    public final TintTextView tvProgressTitle;

    @NonNull
    public final TintTextView tvProgressValue;

    public ViewStickProgressContainerBinding(@NonNull ConstraintLayout constraintLayout, @NonNull StickSeekBarView stickSeekBarView, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2) {
        this.f57944e = constraintLayout;
        this.seekBar = stickSeekBarView;
        this.tvProgressTitle = tintTextView;
        this.tvProgressValue = tintTextView2;
    }

    @NonNull
    public static ViewStickProgressContainerBinding bind(@NonNull View view) {
        int i = C10651R.id.seek_bar;
        StickSeekBarView stickSeekBarView = (StickSeekBarView) ViewBindings.findChildViewById(view, i);
        if (stickSeekBarView != null) {
            i = C10651R.id.tv_progress_title;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.tv_progress_value;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    return new ViewStickProgressContainerBinding((ConstraintLayout) view, stickSeekBarView, tintTextView, tintTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ViewStickProgressContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ViewStickProgressContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.view_stick_progress_container, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57944e;
    }
}
