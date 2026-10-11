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
public final class ItemSettingSelectContianerBinding implements ViewBinding {

    @NonNull
    public final TintView divider;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57186e;

    @NonNull
    public final TintImageView ivSelected;

    @NonNull
    public final TintTextView tvName;

    public ItemSettingSelectContianerBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintView tintView, @NonNull TintImageView tintImageView, @NonNull TintTextView tintTextView) {
        this.f57186e = tintConstraintLayout;
        this.divider = tintView;
        this.ivSelected = tintImageView;
        this.tvName = tintTextView;
    }

    @NonNull
    public static ItemSettingSelectContianerBinding bind(@NonNull View view) {
        int i = C10651R.id.divider;
        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
        if (tintView != null) {
            i = C10651R.id.iv_selected;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.tv_name;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    return new ItemSettingSelectContianerBinding((TintConstraintLayout) view, tintView, tintImageView, tintTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemSettingSelectContianerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSettingSelectContianerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_setting_select_contianer, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57186e;
    }
}
