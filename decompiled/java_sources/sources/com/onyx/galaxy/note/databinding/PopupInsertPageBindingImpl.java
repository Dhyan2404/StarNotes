package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RadioGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupInsertPageBindingImpl extends PopupInsertPageBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57664u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57665v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57666q0;

    /* renamed from: t0 */
    public long f57667t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57665v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.radio_group, 1);
        sparseIntArray.put(C10651R.id.prev_current_page_radio, 2);
        sparseIntArray.put(C10651R.id.after_current_page_radio, 3);
        sparseIntArray.put(C10651R.id.last_page_radio, 4);
        sparseIntArray.put(C10651R.id.more_template, 5);
        sparseIntArray.put(C10651R.id.recyclerView, 6);
        sparseIntArray.put(C10651R.id.add_note_pages, 7);
        sparseIntArray.put(C10651R.id.paste_page, 8);
        sparseIntArray.put(C10651R.id.import_file, 9);
        sparseIntArray.put(C10651R.id.import_pic, 10);
        sparseIntArray.put(C10651R.id.take_photo, 11);
        sparseIntArray.put(C10651R.id.scan_file, 12);
    }

    public PopupInsertPageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f57664u0, f57665v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57667t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57667t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57667t0 = 1L;
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

    public PopupInsertPageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[7], (TintRadioButton) objArr[3], (TintTextView) objArr[9], (TintTextView) objArr[10], (TintRadioButton) objArr[4], (TintTextView) objArr[5], (TintTextView) objArr[8], (TintRadioButton) objArr[2], (RadioGroup) objArr[1], (RecyclerView) objArr[6], (TintTextView) objArr[12], (TintTextView) objArr[11]);
        this.f57667t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57666q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
