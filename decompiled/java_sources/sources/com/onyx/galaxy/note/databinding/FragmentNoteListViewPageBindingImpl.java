package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MediatorLiveData;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;

/* loaded from: classes9.dex */
public class FragmentNoteListViewPageBindingImpl extends FragmentNoteListViewPageBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56767u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56768v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56769q0;

    /* renamed from: t0 */
    public long f56770t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56768v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.view_pager, 2);
    }

    public FragmentNoteListViewPageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f56767u0, f56768v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f56770t0;
            this.f56770t0 = 0L;
        }
        NoteListViewModel noteListViewModel = this.mViewModel;
        long j2 = j & 7;
        int i = 0;
        if (j2 != 0) {
            MediatorLiveData<Boolean> isShowSlideMenu = noteListViewModel != null ? noteListViewModel.isShowSlideMenu() : null;
            updateLiveDataRegistration(0, isShowSlideMenu);
            boolean safeUnbox = ViewDataBinding.safeUnbox(isShowSlideMenu != null ? isShowSlideMenu.getValue() : null);
            if (j2 != 0) {
                j |= safeUnbox ? 16L : 8L;
            }
            i = safeUnbox ? 2 : 1;
        }
        if ((j & 7) != 0) {
            this.tabLayout.setTabGravity(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56770t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56770t0 = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45264s((MediatorLiveData) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return m45263r((NoteListViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45263r(NoteListViewModel noteListViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56770t0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45264s(MediatorLiveData<Boolean> mediatorLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56770t0 |= 1;
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

    @Override // com.onyx.galaxy.note.databinding.FragmentNoteListViewPageBinding
    public void setViewModel(@Nullable NoteListViewModel noteListViewModel) {
        updateRegistration(1, noteListViewModel);
        this.mViewModel = noteListViewModel;
        synchronized (this) {
            this.f56770t0 |= 2;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    public FragmentNoteListViewPageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (TintTabLayoutView) objArr[1], (ViewPager2) objArr[2]);
        this.f56770t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56769q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        this.tabLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
