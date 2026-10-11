package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.EyesComfortSettingLayout;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsMoreBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout aboutStartNoteContainer;

    @NonNull
    public final EyesComfortSettingLayout eyesComfortSettingLayout;

    @NonNull
    public final TintFrameLayout flLanguageItem;

    @NonNull
    public final LayoutLanguageSelectBinding includeLanguageContainer;

    @NonNull
    public final LayoutStarNoteDiscoverBinding includeStarNoteDiscover;

    @NonNull
    public final ManualSwitchCompat switchEyesComfortSetting;

    @NonNull
    public final TintSwitchCompat switchHideStatusBar;

    @NonNull
    public final TintSwitchCompat switchKeepScreenOn;

    @NonNull
    public final TintTextView tvLanguage;

    public FragmentSettingsMoreBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, EyesComfortSettingLayout eyesComfortSettingLayout, TintFrameLayout tintFrameLayout2, LayoutLanguageSelectBinding layoutLanguageSelectBinding, LayoutStarNoteDiscoverBinding layoutStarNoteDiscoverBinding, ManualSwitchCompat manualSwitchCompat, TintSwitchCompat tintSwitchCompat, TintSwitchCompat tintSwitchCompat2, TintTextView tintTextView) {
        super(obj, view, i);
        this.aboutStartNoteContainer = tintFrameLayout;
        this.eyesComfortSettingLayout = eyesComfortSettingLayout;
        this.flLanguageItem = tintFrameLayout2;
        this.includeLanguageContainer = layoutLanguageSelectBinding;
        this.includeStarNoteDiscover = layoutStarNoteDiscoverBinding;
        this.switchEyesComfortSetting = manualSwitchCompat;
        this.switchHideStatusBar = tintSwitchCompat;
        this.switchKeepScreenOn = tintSwitchCompat2;
        this.tvLanguage = tintTextView;
    }

    public static FragmentSettingsMoreBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsMoreBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsMoreBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_more);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsMoreBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_more, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsMoreBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsMoreBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsMoreBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_more, null, false, obj);
    }
}
