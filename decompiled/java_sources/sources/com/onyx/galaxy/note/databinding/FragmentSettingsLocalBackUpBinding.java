package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.viewmodel.SettingsLocalBackupViveModel;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsLocalBackUpBinding extends ViewDataBinding {

    @Bindable
    protected SettingsLocalBackupViveModel mViewModel;

    @NonNull
    public final TintRecycleView rvPath;

    @NonNull
    public final ManualSwitchCompat switchAutoBackup;

    @NonNull
    public final TintTextView tvBackupNow;

    @NonNull
    public final TintTextView tvImportBackup;

    @NonNull
    public final TintTextView tvLastLocalBackTime;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final TintView vDivider;

    public FragmentSettingsLocalBackUpBinding(Object obj, View view, int i, TintRecycleView tintRecycleView, ManualSwitchCompat manualSwitchCompat, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, MediumTextView mediumTextView, TintView tintView) {
        super(obj, view, i);
        this.rvPath = tintRecycleView;
        this.switchAutoBackup = manualSwitchCompat;
        this.tvBackupNow = tintTextView;
        this.tvImportBackup = tintTextView2;
        this.tvLastLocalBackTime = tintTextView3;
        this.tvTitle = mediumTextView;
        this.vDivider = tintView;
    }

    public static FragmentSettingsLocalBackUpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsLocalBackUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public SettingsLocalBackupViveModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable SettingsLocalBackupViveModel settingsLocalBackupViveModel);

    @Deprecated
    public static FragmentSettingsLocalBackUpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsLocalBackUpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_local_back_up);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsLocalBackUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsLocalBackUpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_local_back_up, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsLocalBackUpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsLocalBackUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsLocalBackUpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_local_back_up, null, false, obj);
    }
}
