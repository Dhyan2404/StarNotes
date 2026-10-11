package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;

/* loaded from: classes9.dex */
public class FragmentAccountCenterBindingImpl extends FragmentAccountCenterBinding {

    /* renamed from: A0 */
    @Nullable
    public static final SparseIntArray f56587A0;

    /* renamed from: z0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56588z0;

    /* renamed from: q0 */
    @NonNull
    public final ScrollView f56589q0;

    /* renamed from: t0 */
    @Nullable
    public final LayoutAdaptiveDividerBinding f56590t0;

    /* renamed from: u0 */
    @Nullable
    public final LayoutAdaptiveDividerBinding f56591u0;

    /* renamed from: v0 */
    public OnClickListenerImpl f56592v0;

    /* renamed from: w0 */
    public OnClickListenerImpl1 f56593w0;

    /* renamed from: x0 */
    public OnClickListenerImpl2 f56594x0;

    /* renamed from: y0 */
    public long f56595y0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f56596e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56596e.logOff(view);
        }

        public OnClickListenerImpl setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f56596e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl1 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f56597e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56597e.cancelUserAgreement(view);
        }

        public OnClickListenerImpl1 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f56597e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl2 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f56598e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f56598e.logOut(view);
        }

        public OnClickListenerImpl2 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f56598e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(12);
        f56588z0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_user_info"}, new int[]{8}, new int[]{C10651R.layout.layout_user_info});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56587A0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 9);
        sparseIntArray.put(C10651R.id.back_button, 10);
        sparseIntArray.put(C10651R.id.title_text, 11);
    }

    public FragmentAccountCenterBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f56588z0, f56587A0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        OnClickListenerImpl onClickListenerImpl;
        OnClickListenerImpl1 onClickListenerImpl1;
        OnClickListenerImpl2 onClickListenerImpl2;
        synchronized (this) {
            j = this.f56595y0;
            this.f56595y0 = 0L;
        }
        AccountCenterViewModel accountCenterViewModel = this.mViewModel;
        long j2 = j & 6;
        if (j2 == 0 || accountCenterViewModel == null) {
            onClickListenerImpl = null;
            onClickListenerImpl1 = null;
            onClickListenerImpl2 = null;
        } else {
            OnClickListenerImpl onClickListenerImpl3 = this.f56592v0;
            if (onClickListenerImpl3 == null) {
                onClickListenerImpl3 = new OnClickListenerImpl();
                this.f56592v0 = onClickListenerImpl3;
            }
            onClickListenerImpl = onClickListenerImpl3.setValue(accountCenterViewModel);
            OnClickListenerImpl1 onClickListenerImpl12 = this.f56593w0;
            if (onClickListenerImpl12 == null) {
                onClickListenerImpl12 = new OnClickListenerImpl1();
                this.f56593w0 = onClickListenerImpl12;
            }
            onClickListenerImpl1 = onClickListenerImpl12.setValue(accountCenterViewModel);
            OnClickListenerImpl2 onClickListenerImpl22 = this.f56594x0;
            if (onClickListenerImpl22 == null) {
                onClickListenerImpl22 = new OnClickListenerImpl2();
                this.f56594x0 = onClickListenerImpl22;
            }
            onClickListenerImpl2 = onClickListenerImpl22.setValue(accountCenterViewModel);
        }
        if (j2 != 0) {
            this.disagreeProtocolButton.setOnClickListener(onClickListenerImpl1);
            this.logOffButton.setOnClickListener(onClickListenerImpl);
            this.logOutButton.setOnClickListener(onClickListenerImpl2);
            this.scrollLayout.setViewModel(accountCenterViewModel);
        }
        ViewDataBinding.executeBindingsOn(this.scrollLayout);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56595y0 != 0) {
                return true;
            }
            return this.scrollLayout.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56595y0 = 4L;
        }
        this.scrollLayout.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45205r((LayoutUserInfoBinding) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return m45206s((AccountCenterViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45205r(LayoutUserInfoBinding layoutUserInfoBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56595y0 |= 1;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45206s(AccountCenterViewModel accountCenterViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56595y0 |= 2;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.scrollLayout.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (16 != i) {
            return false;
        }
        setViewModel((AccountCenterViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentAccountCenterBinding
    public void setViewModel(@Nullable AccountCenterViewModel accountCenterViewModel) {
        updateRegistration(1, accountCenterViewModel);
        this.mViewModel = accountCenterViewModel;
        synchronized (this) {
            this.f56595y0 |= 2;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    public FragmentAccountCenterBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (TintImageView) objArr[10], (TintTextView) objArr[5], (LinearLayout) objArr[2], (TintTextView) objArr[3], (TintTextView) objArr[4], (TintConstraintLayout) objArr[0], (LayoutUserInfoBinding) objArr[8], (FrameLayout) objArr[9], (MediumTextView) objArr[11]);
        this.f56595y0 = -1L;
        this.disagreeProtocolButton.setTag(null);
        this.exitLayout.setTag(null);
        this.logOffButton.setTag(null);
        this.logOutButton.setTag(null);
        ScrollView scrollView = (ScrollView) objArr[1];
        this.f56589q0 = scrollView;
        scrollView.setTag(null);
        Object obj = objArr[6];
        this.f56590t0 = obj != null ? LayoutAdaptiveDividerBinding.bind((View) obj) : null;
        Object obj2 = objArr[7];
        this.f56591u0 = obj2 != null ? LayoutAdaptiveDividerBinding.bind((View) obj2) : null;
        this.rootLayout.setTag(null);
        setContainedBinding(this.scrollLayout);
        setRootTag(view);
        invalidateAll();
    }
}
