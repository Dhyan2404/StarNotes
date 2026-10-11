package com.onyx.galaxy.note.databinding;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.NoteDisplayType;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.generated.callback.OnClickListener;

/* loaded from: classes9.dex */
public class FragmentNoteTopContainerBindingImpl extends FragmentNoteTopContainerBinding implements OnClickListener.Listener {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56779v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56780w0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56781q0;

    /* renamed from: t0 */
    @Nullable
    public final View.OnClickListener f56782t0;

    /* renamed from: u0 */
    public long f56783u0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56780w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_expand, 9);
        sparseIntArray.put(C10651R.id.iv_setting, 10);
        sparseIntArray.put(C10651R.id.iv_library, 11);
        sparseIntArray.put(C10651R.id.iv_sort_type, 12);
        sparseIntArray.put(C10651R.id.iv_cloud, 13);
        sparseIntArray.put(C10651R.id.progress_sync, 14);
        sparseIntArray.put(C10651R.id.start_sync, 15);
        sparseIntArray.put(C10651R.id.ll_op_menu, 16);
        sparseIntArray.put(C10651R.id.ll_op_move, 17);
        sparseIntArray.put(C10651R.id.iv_op_move, 18);
        sparseIntArray.put(C10651R.id.tv_op_move, 19);
        sparseIntArray.put(C10651R.id.ll_op_copy, 20);
        sparseIntArray.put(C10651R.id.iv_op_copy, 21);
        sparseIntArray.put(C10651R.id.tv_op_copy, 22);
        sparseIntArray.put(C10651R.id.ll_op_lock, 23);
        sparseIntArray.put(C10651R.id.iv_op_lock, 24);
        sparseIntArray.put(C10651R.id.tv_op_lock, 25);
        sparseIntArray.put(C10651R.id.ll_op_export, 26);
        sparseIntArray.put(C10651R.id.iv_op_export, 27);
        sparseIntArray.put(C10651R.id.tv_op_export, 28);
        sparseIntArray.put(C10651R.id.ll_op_delete, 29);
        sparseIntArray.put(C10651R.id.iv_op_delete, 30);
        sparseIntArray.put(C10651R.id.tv_op_delete, 31);
        sparseIntArray.put(C10651R.id.tv_toggle_sel_all, 32);
        sparseIntArray.put(C10651R.id.ll_dust_bin_op_menu, 33);
        sparseIntArray.put(C10651R.id.ll_dust_bin_op_delete, 34);
        sparseIntArray.put(C10651R.id.iv_dust_bin_op_delete, 35);
        sparseIntArray.put(C10651R.id.tv_dust_bin_op_delete, 36);
        sparseIntArray.put(C10651R.id.ll_dust_bin_op_restore, 37);
        sparseIntArray.put(C10651R.id.iv_dust_bin_op_restore, 38);
        sparseIntArray.put(C10651R.id.tv_dust_bin_op_restore, 39);
        sparseIntArray.put(C10651R.id.barrier1, 40);
        sparseIntArray.put(C10651R.id.guideline, 41);
        sparseIntArray.put(C10651R.id.barrier, 42);
        sparseIntArray.put(C10651R.id.guideline1, 43);
        sparseIntArray.put(C10651R.id.guideline2, 44);
    }

    public FragmentNoteTopContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 45, f56779v0, f56780w0));
    }

    @Override // com.onyx.galaxy.note.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        NoteListViewModel noteListViewModel = this.mViewModel;
        if (noteListViewModel != null) {
            noteListViewModel.toggleMulSelect();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        Drawable drawable;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float f;
        long j2;
        long j3;
        long j4;
        Resources resources;
        int i7;
        long j5;
        long j6;
        long j7;
        long j8;
        synchronized (this) {
            j = this.f56783u0;
            this.f56783u0 = 0L;
        }
        NoteListViewModel noteListViewModel = this.mViewModel;
        if ((127 & j) != 0) {
            long j9 = j & 81;
            if (j9 != 0) {
                MutableLiveData<NoteDisplayType> displayType = noteListViewModel != null ? noteListViewModel.getDisplayType() : null;
                updateLiveDataRegistration(0, displayType);
                NoteDisplayType value = displayType != null ? displayType.getValue() : null;
                boolean isGrid = value != null ? value.isGrid() : false;
                if (j9 != 0) {
                    j |= isGrid ? 16384L : 8192L;
                }
                drawable = AppCompatResources.getDrawable(this.ivDisplayType.getContext(), isGrid ? C10651R.drawable.ic_display_grid : C10651R.drawable.ic_display_linear);
            } else {
                drawable = null;
            }
            long j10 = j & 82;
            if (j10 != 0) {
                MediatorLiveData<Boolean> isShowSlideMenu = noteListViewModel != null ? noteListViewModel.isShowSlideMenu() : null;
                updateLiveDataRegistration(1, isShowSlideMenu);
                boolean safeUnbox = ViewDataBinding.safeUnbox(isShowSlideMenu != null ? isShowSlideMenu.getValue() : null);
                if (j10 != 0) {
                    if (safeUnbox) {
                        j7 = j | 65536;
                        j8 = 1048576;
                    } else {
                        j7 = j | 32768;
                        j8 = 524288;
                    }
                    j = j7 | j8;
                }
                i5 = safeUnbox ? 4 : 0;
                i4 = safeUnbox ? 0 : 4;
            } else {
                i4 = 0;
                i5 = 0;
            }
            long j11 = j & 84;
            if (j11 != 0) {
                MutableLiveData<Boolean> isMulSelect = noteListViewModel != null ? noteListViewModel.isMulSelect() : null;
                updateLiveDataRegistration(2, isMulSelect);
                boolean safeUnbox2 = ViewDataBinding.safeUnbox(isMulSelect != null ? isMulSelect.getValue() : null);
                if (j11 != 0) {
                    if (safeUnbox2) {
                        j5 = j | 1024;
                        j6 = 4096;
                    } else {
                        j5 = j | 512;
                        j6 = 2048;
                    }
                    j = j5 | j6;
                }
                i3 = safeUnbox2 ? 4 : 0;
                i2 = safeUnbox2 ? 0 : 8;
            } else {
                i2 = 0;
                i3 = 0;
            }
            long j12 = j & 88;
            if (j12 != 0) {
                MutableLiveData<Boolean> isTopLevel = noteListViewModel != null ? noteListViewModel.isTopLevel() : null;
                updateLiveDataRegistration(3, isTopLevel);
                boolean safeUnbox3 = ViewDataBinding.safeUnbox(isTopLevel != null ? isTopLevel.getValue() : null);
                if (j12 != 0) {
                    j |= safeUnbox3 ? 262144L : 131072L;
                }
                if (safeUnbox3) {
                    resources = this.tvTitle.getResources();
                    i7 = C7453R.dimen.dp_24;
                } else {
                    resources = this.tvTitle.getResources();
                    i7 = C7996R.dimen.dp_12;
                }
                f = resources.getDimension(i7);
                j2 = 112;
            } else {
                j2 = 112;
                f = 0.0f;
            }
            long j13 = j & j2;
            if (j13 != 0) {
                MutableLiveData<Boolean> isHalfInMultiWindowMode = noteListViewModel != null ? noteListViewModel.isHalfInMultiWindowMode() : null;
                updateLiveDataRegistration(5, isHalfInMultiWindowMode);
                boolean safeUnbox4 = ViewDataBinding.safeUnbox(isHalfInMultiWindowMode != null ? isHalfInMultiWindowMode.getValue() : null);
                if (j13 != 0) {
                    if (safeUnbox4) {
                        j3 = j | 256;
                        j4 = 4194304;
                    } else {
                        j3 = j | 128;
                        j4 = 2097152;
                    }
                    j = j3 | j4;
                }
                int i8 = safeUnbox4 ? 0 : 8;
                i6 = safeUnbox4 ? 4 : 0;
                i = i8;
            } else {
                i = 0;
                i6 = 0;
            }
        } else {
            drawable = null;
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;
            i6 = 0;
            f = 0.0f;
        }
        if ((j & 81) != 0) {
            ImageViewBindingAdapter.setImageDrawable(this.ivDisplayType, drawable);
        }
        if ((112 & j) != 0) {
            this.ivDisplayType.setVisibility(i6);
            this.ivMoreOperate.setVisibility(i);
            this.ivSelector.setVisibility(i6);
        }
        if ((64 & j) != 0) {
            this.ivOpDone.setOnClickListener(this.f56782t0);
        }
        if ((84 & j) != 0) {
            this.ivOpDone.setVisibility(i2);
            this.llTitleRightFunctionContainer.setVisibility(i3);
        }
        if ((82 & j) != 0) {
            this.llTitleLeftFunctionContainer.setVisibility(i5);
            this.tvTitle.setVisibility(i4);
            this.tvTitleCenter.setVisibility(i5);
        }
        if ((j & 88) != 0) {
            ViewBindingAdapter.setPaddingStart(this.tvTitle, f);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56783u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56783u0 = 64L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45267s((MutableLiveData) obj, i2);
        }
        if (i == 1) {
            return m45270v((MediatorLiveData) obj, i2);
        }
        if (i == 2) {
            return m45269u((MutableLiveData) obj, i2);
        }
        if (i == 3) {
            return m45271w((MutableLiveData) obj, i2);
        }
        if (i == 4) {
            return m45266r((NoteListViewModel) obj, i2);
        }
        if (i != 5) {
            return false;
        }
        return m45268t((MutableLiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45266r(NoteListViewModel noteListViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56783u0 |= 16;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45267s(MutableLiveData<NoteDisplayType> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56783u0 |= 1;
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

    @Override // com.onyx.galaxy.note.databinding.FragmentNoteTopContainerBinding
    public void setViewModel(@Nullable NoteListViewModel noteListViewModel) {
        updateRegistration(4, noteListViewModel);
        this.mViewModel = noteListViewModel;
        synchronized (this) {
            this.f56783u0 |= 16;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45268t(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56783u0 |= 32;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45269u(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56783u0 |= 4;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45270v(MediatorLiveData<Boolean> mediatorLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56783u0 |= 2;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45271w(MutableLiveData<Boolean> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56783u0 |= 8;
        }
        return true;
    }

    public FragmentNoteTopContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 6, (Barrier) objArr[42], (Barrier) objArr[40], (Guideline) objArr[41], (Guideline) objArr[43], (Guideline) objArr[44], (FrameLayout) objArr[13], (TintImageView) objArr[3], (TintImageView) objArr[35], (TintImageView) objArr[38], (TintImageView) objArr[9], (TintImageView) objArr[11], (TintImageView) objArr[5], (TintImageView) objArr[21], (TintImageView) objArr[30], (TintTextView) objArr[6], (TintImageView) objArr[27], (TintImageView) objArr[24], (TintImageView) objArr[18], (TintImageView) objArr[4], (TintImageView) objArr[10], (TintImageView) objArr[12], (TintConstraintLayout) objArr[34], (TintConstraintLayout) objArr[33], (TintConstraintLayout) objArr[37], (TintConstraintLayout) objArr[20], (TintConstraintLayout) objArr[29], (TintConstraintLayout) objArr[26], (TintConstraintLayout) objArr[23], (TintConstraintLayout) objArr[16], (TintConstraintLayout) objArr[17], (LinearLayout) objArr[1], (LinearLayout) objArr[2], (CircularProgressIndicator) objArr[14], (TintImageView) objArr[15], (TintTextView) objArr[36], (TintTextView) objArr[39], (TintTextView) objArr[22], (TintTextView) objArr[31], (TintTextView) objArr[28], (TintTextView) objArr[25], (TintTextView) objArr[19], (TintTextView) objArr[7], (TintTextView) objArr[8], (TintTextView) objArr[32]);
        this.f56783u0 = -1L;
        this.ivDisplayType.setTag(null);
        this.ivMoreOperate.setTag(null);
        this.ivOpDone.setTag(null);
        this.ivSelector.setTag(null);
        this.llTitleLeftFunctionContainer.setTag(null);
        this.llTitleRightFunctionContainer.setTag(null);
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56781q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        this.tvTitle.setTag(null);
        this.tvTitleCenter.setTag(null);
        setRootTag(view);
        this.f56782t0 = new OnClickListener(this, 1);
        invalidateAll();
    }
}
