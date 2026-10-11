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
public class DialogManageTagBindingImpl extends DialogManageTagBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56463v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56464w0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56465q0;

    /* renamed from: t0 */
    @NonNull
    public final TintConstraintLayout f56466t0;

    /* renamed from: u0 */
    public long f56467u0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56464w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.include_empty_view, 2);
        sparseIntArray.put(C10651R.id.tv_cancel, 3);
        sparseIntArray.put(C10651R.id.textView4, 4);
        sparseIntArray.put(C10651R.id.tv_ok, 5);
        sparseIntArray.put(C10651R.id.til_name, 6);
        sparseIntArray.put(C10651R.id.tie_name, 7);
        sparseIntArray.put(C10651R.id.iv_search, 8);
        sparseIntArray.put(C10651R.id.textView6, 9);
        sparseIntArray.put(C10651R.id.textView7, 10);
        sparseIntArray.put(C10651R.id.fl_list, 11);
        sparseIntArray.put(C10651R.id.card_list, 12);
        sparseIntArray.put(C10651R.id.f53355rv, 13);
        sparseIntArray.put(C10651R.id.tv_create_tag, 14);
        sparseIntArray.put(C10651R.id.textView9, 15);
        sparseIntArray.put(C10651R.id.rv_search, 16);
        sparseIntArray.put(C10651R.id.group_list, 17);
        sparseIntArray.put(C10651R.id.group_search_list, 18);
    }

    public DialogManageTagBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f56463v0, f56464w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56467u0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56467u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56467u0 = 1L;
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
    public DialogManageTagBindingImpl(androidx.databinding.DataBindingComponent r23, android.view.View r24, java.lang.Object[] r25) {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.DialogManageTagBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
