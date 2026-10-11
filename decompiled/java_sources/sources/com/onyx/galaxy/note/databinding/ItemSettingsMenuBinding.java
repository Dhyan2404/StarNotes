package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemSettingsMenuBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57187e;

    @NonNull
    public final TintImageView ivMenu;

    @NonNull
    public final TintLinearLayout llItemContainer;

    @NonNull
    public final TintImageView newFeatureImage;

    @NonNull
    public final TintTextView tvSettingMenuName;

    public ItemSettingsMenuBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView, @NonNull TintLinearLayout tintLinearLayout2, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView) {
        this.f57187e = tintLinearLayout;
        this.ivMenu = tintImageView;
        this.llItemContainer = tintLinearLayout2;
        this.newFeatureImage = tintImageView2;
        this.tvSettingMenuName = tintTextView;
    }

    @NonNull
    public static ItemSettingsMenuBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_menu;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            TintLinearLayout tintLinearLayout = (TintLinearLayout) view;
            i = C10651R.id.newFeatureImage;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                i = C10651R.id.tv_setting_menu_name;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    return new ItemSettingsMenuBinding(tintLinearLayout, tintImageView, tintLinearLayout, tintImageView2, tintTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemSettingsMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSettingsMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_settings_menu, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57187e;
    }
}
