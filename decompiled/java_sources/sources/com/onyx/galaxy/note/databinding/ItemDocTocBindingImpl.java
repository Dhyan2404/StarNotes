package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemDocTocBindingImpl extends ItemDocTocBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56994t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f56995u0;

    /* renamed from: q0 */
    public long f56996q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56995u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_indicator, 2);
        sparseIntArray.put(C10651R.id.coverTitleContainer, 3);
        sparseIntArray.put(C10651R.id.image_container, 4);
        sparseIntArray.put(C10651R.id.image, 5);
        sparseIntArray.put(C10651R.id.title, 6);
        sparseIntArray.put(C10651R.id.more_settings, 7);
        sparseIntArray.put(C10651R.id.checkbox, 8);
        sparseIntArray.put(C10651R.id.v_drag_bottom, 9);
        sparseIntArray.put(C10651R.id.v_drag_top, 10);
        sparseIntArray.put(C10651R.id.v_drag_in, 11);
        sparseIntArray.put(C10651R.id.dividerView, 12);
    }

    public ItemDocTocBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56994t0, f56995u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        String str;
        synchronized (this) {
            j = this.f56996q0;
            this.f56996q0 = 0L;
        }
        VirtualTocModel virtualTocModel = this.mModel;
        long j2 = j & 3;
        if (j2 != 0) {
            str = String.valueOf((virtualTocModel != null ? virtualTocModel.getPageIndex() : 0) + 1);
        } else {
            str = null;
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.pageIndex, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56996q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56996q0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemDocTocBinding
    public void setModel(@Nullable VirtualTocModel virtualTocModel) {
        this.mModel = virtualTocModel;
        synchronized (this) {
            this.f56996q0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((VirtualTocModel) obj);
        return true;
    }

    public ItemDocTocBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintCheckBox) objArr[8], (TintRelativeLayout) objArr[0], (LinearLayout) objArr[3], (TintView) objArr[12], (ImageView) objArr[5], (LinearLayout) objArr[4], (TintImageView) objArr[2], (TintImageView) objArr[7], (TintTextView) objArr[1], (TintTextView) objArr[6], (TintView) objArr[9], (TintView) objArr[11], (TintView) objArr[10]);
        this.f56996q0 = -1L;
        this.contentLayout.setTag(null);
        this.pageIndex.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
