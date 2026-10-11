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
public final class ItemSelectMultiTagBinding implements ViewBinding {

    @NonNull
    public final TintView dividerView;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57172e;

    @NonNull
    public final TintImageView expandCollapseButton;

    @NonNull
    public final TintImageView selectButton;

    @NonNull
    public final TintConstraintLayout selectMultiTagLayout;

    @NonNull
    public final TintImageView tagIcon;

    @NonNull
    public final TintImageView tagIconMask;

    @NonNull
    public final TintTextView tagNameText;

    public ItemSelectMultiTagBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintView tintView, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintImageView tintImageView3, @NonNull TintImageView tintImageView4, @NonNull TintTextView tintTextView) {
        this.f57172e = tintConstraintLayout;
        this.dividerView = tintView;
        this.expandCollapseButton = tintImageView;
        this.selectButton = tintImageView2;
        this.selectMultiTagLayout = tintConstraintLayout2;
        this.tagIcon = tintImageView3;
        this.tagIconMask = tintImageView4;
        this.tagNameText = tintTextView;
    }

    @NonNull
    public static ItemSelectMultiTagBinding bind(@NonNull View view) {
        int i = C10651R.id.dividerView;
        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
        if (tintView != null) {
            i = C10651R.id.expandCollapseButton;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.selectButton;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
                    i = C10651R.id.tagIcon;
                    TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView3 != null) {
                        i = C10651R.id.tagIconMask;
                        TintImageView tintImageView4 = (TintImageView) ViewBindings.findChildViewById(view, i);
                        if (tintImageView4 != null) {
                            i = C10651R.id.tagNameText;
                            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView != null) {
                                return new ItemSelectMultiTagBinding(tintConstraintLayout, tintView, tintImageView, tintImageView2, tintConstraintLayout, tintImageView3, tintImageView4, tintTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemSelectMultiTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSelectMultiTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_select_multi_tag, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57172e;
    }
}
