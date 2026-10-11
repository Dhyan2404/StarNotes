package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogSelectTagBindingImpl extends DialogSelectTagBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56533v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56534w0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56535q0;

    /* renamed from: t0 */
    @NonNull
    public final TintConstraintLayout f56536t0;

    /* renamed from: u0 */
    public long f56537u0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56534w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.include_empty_view, 2);
        sparseIntArray.put(C10651R.id.tv_cancel, 3);
        sparseIntArray.put(C10651R.id.textView4, 4);
        sparseIntArray.put(C10651R.id.tv_ok, 5);
        sparseIntArray.put(C10651R.id.textView6, 6);
        sparseIntArray.put(C10651R.id.textView7, 7);
        sparseIntArray.put(C10651R.id.fl_list, 8);
        sparseIntArray.put(C10651R.id.card_list, 9);
        sparseIntArray.put(C10651R.id.f53355rv, 10);
        sparseIntArray.put(C10651R.id.tv_create_tag, 11);
        sparseIntArray.put(C10651R.id.tv_manager_tag, 12);
    }

    public DialogSelectTagBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56533v0, f56534w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56537u0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56537u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56537u0 = 1L;
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
    public DialogSelectTagBindingImpl(androidx.databinding.DataBindingComponent r18, android.view.View r19, java.lang.Object[] r20) {
        /*
            r17 = this;
            r15 = r17
            r3 = 0
            r0 = 9
            r0 = r20[r0]
            r4 = r0
            com.onyx.android.sdk.theme.widgets.TintCardView r4 = (com.onyx.android.sdk.theme.widgets.TintCardView) r4
            r0 = 8
            r0 = r20[r0]
            r5 = r0
            com.onyx.android.sdk.theme.widgets.TintFrameLayout r5 = (com.onyx.android.sdk.theme.widgets.TintFrameLayout) r5
            r0 = 2
            r0 = r20[r0]
            r14 = 0
            if (r0 == 0) goto L1f
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.EmptyViewManageTagBinding r0 = com.onyx.galaxy.note.databinding.EmptyViewManageTagBinding.bind(r0)
            r6 = r0
            goto L20
        L1f:
            r6 = r14
        L20:
            r0 = 10
            r0 = r20[r0]
            r7 = r0
            androidx.recyclerview.widget.RecyclerView r7 = (androidx.recyclerview.widget.RecyclerView) r7
            r0 = 4
            r0 = r20[r0]
            r8 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r8 = (com.onyx.android.sdk.theme.widgets.TintTextView) r8
            r0 = 6
            r0 = r20[r0]
            r9 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r9 = (com.onyx.android.sdk.theme.widgets.TintTextView) r9
            r0 = 7
            r0 = r20[r0]
            r10 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r10 = (com.onyx.android.sdk.theme.widgets.TintTextView) r10
            r0 = 3
            r0 = r20[r0]
            r11 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r11 = (com.onyx.android.sdk.theme.widgets.TintTextView) r11
            r0 = 11
            r0 = r20[r0]
            r12 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r12 = (com.onyx.android.sdk.theme.widgets.TintTextView) r12
            r0 = 12
            r0 = r20[r0]
            r13 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r13 = (com.onyx.android.sdk.theme.widgets.TintTextView) r13
            r0 = 5
            r0 = r20[r0]
            r16 = r0
            com.onyx.android.sdk.theme.widgets.TintTextView r16 = (com.onyx.android.sdk.theme.widgets.TintTextView) r16
            r0 = r17
            r1 = r18
            r2 = r19
            r14 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
            r0 = -1
            r15.f56537u0 = r0
            r0 = 0
            r0 = r20[r0]
            android.widget.FrameLayout r0 = (android.widget.FrameLayout) r0
            r15.f56535q0 = r0
            r1 = 0
            r0.setTag(r1)
            r0 = 1
            r0 = r20[r0]
            com.onyx.android.sdk.theme.widgets.TintConstraintLayout r0 = (com.onyx.android.sdk.theme.widgets.TintConstraintLayout) r0
            r15.f56536t0 = r0
            java.lang.String r1 = "autoSize"
            r0.setTag(r1)
            r0 = r19
            r15.setRootTag(r0)
            r17.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.DialogSelectTagBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
