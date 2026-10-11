package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentSettingsMoreBindingImpl extends FragmentSettingsMoreBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56846u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56847v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56848q0;

    /* renamed from: t0 */
    public long f56849t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56847v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.include_star_note_discover, 1);
        sparseIntArray.put(C10651R.id.include_language_container, 2);
        sparseIntArray.put(C10651R.id.switch_hide_status_bar, 3);
        sparseIntArray.put(C10651R.id.fl_language_item, 4);
        sparseIntArray.put(C10651R.id.tv_language, 5);
        sparseIntArray.put(C10651R.id.switch_keep_screen_on, 6);
        sparseIntArray.put(C10651R.id.switch_eyes_comfort_setting, 7);
        sparseIntArray.put(C10651R.id.eyes_comfort_setting_layout, 8);
        sparseIntArray.put(C10651R.id.about_start_note_container, 9);
    }

    public FragmentSettingsMoreBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 10, f56846u0, f56847v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56849t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56849t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56849t0 = 1L;
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
    public FragmentSettingsMoreBindingImpl(androidx.databinding.DataBindingComponent r16, android.view.View r17, java.lang.Object[] r18) {
        /*
            r15 = this;
            r13 = r15
            r3 = 0
            r0 = 9
            r0 = r18[r0]
            r4 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r4 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r4
            r0 = 8
            r0 = r18[r0]
            r5 = r0
            com.onyx.galaxy.note.ui.view.EyesComfortSettingLayout r5 = (com.onyx.galaxy.note.p048ui.view.EyesComfortSettingLayout) r5
            r0 = 4
            r0 = r18[r0]
            r6 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r6 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r6
            r0 = 2
            r0 = r18[r0]
            r14 = 0
            if (r0 == 0) goto L24
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutLanguageSelectBinding r0 = com.onyx.galaxy.note.databinding.LayoutLanguageSelectBinding.bind(r0)
            r7 = r0
            goto L25
        L24:
            r7 = r14
        L25:
            r0 = 1
            r0 = r18[r0]
            if (r0 == 0) goto L32
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutStarNoteDiscoverBinding r0 = com.onyx.galaxy.note.databinding.LayoutStarNoteDiscoverBinding.bind(r0)
            r8 = r0
            goto L33
        L32:
            r8 = r14
        L33:
            r0 = 7
            r0 = r18[r0]
            r9 = r0
            com.onyx.galaxy.note.ui.view.ManualSwitchCompat r9 = (com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat) r9
            r0 = 3
            r0 = r18[r0]
            r10 = r0
            com.onyx.android.sdk.theme.widgets.TintSwitchCompat r10 = (com.onyx.android.sdk.theme.widgets.TintSwitchCompat) r10
            r0 = 6
            r0 = r18[r0]
            r11 = r0
            com.onyx.android.sdk.theme.widgets.TintSwitchCompat r11 = (com.onyx.android.sdk.theme.widgets.TintSwitchCompat) r11
            r0 = 5
            r0 = r18[r0]
            r12 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r12 = (com.onyx.android.sdk.theme.widgets.TintTextView) r12
            r0 = r15
            r1 = r16
            r2 = r17
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            r0 = -1
            r13.f56849t0 = r0
            r0 = 0
            r0 = r18[r0]
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r0 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r0
            r13.f56848q0 = r0
            r0.setTag(r14)
            r0 = r17
            r15.setRootTag(r0)
            r15.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentSettingsMoreBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
