package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemSelectMultiFolderBinding implements ViewBinding {

    @NonNull
    public final TintView dividerView;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57171e;

    @NonNull
    public final TintImageView expandCollapseButton;

    @NonNull
    public final TintImageView folderIcon;

    @NonNull
    public final TintImageView folderIconMask;

    @NonNull
    public final TintTextView folderNameText;

    @NonNull
    public final TintImageView selectButton;

    @NonNull
    public final TintConstraintLayout selectMultiFolderLayout;

    public ItemSelectMultiFolderBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintView tintView, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintTextView tintTextView, @NonNull TintImageView tintImageView4, @NonNull TintConstraintLayout tintConstraintLayout2) {
        this.f57171e = tintConstraintLayout;
        this.dividerView = tintView;
        this.expandCollapseButton = tintImageView;
        this.folderIcon = tintImageView2;
        this.folderIconMask = tintImageView3;
        this.folderNameText = tintTextView;
        this.selectButton = tintImageView4;
        this.selectMultiFolderLayout = tintConstraintLayout2;
    }

    @NonNull
    public static ItemSelectMultiFolderBinding bind(@NonNull View view) {
        int i = C10651R.id.dividerView;
        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
        if (tintView != null) {
            i = C10651R.id.expandCollapseButton;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.folderIcon;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    i = C10651R.id.folderIconMask;
                    TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView3 != null) {
                        i = C10651R.id.folderNameText;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            i = C10651R.id.selectButton;
                            TintImageView tintImageView4 = (TintImageView) ViewBindings.findChildViewById(view, i);
                            if (tintImageView4 != null) {
                                TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
                                return new ItemSelectMultiFolderBinding(tintConstraintLayout, tintView, tintImageView, tintImageView2, tintImageView3, tintTextView, tintImageView4, tintConstraintLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemSelectMultiFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSelectMultiFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_select_multi_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57171e;
    }
}
