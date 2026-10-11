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
public class FragmentSettingsDocBindingImpl extends FragmentSettingsDocBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56830u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56831v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56832q0;

    /* renamed from: t0 */
    public long f56833t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56831v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.include_pronunciation, 1);
        sparseIntArray.put(C10651R.id.quick_note_template, 2);
        sparseIntArray.put(C10651R.id.iv_quickly_template_expand, 3);
        sparseIntArray.put(C10651R.id.switch_paper_moves_freely, 4);
        sparseIntArray.put(C10651R.id.switch_slide_to_add, 5);
        sparseIntArray.put(C10651R.id.switch_append_page, 6);
        sparseIntArray.put(C10651R.id.tv_pronunciation, 7);
    }

    public FragmentSettingsDocBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56830u0, f56831v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56833t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56833t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56833t0 = 1L;
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
    public FragmentSettingsDocBindingImpl(androidx.databinding.DataBindingComponent r13, android.view.View r14, java.lang.Object[] r15) {
        /*
            r12 = this;
            r3 = 0
            r0 = 1
            r0 = r15[r0]
            r11 = 0
            if (r0 == 0) goto Lf
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutPronunciationSelectBinding r0 = com.onyx.galaxy.note.databinding.LayoutPronunciationSelectBinding.bind(r0)
            r4 = r0
            goto L10
        Lf:
            r4 = r11
        L10:
            r0 = 3
            r0 = r15[r0]
            r5 = r0
            com.onyx.android.sdk.theme.widgets.TintImageView r5 = (com.onyx.android.sdk.theme.widgets.TintImageView) r5
            r0 = 2
            r0 = r15[r0]
            r6 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r6 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r6
            r0 = 6
            r0 = r15[r0]
            r7 = r0
            com.onyx.android.sdk.theme.widgets.TintSwitchCompat r7 = (com.onyx.android.sdk.theme.widgets.TintSwitchCompat) r7
            r0 = 4
            r0 = r15[r0]
            r8 = r0
            com.onyx.android.sdk.theme.widgets.TintSwitchCompat r8 = (com.onyx.android.sdk.theme.widgets.TintSwitchCompat) r8
            r0 = 5
            r0 = r15[r0]
            r9 = r0
            com.onyx.android.sdk.theme.widgets.TintSwitchCompat r9 = (com.onyx.android.sdk.theme.widgets.TintSwitchCompat) r9
            r0 = 7
            r0 = r15[r0]
            r10 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r10 = (com.onyx.android.sdk.theme.widgets.TintTextView) r10
            r0 = r12
            r1 = r13
            r2 = r14
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            r0 = -1
            r12.f56833t0 = r0
            r13 = 0
            r13 = r15[r13]
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r13 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r13
            r12.f56832q0 = r13
            r13.setTag(r11)
            r12.setRootTag(r14)
            r12.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentSettingsDocBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
