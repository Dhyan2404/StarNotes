package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutWifiAndMobileContainerBindingImpl extends LayoutWifiAndMobileContainerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57538u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57539v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f57540q0;

    /* renamed from: t0 */
    public long f57541t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57539v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fl_wifi_and_mobile_container, 3);
        sparseIntArray.put(C10651R.id.fl_wifi_only_container, 4);
    }

    public LayoutWifiAndMobileContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57538u0, f57539v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        int i;
        long j2;
        long j3;
        synchronized (this) {
            j = this.f57541t0;
            this.f57541t0 = 0L;
        }
        Boolean bool = this.mIsWifiOnly;
        long j4 = j & 3;
        int i2 = 0;
        if (j4 != 0) {
            boolean safeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j4 != 0) {
                if (safeUnbox) {
                    j2 = j | 8;
                    j3 = 32;
                } else {
                    j2 = j | 4;
                    j3 = 16;
                }
                j = j2 | j3;
            }
            i = safeUnbox ? 8 : 0;
            if (!safeUnbox) {
                i2 = 8;
            }
        } else {
            i = 0;
        }
        if ((j & 3) != 0) {
            this.ivSyncOnWifi.setVisibility(i2);
            this.ivSyncOnWifiAndMobileNetworks.setVisibility(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57541t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57541t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutWifiAndMobileContainerBinding
    public void setIsWifiOnly(@Nullable Boolean bool) {
        this.mIsWifiOnly = bool;
        synchronized (this) {
            this.f57541t0 |= 1;
        }
        notifyPropertyChanged(6);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (6 != i) {
            return false;
        }
        setIsWifiOnly((Boolean) obj);
        return true;
    }

    public LayoutWifiAndMobileContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintFrameLayout) objArr[3], (TintFrameLayout) objArr[4], (TintImageView) objArr[2], (TintImageView) objArr[1]);
        this.f57541t0 = -1L;
        this.ivSyncOnWifi.setTag(null);
        this.ivSyncOnWifiAndMobileNetworks.setTag(null);
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f57540q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
