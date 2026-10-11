package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.viewmodel.SettingsCloudSyncViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsCloudBinding extends ViewDataBinding {

    @NonNull
    public final LayoutWifiAndMobileContainerBinding flWifiAndMobile;

    @Bindable
    protected SettingsCloudSyncViewModel mViewModel;

    @NonNull
    public final ManualSwitchCompat switchAutoSync;

    @NonNull
    public final TintTextView tvCloudSpaceLeft;

    @NonNull
    public final TintTextView tvGetMoreSpace;

    @NonNull
    public final TintTextView tvLastModify;

    public FragmentSettingsCloudBinding(Object obj, View view, int i, LayoutWifiAndMobileContainerBinding layoutWifiAndMobileContainerBinding, ManualSwitchCompat manualSwitchCompat, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.flWifiAndMobile = layoutWifiAndMobileContainerBinding;
        this.switchAutoSync = manualSwitchCompat;
        this.tvCloudSpaceLeft = tintTextView;
        this.tvGetMoreSpace = tintTextView2;
        this.tvLastModify = tintTextView3;
    }

    public static FragmentSettingsCloudBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsCloudBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public SettingsCloudSyncViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable SettingsCloudSyncViewModel settingsCloudSyncViewModel);

    @Deprecated
    public static FragmentSettingsCloudBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsCloudBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_cloud);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsCloudBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsCloudBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_cloud, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsCloudBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsCloudBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsCloudBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_cloud, null, false, obj);
    }
}
