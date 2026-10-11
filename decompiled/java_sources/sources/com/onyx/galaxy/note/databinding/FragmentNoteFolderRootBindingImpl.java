package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class FragmentNoteFolderRootBindingImpl extends FragmentNoteFolderRootBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56747t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56748u0;

    /* renamed from: q0 */
    public long f56749q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56748u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.f53355rv, 1);
        sparseIntArray.put(C10651R.id.v_scroll_up, 2);
        sparseIntArray.put(C10651R.id.v_scroll_down, 3);
        sparseIntArray.put(C10651R.id.sl_go_top, 4);
        sparseIntArray.put(C10651R.id.include_empty_view, 5);
    }

    public FragmentNoteFolderRootBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56747t0, f56748u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56749q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56749q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56749q0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45259r((NoteListViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45259r(NoteListViewModel noteListViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56749q0 |= 1;
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

    @Override // com.onyx.galaxy.note.databinding.FragmentNoteFolderRootBinding
    public void setViewModel(@Nullable NoteListViewModel noteListViewModel) {
        this.mViewModel = noteListViewModel;
    }

    public FragmentNoteFolderRootBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintFrameLayout) objArr[0], (CommonEmptyView) objArr[5], (RecyclerView) objArr[1], (ShadowLayout) objArr[4], (View) objArr[3], (View) objArr[2]);
        this.f56749q0 = -1L;
        this.flRoot.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
