package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsToolsBinding extends ViewDataBinding {

    @NonNull
    public final TintSwitchCompat longPressOfPageMenu;

    @NonNull
    public final TintSwitchCompat switchGraphConvert;

    @NonNull
    public final TintSwitchCompat switchGraphConvertWithPressure;

    @NonNull
    public final TintSwitchCompat switchGraphFilling;

    @NonNull
    public final TintSwitchCompat switchStylusSelectText;

    @NonNull
    public final TintTextView tvSwitchGraphConvertWithPressure;

    public FragmentSettingsToolsBinding(Object obj, View view, int i, TintSwitchCompat tintSwitchCompat, TintSwitchCompat tintSwitchCompat2, TintSwitchCompat tintSwitchCompat3, TintSwitchCompat tintSwitchCompat4, TintSwitchCompat tintSwitchCompat5, TintTextView tintTextView) {
        super(obj, view, i);
        this.longPressOfPageMenu = tintSwitchCompat;
        this.switchGraphConvert = tintSwitchCompat2;
        this.switchGraphConvertWithPressure = tintSwitchCompat3;
        this.switchGraphFilling = tintSwitchCompat4;
        this.switchStylusSelectText = tintSwitchCompat5;
        this.tvSwitchGraphConvertWithPressure = tintTextView;
    }

    public static FragmentSettingsToolsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsToolsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsToolsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsToolsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_tools);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsToolsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsToolsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_tools, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsToolsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsToolsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsToolsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_tools, null, false, obj);
    }
}
