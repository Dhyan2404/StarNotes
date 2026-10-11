package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.replicator.note.p035db.model.NoteTabData;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemNoteTabBindingImpl extends ItemNoteTabBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57107u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57108v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f57109q0;

    /* renamed from: t0 */
    public long f57110t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57108v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_encryption, 2);
        sparseIntArray.put(C10651R.id.close, 3);
        sparseIntArray.put(C10651R.id.guide_divider, 4);
    }

    public ItemNoteTabBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57107u0, f57108v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f57110t0;
            this.f57110t0 = 0L;
        }
        NoteTabData noteTabData = this.mModel;
        long j2 = j & 3;
        String title = (j2 == 0 || noteTabData == null) ? null : noteTabData.getTitle();
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.title, title);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57110t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57110t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemNoteTabBinding
    public void setModel(@Nullable NoteTabData noteTabData) {
        this.mModel = noteTabData;
        synchronized (this) {
            this.f57110t0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((NoteTabData) obj);
        return true;
    }

    public ItemNoteTabBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[3], (View) objArr[4], (TintImageView) objArr[2], (TintTextView) objArr[1]);
        this.f57110t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f57109q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        this.title.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
