package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;
import com.onyx.galaxy.note.settings.viewmodel.SettingsLocalBackupViveModel;

/* loaded from: classes9.dex */
public class FragmentSettingsLocalBackUpBindingImpl extends FragmentSettingsLocalBackUpBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56842u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56843v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56844q0;

    /* renamed from: t0 */
    public long f56845t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56843v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.v_divider, 2);
        sparseIntArray.put(C10651R.id.tv_last_local_back_time, 3);
        sparseIntArray.put(C10651R.id.switch_auto_backup, 4);
        sparseIntArray.put(C10651R.id.tv_backup_now, 5);
        sparseIntArray.put(C10651R.id.tv_import_backup, 6);
        sparseIntArray.put(C10651R.id.rv_path, 7);
    }

    public FragmentSettingsLocalBackUpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56842u0, f56843v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56845t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56845t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56845t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45296r((SettingsLocalBackupViveModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45296r(SettingsLocalBackupViveModel settingsLocalBackupViveModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56845t0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (16 != i) {
            return false;
        }
        setViewModel((SettingsLocalBackupViveModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentSettingsLocalBackUpBinding
    public void setViewModel(@Nullable SettingsLocalBackupViveModel settingsLocalBackupViveModel) {
        this.mViewModel = settingsLocalBackupViveModel;
    }

    public FragmentSettingsLocalBackUpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintRecycleView) objArr[7], (ManualSwitchCompat) objArr[4], (TintTextView) objArr[5], (TintTextView) objArr[6], (TintTextView) objArr[3], (MediumTextView) objArr[1], (TintView) objArr[2]);
        this.f56845t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56844q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
