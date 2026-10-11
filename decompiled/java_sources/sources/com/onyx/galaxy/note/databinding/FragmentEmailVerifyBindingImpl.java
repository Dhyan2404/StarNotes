package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.android.material.tabs.TabLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class FragmentEmailVerifyBindingImpl extends FragmentEmailVerifyBinding {

    /* renamed from: w0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56678w0 = null;

    /* renamed from: x0 */
    @Nullable
    public static final SparseIntArray f56679x0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56680q0;

    /* renamed from: t0 */
    public InverseBindingListener f56681t0;

    /* renamed from: u0 */
    public InverseBindingListener f56682u0;

    /* renamed from: v0 */
    public long f56683v0;

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentEmailVerifyBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11672a implements InverseBindingListener {
        public C11672a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentEmailVerifyBindingImpl.this.emailEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentEmailVerifyBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentEmailVerifyBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11673b implements InverseBindingListener {
        public C11673b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentEmailVerifyBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentEmailVerifyBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> verifyCode = verifyCodeViewModel.getVerifyCode();
                if (verifyCode != null) {
                    verifyCode.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56679x0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.root_layout, 6);
        sparseIntArray.put(C10651R.id.title_bar, 7);
        sparseIntArray.put(C10651R.id.back_button, 8);
        sparseIntArray.put(C10651R.id.verify_layout, 9);
        sparseIntArray.put(C10651R.id.tab_layout, 10);
    }

    public FragmentEmailVerifyBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56678w0, f56679x0));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0074  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentEmailVerifyBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56683v0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56683v0 = 64L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45231v((LiveData) obj, i2);
        }
        if (i == 1) {
            return m45227r((VerifyCodeViewModel) obj, i2);
        }
        if (i == 2) {
            return m45229t((MutableLiveData) obj, i2);
        }
        if (i == 3) {
            return m45230u((LiveData) obj, i2);
        }
        if (i == 4) {
            return m45228s((MutableLiveData) obj, i2);
        }
        if (i != 5) {
            return false;
        }
        return m45232w((MutableLiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45227r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56683v0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45228s(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56683v0 |= 16;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (14 != i) {
            return false;
        }
        setVerifyCodeViewModel((VerifyCodeViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentEmailVerifyBinding
    public void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(1, verifyCodeViewModel);
        this.mVerifyCodeViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56683v0 |= 2;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45229t(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56683v0 |= 4;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45230u(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56683v0 |= 8;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45231v(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56683v0 |= 1;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45232w(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56683v0 |= 32;
        }
        return true;
    }

    public FragmentEmailVerifyBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 6, (TintImageView) objArr[8], (TintEditText) objArr[2], (TintTextView) objArr[5], (ConstraintLayout) objArr[6], (TabLayout) objArr[10], (FrameLayout) objArr[7], (TintTextView) objArr[1], (TintTextView) objArr[4], (TintEditText) objArr[3], (LinearLayout) objArr[9]);
        this.f56681t0 = new C11672a();
        this.f56682u0 = new C11673b();
        this.f56683v0 = -1L;
        this.emailEdit.setTag(null);
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f56680q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        this.nextButton.setTag(null);
        this.titleText.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
