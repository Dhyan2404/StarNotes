package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;

/* loaded from: classes9.dex */
public class LayoutStickerCategoryMainBindingImpl extends LayoutStickerCategoryMainBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57474u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57475v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57476q0;

    /* renamed from: t0 */
    public long f57477t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57475v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.header_view, 1);
        sparseIntArray.put(C10651R.id.subCategoryListView, 2);
        sparseIntArray.put(C10651R.id.categoryAddButton, 3);
        sparseIntArray.put(C10651R.id.stickerListView, 4);
        sparseIntArray.put(C10651R.id.stickerEmptyTipView, 5);
        sparseIntArray.put(C10651R.id.buttonGroup, 6);
        sparseIntArray.put(C10651R.id.importButton, 7);
        sparseIntArray.put(C10651R.id.selectButton, 8);
        sparseIntArray.put(C10651R.id.selection_layout, 9);
        sparseIntArray.put(C10651R.id.selectCheckBox, 10);
        sparseIntArray.put(C10651R.id.insertButton, 11);
        sparseIntArray.put(C10651R.id.moveButton, 12);
        sparseIntArray.put(C10651R.id.deleteButton, 13);
        sparseIntArray.put(C10651R.id.finishButton, 14);
    }

    public LayoutStickerCategoryMainBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f57474u0, f57475v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57477t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57477t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57477t0 = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public LayoutStickerCategoryMainBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[6], (TintImageView) objArr[3], (TintTextView) objArr[13], (TintTextView) objArr[14], (LinearLayout) objArr[1], (TintTextView) objArr[7], (TintTextView) objArr[11], (TintTextView) objArr[12], (TintTextView) objArr[8], (TintTextView) objArr[10], (LinearLayout) objArr[9], (CommonEmptyView) objArr[5], (RecyclerView) objArr[4], (RecyclerView) objArr[2]);
        this.f57477t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57476q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
