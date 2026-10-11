package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentSettingsAiBindingImpl extends FragmentSettingsAiBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56812u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56813v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f56814q0;

    /* renamed from: t0 */
    public long f56815t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56813v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.mainOptionLayout, 1);
        sparseIntArray.put(C10651R.id.mainSwitchLayout, 2);
        sparseIntArray.put(C10651R.id.ink_beauty_switchButton, 3);
        sparseIntArray.put(C10651R.id.typesetOptionLayout, 4);
        sparseIntArray.put(C10651R.id.typesetSwitchLayout, 5);
        sparseIntArray.put(C10651R.id.typesetSwitchText, 6);
        sparseIntArray.put(C10651R.id.typesetSwitchButton, 7);
    }

    public FragmentSettingsAiBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56812u0, f56813v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56815t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56815t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56815t0 = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public FragmentSettingsAiBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintSwitchCompat) objArr[3], (TintLinearLayout) objArr[1], (TintFrameLayout) objArr[2], (TintLinearLayout) objArr[4], (TintSwitchCompat) objArr[7], (TintFrameLayout) objArr[5], (TintTextView) objArr[6]);
        this.f56815t0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f56814q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
