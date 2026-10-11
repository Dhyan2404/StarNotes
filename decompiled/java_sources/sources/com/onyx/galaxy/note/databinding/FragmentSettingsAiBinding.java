package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsAiBinding extends ViewDataBinding {

    @NonNull
    public final TintSwitchCompat inkBeautySwitchButton;

    @NonNull
    public final TintLinearLayout mainOptionLayout;

    @NonNull
    public final TintFrameLayout mainSwitchLayout;

    @NonNull
    public final TintLinearLayout typesetOptionLayout;

    @NonNull
    public final TintSwitchCompat typesetSwitchButton;

    @NonNull
    public final TintFrameLayout typesetSwitchLayout;

    @NonNull
    public final TintTextView typesetSwitchText;

    public FragmentSettingsAiBinding(Object obj, View view, int i, TintSwitchCompat tintSwitchCompat, TintLinearLayout tintLinearLayout, TintFrameLayout tintFrameLayout, TintLinearLayout tintLinearLayout2, TintSwitchCompat tintSwitchCompat2, TintFrameLayout tintFrameLayout2, TintTextView tintTextView) {
        super(obj, view, i);
        this.inkBeautySwitchButton = tintSwitchCompat;
        this.mainOptionLayout = tintLinearLayout;
        this.mainSwitchLayout = tintFrameLayout;
        this.typesetOptionLayout = tintLinearLayout2;
        this.typesetSwitchButton = tintSwitchCompat2;
        this.typesetSwitchLayout = tintFrameLayout2;
        this.typesetSwitchText = tintTextView;
    }

    public static FragmentSettingsAiBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsAiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsAiBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsAiBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_ai);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsAiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsAiBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_ai, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsAiBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsAiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsAiBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_ai, null, false, obj);
    }
}
