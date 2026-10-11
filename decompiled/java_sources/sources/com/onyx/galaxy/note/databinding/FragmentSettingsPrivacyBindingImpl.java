package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentSettingsPrivacyBindingImpl extends FragmentSettingsPrivacyBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56850v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56851w0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56852q0;

    /* renamed from: t0 */
    @NonNull
    public final LinearLayout f56853t0;

    /* renamed from: u0 */
    public long f56854u0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56851w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.include_settings_privacy_container, 2);
        sparseIntArray.put(C10651R.id.note_encryption_container, 3);
        sparseIntArray.put(C10651R.id.tv_note_encryption, 4);
        sparseIntArray.put(C10651R.id.switch_note_encryption, 5);
    }

    public FragmentSettingsPrivacyBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56850v0, f56851w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56854u0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56854u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56854u0 = 1L;
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

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FragmentSettingsPrivacyBindingImpl(androidx.databinding.DataBindingComponent r10, android.view.View r11, java.lang.Object[] r12) {
        /*
            r9 = this;
            r3 = 0
            r0 = 2
            r0 = r12[r0]
            r8 = 0
            if (r0 == 0) goto Lf
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.IncludeSettingsPrivacyContainerBinding r0 = com.onyx.galaxy.note.databinding.IncludeSettingsPrivacyContainerBinding.bind(r0)
            r4 = r0
            goto L10
        Lf:
            r4 = r8
        L10:
            r0 = 3
            r0 = r12[r0]
            r5 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r5 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r5
            r0 = 5
            r0 = r12[r0]
            r6 = r0
            com.onyx.galaxy.note.ui.view.ManualSwitchCompat r6 = (com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat) r6
            r0 = 4
            r0 = r12[r0]
            r7 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r7 = (com.onyx.android.sdk.theme.widgets.TintTextView) r7
            r0 = r9
            r1 = r10
            r2 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r0 = -1
            r9.f56854u0 = r0
            r10 = 0
            r10 = r12[r10]
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r10 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r10
            r9.f56852q0 = r10
            r10.setTag(r8)
            r10 = 1
            r10 = r12[r10]
            android.widget.LinearLayout r10 = (android.widget.LinearLayout) r10
            r9.f56853t0 = r10
            r10.setTag(r8)
            r9.setRootTag(r11)
            r9.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentSettingsPrivacyBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
