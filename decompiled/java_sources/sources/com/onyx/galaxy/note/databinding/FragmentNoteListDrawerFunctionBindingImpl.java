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
public class FragmentNoteListDrawerFunctionBindingImpl extends FragmentNoteListDrawerFunctionBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56758u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56759v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f56760q0;

    /* renamed from: t0 */
    public long f56761t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56759v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.note_shadow_view, 1);
        sparseIntArray.put(C10651R.id.tag_shadow_view, 2);
        sparseIntArray.put(C10651R.id.rv_filter, 3);
        sparseIntArray.put(C10651R.id.v_scroll_up, 4);
        sparseIntArray.put(C10651R.id.v_scroll_down, 5);
    }

    public FragmentNoteListDrawerFunctionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56758u0, f56759v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56761t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56761t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56761t0 = 1L;
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
    public FragmentNoteListDrawerFunctionBindingImpl(androidx.databinding.DataBindingComponent r11, android.view.View r12, java.lang.Object[] r13) {
        /*
            r10 = this;
            r3 = 0
            r0 = 1
            r0 = r13[r0]
            r9 = 0
            if (r0 == 0) goto Lf
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.ItemNoteShadowViewLayoutBinding r0 = com.onyx.galaxy.note.databinding.ItemNoteShadowViewLayoutBinding.bind(r0)
            r4 = r0
            goto L10
        Lf:
            r4 = r9
        L10:
            r0 = 3
            r0 = r13[r0]
            r5 = r0
            com.onyx.android.sdk.theme.widgets.TintRecycleView r5 = (com.onyx.android.sdk.theme.widgets.TintRecycleView) r5
            r0 = 2
            r0 = r13[r0]
            if (r0 == 0) goto L23
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding r0 = com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding.bind(r0)
            r6 = r0
            goto L24
        L23:
            r6 = r9
        L24:
            r0 = 5
            r0 = r13[r0]
            r7 = r0
            android.view.View r7 = (android.view.View) r7
            r0 = 4
            r0 = r13[r0]
            r8 = r0
            android.view.View r8 = (android.view.View) r8
            r0 = r10
            r1 = r11
            r2 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = -1
            r10.f56761t0 = r0
            r11 = 0
            r11 = r13[r11]
            androidx.constraintlayout.widget.ConstraintLayout r11 = (androidx.constraintlayout.widget.ConstraintLayout) r11
            r10.f56760q0 = r11
            r11.setTag(r9)
            r10.setRootTag(r12)
            r10.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentNoteListDrawerFunctionBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
