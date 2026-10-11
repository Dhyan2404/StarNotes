package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutSearchScopePreviewBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57450e;

    @NonNull
    public final TintTextView folderAllText;

    @NonNull
    public final TintTextView folderEmptyText;

    @NonNull
    public final TintTextView folderListText;

    @NonNull
    public final TintRecycleView folderListView;

    @NonNull
    public final TintTextView tagAllText;

    @NonNull
    public final TintTextView tagEmptyText;

    @NonNull
    public final TintTextView tagListText;

    @NonNull
    public final TintRecycleView tagListView;

    public LayoutSearchScopePreviewBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3, @NonNull TintRecycleView tintRecycleView, @NonNull TintTextView tintTextView4, @NonNull TintTextView tintTextView5, @NonNull TintTextView tintTextView6, @NonNull TintRecycleView tintRecycleView2) {
        this.f57450e = tintLinearLayout;
        this.folderAllText = tintTextView;
        this.folderEmptyText = tintTextView2;
        this.folderListText = tintTextView3;
        this.folderListView = tintRecycleView;
        this.tagAllText = tintTextView4;
        this.tagEmptyText = tintTextView5;
        this.tagListText = tintTextView6;
        this.tagListView = tintRecycleView2;
    }

    @NonNull
    public static LayoutSearchScopePreviewBinding bind(@NonNull View view) {
        int i = C10651R.id.folderAllText;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            i = C10651R.id.folderEmptyText;
            TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView2 != null) {
                i = C10651R.id.folderListText;
                TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView3 != null) {
                    i = C10651R.id.folderListView;
                    TintRecycleView tintRecycleView = (TintRecycleView) ViewBindings.findChildViewById(view, i);
                    if (tintRecycleView != null) {
                        i = C10651R.id.tagAllText;
                        TintTextView tintTextView4 = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView4 != null) {
                            i = C10651R.id.tagEmptyText;
                            TintTextView tintTextView5 = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView5 != null) {
                                i = C10651R.id.tagListText;
                                TintTextView tintTextView6 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView6 != null) {
                                    i = C10651R.id.tagListView;
                                    TintRecycleView tintRecycleView2 = (TintRecycleView) ViewBindings.findChildViewById(view, i);
                                    if (tintRecycleView2 != null) {
                                        return new LayoutSearchScopePreviewBinding((TintLinearLayout) view, tintTextView, tintTextView2, tintTextView3, tintRecycleView, tintTextView4, tintTextView5, tintTextView6, tintRecycleView2);
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
    public static LayoutSearchScopePreviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutSearchScopePreviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_search_scope_preview, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57450e;
    }
}
