package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;

/* loaded from: classes9.dex */
public final class EmptyViewSearchNoteBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f56580e;

    @NonNull
    public final CommonEmptyView emptyView;

    public EmptyViewSearchNoteBinding(@NonNull FrameLayout frameLayout, @NonNull CommonEmptyView commonEmptyView) {
        this.f56580e = frameLayout;
        this.emptyView = commonEmptyView;
    }

    @NonNull
    public static EmptyViewSearchNoteBinding bind(@NonNull View view) {
        int i = C10651R.id.empty_view;
        CommonEmptyView commonEmptyView = (CommonEmptyView) ViewBindings.findChildViewById(view, i);
        if (commonEmptyView != null) {
            return new EmptyViewSearchNoteBinding((FrameLayout) view, commonEmptyView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static EmptyViewSearchNoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static EmptyViewSearchNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.empty_view_search_note, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f56580e;
    }
}
