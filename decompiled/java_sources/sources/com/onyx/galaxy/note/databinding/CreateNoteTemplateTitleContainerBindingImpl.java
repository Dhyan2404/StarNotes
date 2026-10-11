package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class CreateNoteTemplateTitleContainerBindingImpl extends CreateNoteTemplateTitleContainerBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56304u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56305v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f56306q0;

    /* renamed from: t0 */
    public long f56307t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(12);
        f56304u0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_category_title_container"}, new int[]{5}, new int[]{C10651R.layout.layout_category_title_container});
        includedLayouts.setIncludes(1, new String[]{"layout_template_title_orientation_container"}, new int[]{4}, new int[]{C10651R.layout.layout_template_title_orientation_container});
        includedLayouts.setIncludes(2, new String[]{"change_note_template_title_container"}, new int[]{3}, new int[]{C10651R.layout.change_note_template_title_container});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56305v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.cl_title_container_bg, 6);
        sparseIntArray.put(C10651R.id.create_title_dynamic_bg, 7);
        sparseIntArray.put(C10651R.id.ll_top_container, 8);
        sparseIntArray.put(C10651R.id.iv_note_template_back, 9);
        sparseIntArray.put(C10651R.id.tv_title, 10);
        sparseIntArray.put(C10651R.id.tv_template_create, 11);
    }

    public CreateNoteTemplateTitleContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f56304u0, f56305v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56307t0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.changeTitleContainer);
        ViewDataBinding.executeBindingsOn(this.templateTitleOrientationContainer);
        ViewDataBinding.executeBindingsOn(this.categoryContainer);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56307t0 != 0) {
                return true;
            }
            return this.changeTitleContainer.hasPendingBindings() || this.templateTitleOrientationContainer.hasPendingBindings() || this.categoryContainer.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56307t0 = 8L;
        }
        this.changeTitleContainer.invalidateAll();
        this.templateTitleOrientationContainer.invalidateAll();
        this.categoryContainer.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45199r((LayoutCategoryTitleContainerBinding) obj, i2);
        }
        if (i == 1) {
            return m45200s((ChangeNoteTemplateTitleContainerBinding) obj, i2);
        }
        if (i != 2) {
            return false;
        }
        return m45201t((LayoutTemplateTitleOrientationContainerBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45199r(LayoutCategoryTitleContainerBinding layoutCategoryTitleContainerBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56307t0 |= 1;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45200s(ChangeNoteTemplateTitleContainerBinding changeNoteTemplateTitleContainerBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56307t0 |= 2;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.changeTitleContainer.setLifecycleOwner(lifecycleOwner);
        this.templateTitleOrientationContainer.setLifecycleOwner(lifecycleOwner);
        this.categoryContainer.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    /* renamed from: t */
    public final boolean m45201t(LayoutTemplateTitleOrientationContainerBinding layoutTemplateTitleOrientationContainerBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56307t0 |= 4;
        }
        return true;
    }

    public CreateNoteTemplateTitleContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (LayoutCategoryTitleContainerBinding) objArr[5], (ChangeNoteTemplateTitleContainerBinding) objArr[3], (TintConstraintLayout) objArr[6], (DynamicImageView) objArr[7], (FrameLayout) objArr[2], (LinearLayout) objArr[1], (TintTextView) objArr[9], (FrameLayout) objArr[8], (LayoutTemplateTitleOrientationContainerBinding) objArr[4], (MediumTextView) objArr[11], (MediumTextView) objArr[10]);
        this.f56307t0 = -1L;
        setContainedBinding(this.categoryContainer);
        setContainedBinding(this.changeTitleContainer);
        this.flTopContainer.setTag(null);
        this.headerContainer.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f56306q0 = linearLayout;
        linearLayout.setTag(null);
        setContainedBinding(this.templateTitleOrientationContainer);
        setRootTag(view);
        invalidateAll();
    }
}
