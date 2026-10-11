package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LifecycleOwner;
import com.google.android.material.tabs.TabItem;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class FragmentMixedVerifyBindingImpl extends FragmentMixedVerifyBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56734u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56735v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56736q0;

    /* renamed from: t0 */
    public long f56737t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(12);
        f56734u0 = includedLayouts;
        includedLayouts.setIncludes(3, new String[]{"layout_phone_verify_item", "layout_email_verify_item"}, new int[]{4, 5}, new int[]{C10651R.layout.layout_phone_verify_item, C10651R.layout.layout_email_verify_item});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56735v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 6);
        sparseIntArray.put(C10651R.id.back_button, 7);
        sparseIntArray.put(C10651R.id.verify_layout, 8);
        sparseIntArray.put(C10651R.id.tab_layout, 9);
        sparseIntArray.put(C10651R.id.phoneTab, 10);
        sparseIntArray.put(C10651R.id.emailTab, 11);
    }

    public FragmentMixedVerifyBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f56734u0, f56735v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        String str;
        String str2;
        synchronized (this) {
            j = this.f56737t0;
            this.f56737t0 = 0L;
        }
        VerifyCodeViewModel verifyCodeViewModel = this.mEmailViewModel;
        VerifyCodeViewModel verifyCodeViewModel2 = this.mPhoneViewModel;
        long j2 = 17 & j;
        long j3 = j & 24;
        if (j3 == 0 || verifyCodeViewModel2 == null) {
            str = null;
            str2 = null;
        } else {
            str = verifyCodeViewModel2.getVerifyFragmentTipText();
            str2 = verifyCodeViewModel2.getVerifyFragmentTitle();
        }
        if (j2 != 0) {
            this.emailVerifyLayout.setModel(verifyCodeViewModel);
        }
        if (j3 != 0) {
            this.phoneVerifyLayout.setModel(verifyCodeViewModel2);
            TextViewBindingAdapter.setText(this.subTitleTipText, str);
            TextViewBindingAdapter.setText(this.titleText, str2);
        }
        ViewDataBinding.executeBindingsOn(this.phoneVerifyLayout);
        ViewDataBinding.executeBindingsOn(this.emailVerifyLayout);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56737t0 != 0) {
                return true;
            }
            return this.phoneVerifyLayout.hasPendingBindings() || this.emailVerifyLayout.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56737t0 = 16L;
        }
        this.phoneVerifyLayout.invalidateAll();
        this.emailVerifyLayout.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45256s((VerifyCodeViewModel) obj, i2);
        }
        if (i == 1) {
            return m45257t((LayoutPhoneVerifyItemBinding) obj, i2);
        }
        if (i == 2) {
            return m45255r((LayoutEmailVerifyItemBinding) obj, i2);
        }
        if (i != 3) {
            return false;
        }
        return m45258u((VerifyCodeViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45255r(LayoutEmailVerifyItemBinding layoutEmailVerifyItemBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56737t0 |= 4;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45256s(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56737t0 |= 1;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentMixedVerifyBinding
    public void setEmailViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(0, verifyCodeViewModel);
        this.mEmailViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56737t0 |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.phoneVerifyLayout.setLifecycleOwner(lifecycleOwner);
        this.emailVerifyLayout.setLifecycleOwner(lifecycleOwner);
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentMixedVerifyBinding
    public void setPhoneViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(3, verifyCodeViewModel);
        this.mPhoneViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56737t0 |= 8;
        }
        notifyPropertyChanged(10);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (3 == i) {
            setEmailViewModel((VerifyCodeViewModel) obj);
        } else {
            if (10 != i) {
                return false;
            }
            setPhoneViewModel((VerifyCodeViewModel) obj);
        }
        return true;
    }

    /* renamed from: t */
    public final boolean m45257t(LayoutPhoneVerifyItemBinding layoutPhoneVerifyItemBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56737t0 |= 2;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45258u(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56737t0 |= 8;
        }
        return true;
    }

    public FragmentMixedVerifyBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 4, (TintImageView) objArr[7], (TabItem) objArr[11], (LayoutEmailVerifyItemBinding) objArr[5], (TabItem) objArr[10], (LayoutPhoneVerifyItemBinding) objArr[4], (TintConstraintLayout) objArr[0], (TintTextView) objArr[2], (TintTabLayoutView) objArr[9], (FrameLayout) objArr[6], (TintTextView) objArr[1], (LinearLayout) objArr[8]);
        this.f56737t0 = -1L;
        setContainedBinding(this.emailVerifyLayout);
        FrameLayout frameLayout = (FrameLayout) objArr[3];
        this.f56736q0 = frameLayout;
        frameLayout.setTag(null);
        setContainedBinding(this.phoneVerifyLayout);
        this.rootLayout.setTag(null);
        this.subTitleTipText.setTag(null);
        this.titleText.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
