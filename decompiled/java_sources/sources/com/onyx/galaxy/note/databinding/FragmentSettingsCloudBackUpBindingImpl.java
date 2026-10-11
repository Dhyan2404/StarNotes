package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
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
import com.onyx.galaxy.note.settings.viewmodel.SettingsCloudBackupViewModel;

/* loaded from: classes9.dex */
public class FragmentSettingsCloudBackUpBindingImpl extends FragmentSettingsCloudBackUpBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56817v0;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56818w0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f56819q0;

    /* renamed from: t0 */
    @NonNull
    public final LinearLayout f56820t0;

    /* renamed from: u0 */
    public long f56821u0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(13);
        f56817v0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_wifi_and_mobile_container"}, new int[]{5}, new int[]{C10651R.layout.layout_wifi_and_mobile_container});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56818w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_backup_path, 6);
        sparseIntArray.put(C10651R.id.tv_last_cloud_back_time, 7);
        sparseIntArray.put(C10651R.id.switch_auto_backup, 8);
        sparseIntArray.put(C10651R.id.tv_backup_now, 9);
        sparseIntArray.put(C10651R.id.tv_baidu_import, 10);
        sparseIntArray.put(C10651R.id.tv_google_import, 11);
        sparseIntArray.put(C10651R.id.tv_onedrive_import, 12);
    }

    public FragmentSettingsCloudBackUpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56817v0, f56818w0));
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0199  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentSettingsCloudBackUpBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56821u0 != 0) {
                return true;
            }
            return this.flWifiAndMobile.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56821u0 = 128L;
        }
        this.flWifiAndMobile.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45288u((MutableLiveData) obj, i2);
            case 1:
                return m45291x((MutableLiveData) obj, i2);
            case 2:
                return m45289v((MutableLiveData) obj, i2);
            case 3:
                return m45285r((LayoutWifiAndMobileContainerBinding) obj, i2);
            case 4:
                return m45290w((MutableLiveData) obj, i2);
            case 5:
                return m45286s((SettingsCloudBackupViewModel) obj, i2);
            case 6:
                return m45287t((MutableLiveData) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45285r(LayoutWifiAndMobileContainerBinding layoutWifiAndMobileContainerBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56821u0 |= 8;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45286s(SettingsCloudBackupViewModel settingsCloudBackupViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56821u0 |= 32;
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
        setViewModel((SettingsCloudBackupViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentSettingsCloudBackUpBinding
    public void setViewModel(@Nullable SettingsCloudBackupViewModel settingsCloudBackupViewModel) {
        updateRegistration(5, settingsCloudBackupViewModel);
        this.mViewModel = settingsCloudBackupViewModel;
        synchronized (this) {
            this.f56821u0 |= 32;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45287t(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56821u0 |= 64;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45288u(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56821u0 |= 1;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45289v(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56821u0 |= 4;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45290w(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56821u0 |= 16;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45291x(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56821u0 |= 2;
        }
        return true;
    }

    public FragmentSettingsCloudBackUpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 7, (LayoutWifiAndMobileContainerBinding) objArr[5], (ManualSwitchCompat) objArr[8], (TintTextView) objArr[9], (TintTextView) objArr[6], (TintTextView) objArr[2], (TintTextView) objArr[10], (TintTextView) objArr[3], (TintTextView) objArr[11], (TintTextView) objArr[7], (TintTextView) objArr[4], (TintTextView) objArr[12]);
        this.f56821u0 = -1L;
        setContainedBinding(this.flWifiAndMobile);
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f56819q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[1];
        this.f56820t0 = linearLayout;
        linearLayout.setTag(null);
        this.tvBaiduBindState.setTag(null);
        this.tvGoogleBindState.setTag(null);
        this.tvOnedriveBindState.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
