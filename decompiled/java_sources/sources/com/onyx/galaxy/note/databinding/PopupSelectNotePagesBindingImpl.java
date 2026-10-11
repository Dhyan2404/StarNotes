package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;

/* loaded from: classes9.dex */
public class PopupSelectNotePagesBindingImpl extends PopupSelectNotePagesBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57812u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57813v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57814q0;

    /* renamed from: t0 */
    public long f57815t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57813v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.note_layout, 1);
        sparseIntArray.put(C10651R.id.btn_back, 2);
        sparseIntArray.put(C10651R.id.search_view, 3);
        sparseIntArray.put(C10651R.id.tie_name, 4);
        sparseIntArray.put(C10651R.id.iv_search, 5);
        sparseIntArray.put(C10651R.id.tab_layout, 6);
        sparseIntArray.put(C10651R.id.display_type, 7);
        sparseIntArray.put(C10651R.id.note_recyclerView, 8);
        sparseIntArray.put(C10651R.id.page_layout, 9);
        sparseIntArray.put(C10651R.id.page_btn_back, 10);
        sparseIntArray.put(C10651R.id.add_pages, 11);
        sparseIntArray.put(C10651R.id.file_select_all, 12);
        sparseIntArray.put(C10651R.id.swipe_container, 13);
    }

    public PopupSelectNotePagesBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f57812u0, f57813v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57815t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57815t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57815t0 = 1L;
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

    public PopupSelectNotePagesBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[11], (TintTextView) objArr[2], (TintImageView) objArr[7], (TintCheckBox) objArr[12], (TintImageView) objArr[5], (LinearLayout) objArr[1], (AutoFitRecycleView) objArr[8], (TintTextView) objArr[10], (LinearLayout) objArr[9], (TintTextInputLayoutView) objArr[3], (SwipeRecycleViewContainer) objArr[13], (TintTabLayoutView) objArr[6], (TouchModeMaxLengthInputTextEdit) objArr[4]);
        this.f57815t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57814q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
