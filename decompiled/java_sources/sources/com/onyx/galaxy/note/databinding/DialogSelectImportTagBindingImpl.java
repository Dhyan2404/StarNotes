package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogSelectImportTagBindingImpl extends DialogSelectImportTagBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56525v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56526w0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56527q0;

    /* renamed from: t0 */
    @NonNull
    public final TintConstraintLayout f56528t0;

    /* renamed from: u0 */
    public long f56529u0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56526w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.include_empty_view, 2);
        sparseIntArray.put(C10651R.id.tv_cancel, 3);
        sparseIntArray.put(C10651R.id.textView4, 4);
        sparseIntArray.put(C10651R.id.tv_ok, 5);
        sparseIntArray.put(C10651R.id.til_name, 6);
        sparseIntArray.put(C10651R.id.tie_name, 7);
        sparseIntArray.put(C10651R.id.iv_search, 8);
        sparseIntArray.put(C10651R.id.textView6, 9);
        sparseIntArray.put(C10651R.id.fl_list, 10);
        sparseIntArray.put(C10651R.id.card_list, 11);
        sparseIntArray.put(C10651R.id.rv_select, 12);
        sparseIntArray.put(C10651R.id.rv_search, 13);
    }

    public DialogSelectImportTagBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f56525v0, f56526w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56529u0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56529u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56529u0 = 1L;
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
    public DialogSelectImportTagBindingImpl(androidx.databinding.DataBindingComponent r19, android.view.View r20, java.lang.Object[] r21) {
        /*
            r18 = this;
            r15 = r18
            r3 = 0
            r0 = 11
            r0 = r21[r0]
            r4 = r0
            com.onyx.android.sdk.theme.widgets.TintCardView r4 = (com.onyx.android.sdk.theme.widgets.TintCardView) r4
            r0 = 10
            r0 = r21[r0]
            r5 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r5 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r5
            r0 = 2
            r0 = r21[r0]
            r14 = 0
            if (r0 == 0) goto L1f
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.EmptyViewManageTagBinding r0 = com.onyx.galaxy.note.databinding.EmptyViewManageTagBinding.bind(r0)
            r6 = r0
            goto L20
        L1f:
            r6 = r14
        L20:
            r0 = 8
            r0 = r21[r0]
            r7 = r0
            com.onyx.android.sdk.theme.widgets.TintImageView r7 = (com.onyx.android.sdk.theme.widgets.TintImageView) r7
            r0 = 13
            r0 = r21[r0]
            r8 = r0
            com.onyx.android.sdk.theme.widgets.TintRecycleView r8 = (com.onyx.android.sdk.theme.widgets.TintRecycleView) r8
            r0 = 12
            r0 = r21[r0]
            r9 = r0
            com.onyx.android.sdk.theme.widgets.TintRecycleView r9 = (com.onyx.android.sdk.theme.widgets.TintRecycleView) r9
            r0 = 4
            r0 = r21[r0]
            r10 = r0
            com.onyx.android.sdk.ui.MediumTextView r10 = (com.onyx.android.sdk.p039ui.MediumTextView) r10
            r0 = 9
            r0 = r21[r0]
            r11 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r11 = (com.onyx.android.sdk.theme.widgets.TintTextView) r11
            r0 = 7
            r0 = r21[r0]
            r12 = r0
            com.onyx.android.sdk.ui.TouchModeMaxLengthInputTextEdit r12 = (com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit) r12
            r0 = 6
            r0 = r21[r0]
            r13 = r0
            com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView r13 = (com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView) r13
            r0 = 3
            r0 = r21[r0]
            r16 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r16 = (com.onyx.android.sdk.theme.widgets.TintTextView) r16
            r0 = 5
            r0 = r21[r0]
            r17 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r17 = (com.onyx.android.sdk.theme.widgets.TintTextView) r17
            r0 = r18
            r1 = r19
            r2 = r20
            r14 = r16
            r15 = r17
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            r0 = -1
            r2 = r18
            r2.f56529u0 = r0
            r0 = 0
            r0 = r21[r0]
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r0 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r0
            r2.f56527q0 = r0
            r1 = 0
            r0.setTag(r1)
            r0 = 1
            r0 = r21[r0]
            com.onyx.android.sdk.theme.widgets.TintConstraintLayout r0 = (com.onyx.android.sdk.theme.widgets.TintConstraintLayout) r0
            r2.f56528t0 = r0
            android.content.res.Resources r1 = r0.getResources()
            int r3 = com.onyx.galaxy.note.C10651R.string.auto_size_dialog_tag
            java.lang.String r1 = r1.getString(r3)
            r0.setTag(r1)
            r0 = r20
            r2.setRootTag(r0)
            r18.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.DialogSelectImportTagBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
