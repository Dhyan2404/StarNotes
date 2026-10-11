package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsPrivacyBinding extends ViewDataBinding {

    @NonNull
    public final IncludeSettingsPrivacyContainerBinding includeSettingsPrivacyContainer;

    @NonNull
    public final TintFrameLayout noteEncryptionContainer;

    @NonNull
    public final ManualSwitchCompat switchNoteEncryption;

    @NonNull
    public final TintTextView tvNoteEncryption;

    public FragmentSettingsPrivacyBinding(Object obj, View view, int i, IncludeSettingsPrivacyContainerBinding includeSettingsPrivacyContainerBinding, TintFrameLayout tintFrameLayout, ManualSwitchCompat manualSwitchCompat, TintTextView tintTextView) {
        super(obj, view, i);
        this.includeSettingsPrivacyContainer = includeSettingsPrivacyContainerBinding;
        this.noteEncryptionContainer = tintFrameLayout;
        this.switchNoteEncryption = manualSwitchCompat;
        this.tvNoteEncryption = tintTextView;
    }

    public static FragmentSettingsPrivacyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsPrivacyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsPrivacyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsPrivacyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_privacy);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsPrivacyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsPrivacyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_privacy, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsPrivacyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsPrivacyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsPrivacyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_privacy, null, false, obj);
    }
}
