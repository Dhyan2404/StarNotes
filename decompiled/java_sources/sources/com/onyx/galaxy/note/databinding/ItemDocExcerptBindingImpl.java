package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.textfield.TextInputLayout;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class ItemDocExcerptBindingImpl extends ItemDocExcerptBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56987t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56988u0;

    /* renamed from: q0 */
    public long f56989q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56988u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.image_container, 2);
        sparseIntArray.put(C10651R.id.image, 3);
        sparseIntArray.put(C10651R.id.zoom_view, 4);
        sparseIntArray.put(C10651R.id.quote_count, 5);
        sparseIntArray.put(C10651R.id.tv_note_page_index, 6);
        sparseIntArray.put(C10651R.id.more_settings, 7);
        sparseIntArray.put(C10651R.id.centerSettingButtonWrapper, 8);
        sparseIntArray.put(C10651R.id.centerSettingButton, 9);
        sparseIntArray.put(C10651R.id.checkbox, 10);
        sparseIntArray.put(C10651R.id.countText, 11);
        sparseIntArray.put(C10651R.id.title_edit_container, 12);
        sparseIntArray.put(C10651R.id.iv_clear, 13);
        sparseIntArray.put(C10651R.id.title, 14);
    }

    public ItemDocExcerptBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f56987t0, f56988u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f56989q0;
            this.f56989q0 = 0L;
        }
        ExcerptInfoBean excerptInfoBean = this.mModel;
        long j2 = j & 3;
        String note = (j2 == 0 || excerptInfoBean == null) ? null : excerptInfoBean.getNote();
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.titleEdit, note);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56989q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56989q0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemDocExcerptBinding
    public void setModel(@Nullable ExcerptInfoBean excerptInfoBean) {
        this.mModel = excerptInfoBean;
        synchronized (this) {
            this.f56989q0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((ExcerptInfoBean) obj);
        return true;
    }

    public ItemDocExcerptBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[9], (TintLinearLayout) objArr[8], (TintCheckBox) objArr[10], (TintTextView) objArr[11], (TintRelativeLayout) objArr[0], (TintImageView) objArr[3], (ShadowLayout) objArr[2], (TintImageView) objArr[13], (TintImageView) objArr[7], (TintTextView) objArr[5], (TintTextView) objArr[14], (MaxLengthInputTextEdit) objArr[1], (TextInputLayout) objArr[12], (TintTextView) objArr[6], (TintImageView) objArr[4]);
        this.f56989q0 = -1L;
        this.exceptContainer.setTag(null);
        this.titleEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
