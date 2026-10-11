package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemLayerBindingImpl extends ItemLayerBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57057t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57058u0;

    /* renamed from: q0 */
    public long f57059q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57058u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.content_container, 2);
        sparseIntArray.put(C10651R.id.fly_image, 3);
        sparseIntArray.put(C10651R.id.image, 4);
        sparseIntArray.put(C10651R.id.show, 5);
        sparseIntArray.put(C10651R.id.lock, 6);
        sparseIntArray.put(C10651R.id.more, 7);
        sparseIntArray.put(C10651R.id.checkbox, 8);
    }

    public ItemLayerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f57057t0, f57058u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        boolean z;
        String str;
        synchronized (this) {
            j = this.f57059q0;
            this.f57059q0 = 0L;
        }
        LayerInfo layerInfo = this.mModel;
        long j2 = j & 3;
        if (j2 == 0 || layerInfo == null) {
            z = false;
            str = null;
        } else {
            z = layerInfo.getShow();
            str = layerInfo.getName();
        }
        if (j2 != 0) {
            this.title.setEnabled(z);
            TextViewBindingAdapter.setText(this.title, str);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57059q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57059q0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemLayerBinding
    public void setModel(@Nullable LayerInfo layerInfo) {
        this.mModel = layerInfo;
        synchronized (this) {
            this.f57059q0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((LayerInfo) obj);
        return true;
    }

    public ItemLayerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintCheckBox) objArr[8], (TintLinearLayout) objArr[2], (TintFrameLayout) objArr[0], (FrameLayout) objArr[3], (ImageView) objArr[4], (TintImageView) objArr[6], (TintImageView) objArr[7], (TintImageView) objArr[5], (TintTextView) objArr[1]);
        this.f57059q0 = -1L;
        this.contentLayout.setTag(null);
        this.title.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
