package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupReleaseNoteBindingImpl extends PopupReleaseNoteBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57792u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57793v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57794q0;

    /* renamed from: t0 */
    public long f57795t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57793v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.carouselBinding, 2);
        sparseIntArray.put(C10651R.id.titleText, 3);
        sparseIntArray.put(C10651R.id.contentText, 4);
        sparseIntArray.put(C10651R.id.confirmButton, 5);
    }

    public PopupReleaseNoteBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57792u0, f57793v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57795t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57795t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57795t0 = 1L;
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
    public PopupReleaseNoteBindingImpl(androidx.databinding.DataBindingComponent r11, android.view.View r12, java.lang.Object[] r13) {
        /*
            r10 = this;
            r3 = 0
            r0 = 2
            r0 = r13[r0]
            r9 = 0
            if (r0 == 0) goto Lf
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutReleaseNoteCarouselBinding r0 = com.onyx.galaxy.note.databinding.LayoutReleaseNoteCarouselBinding.bind(r0)
            r4 = r0
            goto L10
        Lf:
            r4 = r9
        L10:
            r0 = 5
            r0 = r13[r0]
            r5 = r0
            android.widget.TextView r5 = (android.widget.TextView) r5
            r0 = 4
            r0 = r13[r0]
            r6 = r0
            com.onyx.galaxy.note.ui.view.NotificationRichTextView r6 = (com.onyx.galaxy.note.p048ui.view.NotificationRichTextView) r6
            r0 = 1
            r0 = r13[r0]
            r7 = r0
            com.onyx.android.sdk.theme.widgets.TintLinearLayout r7 = (com.onyx.android.sdk.theme.widgets.TintLinearLayout) r7
            r0 = 3
            r0 = r13[r0]
            r8 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r8 = (com.onyx.android.sdk.theme.widgets.TintTextView) r8
            r0 = r10
            r1 = r11
            r2 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = -1
            r10.f57795t0 = r0
            com.onyx.android.sdk.theme.widgets.TintLinearLayout r11 = r10.dialogRoot
            r11.setTag(r9)
            r11 = 0
            r11 = r13[r11]
            androidx.constraintlayout.widget.ConstraintLayout r11 = (androidx.constraintlayout.widget.ConstraintLayout) r11
            r10.f57794q0 = r11
            r11.setTag(r9)
            r10.setRootTag(r12)
            r10.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.PopupReleaseNoteBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
