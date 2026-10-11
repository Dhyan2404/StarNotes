package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.textfield.TextInputLayout;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemDocBookmarkBindingImpl extends ItemDocBookmarkBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56979u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56980v0;

    /* renamed from: q0 */
    @NonNull
    public final TintRelativeLayout f56981q0;

    /* renamed from: t0 */
    public long f56982t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56980v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.image_container, 3);
        sparseIntArray.put(C10651R.id.image, 4);
        sparseIntArray.put(C10651R.id.bookmark, 5);
        sparseIntArray.put(C10651R.id.more_settings, 6);
        sparseIntArray.put(C10651R.id.centerSettingButton, 7);
        sparseIntArray.put(C10651R.id.checkbox, 8);
        sparseIntArray.put(C10651R.id.countText, 9);
        sparseIntArray.put(C10651R.id.title_edit_container, 10);
        sparseIntArray.put(C10651R.id.title, 11);
        sparseIntArray.put(C10651R.id.dividerView, 12);
    }

    public ItemDocBookmarkBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56979u0, f56980v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        String str;
        int i;
        synchronized (this) {
            j = this.f56982t0;
            this.f56982t0 = 0L;
        }
        VirtualBookmarkModel virtualBookmarkModel = this.mModel;
        long j2 = j & 3;
        String str2 = null;
        if (j2 != 0) {
            if (virtualBookmarkModel != null) {
                str2 = virtualBookmarkModel.getTitle();
                i = virtualBookmarkModel.getPageIndex();
            } else {
                i = 0;
            }
            String valueOf = String.valueOf(i + 1);
            str = str2;
            str2 = valueOf;
        } else {
            str = null;
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.page, str2);
            TextViewBindingAdapter.setText(this.titleEdit, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56982t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56982t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemDocBookmarkBinding
    public void setModel(@Nullable VirtualBookmarkModel virtualBookmarkModel) {
        this.mModel = virtualBookmarkModel;
        synchronized (this) {
            this.f56982t0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((VirtualBookmarkModel) obj);
        return true;
    }

    public ItemDocBookmarkBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[5], (TintImageView) objArr[7], (TintCheckBox) objArr[8], (TintTextView) objArr[9], (TintView) objArr[12], (ImageView) objArr[4], (TintLinearLayout) objArr[3], (TintImageView) objArr[6], (TintTextView) objArr[1], (TextView) objArr[11], (MaxLengthInputTextEdit) objArr[2], (TextInputLayout) objArr[10]);
        this.f56982t0 = -1L;
        TintRelativeLayout tintRelativeLayout = (TintRelativeLayout) objArr[0];
        this.f56981q0 = tintRelativeLayout;
        tintRelativeLayout.setTag(null);
        this.page.setTag(null);
        this.titleEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
