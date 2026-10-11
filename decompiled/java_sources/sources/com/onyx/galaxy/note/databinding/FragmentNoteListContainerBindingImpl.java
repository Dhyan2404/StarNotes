package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;

/* loaded from: classes9.dex */
public class FragmentNoteListContainerBindingImpl extends FragmentNoteListContainerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56754u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56755v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56756q0;

    /* renamed from: t0 */
    public long f56757t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56755v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.bannerLayout, 1);
        sparseIntArray.put(C10651R.id.top_container, 2);
        sparseIntArray.put(C10651R.id.bottom_list, 3);
        sparseIntArray.put(C10651R.id.fc_folder_root, 4);
        sparseIntArray.put(C10651R.id.fc_view_page, 5);
    }

    public FragmentNoteListContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56754u0, f56755v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56757t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56757t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56757t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45261r((NoteListViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45261r(NoteListViewModel noteListViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56757t0 |= 1;
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

    @Override // com.onyx.galaxy.note.databinding.FragmentNoteListContainerBinding
    public void setViewModel(@Nullable NoteListViewModel noteListViewModel) {
        this.mViewModel = noteListViewModel;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FragmentNoteListContainerBindingImpl(androidx.databinding.DataBindingComponent r11, android.view.View r12, java.lang.Object[] r13) {
        /*
            r10 = this;
            r3 = 1
            r0 = 1
            r0 = r13[r0]
            r9 = 0
            if (r0 == 0) goto Lf
            android.view.View r0 = (android.view.View) r0
            com.onyx.galaxy.note.databinding.LayoutBannerNotificationBinding r0 = com.onyx.galaxy.note.databinding.LayoutBannerNotificationBinding.bind(r0)
            r4 = r0
            goto L10
        Lf:
            r4 = r9
        L10:
            r0 = 3
            r0 = r13[r0]
            r5 = r0
            com.onyx.android.sdk.theme.widgets.TintConstraintLayout r5 = (com.onyx.android.sdk.theme.widgets.TintConstraintLayout) r5
            r0 = 4
            r0 = r13[r0]
            r6 = r0
            androidx.fragment.app.FragmentContainerView r6 = (androidx.fragment.app.FragmentContainerView) r6
            r0 = 5
            r0 = r13[r0]
            r7 = r0
            androidx.fragment.app.FragmentContainerView r7 = (androidx.fragment.app.FragmentContainerView) r7
            r0 = 2
            r0 = r13[r0]
            r8 = r0
            androidx.fragment.app.FragmentContainerView r8 = (androidx.fragment.app.FragmentContainerView) r8
            r0 = r10
            r1 = r11
            r2 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = -1
            r10.f56757t0 = r0
            r11 = 0
            r11 = r13[r11]
            com.onyx.android.sdk.theme.widgets.TintConstraintLayout r11 = (com.onyx.android.sdk.theme.widgets.TintConstraintLayout) r11
            r10.f56756q0 = r11
            r11.setTag(r9)
            r10.setRootTag(r12)
            r10.invalidateAll()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentNoteListContainerBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
