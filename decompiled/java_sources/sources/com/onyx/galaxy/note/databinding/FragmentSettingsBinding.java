package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class FragmentSettingsBinding implements ViewBinding {

    @NonNull
    public final TintRecycleView clSettingMenuList;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f56816e;

    @NonNull
    public final TintTextView flHelpAndFeedback;

    @NonNull
    public final TintImageView ivSettingBack;

    @NonNull
    public final Guideline settingsGuideline;

    @NonNull
    public final TintLinearLayout settingsLeft;

    @NonNull
    public final FragmentContainerView settingsRight;

    @NonNull
    public final LayoutSidebarNotificationBinding sidebarNotificationBinding;

    public FragmentSettingsBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TintRecycleView tintRecycleView, @NonNull TintTextView tintTextView, @NonNull TintImageView tintImageView, @NonNull Guideline guideline, @NonNull TintLinearLayout tintLinearLayout, @NonNull FragmentContainerView fragmentContainerView, @NonNull LayoutSidebarNotificationBinding layoutSidebarNotificationBinding) {
        this.f56816e = constraintLayout;
        this.clSettingMenuList = tintRecycleView;
        this.flHelpAndFeedback = tintTextView;
        this.ivSettingBack = tintImageView;
        this.settingsGuideline = guideline;
        this.settingsLeft = tintLinearLayout;
        this.settingsRight = fragmentContainerView;
        this.sidebarNotificationBinding = layoutSidebarNotificationBinding;
    }

    @NonNull
    public static FragmentSettingsBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.cl_setting_menu_list;
        TintRecycleView tintRecycleView = (TintRecycleView) ViewBindings.findChildViewById(view, i);
        if (tintRecycleView != null) {
            i = C10651R.id.fl_help_and_feedback;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.iv_setting_back;
                TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView != null) {
                    i = C10651R.id.settings_guideline;
                    Guideline guideline = (Guideline) ViewBindings.findChildViewById(view, i);
                    if (guideline != null) {
                        i = C10651R.id.settings_left;
                        TintLinearLayout tintLinearLayout = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                        if (tintLinearLayout != null) {
                            i = C10651R.id.settings_right;
                            FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, i);
                            if (fragmentContainerView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.sidebarNotificationBinding))) != null) {
                                return new FragmentSettingsBinding((ConstraintLayout) view, tintRecycleView, tintTextView, tintImageView, guideline, tintLinearLayout, fragmentContainerView, LayoutSidebarNotificationBinding.bind(findChildViewById));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static FragmentSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static FragmentSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.fragment_settings, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f56816e;
    }
}
