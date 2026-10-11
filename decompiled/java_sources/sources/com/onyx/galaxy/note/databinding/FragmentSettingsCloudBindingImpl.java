package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.viewmodel.SettingsCloudSyncViewModel;

/* loaded from: classes9.dex */
public class FragmentSettingsCloudBindingImpl extends FragmentSettingsCloudBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56822u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56823v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f56824q0;

    /* renamed from: t0 */
    public long f56825t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(6);
        f56822u0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_wifi_and_mobile_container"}, new int[]{1}, new int[]{C10651R.layout.layout_wifi_and_mobile_container});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56823v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_cloud_space_left, 2);
        sparseIntArray.put(C10651R.id.tv_get_more_space, 3);
        sparseIntArray.put(C10651R.id.tv_last_modify, 4);
        sparseIntArray.put(C10651R.id.switch_auto_sync, 5);
    }

    public FragmentSettingsCloudBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56822u0, f56823v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f56825t0;
            this.f56825t0 = 0L;
        }
        SettingsCloudSyncViewModel settingsCloudSyncViewModel = this.mViewModel;
        long j2 = j & 13;
        Boolean bool = null;
        if (j2 != 0) {
            MutableLiveData<Boolean> isWifiOnly = settingsCloudSyncViewModel != null ? settingsCloudSyncViewModel.isWifiOnly() : null;
            updateLiveDataRegistration(0, isWifiOnly);
            if (isWifiOnly != null) {
                bool = isWifiOnly.getValue();
            }
        }
        if (j2 != 0) {
            this.flWifiAndMobile.setIsWifiOnly(bool);
        }
        ViewDataBinding.executeBindingsOn(this.flWifiAndMobile);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56825t0 != 0) {
                return true;
            }
            return this.flWifiAndMobile.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56825t0 = 8L;
        }
        this.flWifiAndMobile.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45294t((MutableLiveData) obj, i2);
        }
        if (i == 1) {
            return m45292r((LayoutWifiAndMobileContainerBinding) obj, i2);
        }
        if (i != 2) {
            return false;
        }
        return m45293s((SettingsCloudSyncViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45292r(LayoutWifiAndMobileContainerBinding layoutWifiAndMobileContainerBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56825t0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45293s(SettingsCloudSyncViewModel settingsCloudSyncViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56825t0 |= 4;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.flWifiAndMobile.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (16 != i) {
            return false;
        }
        setViewModel((SettingsCloudSyncViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentSettingsCloudBinding
    public void setViewModel(@Nullable SettingsCloudSyncViewModel settingsCloudSyncViewModel) {
        updateRegistration(2, settingsCloudSyncViewModel);
        this.mViewModel = settingsCloudSyncViewModel;
        synchronized (this) {
            this.f56825t0 |= 4;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45294t(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56825t0 |= 1;
        }
        return true;
    }

    public FragmentSettingsCloudBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (LayoutWifiAndMobileContainerBinding) objArr[1], (ManualSwitchCompat) objArr[5], (TintTextView) objArr[2], (TintTextView) objArr[3], (TintTextView) objArr[4]);
        this.f56825t0 = -1L;
        setContainedBinding(this.flWifiAndMobile);
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f56824q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
