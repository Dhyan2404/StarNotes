package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class FragmentUnbindEmailBindingImpl extends FragmentUnbindEmailBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56873v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56874w0;

    /* renamed from: q0 */
    public InverseBindingListener f56875q0;

    /* renamed from: t0 */
    public InverseBindingListener f56876t0;

    /* renamed from: u0 */
    public long f56877u0;

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentUnbindEmailBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11685a implements InverseBindingListener {
        public C11685a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentUnbindEmailBindingImpl.this.emailEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentUnbindEmailBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentUnbindEmailBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11686b implements InverseBindingListener {
        public C11686b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentUnbindEmailBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentUnbindEmailBindingImpl.this.mVerifyCodeViewModel;
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
        f56874w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 5);
        sparseIntArray.put(C10651R.id.back_button, 6);
        sparseIntArray.put(C10651R.id.title_text, 7);
        sparseIntArray.put(C10651R.id.verify_layout, 8);
    }

    public FragmentUnbindEmailBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56873v0, f56874w0));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0063  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentUnbindEmailBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56877u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56877u0 = 64L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45301v((LiveData) obj, i2);
        }
        if (i == 1) {
            return m45297r((VerifyCodeViewModel) obj, i2);
        }
        if (i == 2) {
            return m45299t((MutableLiveData) obj, i2);
        }
        if (i == 3) {
            return m45300u((LiveData) obj, i2);
        }
        if (i == 4) {
            return m45298s((MutableLiveData) obj, i2);
        }
        if (i != 5) {
            return false;
        }
        return m45302w((MutableLiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45297r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56877u0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45298s(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56877u0 |= 16;
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

    @Override // com.onyx.galaxy.note.databinding.FragmentUnbindEmailBinding
    public void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(1, verifyCodeViewModel);
        this.mVerifyCodeViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56877u0 |= 2;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45299t(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56877u0 |= 4;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45300u(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56877u0 |= 8;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45301v(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56877u0 |= 1;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45302w(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56877u0 |= 32;
        }
        return true;
    }

    public FragmentUnbindEmailBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 6, (TintImageView) objArr[6], (TintEditText) objArr[1], (TintTextView) objArr[4], (TintConstraintLayout) objArr[0], (FrameLayout) objArr[5], (TintTextView) objArr[7], (TintTextView) objArr[3], (TintEditText) objArr[2], (LinearLayout) objArr[8]);
        this.f56875q0 = new C11685a();
        this.f56876t0 = new C11686b();
        this.f56877u0 = -1L;
        this.emailEdit.setTag(null);
        this.nextButton.setTag(null);
        this.rootLayout.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
