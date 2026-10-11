package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupStickersBindingImpl extends PopupStickersBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57845u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57846v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57847q0;

    /* renamed from: t0 */
    public long f57848t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57846v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.loadingBinding, 2);
        sparseIntArray.put(C10651R.id.tab_layout, 3);
        sparseIntArray.put(C10651R.id.view_pager, 4);
    }

    public PopupStickersBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57845u0, f57846v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57848t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57848t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57848t0 = 1L;
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
    public PopupStickersBindingImpl(androidx.databinding.DataBindingComponent r10, android.view.View r11, java.lang.Object[] r12) {
        /*
            r9 = this;
            r3 = 0
            r0 = 2
            r0 = r12[r0]
            r8 = 0
            if (r0 == 0) goto Lf
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutLoadingStickerBinding r0 = com.onyx.galaxy.note.databinding.LayoutLoadingStickerBinding.bind(r0)
            r4 = r0
            goto L10
        Lf:
            r4 = r8
        L10:
            r0 = 1
            r0 = r12[r0]
            r5 = r0
            android.widget.FrameLayout r5 = (android.widget.FrameLayout) r5
            r0 = 3
            r0 = r12[r0]
            r6 = r0
            com.onyx.android.sdk.theme.widgets.TintTabLayoutView r6 = (com.onyx.android.sdk.theme.widgets.TintTabLayoutView) r6
            r0 = 4
            r0 = r12[r0]
            r7 = r0
            androidx.viewpager2.widget.ViewPager2 r7 = (androidx.viewpager2.widget.ViewPager2) r7
            r0 = r9
            r1 = r10
            r2 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r0 = -1
            r9.f57848t0 = r0
            android.widget.FrameLayout r10 = r9.loadingContainer
            r10.setTag(r8)
            r10 = 0
            r10 = r12[r10]
            android.widget.FrameLayout r10 = (android.widget.FrameLayout) r10
            r9.f57847q0 = r10
            r10.setTag(r8)
            r9.setRootTag(r11)
            r9.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.PopupStickersBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
