package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;

/* loaded from: classes9.dex */
public class FragmentNoteListFunctionBindingImpl extends FragmentNoteListFunctionBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56762v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56763w0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f56764q0;

    /* renamed from: t0 */
    @NonNull
    public final FrameLayout f56765t0;

    /* renamed from: u0 */
    public long f56766u0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56763w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.note_shadow_view, 2);
        sparseIntArray.put(C10651R.id.tag_shadow_view, 3);
        sparseIntArray.put(C10651R.id.sidebarNotificationBinding, 4);
        sparseIntArray.put(C10651R.id.rv_filter, 5);
        sparseIntArray.put(C10651R.id.v_scroll_up, 6);
        sparseIntArray.put(C10651R.id.v_scroll_down, 7);
    }

    public FragmentNoteListFunctionBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56762v0, f56763w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56766u0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56766u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56766u0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45262r((NoteListViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45262r(NoteListViewModel noteListViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56766u0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (16 != i) {
            return false;
        }
        setViewModel((NoteListViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentNoteListFunctionBinding
    public void setViewModel(@Nullable NoteListViewModel noteListViewModel) {
        this.mViewModel = noteListViewModel;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FragmentNoteListFunctionBindingImpl(androidx.databinding.DataBindingComponent r12, android.view.View r13, java.lang.Object[] r14) {
        /*
            r11 = this;
            r3 = 1
            r0 = 2
            r0 = r14[r0]
            r10 = 0
            if (r0 == 0) goto Lf
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.ItemNoteShadowViewLayoutBinding r0 = com.onyx.galaxy.note.databinding.ItemNoteShadowViewLayoutBinding.bind(r0)
            r4 = r0
            goto L10
        Lf:
            r4 = r10
        L10:
            r0 = 5
            r0 = r14[r0]
            r5 = r0
            com.onyx.android.sdk.theme.widgets.TintRecycleView r5 = (com.onyx.android.sdk.theme.widgets.TintRecycleView) r5
            r0 = 4
            r0 = r14[r0]
            if (r0 == 0) goto L23
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutSidebarNotificationBinding r0 = com.onyx.galaxy.note.databinding.LayoutSidebarNotificationBinding.bind(r0)
            r6 = r0
            goto L24
        L23:
            r6 = r10
        L24:
            r0 = 3
            r0 = r14[r0]
            if (r0 == 0) goto L31
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding r0 = com.onyx.galaxy.note.databinding.ItemTagShadowViewLayoutBinding.bind(r0)
            r7 = r0
            goto L32
        L31:
            r7 = r10
        L32:
            r0 = 7
            r0 = r14[r0]
            r8 = r0
            android.view.View r8 = (android.view.View) r8
            r0 = 6
            r0 = r14[r0]
            r9 = r0
            android.view.View r9 = (android.view.View) r9
            r0 = r11
            r1 = r12
            r2 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            r0 = -1
            r11.f56766u0 = r0
            r12 = 0
            r12 = r14[r12]
            androidx.constraintlayout.widget.ConstraintLayout r12 = (androidx.constraintlayout.widget.ConstraintLayout) r12
            r11.f56764q0 = r12
            r12.setTag(r10)
            r12 = 1
            r12 = r14[r12]
            android.widget.FrameLayout r12 = (android.widget.FrameLayout) r12
            r11.f56765t0 = r12
            r12.setTag(r10)
            r11.setRootTag(r13)
            r11.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentNoteListFunctionBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
