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
import com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsCloudBackUpBinding extends ViewDataBinding {

    @NonNull
    public final LayoutWifiAndMobileContainerBinding flWifiAndMobile;

    @Bindable
    protected SettingsCloudBackupViewModel mViewModel;

    @NonNull
    public final ManualSwitchCompat switchAutoBackup;

    @NonNull
    public final TintTextView tvBackupNow;

    @NonNull
    public final TintTextView tvBackupPath;

    @NonNull
    public final TintTextView tvBaiduBindState;

    @NonNull
    public final TintTextView tvBaiduImport;

    @NonNull
    public final TintTextView tvGoogleBindState;

    @NonNull
    public final TintTextView tvGoogleImport;

    @NonNull
    public final TintTextView tvLastCloudBackTime;

    @NonNull
    public final TintTextView tvOnedriveBindState;

    @NonNull
    public final TintTextView tvOnedriveImport;

    public FragmentSettingsCloudBackUpBinding(Object obj, View view, int i, LayoutWifiAndMobileContainerBinding layoutWifiAndMobileContainerBinding, ManualSwitchCompat manualSwitchCompat, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8, TintTextView tintTextView9) {
        super(obj, view, i);
        this.flWifiAndMobile = layoutWifiAndMobileContainerBinding;
        this.switchAutoBackup = manualSwitchCompat;
        this.tvBackupNow = tintTextView;
        this.tvBackupPath = tintTextView2;
        this.tvBaiduBindState = tintTextView3;
        this.tvBaiduImport = tintTextView4;
        this.tvGoogleBindState = tintTextView5;
        this.tvGoogleImport = tintTextView6;
        this.tvLastCloudBackTime = tintTextView7;
        this.tvOnedriveBindState = tintTextView8;
        this.tvOnedriveImport = tintTextView9;
    }

    public static FragmentSettingsCloudBackUpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsCloudBackUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public SettingsCloudBackupViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable SettingsCloudBackupViewModel settingsCloudBackupViewModel);

    @Deprecated
    public static FragmentSettingsCloudBackUpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsCloudBackUpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_cloud_back_up);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsCloudBackUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsCloudBackUpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_cloud_back_up, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsCloudBackUpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsCloudBackUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsCloudBackUpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_cloud_back_up, null, false, obj);
    }
}
