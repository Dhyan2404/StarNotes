package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.viewmodel.SettingsHelpAndFeedbackViewModel;

/* loaded from: classes9.dex */
public class FragmentSettingsHelpAndFeedbackBindingImpl extends FragmentSettingsHelpAndFeedbackBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56838u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56839v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56840q0;

    /* renamed from: t0 */
    public long f56841t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56839v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_back, 1);
        sparseIntArray.put(C10651R.id.tv_type, 2);
        sparseIntArray.put(C10651R.id.rv_type, 3);
        sparseIntArray.put(C10651R.id.tv_memo, 4);
        sparseIntArray.put(C10651R.id.edt_memo, 5);
        sparseIntArray.put(C10651R.id.tv_upload_pic, 6);
        sparseIntArray.put(C10651R.id.rv_picture, 7);
        sparseIntArray.put(C10651R.id.tv_email, 8);
        sparseIntArray.put(C10651R.id.tv_email_desc, 9);
        sparseIntArray.put(C10651R.id.edt_email, 10);
        sparseIntArray.put(C10651R.id.tv_submit, 11);
    }

    public FragmentSettingsHelpAndFeedbackBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f56838u0, f56839v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56841t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56841t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56841t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45295r((SettingsHelpAndFeedbackViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45295r(SettingsHelpAndFeedbackViewModel settingsHelpAndFeedbackViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56841t0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (16 != i) {
            return false;
        }
        setViewModel((SettingsHelpAndFeedbackViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentSettingsHelpAndFeedbackBinding
    public void setViewModel(@Nullable SettingsHelpAndFeedbackViewModel settingsHelpAndFeedbackViewModel) {
        this.mViewModel = settingsHelpAndFeedbackViewModel;
    }

    public FragmentSettingsHelpAndFeedbackBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintEditText) objArr[10], (TintEditText) objArr[5], (TintImageView) objArr[1], (TintRecycleView) objArr[7], (TintRecycleView) objArr[3], (TintTextView) objArr[8], (TintTextView) objArr[9], (TintTextView) objArr[4], (TintTextView) objArr[11], (TintTextView) objArr[2], (TintTextView) objArr[6]);
        this.f56841t0 = -1L;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56840q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
