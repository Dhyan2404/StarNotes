package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteQuotaViewModel;
import com.onyx.galaxy.note.editor.view.PalmCollectionLinearLayout;

/* loaded from: classes9.dex */
public class PopupCreateNoteBindingImpl extends PopupCreateNoteBinding {

    /* renamed from: A0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57584A0 = null;

    /* renamed from: B0 */
    @Nullable
    public static final SparseIntArray f57585B0;

    /* renamed from: q0 */
    @NonNull
    public final TintImageView f57586q0;

    /* renamed from: t0 */
    @NonNull
    public final TintImageView f57587t0;

    /* renamed from: u0 */
    @NonNull
    public final TintImageView f57588u0;

    /* renamed from: v0 */
    @NonNull
    public final TintImageView f57589v0;

    /* renamed from: w0 */
    @NonNull
    public final TintImageView f57590w0;

    /* renamed from: x0 */
    @NonNull
    public final TintImageView f57591x0;

    /* renamed from: y0 */
    @NonNull
    public final TintImageView f57592y0;

    /* renamed from: z0 */
    public long f57593z0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57585B0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_create_note, 9);
        sparseIntArray.put(C10651R.id.ll_create_no_bonds, 10);
        sparseIntArray.put(C10651R.id.ll_create_file_import, 11);
        sparseIntArray.put(C10651R.id.ll_create_pic_import, 12);
        sparseIntArray.put(C10651R.id.ll_create_camera, 13);
        sparseIntArray.put(C10651R.id.ll_scanner, 14);
        sparseIntArray.put(C10651R.id.ll_create_folder, 15);
        sparseIntArray.put(C10651R.id.ll_quickly, 16);
        sparseIntArray.put(C10651R.id.ll_vip_container, 17);
        sparseIntArray.put(C10651R.id.tv_vip_hint, 18);
    }

    public PopupCreateNoteBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 19, f57584A0, f57585B0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        int i;
        int i2;
        synchronized (this) {
            j = this.f57593z0;
            this.f57593z0 = 0L;
        }
        NoteQuotaViewModel noteQuotaViewModel = this.mQuotaModel;
        long j2 = j & 3;
        if (j2 == 0 || noteQuotaViewModel == null) {
            i = 0;
            i2 = 0;
        } else {
            i = noteQuotaViewModel.getSettingsButtonVisibility();
            i2 = noteQuotaViewModel.getQuotaLockVisibility();
        }
        if (j2 != 0) {
            this.f57586q0.setVisibility(i2);
            this.f57587t0.setVisibility(i2);
            this.f57588u0.setVisibility(i2);
            this.f57589v0.setVisibility(i2);
            this.f57590w0.setVisibility(i2);
            this.f57591x0.setVisibility(i2);
            this.f57592y0.setVisibility(i2);
            this.quicklySettings.setVisibility(i);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57593z0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57593z0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45363r((NoteQuotaViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45363r(NoteQuotaViewModel noteQuotaViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57593z0 |= 1;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.PopupCreateNoteBinding
    public void setQuotaModel(@Nullable NoteQuotaViewModel noteQuotaViewModel) {
        updateRegistration(0, noteQuotaViewModel);
        this.mQuotaModel = noteQuotaViewModel;
        synchronized (this) {
            this.f57593z0 |= 1;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (11 != i) {
            return false;
        }
        setQuotaModel((NoteQuotaViewModel) obj);
        return true;
    }

    public PopupCreateNoteBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintFrameLayout) objArr[0], (PalmCollectionLinearLayout) objArr[13], (PalmCollectionLinearLayout) objArr[11], (PalmCollectionLinearLayout) objArr[15], (PalmCollectionLinearLayout) objArr[10], (PalmCollectionLinearLayout) objArr[9], (PalmCollectionLinearLayout) objArr[12], (PalmCollectionLinearLayout) objArr[16], (TintLinearLayout) objArr[14], (LinearLayout) objArr[17], (TintImageView) objArr[7], (TintTextView) objArr[18]);
        this.f57593z0 = -1L;
        this.f57583fl.setTag(null);
        TintImageView tintImageView = (TintImageView) objArr[1];
        this.f57586q0 = tintImageView;
        tintImageView.setTag(null);
        TintImageView tintImageView2 = (TintImageView) objArr[2];
        this.f57587t0 = tintImageView2;
        tintImageView2.setTag(null);
        TintImageView tintImageView3 = (TintImageView) objArr[3];
        this.f57588u0 = tintImageView3;
        tintImageView3.setTag(null);
        TintImageView tintImageView4 = (TintImageView) objArr[4];
        this.f57589v0 = tintImageView4;
        tintImageView4.setTag(null);
        TintImageView tintImageView5 = (TintImageView) objArr[5];
        this.f57590w0 = tintImageView5;
        tintImageView5.setTag(null);
        TintImageView tintImageView6 = (TintImageView) objArr[6];
        this.f57591x0 = tintImageView6;
        tintImageView6.setTag(null);
        TintImageView tintImageView7 = (TintImageView) objArr[8];
        this.f57592y0 = tintImageView7;
        tintImageView7.setTag(null);
        this.quicklySettings.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
