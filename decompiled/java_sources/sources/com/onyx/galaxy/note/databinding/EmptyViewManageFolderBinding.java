package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class EmptyViewManageFolderBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f56578e;

    @NonNull
    public final TintTextView tvTitle;

    public EmptyViewManageFolderBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintTextView tintTextView) {
        this.f56578e = tintConstraintLayout;
        this.tvTitle = tintTextView;
    }

    @NonNull
    public static EmptyViewManageFolderBinding bind(@NonNull View view) {
        int i = C10651R.id.tv_title;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            return new EmptyViewManageFolderBinding((TintConstraintLayout) view, tintTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static EmptyViewManageFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static EmptyViewManageFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.empty_view_manage_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f56578e;
    }
}
