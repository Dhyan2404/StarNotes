package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel;

/* loaded from: classes9.dex */
public class FragmentSearchNoteBindingImpl extends FragmentSearchNoteBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56808u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56809v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56810q0;

    /* renamed from: t0 */
    public long f56811t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56809v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.searchScopeBinding, 2);
        sparseIntArray.put(C10651R.id.v_bg, 3);
        sparseIntArray.put(C10651R.id.ll_ops, 4);
        sparseIntArray.put(C10651R.id.iv_expand, 5);
        sparseIntArray.put(C10651R.id.iv_setting, 6);
        sparseIntArray.put(C10651R.id.iv_library, 7);
        sparseIntArray.put(C10651R.id.tv_title, 8);
        sparseIntArray.put(C10651R.id.text_input_layout_name, 9);
        sparseIntArray.put(C10651R.id.text_input_edit_text_view_name, 10);
        sparseIntArray.put(C10651R.id.loadingLayout, 11);
        sparseIntArray.put(C10651R.id.loadingView, 12);
        sparseIntArray.put(C10651R.id.progressText, 13);
        sparseIntArray.put(C10651R.id.countText, 14);
        sparseIntArray.put(C10651R.id.closeSearchButton, 15);
        sparseIntArray.put(C10651R.id.iv_search, 16);
        sparseIntArray.put(C10651R.id.rv_search, 17);
        sparseIntArray.put(C10651R.id.empty_view, 18);
        sparseIntArray.put(C10651R.id.hwr_switch_button, 19);
        sparseIntArray.put(C10651R.id.btn_cancel, 20);
        sparseIntArray.put(C10651R.id.tv_history_title, 21);
        sparseIntArray.put(C10651R.id.btn_clear, 22);
        sparseIntArray.put(C10651R.id.v_divider, 23);
        sparseIntArray.put(C10651R.id.sv_history, 24);
        sparseIntArray.put(C10651R.id.cg_history, 25);
        sparseIntArray.put(C10651R.id.guideline1, 26);
        sparseIntArray.put(C10651R.id.barrier1, 27);
    }

    public FragmentSearchNoteBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 28, f56808u0, f56809v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56811t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56811t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56811t0 = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45283r((NoteListViewModel) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return m45284s((SearchNoteViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45283r(NoteListViewModel noteListViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56811t0 |= 1;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45284s(SearchNoteViewModel searchNoteViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56811t0 |= 2;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentSearchNoteBinding
    public void setNoteViewModel(@Nullable NoteListViewModel noteListViewModel) {
        this.mNoteViewModel = noteListViewModel;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentSearchNoteBinding
    public void setSearchViewModel(@Nullable SearchNoteViewModel searchNoteViewModel) {
        this.mSearchViewModel = searchNoteViewModel;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (8 == i) {
            setNoteViewModel((NoteListViewModel) obj);
        } else {
            if (13 != i) {
                return false;
            }
            setSearchViewModel((SearchNoteViewModel) obj);
        }
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FragmentSearchNoteBindingImpl(androidx.databinding.DataBindingComponent r33, android.view.View r34, java.lang.Object[] r35) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentSearchNoteBindingImpl.<init>(androidx.databinding.DataBindingComponent, android.view.View, java.lang.Object[]):void");
    }
}
