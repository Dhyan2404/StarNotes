package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.HorizontalTabScrollView;

/* loaded from: classes9.dex */
public final class LayoutSelectionActionBinding implements ViewBinding {

    @NonNull
    public final LinearLayoutCompat contentContainer;

    /* renamed from: e */
    @NonNull
    public final TintRelativeLayout f57451e;

    @NonNull
    public final TintRelativeLayout layoutContainer;

    @NonNull
    public final HorizontalTabScrollView scrollContainer;

    @NonNull
    public final TintImageView scrollContainerIndicator;

    public LayoutSelectionActionBinding(@NonNull TintRelativeLayout tintRelativeLayout, @NonNull LinearLayoutCompat linearLayoutCompat, @NonNull TintRelativeLayout tintRelativeLayout2, @NonNull HorizontalTabScrollView horizontalTabScrollView, @NonNull TintImageView tintImageView) {
        this.f57451e = tintRelativeLayout;
        this.contentContainer = linearLayoutCompat;
        this.layoutContainer = tintRelativeLayout2;
        this.scrollContainer = horizontalTabScrollView;
        this.scrollContainerIndicator = tintImageView;
    }

    @NonNull
    public static LayoutSelectionActionBinding bind(@NonNull View view) {
        int i = C10651R.id.content_container;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
        if (linearLayoutCompat != null) {
            TintRelativeLayout tintRelativeLayout = (TintRelativeLayout) view;
            i = C10651R.id.scroll_container;
            HorizontalTabScrollView horizontalTabScrollView = (HorizontalTabScrollView) ViewBindings.findChildViewById(view, i);
            if (horizontalTabScrollView != null) {
                i = C10651R.id.scroll_container_indicator;
                TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView != null) {
                    return new LayoutSelectionActionBinding(tintRelativeLayout, linearLayoutCompat, tintRelativeLayout, horizontalTabScrollView, tintImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutSelectionActionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSelectionActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_selection_action, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintRelativeLayout getRoot() {
        return this.f57451e;
    }
}
