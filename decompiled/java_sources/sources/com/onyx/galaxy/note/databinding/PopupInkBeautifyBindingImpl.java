package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupInkBeautifyBindingImpl extends PopupInkBeautifyBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57651t0;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57652u0;

    /* renamed from: q0 */
    public long f57653q0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(23);
        f57651t0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_ink_beautify_typeset"}, new int[]{1}, new int[]{C10651R.layout.layout_ink_beautify_typeset});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57652u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.titleLayout, 2);
        sparseIntArray.put(C10651R.id.titleText, 3);
        sparseIntArray.put(C10651R.id.betaAiIcon, 4);
        sparseIntArray.put(C10651R.id.hintButton, 5);
        sparseIntArray.put(C10651R.id.fontSelectorTitle, 6);
        sparseIntArray.put(C10651R.id.fontSelectorLayout, 7);
        sparseIntArray.put(C10651R.id.fontTitleThumbnail, 8);
        sparseIntArray.put(C10651R.id.arrowButton, 9);
        sparseIntArray.put(C10651R.id.fontContentThumbnail, 10);
        sparseIntArray.put(C10651R.id.fontPreviewText, 11);
        sparseIntArray.put(C10651R.id.remainTimeLayout, 12);
        sparseIntArray.put(C10651R.id.remainTimeIcon, 13);
        sparseIntArray.put(C10651R.id.remainTimeText1, 14);
        sparseIntArray.put(C10651R.id.remainTimeText2, 15);
        sparseIntArray.put(C10651R.id.activateVipButton, 16);
        sparseIntArray.put(C10651R.id.moreParamLayout, 17);
        sparseIntArray.put(C10651R.id.moreParamText, 18);
        sparseIntArray.put(C10651R.id.moreParamIcon, 19);
        sparseIntArray.put(C10651R.id.buttonLayout, 20);
        sparseIntArray.put(C10651R.id.cancelButton, 21);
        sparseIntArray.put(C10651R.id.okButton, 22);
    }

    public PopupInkBeautifyBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 23, f57651t0, f57652u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57653q0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.typesetBinding);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f57653q0 != 0) {
                return true;
            }
            return this.typesetBinding.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57653q0 = 2L;
        }
        this.typesetBinding.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45364r((LayoutInkBeautifyTypesetBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45364r(LayoutInkBeautifyTypesetBinding layoutInkBeautifyTypesetBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57653q0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.typesetBinding.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public PopupInkBeautifyBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintTextView) objArr[16], (TintImageView) objArr[9], (ImageView) objArr[4], (TintLinearLayout) objArr[20], (TintTextView) objArr[21], (TintImageView) objArr[10], (TintTextView) objArr[11], (TintLinearLayout) objArr[7], (TintTextView) objArr[6], (TintImageView) objArr[8], (TintImageView) objArr[5], (TintImageView) objArr[19], (TintLinearLayout) objArr[17], (TintTextView) objArr[18], (TintTextView) objArr[22], (ImageView) objArr[13], (TintLinearLayout) objArr[12], (TextView) objArr[14], (TextView) objArr[15], (TintLinearLayout) objArr[0], (ConstraintLayout) objArr[2], (MediumTextView) objArr[3], (LayoutInkBeautifyTypesetBinding) objArr[1]);
        this.f57653q0 = -1L;
        this.rootLayout.setTag(null);
        setContainedBinding(this.typesetBinding);
        setRootTag(view);
        invalidateAll();
    }
}
