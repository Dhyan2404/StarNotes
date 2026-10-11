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
public class FragmentSettingsGestureBindingImpl extends FragmentSettingsGestureBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56834u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56835v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56836q0;

    /* renamed from: t0 */
    public long f56837t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56835v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.include_finger_fun, 1);
        sparseIntArray.put(C10651R.id.two_finger_container, 2);
        sparseIntArray.put(C10651R.id.tv_two_finger_name, 3);
        sparseIntArray.put(C10651R.id.tv_tow_finger_click_fun, 4);
        sparseIntArray.put(C10651R.id.three_finger_container, 5);
        sparseIntArray.put(C10651R.id.tv_three_finger_name, 6);
        sparseIntArray.put(C10651R.id.tv_three_finger_click_fun, 7);
        sparseIntArray.put(C10651R.id.double_click_container, 8);
        sparseIntArray.put(C10651R.id.tv_finger_double_click_name, 9);
        sparseIntArray.put(C10651R.id.tv_finger_double_click_fun, 10);
        sparseIntArray.put(C10651R.id.palm_gesture_container, 11);
        sparseIntArray.put(C10651R.id.tv_palm_gesture_name, 12);
        sparseIntArray.put(C10651R.id.switch_palm_gesture, 13);
    }

    public FragmentSettingsGestureBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f56834u0, f56835v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56837t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56837t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56837t0 = 1L;
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
    public FragmentSettingsGestureBindingImpl(androidx.databinding.DataBindingComponent r19, android.view.View r20, java.lang.Object[] r21) {
        /*
            r18 = this;
            r5 = r18
            r3 = 0
            r0 = 8
            r0 = r21[r0]
            r4 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r4 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r4
            r0 = 1
            r0 = r21[r0]
            r2 = 0
            if (r0 == 0) goto L19
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutStylusFunContainerBinding r0 = com.onyx.galaxy.note.databinding.LayoutStylusFunContainerBinding.bind(r0)
            r17 = r0
            goto L1b
        L19:
            r17 = r2
        L1b:
            r0 = 11
            r0 = r21[r0]
            r6 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r6 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r6
            r0 = 13
            r0 = r21[r0]
            r7 = r0
            com.onyx.galaxy.note.editor.view.PalmCollectionSwitch r7 = (com.onyx.galaxy.note.editor.view.PalmCollectionSwitch) r7
            r0 = 5
            r0 = r21[r0]
            r8 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r8 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r8
            r0 = 10
            r0 = r21[r0]
            r9 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r9 = (com.onyx.android.sdk.theme.widgets.TintTextView) r9
            r0 = 9
            r0 = r21[r0]
            r10 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r10 = (com.onyx.android.sdk.theme.widgets.TintTextView) r10
            r0 = 12
            r0 = r21[r0]
            r11 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r11 = (com.onyx.android.sdk.theme.widgets.TintTextView) r11
            r0 = 7
            r0 = r21[r0]
            r12 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r12 = (com.onyx.android.sdk.theme.widgets.TintTextView) r12
            r0 = 6
            r0 = r21[r0]
            r13 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r13 = (com.onyx.android.sdk.theme.widgets.TintTextView) r13
            r0 = 4
            r0 = r21[r0]
            r14 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r14 = (com.onyx.android.sdk.theme.widgets.TintTextView) r14
            r0 = 3
            r0 = r21[r0]
            r15 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r15 = (com.onyx.android.sdk.theme.widgets.TintTextView) r15
            r0 = 2
            r0 = r21[r0]
            r16 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r16 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r16
            r0 = r18
            r1 = r19
            r2 = r20
            r5 = r17
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)
            r0 = -1
            r2 = r18
            r2.f56837t0 = r0
            r0 = 0
            r0 = r21[r0]
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r0 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r0
            r2.f56836q0 = r0
            r1 = 0
            r0.setTag(r1)
            r0 = r20
            r2.setRootTag(r0)
            r18.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentSettingsGestureBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
